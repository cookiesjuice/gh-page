<template>
  <div class="container">
    <Profile class="white"/>
    <Experience class="alternate"/>
    <Ability class="white"/>
    <Projects class="alternate"/>
    <Contact class="foot"/>
  </div>
</template>

<script lang="ts">
  import Profile from "./pages/Profile.vue";
  import Experience from "@/components/info/pages/Experience.vue";
  import Ability from "@/components/info/pages/Ability.vue";
  import Contact from "@/components/info/pages/Contact.vue";
  import Projects from "@/components/info/pages/Projects.vue";
  export default {
    name: "PageContainer",
    components: { Projects, Contact, Ability, Experience, Profile },
  };
</script>

<style scoped>
  div.container *{
    width: 100%;
    padding: 45px var(--margin);
  }


</style>