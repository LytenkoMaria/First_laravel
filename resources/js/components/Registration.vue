<template>
    <div class="content p-3 text-white badge">
          <form @submit.prevent="save()">
              <label class="sign-in"><h1>Sign up</h1></label>
                  <div v-if="Object.keys(user_errors).length" class="alert alert-danger ">
                      <ul class="list-group">
                          <li v-for="error in user_errors" class="list-group-item list-group-item-danger">
                              <span v-for="item in error">{{ item }}</span>
                          </li>
                      </ul>
                  </div>
                        <input required type="email" v-model="form.email" class=" form-control mt-4" name="email"  autocomplete="email" placeholder="Email">
                        <input required type="text" v-model="form.name" class=" form-control mt-4" name="name"  autocomplete="name" placeholder="Name">
                        <input required type="password" v-model="form.password" class=" form-control mt-4" name="password"  placeholder="Password">
                        <input required type="password"  v-model="form.password_confirmation" class=" form-control mt-4" name="password_confirmation"  placeholder="Confirm password">
                        <button  type="submit" name="submit" class="btn-lg sign-in m-3 btn" ><strong>Sign up</strong></button>
          </form>
    </div>
</template>

<script>
export default {
    name: "Registration",
    data: function () {
        return {
            form: {
                email: null,
                name: null,
                password: null,
                password_confirmation: null
            },
            user_errors: {}
        }
    },

    methods: {
        save: function (e) {
            let vm = this
            axios.post('/register', this.form)
                .then(function (response) {
                    console.log(response);
                    window.location.href ='home';
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
