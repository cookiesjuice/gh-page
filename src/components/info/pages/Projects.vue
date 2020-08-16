<template>
  <div class="no-margin col-4-4 col-s4-4">
    <Title title="个人项目"/>
    <div class="projects">
      <div class ="project-entry" v-for="project in projects" :key="project">
        <ProjectEntry :title="project.title" :description="project.description" :href="project.href"/>
      </div>
    </div>

  </div>
</template>

<script lang="ts">
  import Title from "@/components/components/Title.vue";
  import ProjectEntry from "@/components/components/ProjectEntry.vue";

  interface ProjectData{
    title: string;
    description: string;
    href: string;
  }

  const projects: ProjectData[] = [
    {
      title: "徒步app",
      description: "学校软件工程课的作业，一款带有社交功能的徒步用的安卓app。",
      href: "https://github.com/UCSD-CSE-110-2020/team-project-team33"
    },
    {
      title: "Screeps游戏AI框架",
      description: "用操作系统的概念设计的Screeps游戏的AI框架。",
      href: "https://github.com/UoP-screeps/uos"
    },
    {
      title: "个人主页",
      description: "也就是这个网页，使用了Vue和ts实现。",
      href: "https://github.com/cookiesjuice/gh-page"
    }
  ];

  export default {
    name: "Projects",
    components: { Title, ProjectEntry },
    data(){
      return {
        projects
      }
    }
  };

</script>

<style scoped>
  .projects{
    display: inline-grid;
    grid-column-gap: 0;
    grid-template-columns: repeat(1, 1fr);
    grid-auto-rows: auto;
  }
  @media only screen and (min-width: 600px){
    .projects{
      grid-template-columns: repeat(2, 1fr);
    }
  }
</style>