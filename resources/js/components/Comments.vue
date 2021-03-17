<template>
    <div class="comments-form" >
        <ul class="list-group sizing">
            <li  class="list-group-item mb-2 mt-3">
                 <span v-for="option in comments">
                     <div class="back">
                         <div class="parent-comment mt-3">
                             <div class="ml-5 ">
                                 <label  class="parent-comment ">{{option.name}}</label>
                                 <label  class="parent-comment text-muted"><small>{{option.data_comment}}</small></label>
                             </div>
                                 <div class="row">
                                 <img :src="'/images/usersProfilePicture/' + option.picture" class='ml-3 parent-comment-img'>
                                 <textarea class="mt-2 form-control parent-comment">{{option.comments}}</textarea>
                                 <button v-on:click="showCommentForm(option.id)" type="button" name="Replay" class="ml-2 btn-comments btn-parent-comment mt-4 btn" ><strong>Replay</strong></button>
                             </div>
                         </div>
                         <createChildComment  v-if="isHidden && showingFromId === option.id"
                              @update-comment="showСomments()"
                              :replyComment =  option.comments
                              :replyUserEmail =  option.email
                              :parentCommentUserName = userName

                              :replyUser = option.name
                              :parentCommentId =  option.id
                              :announcement_id = option.announcement_id
                              :userId = userId >
                         </createChildComment>
                         <span v-for="optionchild in option.child">
                              <div class="child-comment ml-5">
                                   <div class="ml-5 ">
                                        <label  class="parent-comment ">{{optionchild.name}}</label>
                                        <label  class="parent-comment text-muted"><small>{{optionchild.data_comment}}</small></label>
                                   </div>
                                   <div class="row">
                                        <img :src="'/images/usersProfilePicture/' + optionchild.picture" class='ml-3 parent-comment-img'>
                                        <textarea class="mt-2 form-control parent-comment">{{optionchild.comments}}</textarea>
                                        <button v-on:click="showCommentForm(optionchild.id)" type="button" name="Replay" class="ml-2 btn-comments btn-parent-comment mt-4 btn" ><strong>Replay</strong></button>
                                   </div>
                                   <createChildComment  v-if="isHidden && showingFromId === optionchild.id"
                                        @update-comment="showСomments()"
                                        :replyComment =  optionchild.comments
                                        :replyUserEmail =  optionchild.email
                                        :parentCommentUserName = userName

                                        :replyUser = optionchild.name
                                        :parentCommentId =  option.id
                                        :announcement_id = optionchild.announcement_id
                                        :userId = userId >
                                   </createChildComment>
                              </div>
                         </span>
                     </div>
                 </span>
            </li>
        </ul>
        <form @submit.prevent="createComments()" class="mt-3">
            <div  class="new-comment row">
                <img :src="'/images/usersProfilePicture/' + userPicture" class='ml-3 comments-img'>
                <textarea v-model="textComment" class="mt-2 form-control new-comment" required></textarea>
                <button  type="submit" name="submit" class="ml-2 btn-comments mt-4 btn" ><strong>Create</strong></button>
            </div>
        </form>
    </div>
</template>

<script>
import createChildComment from './CreateChildComment'
export default {
name: "Comments",
    components: {
        createChildComment,
    },
    data: function () {
        return {
            isHidden: false,
            comments : [],
            showingFromId: null,
            nullParent : null,
            textComment : null,
        }
    },
    props: {
        userName:  String,
        userPicture:  String,
        userId: Number,
        announcementId: Number,
    },
    methods: {
        showCommentForm: function (parent_id) {
            this.showingFromId = parent_id;
            this.isHidden = true;
        },
        showСomments: function (e) {
            console.log( this.announcementId)
            let vm = this
            axios.get('/api/comments/show/' + vm.announcementId)
                .then(function (response) {
                     vm.comments = response.data.comments;
                    console.log(vm.comments);
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
        createComments: function (e) {
            let vm = this
            axios.post('/api/comments/create' , { 'announcement_id':  vm.announcementId, 'parent_comment_id' : vm.nullParent, 'userId' : vm.userId, 'comments': vm.textComment})
                .then(function (response) {
                    vm.textComment = null;
                    vm.showСomments();
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
    },
    created(){
        this.showСomments()
    }
}

</script>

<style scoped>

</style>
