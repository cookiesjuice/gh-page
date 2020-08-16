<template>
  <div class="no-margin experience col-4-4 col-s4-4">
    <Title title="履历"/>
    <SubTitle title="教育"></SubTitle>
    <div class="exp-list" v-for="experience in educationExperiences" :key="experience">
      <ExperienceEntry
        :location="experience.location"
        :startTime="experience.startTime"
        :endTime="experience.endTime"
        :roles="experience.roles"
        :description="experience.description"
      ></ExperienceEntry>
    </div>

    <SubTitle title="工作"></SubTitle>
    <div class="exp-list" v-for="experience in workExperiences" :key="experience">
      <ExperienceEntry
          :location="experience.location"
          :startTime="experience.startTime"
          :endTime="experience.endTime"
          :roles="experience.roles"
          :description="experience.description"
      ></ExperienceEntry>
    </div>
  </div>
</template>

<script lang="ts">
  import ExperienceEntry from "@/components/components/ExperienceEntry.vue";
  import Title from "@/components/components/Title.vue";
  import SubTitle from "@/components/components/SubTitle.vue";

  interface ExperienceData{
    location: string;
    startTime: string;
    endTime: string;
    roles: string;
    description: string;
  }

  const educationExperiences: ExperienceData[] = [
    {
      location: "UCSD",
      startTime: "2017.09",
      endTime: "现在",
      roles: "计算机科学专业 本科学位",
      description: "加州大学圣地亚哥分校。2017年9月入学，学习了计算机的基础知识，" +
          "包括编程，测试，各种算法，数据结构，开发工具，编程语言。2020年4月开始" +
          "由于疫情休学，目前归校时间未定。。"
    }
  ];

  const workExperiences: ExperienceData[] = [
    {
      location: "华为技术有限公司",
      startTime: "2018.08",
      endTime: "2018.09",
      roles: "实习",
      description: "用Python编写了一个用于连接华为研发的数据库的模块，并且改进了模块的部署脚本，" +
        "在实习过程中独自解决了多个操作系统层面的问题，获得主管的高度认可。"
    },
    {
      location: "瓴盛科技有限公司",
      startTime: "2019.08",
      endTime: "2019.09",
      roles: "实习",
      description: "参与了人脸识别项目中多项任务的程序编程实现。编写了一个不同训练数据格式转换的脚本，以及" +
        "用训练好的模型实现了视频实时通过网络传输，识别，再返回识别的结果。"
    }
  ];

  export default {
    name: "Experience",
    components: { ExperienceEntry, SubTitle, Title },
    data() {
      return {
        educationExperiences,
        workExperiences
      }
    }
  };
</script>

<style scoped>
  .experience div.exp-list{
    display: flex;
  }

  .experience div.exp-list{
    margin-bottom: 45px;
  }
</style>