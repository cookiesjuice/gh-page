<template>
  <Title
      :title="title"
      :text="text"
      titleLevel= "3"
      styleClass="subtitle"
      no_line="true"
  />
</template>

<script lang="ts">
  import {Vue, Prop, Component} from "vue-property-decorator";
  import Title from "@/components/components/Title.vue";
  @Component({
    components: { Title }
  })
  export default class SubTitle extends Vue{
    @Prop() private title?: string;
    @Prop() private text?: string;
  }
</script>

<style>
  h3.subtitle{
    color: var(--special-text);
  }
  p.subtitle{
    color: var(--black);
    text-align: left;
  }
</style>