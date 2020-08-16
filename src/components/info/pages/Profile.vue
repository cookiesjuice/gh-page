<template>
  <div class="no-margin profile col-4-4 col-s4-4">
    <Title title="个人信息" text="计算机专业学生"></Title>
    <div class="col-4-4 col-s2-4">
      <SubTitle :title="aboutMe.title" :text="aboutMe.text"/>
    </div>
    <div class="col-4-4 col-s2-4">
      <SubTitle :title="myGoal.title" :text="myGoal.text"/>
    </div>
  </div>
</template>

<script>
  import Title from "@/components/components/Title";
  import SubTitle from "@/components/components/SubTitle";
  export default {
    name: "Profile",
    components: { SubTitle, Title },
    data(){
      return {
        aboutMe: {
          title: "关于我",
          text: "我是一名UCSD的计算机科学学生。我喜欢计算机，对历史人文和金融也有浓厚的兴趣。" +
              "我从前端开发到人工智能到操作系统到数字电路我都有所学习。" +
              "我喜欢整齐的程序结构，划分清晰的模块，容易读懂的代码，方便扩展的功能。" +
              "我也喜欢寻找更高效的算法更快速地解决问题。"
        },
        myGoal: {
          title: "我的目标",
          text: "我希望可以用我的能力来完成一些有挑战的任务，然后在完成这些任务的同时" +
              "找到我进一步学习的目标和努力的方向，提升自己的能力。"
        }
      }
    }
  };
</script>

<style scoped>
</style>