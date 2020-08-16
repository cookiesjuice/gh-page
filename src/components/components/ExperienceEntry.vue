<template>
  <div class="experience-entry no-margin col-4-4 col-s4-4">
    <div class="col-s1-3 col-3-3">
      <h4>{{location}}</h4>
      <p>{{date}}</p>
    </div>
    <div class="col-s2-3 col-3-3">
      <h4>{{roles}}</h4>
      <p style="text-align: left;">{{description}}</p>
    </div>
  </div>
</template>

<script lang="ts">
  import { Vue, Prop, Component } from "vue-property-decorator";
  @Component
  export default class ExperienceEntry extends Vue{
    @Prop() private location?: string;
    @Prop() private startTime?: string;
    @Prop() private endTime?: string;
    @Prop() private roles?: string;
    @Prop() private description?: string;
    get date(): string{
      return `${this.startTime} - ${this.endTime}`;
    }
  }
</script>

<style scoped>
  .experience-entry{
    display: inline-block;
  }

  .experience-entry:hover{
    background-color: var(--bg-emphasis);
  }
</style>