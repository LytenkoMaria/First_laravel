<template>
      <div class="offer">
          <div class="col-5"><img v-bind:src="announcement.images_url" class='announcement-img'></div>
          <label class="mt-4 announcement-name">{{ announcement.advertisements_name }}</label>
          <div class="col announcement-data">
              <label>{{ announcement.price }}</label>
              <label class="ml-4">{{ announcement.date_announcement }}</label>
          </div>
          <div class="characteristic">
              <label  class="announcement-characteristic">Год выпуска:{{ announcement.year }}</label>
              <label  class="announcement-characteristic">Вид топлива:{{ announcement.type_of_fuel }}</label>
              <label  class="announcement-characteristic">Пробег:{{ announcement.mileage }}</label>
          </div>
          <div class="description">
              <div class="col-5"><label  class="text-description">Description</label> </div>
              <textarea class="form-control description">{{announcement.description}}</textarea>
          </div>
          <comments
              :announcementId = id
              :userName = user.name
              :userPicture = user.picture
              :userId = user.id >
          </comments>

      </div>
 </template>

 <script>
 import comments from './Comments'
 export default {
     name: "Announcement",
     components: {
        comments,
     },
     data: function () {
         return {
             announcement : [],
             id: this.$route.params.id,
             user: [],
         }
     },
     methods: {
         showAnnouncement: function (e) {
             let vm = this
             axios.post('/api/announcement/show', { id: vm.id })
                 .then(function (response) {
                     vm.announcement = response.data.announcement.original.announcement;
                 })
                 .catch(function (error) {
                     console.log(error.response.data.errors);
                 })
         },
         getUserData: function (e) {
             let vm = this
             axios.get('/api/profile/user')
                 .then(function (response) {
                     vm.user = response.data.user;
                 })
                 .catch(function (error) {
                     console.log(error.response.data.errors);
                     vm.user_errors = error.response.data.errors;
                 })
         },
     },
     beforeMount(){
         this.showAnnouncement(),
             this.getUserData()
     }
 }
 </script>

 <style scoped>

 </style>
