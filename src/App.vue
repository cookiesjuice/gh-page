<template>
  <div id="app">
    <Name/>
    <PageContainer/>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Prop } from "vue-property-decorator";
import Name from "./components/info/Name.vue";
import PageContainer from "@/components/info/PageContainer.vue";

@Component({
  components: {
    Name,
    PageContainer
  }
})
export default class App extends Vue {
  @Prop() title = "Title";
  @Prop() text = "Lorem ipsum";
}
</script>

<style src="./style.css"></style>
