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
                  <div class="col-2"><label class="profile">Country</label></div>
                  <select v-on:change.prevent="getCity()" v-model="form.country" class="form-control country-city-form-reg" required>
                      <option selected disabled>Country</option>
                      <option v-for="option in options_country">
                         {{ option.name }}
                      </option>
                  </select>
                  <div class="col-2"><label class="profile">City</label></div>
                      <select v-bind:disabled="isDisabled" v-model="form.city" class="form-control country-city-form-reg" required>
                         <option selected disabled>City</option>
                         <option v-for="option in options_city" >
                             {{ option }}
                         </option>
                      </select>
                  <button  type="submit" name="submit" class="btn-form sign-in m-3 btn" ><strong>Sign up</strong></button>
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
                password_confirmation: null,
                country: null,
                city: null,
            },
            user_errors: {},
            options_country: [],
            options_city: [],
            isDisabled: true
        }
    },
    methods: {
        save: function (e) {
            let vm = this
            axios.post('/register', this.form)
                .then(function (response) {
                    window.location.href ='home';
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
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
            axios.post('https://countriesnow.space/api/v0.1/countries/cities', {"country" : vm.form.country} )
                .then(function (response) {
                    vm.isDisabled = false;
                    vm.options_city = response.data.data;
                })
                .catch(function (error) {
                    console.log(error.response.data.errors);
                    vm.user_errors = error.response.data.errors;
                })
        },
    },
    beforeMount(){
        this.getCountry();
    }
}
</script>

<style scoped>

</style>
