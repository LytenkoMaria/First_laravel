<template>

    <div class="content p-3 text-white badge" align="center">
        <label class="sign-in"><h1>Profile</h1></label>
            <div v-if="!isHidden" class="prof ">
                <div class="row">
                    <div class="col-12"><img :src="'/images/usersProfilePicture/' + user.picture" class="profile-img"></div>
                    <div class="col-2"><label class="profile">Name</label></div>
                    <div class="col-10"><input v-model="user.name" class=" form-control mt-4" name="name" readonly=""></input></div>
                    <div class="col-2"><label class="profile">Email</label></div>
                    <div class="col-10"><input v-model="user.email" class=" form-control mt-4" name="email" readonly=""></input></div>
                    <div class="col-2"><label class="profile">Country</label></div>
                    <div class="col-10"><input v-model="user.country" class=" form-control mt-4" name="country" readonly=""></input></div>
                    <div class="col-2"><label class="profile">City</label></div>
                    <div class="col-10"><input v-model="user.city" class=" form-control mt-4" name="city" readonly=""></input></div>
                </div>
                    <button  v-on:click="isHidden = !isHidden" type="button" name="submit" class="btn-form sign-in m-3 btn"><strong>Change</strong></button>
            </div>

            <div v-if="isHidden" class="change-prof">
                <div class="col-12"><img :src="'/images/usersProfilePicture/' + user.picture" class="profile-img"></div>
                <input type="file"   @change="changeImg"  class="btn form-control-file load-img">
                <form @submit.prevent="changeData()">
                    <div class="row">
                        <div class="col-2"><label class="profile">Name</label></div>
                        <div class="col-10"><input v-model="user.name" required class=" form-control mt-4" name="name"></input> </div>
                        <div class="col-2"><label class="profile">Email</label></div>
                        <div class="col-10"><input v-model="user.email" required class=" form-control mt-4" name="email"></input></div>
                        <select v-on:change.prevent="getCity()"  v-model="user.country" class="form-control country-city-form-profile">
                            <option selected disabled>Country</option>
                            <option v-for="option in options_country" >
                                {{ option.name }}
                            </option>
                        </select>
                        <select v-model="user.city" class="form-control country-city-form-profile" >
                            <option selected disabled>City</option>
                            <option v-for="option in options_city" >
                                {{ option }}
                            </option>
                        </select>
                    </div>
                        <button type="submit" name="submit" class="btn-form sign-in m-3 btn"><strong>Save changes</strong></button>
                </form>
            </div>

    </div>

</template>

<script>
export default {
    name: "profile",
    data: function () {
        return {
            user_errors: {},
            user: {},
            isHidden: false,
            options_country: [],
            options_city: [],
            picturePath : null,
            attachment: null,
        }

    },

    methods: {
        getUserData: function (e) {
            let vm = this
            axios.get('api/profile/user')
                .then(function (response) {
                    vm.user = response.data.user;
                    vm.getCity();
                })
                .catch(function (error) {
                   console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
        changeData: function (e) {
            let vm = this
            const formData = new FormData()
            axios.post('api/profile/update', {user: vm.user, attachment: formData})
                .then(function (response) {
                    vm.isHidden = !vm.isHidden;
                })
                .catch(function (error) {
                    console.log(error);
                    vm.user_errors = error;
                })
        },
        changeImg: function (e) {
            const config = { 'content-type': 'multipart/form-data' }
            let vm = this
            let uploadedFile = e.target.files[0]
            const formData = new FormData()
            formData.append('attachment', uploadedFile)
            formData.append('id', vm.user.id)
            console.log(uploadedFile)
            axios.post('/api/profile/update/img', formData, config )
                .then(function (response) {
                    vm.user.picture = response.data.newPicture;
                })
                .catch(function (error) {
                    console.log(error);
                    vm.user_errors = error;
                })
        },
        getCountry: function (e) {
            let vm = this
            axios.get('https://restcountries.eu/rest/v2/all')
                .then(function (response) {
                    vm.options_country = response.data;
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
        getCity: function (e) {
            let vm = this
            axios.post('https://countriesnow.space/api/v0.1/countries/cities', {"country" : vm.user.country} )
                .then(function (response) {
                    vm.options_city = response.data.data;
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
        loadImage: function (e) {
            this.attachment = e.target.files[0];
        }
    },
    beforeMount(){
        this.getUserData();
        this.getCountry();
    }

}
</script>

<style scoped>

</style>
