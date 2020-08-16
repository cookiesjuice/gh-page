<template>
  <div class="title">
    <h1 v-if="titleLevel === '1'" :class="styleClass">{{ title }}</h1>
    <h3 v-else-if="titleLevel === '3'" :class="styleClass">{{ title }}</h3>
    <h4 v-else-if="titleLevel === '4'" :class="styleClass">{{ title }}</h4>
    <h5 v-else-if="titleLevel === '5'" :class="styleClass">{{ title }}</h5>
    <h6 v-else-if="titleLevel === '6'" :class="styleClass">{{ title }}</h6>
    <h2 v-else :class="styleClass">{{ title }}</h2>
    <p :class="styleClass">{{ text }}</p>
    <hr v-if="!no_line" />
  </div>
</template>

<script lang="ts">
import { Vue, Prop, Component } from "vue-property-decorator";

@Component
export default class Title extends Vue {
  @Prop() private title?: string;
  @Prop() private text?: string;
  @Prop() private styleClass?: string;
  @Prop() private no_line?: string;
  @Prop() private titleLevel?: string;
}
</script>

<style scoped>
  div.title{
    display: block;
    width: 100%;
  }
  p{
    color: var(--light-text)
  }
hr {
  margin: 40px 0;
  opacity: 0.2;
}
</style>
