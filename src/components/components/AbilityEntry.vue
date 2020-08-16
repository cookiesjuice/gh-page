<template>
  <div class="ability-entry col-4-4 col-s2-4">
    <span style="float: left; text-align: left;">{{name}}</span>
    <span style="float: right; color: var(--special-text);">{{starString}}</span>
  </div>
</template>

<script lang="ts">
  import {Vue, Prop, Component} from "vue-property-decorator"
  @Component
  export default class AbilityEntry extends Vue{
    @Prop() private name?: string;
    @Prop() private stars?: string;
    get starString(): string{
      const FULL_STAR = "★";
      const EMPTY_STAR = "☆";
      const MAX_STARS = 5;
      let str = "";
      const stars = parseInt(this.stars || '0');
      for(let i = 0; i < MAX_STARS; i++){
        if(i !== 0){
          str += " ";
        }
        if(i < stars){
          str += FULL_STAR;
        }else{
          str += EMPTY_STAR;
        }
      }
      return str;
    }
  }
</script>

<style scoped>
  .ability-entry:hover{
    background-color: var(--white-emphasis);
  }
</style>