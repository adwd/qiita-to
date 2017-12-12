<template>
  <div class="container">
    <div class="top"></div>
    <header>
      <app-header></app-header>
    </header>
    <aside class="left">menu</aside>
    <main>trend</main>
    <aside class="right">
      <div>advent calandar</div>
      <div>user ranking</div>
      <div>tag ranking</div>
    </aside>
    <footer></footer>
  </div>
</template>

<script>
import Logo from '~/components/Logo.vue'
import AppHeader from '~/components/Header.vue'

export default {
  components: {
    Logo,
    AppHeader
  }
}
</script>

<style scoped>
  .container {
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

  aside.left, aside.right, main, footer {
    padding: 10px;
    background-color: #bbbbbb;
    border: 5px solid #444444;
  }
</style>
