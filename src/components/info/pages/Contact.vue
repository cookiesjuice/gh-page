<template>
  <div class="no-margin col-s4-4 col-4-4">
    <Title title="联系方式"/>
    <ContactEntry img="github.png" text="github.com/cookiesjuice" href="https://github.com/cookiesjuice/"/>
    <ContactEntry img="email.png" text="hy140866@gmail.com" href="mailto:hy140866@gmail.com"/>
    <ContactEntry img="twitter.png" text="@Cookiesjuice" href="https://twitter.com/Cookiesjuice"/>
    <ContactEntry img="steam.png" text="Steam" href="https://steamcommunity.com/id/cookiesjuice/"/>
    <ContactEntry img="qq.png" text="570185461" href="assets/qq_qrcode.png"/>
    <ContactEntry img="wechat.png" text="cookiesjuice" href="assets/wechat_qrcode.png"/>
  </div>
</template>

<script>
  import Title from "@/components/components/Title";
  import ContactEntry from "@/components/components/ContactEntry";
  export default {
    name: "Contact",
    components: { ContactEntry, Title }
  };
</script>

<style scoped>

</style>