<template>
  <div class="project-entry col-s4-4 col-4-4" v-on:click="openUrl()">
    <h4>{{title}}</h4>
    <p>{{description}}</p>
  </div>
</template>

<script lang="ts">
  import { Vue, Prop, Component } from "vue-property-decorator";
  @Component
  export default class ProjectEntry extends Vue{
    @Prop() title?: string;
    @Prop() description?: string;
    @Prop() href?: string;
    openUrl(){
      open(this.href);
    }
  }
</script>

<style scoped>
  .project-entry{
    display: inline-block;
    cursor: pointer;
  }

  .project-entry:hover{
    background-color: var(--bg-emphasis);
  }
</style>