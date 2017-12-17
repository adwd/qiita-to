<template>
  <div class="container">
    <div class="top"></div>
    <header>
      <app-header></app-header>
    </header>
    <aside class="left">
      <app-profile-card></app-profile-card>
      <hot-tags></hot-tags>
    </aside>
    <main>
      <app-time-line></app-time-line>
    </main>
    <aside class="right">
      <div>advent calandar</div>
      <div>user ranking</div>
      <div>tag ranking</div>
    </aside>
    <footer></footer>
  </div>
</template>

<script>
import AppHeader from '~/components/Header.vue'
import AppTimeLine from '~/components/TimeLine.vue'
import AppProfileCard from '~/components/ProfileCard.vue'
import HotTags from '~/components/HotTags.vue'

export default {
  components: {
    AppHeader,
    AppTimeLine,
    AppProfileCard,
    HotTags
  }
}
</script>

<style scoped>
div.container {
  display: grid;
  grid-template-columns: 1fr 280px minmax(auto, 600px) 280px 1fr;
  grid-template-rows: 41px 1fr 220px;
}

header {
  grid-row: 1 / 2;
  grid-column: 2 / 5;
}

main,
aside.left,
aside.right {
  padding: 15px;
}

div.top {
  grid-row: 1 / 2;
  grid-column: 1 / 6;

  background-color: white;
}

aside.left {
  grid-row: 2 / 3;
  grid-column: 2 / 3;
}

main {
  grid-row: 2 / 3;
  grid-column: 3 / 4;
}

aside.right {
  grid-row: 2 / 3;
  grid-column: 4 / 5;
}

footer {
  grid-row: 3 / 4;
  grid-column: 1 / 6;
}

aside.right,
footer {
  background-color: #bbbbbb;
  border: 5px solid #444444;
}
</style>
