<template>
  <div class="main-view">
    <MainTitle
      title="Cookies"
      text="个人主页和自我介绍"
    ></MainTitle>
  </div>
</template>

<script>
import MainTitle from "@/components/components/MainTitle";
export default {
  name: "Name",
  components: { MainTitle }
};
</script>

<style scoped>
div.main-view {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 45vh;
  background-color: var(--special-text);
  overflow: visible;
  margin-bottom: 45px;
}

div.main-view h2 {
  color: var(--white);
}

</style>
