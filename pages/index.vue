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
      <a class="advent-calendar"
        href="https://qiita.com/advent-calendar/2017"
        target="_blank">
        <card>
          &lt;Advent Calendar
          <i class="fa fa-heart" aria-hidden="true"></i>
          &gt;
        </card>
      </a>
      <div class="about">
        <card>
          <i class="fa fa-hand-o-right fa-lg" aria-hidden="true"></i>
          本サイトはqiitaおよびdev.toと何の関係もない個人がただのCSS練習用に作ったサイトです
        </card>
      </div>
      <!--<div>user ranking</div>-->
      <!--<div>tag ranking</div>-->
    </aside>
    <footer>
      <app-footer></app-footer>
    </footer>
  </div>
</template>

<script>
import AppHeader from '~/components/Header.vue'
import AppTimeLine from '~/components/TimeLine.vue'
import AppProfileCard from '~/components/ProfileCard.vue'
import HotTags from '~/components/HotTags.vue'
import Card from '~/components/parts/Card.vue'
import AppFooter from '~/components/Footer.vue'

export default {
  components: {
    AppHeader,
    AppTimeLine,
    AppProfileCard,
    HotTags,
    Card,
    AppFooter
  }
}
</script>

<style scoped lang="scss">
main,
aside.left,
aside.right {
  padding: 15px;
}

div.top {
  background-color: white;
}

footer {
  background-color: white;
  box-shadow: 0 -2px 2px rgba(0, 0, 0, 0.35);
}

@media screen and (max-width: 899px) {
  div.container {
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 41px 1fr 220px;
  }

  header {
    grid-row: 1 / 2;
    grid-column: 1 / 2;
  }

  div.top {
    grid-row: 1 / 2;
    grid-column: 1 / 2;
  }

  aside.left {
    display: none;
  }

  main {
    grid-row: 2 / 3;
    grid-column: 1 / 2;
  }

  aside.right {
    display: none;
  }

  footer {
    grid-row: 3 / 4;
    grid-column: 1 / 2;
  }
}

@media screen and (min-width: 900px) and (max-width: 1119px) {
  div.container {
    display: grid;
    grid-template-columns: 280px 1fr;
    grid-template-rows: 41px 1fr 220px;
  }

  header {
    grid-row: 1 / 2;
    grid-column: 1 / 3;
  }

  div.top {
    grid-row: 1 / 2;
    grid-column: 1 / 3;
  }

  aside.left {
    grid-row: 2 / 3;
    grid-column: 1 / 2;
  }

  main {
    grid-row: 2 / 3;
    grid-column: 2 / 3;
  }

  aside.right {
    display: none;
  }

  footer {
    grid-row: 3 / 4;
    grid-column: 1 / 3;
  }
}

@media screen and (min-width: 1120px) {
  div.container {
    display: grid;
    grid-template-columns: 1fr 280px minmax(auto, 600px) 280px 1fr;
    grid-template-rows: 41px 1fr 220px;
  }

  header {
    grid-row: 1 / 2;
    grid-column: 2 / 5;
  }

  div.top {
    grid-row: 1 / 2;
    grid-column: 1 / 6;
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
    display: block;
  }

  footer {
    grid-row: 3 / 4;
    grid-column: 1 / 6;
  }
}

a.advent-calendar, div.about {
  display: block;
  text-decoration: none;
  color: black;

  div.card-container {
    font-size: 16px;
    font-weight: bold;
    padding: 16px 8px;
  }
  i.fa-heart {
    padding: 0 3px;
    color: red;
  }
}

div.about {
  margin-top: 12px;

  .fa-hand-o-right {
    margin-top: 4px;
    margin-right: 6px;
  }
}
</style>
