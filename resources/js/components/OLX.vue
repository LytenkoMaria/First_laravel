<template>

    <div  class="announcements-page" >
        <label class="olx">OLX announcements</label>
        <button  type="button" name="update" class="update btn "><strong>Update</strong></button>
        <div class="announcements">
            <ul class="list-group">
                <li  class="list-group-item ">
                    <span v-for="option in announcements">
                        <div class="announcement">
                            <img v-bind:src="option.images_url" class='offer-img'>
<!--                            <a v-on:click.prevent="openAnnouncement()"  v-bind:href="option.link" class="olx-advertisements-name">{{option.advertisements_name}}</a>-->
                            <router-link :to="'/announcement/' + option.id" class="olx-advertisements-name" >{{ option.advertisements_name }}</router-link>
                            <label  class="olx-data">{{option.date_announcement}}</label>
                            <label  class="olx-price">{{option.price}}</label>
                        </div>
                    </span>
                </li>
            </ul>

        </div>
    </div>


</template>

<script>
export default {
name: "OLX",
    data: function () {
        return {
            announcements : [],
        }
    },
    methods: {
        showAnnouncements: function (e) {
            let vm = this
            axios.get('/api/announcements/show')
                .then(function (response) {
                    vm.announcements = response.data.announcements.original.announcements;
                    console.log(vm.announcements);
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                })
        },
        openAnnouncement: function (e) {
            let vm = this
            axios.get('/api/announcement/show', vm.announcements.id )
                .then(function (response) {
                })
                .catch(function (error) {
                    console.log(error);
                })
        },

    },
    beforeMount(){
        this.showAnnouncements()
    }
}
</script>

<style scoped>

</style>
