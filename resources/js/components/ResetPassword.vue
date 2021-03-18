<template>
    <div class="content p-3 text-white badge" align="center">
        <label class="sign-in"><h1>Reset password</h1></label>
        <form @submit.prevent="reset()" class="row">
            <div class="col-2"><label class="profile">Email</label></div>
            <div class="col-10"><input v-model="email" required class=" form-control mt-4" name="email"></input></div>
            <div class="col-12"><button type="submit" name="submit" class="btn-form sign-in m-2 btn"><strong>Reset password</strong></button></div>
        </form>
    </div>
</template>

<script>
export default {
name: "resetPassword",
    data: function () {
        return {
            email: null,
        }
    },
    methods: {
        reset: function (e) {
            let vm = this
            console.log(vm.email)
            axios.post('password/email', { "email": vm.email } )
                .then(function (response) {
                    window.location.href ='login';
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        }
    }
}

</script>

<style scoped>

</style>
