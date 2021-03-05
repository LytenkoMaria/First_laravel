<template>
  <div>
    <div class="content p-3 text-white badge" align="center">
        <label class="sign-in"><h1>Reset password</h1></label>
        <form @submit.prevent="resetPassword()" >
            <input required v-model="form.password" type="password" class=" form-control mt-4" name="password"  placeholder="Password">
            <input required v-model="form.password_confirmation" type="password"   class=" form-control mt-4" name="password_confirmation"  placeholder="Confirm password">
            <div class="col-12"><button type="submit" name="submit" class="btn-form sign-in m-2 btn"><strong>Reset password</strong></button></div>
        </form>
    </div>
  </div>
</template>

<script>
export default {
    name: "newPassword",
    data: function () {
        return {
            form: {
                password: null,
                password_confirmation: null,
                token: this.$route.params.token,
                email: this.$route.query.email,
            }
        }
    },
    methods: {
        resetPassword: function (e) {
            let vm = this
            axios.post('/password/reset', this.form)
                .then(function (response) {
                    window.location.href ='home';
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        }
    },
}

</script>

<style scoped>

</style>
