<template>
    <div >
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="/">Laravel</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" >
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse">
                <div class="navbar-nav">

                    <ul class="navbar-nav ml-auto">

                        <li   v-if="isHidden" class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                fffff
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <router-link class="dropdown-item" to="/profile">Settings</router-link>
                                <router-link class="dropdown-item" to="/announcements">Announcements</router-link>
                                <a class="dropdown-item" v-on:click.prevent="logout()">Logout</a>
                                <input type="hidden" name="_token" v-model="csrf">

                            </div>
                        </li>
                        <li  v-if="!isHidden" class="nav-item">
                            <router-link class="dropdown-item" to="/login">Login</router-link>
                        </li>
                        <li  v-if="!isHidden" class="nav-item">
                            <router-link class="dropdown-item" to="/registration">Registration</router-link>
                        </li>

                     </ul>
                </div>
            </div>
            </div>
        </nav>
        <br/>
        <router-view></router-view>
    </div>
</template>

<script>
export default {
    name: "profile",
    data: function () {
        return {
            isHidden: false,
            csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('value'),
        }
    },
    methods: {
        logout: function (e) {
            let vm = this
            axios.post('logout', this.csrf )
                .then(function (response) {
                    vm.isHidden = true;
                    window.location.href = '/';
                })
                .catch(function (error) {
                    console.log(error);
                })
        },
        authCheck: function (e) {
            let vm = this
            axios.get('/api/user/check' )
                .then(function (response) {
                    vm.isHidden = response.data.userAuth;
                })
                .catch(function (error) {
                    console.log(error);
                })
        }
    },
    beforeMount(){
        this.authCheck()
    }
}
</script>
