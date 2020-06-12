<template>
  <div id="app">
    <Title :myName="title"/>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import HelloWorld from "./components/HelloWorld.vue";
import Title from "./components/title/Title.vue"

@Component({
  components: {
    HelloWorld,
    Title
  }
})

export default class App extends Vue {
  @Prop() title = "Test";
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

[class*="col-*"]{
  float: left;
  padding: 15px;
}

/* for cellphones */
@media only screen {
  /* for tablet and screen */
  .col-s1{width: 25%;}
  .col-s2{width: 50%;}
  .col-s3{width: 75%;}
  .col-s4{width: 100%;}
  h1{
    font-size: 48px;
  }
}

/* for tablet and screen */
@media only screen and (min-width: 600px) {
  .col-1{width: 25%;}
  .col-2{width: 50%;}
  .col-3{width: 75%;}
  .col-4{width: 100%;}
  h1{
    font-size: 72px;
  }
}
</style>
