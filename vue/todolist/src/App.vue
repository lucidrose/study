<template>
<v-app>
  <div>
      <!-- <h1> {{ title }} </h1>
      <p> {{ count }} </p>
      <button @click="count++">추가</button>
      <HomeComponent />
      <AppStatus> </AppStatus> -->
      <HomeComponent />
  </div>
</v-app>
  
  
</template>

<script>
//import HomeComponent from './Home.vue'
import HomeComponent from './components/Home.vue'

  export default {
    components : {
      //HomeComponent,
      HomeComponent
    }, 
    data () {
       return {
         title : "안녕하세요",
         count : 1

       }
    }
  }
</script>
