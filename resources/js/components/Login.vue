<template>
    <div class="content p-3 text-white badge" align="center">
        <form @submit.prevent="save()">
            <label class="sign-in"><h1>Sign in</h1></label>
            <div v-if="Object.keys(user_errors).length" class="alert alert-danger ">
                <ul class="list-group">
                    <li v-for="error in user_errors" class="list-group-item list-group-item-danger">
                        <span v-for="item in error">{{ item }}</span>
                    </li>
                </ul>
            </div>
            <input v-model="form.email" required type="email" class=" form-control mt-4" name="email"  autocomplete="email" placeholder="Email">
            <input v-model="form.password" required type="password" class=" form-control mt-4" name="password"  placeholder="password">
            <router-link to="/reset" class="reset" >Forgot password?</router-link>
            <button  type="submit" name="submit" class="btn-form sign-in m-4 btn"><strong>Sign in</strong></button>
        </form>
    </div>

</template>

<script>
export default {
    name: "Login",
    data: function () {
        return {
            form: {
                email: null,
                password: null,
            },
            user_errors: {}
        }
    },

    methods: {
        save: function (e) {
            let vm = this
            axios.post('/login', this.form)
                .then(function (response) {
                    window.location.href ='home';
                })
                .catch(function (error) {
                    console.log(error);
                    vm.user_errors = error.response.data.errors;
                })
        }
    }
}
</script>

<style scoped>

</style>
