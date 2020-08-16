<template>
  <div class="ability no-margin col-4-4 col-s4-4">
    <Title title="个人能力" />
    <div class="no-margin col-4-4 col-s4-4">
      <SubTitle title="计算机语言" />
      <div v-for="ability in programmingLanguage" :key="ability">
        <AbilityEntry :name="ability.name" :stars="ability.stars" />
      </div>
    </div>
    <div class="no-margin col-4-4 col-s4-4">
      <SubTitle title="计算机能力" />
      <div v-for="ability in computerSkill" :key="ability">
        <AbilityEntry :name="ability.name" :stars="ability.stars" />
      </div>
    </div>
    <div class="no-margin col-4-4 col-s4-4">
      <SubTitle title="工具" />
      <div v-for="ability in tools" :key="ability">
        <AbilityEntry :name="ability.name" :stars="ability.stars" />
      </div>
    </div>
    <div class="no-margin col-4-4 col-s4-4">
      <SubTitle title="自然语言" />
      <div v-for="ability in naturalLanguage" :key="ability">
        <AbilityEntry :name="ability.name" :stars="ability.stars" />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import AbilityEntry from "../../components/AbilityEntry.vue";
import Title from "@/components/components/Title.vue";
import SubTitle from "@/components/components/SubTitle.vue";

interface AbilityData {
  name: string;
  stars: number;
}

const programmingLanguage: AbilityData[] = [
  { name: "Java", stars: 5 },
  { name: "JavaScript", stars: 5 },
  { name: "TypeScript", stars: 4 },
  { name: "Python", stars: 4 },
  { name: "CSS", stars: 4 },
  { name: "HTML", stars: 4 },
  { name: "C", stars: 3 },
  { name: "C++", stars: 3 },
  { name: "C#", stars: 3 },
  { name: "Haskell", stars: 2 },
  { name: "Assembly", stars: 2 },
  { name: "Shell Script", stars: 2 },
  { name: "Verilog", stars: 1 }
];

const computerSkill: AbilityData[] = [
  {name: "软件工程", stars: 5},
  {name: "面向对象编程", stars: 5},
  {name: "函数式编程", stars: 5},
  {name: "安卓开发", stars: 4},
  {name: "测试 / debug", stars: 4},
  {name: "算法 / 数据结构", stars: 4},
  {name: "机器学习", stars: 3},
  {name: "操作系统", stars: 3},
  {name: "数字电路", stars: 2}
];

const tools: AbilityData[] = [
  { name: "FireFox", stars: 5 },
  {name: "Idea IDE", stars: 5},
  {name: "MS Office", stars: 5},
  {name: "Git", stars: 4},
  {name: "UML", stars: 4},
  {name: "Windows", stars: 4},
  {name: "Linux", stars: 4},
  {name: "Vim", stars: 3}
];

const naturalLanguage: AbilityData[] = [
  {name: "中文", stars: 5},
  {name: "English", stars: 5},
  {name: "日本語", stars: 3}
];

export default {
  name: "Ability",
  components: { SubTitle, Title, AbilityEntry },
  data() {
    return {
      programmingLanguage,
      computerSkill,
      tools,
      naturalLanguage
    };
  }
};
</script>

<style scoped></style>
