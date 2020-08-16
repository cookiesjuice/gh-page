<template>
  <Title
      :title="title"
      :text="text"
      styleClass="mainTitle"
      titleLevel="1"
      no_line="true"
  />
</template>

<script lang="ts">
  import { Vue, Prop, Component } from "vue-property-decorator";
  import Title from "@/components/components/Title.vue";
  @Component({
    components: { Title }
  })
  export default class MainTitle extends Vue {
    @Prop() private title?: string;
    @Prop() private text?: string;
  }
</script>

<style>
  p.mainTitle,h1.mainTitle{
    color: var(--white);
  }
</style>
