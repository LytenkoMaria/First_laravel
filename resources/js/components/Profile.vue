<template>

    <div class="content p-3 text-white badge" align="center">
        <label class="sign-in"><h1>Profile</h1></label>
            <div v-if="!isHidden" class="prof ">
                <div class="row">
                    <div class="col-2"><label class="profile">Name</label></div>
                    <div class="col-10"><input v-model="user.name" class=" form-control mt-4" name="name" readonly=""></input></div>
                    <div class="col-2"><label class="profile">Email</label></div>
                    <div class="col-10"><input v-model="user.email" class=" form-control mt-4" name="email" readonly=""></input></div>
                </div>
                    <button  v-on:click="isHidden = !isHidden" type="button" name="submit" class="btn-lg sign-in m-3 btn"><strong>Change</strong></button>
            </div>

            <div v-if="isHidden" class="change-prof">
                <form @submit.prevent="changeData()">
                    <div class="row">
                        <div class="col-2"><label class="profile">Name</label></div>
                        <div class="col-10"><input v-model="user.name" required class=" form-control mt-4" name="name"></input> </div>
                        <div class="col-2"><label class="profile">Email</label></div>
                        <div class="col-10"><input v-model="user.email" required class=" form-control mt-4" name="email"></input></div>
                    </div>
                        <button type="submit" name="submit" class="btn-lg sign-in m-3 btn"><strong>Save changes</strong></button>
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
            isHidden: false
        }
    },

    methods: {
        getUserData: function (e) {
            let vm = this
            axios.get('/profile/user')
                .then(function (response) {
                    vm.user = response.data.user;
                    console.log(response);

                })
                .catch(function (error) {
                   console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
        change: function (e) {

        },
        changeData: function (e) {
            let vm = this
            axios.post('/profile/update', {'user': this.user})
                .then(function (response) {
                    vm.isHidden = !vm.isHidden;
                    vm.user = response.data.user;
                    console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                    vm.user_errors = error;
                })
        }
    },
    beforeMount(){
        this.getUserData()
    },
}
</script>

<style scoped>

</style>
