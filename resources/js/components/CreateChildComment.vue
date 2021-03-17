<template>
    <form @submit.prevent="newChildComment()" v-if="isHidden">
        <div class="new-comment row ml-5">
            <textarea v-model="textComment"s class="mt-2 ml-5 form-control parent-comment"></textarea>
            <button  type="submit" name="submit" class="ml-2 btn-comments btn-parent-comment mt-4 btn" ><strong>Create</strong></button></div>
    </form>
</template>

<script>
export default {
name: "CreateChildComment",
    props: {
        replyComment : String,
        replyUser : String,
        parentCommentId : Number,
        announcement_id : Number,
        userId : Number,
        replyUserEmail: String,
        parentCommentUserName : String
    },
    data: function () {
        return {
            isHidden: true,
            textComment: '@' + this.replyUser + ':  ',
        }
    },
    methods: {
        newChildComment: function (e) {
            let vm = this
            axios.post('/api/childComments/create' ,
                {
                    'replyComment' : vm.replyComment,
                    'parentCommentUserName' : vm.parentCommentUserName,
                    'replyUserEmail' : vm.replyUserEmail,
                    'replyUserName' : vm.replyUser,
                    'announcement_id': vm.announcement_id,
                    'parent_comment_id' : vm.parentCommentId,
                    'userId' : vm.userId,
                    'comments': vm.textComment
                })
                .then(function (response) {
                    console.log(response)
                    if (response.data.success) {
                        vm.textComment = null,
                        vm.isHidden = false ,
                        vm.$emit('update-comment')
                    }
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
            })
        },
    },
}
</script>

<style scoped>

</style>
