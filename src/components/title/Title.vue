<template>
  <div class="title">
    <h1>{{myName}}</h1>
  </div>
</template>

<script lang="ts">
import {Vue, Prop, Component} from "vue-property-decorator";

@Component
export default class Title extends Vue {
  @Prop() private myName: Nullable<string>;
}
</script>

<style scoped>

</style>
