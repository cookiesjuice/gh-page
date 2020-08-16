<template>
  <a class="contact-entry no-margin col-4-4 col-s2-4" :href="href">
    <img class="icon" :src="imgPath" :alt="text">
    <p class="link">{{text}}</p>
  </a>
</template>

<script lang="ts">
  import {Vue, Prop, Component} from "vue-property-decorator"
  @Component
  export default class ContactEntry extends Vue{
    @Prop() private img?: string;
    @Prop() private text?: string;
    @Prop() private href?: string;

    private publicPath = process.env.BASE_URL;

    get imgPath(): string{
      return `${this.publicPath}assets/${this.img}`;
    }
  }
</script>

<style scoped>
  a.contact-entry{
    display: block;
    color: var(--foot-text-highlight);
  }

  a.contact-entry:hover{
    color: var(--foot-text);
  }
img.icon{
  width: 24px;
  height: 24px;
  padding: 0 12px;
  float: left;
}
  p.link{
    height: auto;
    float: left;
    text-align: left;
  }
</style>