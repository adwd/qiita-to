<template>
  <card>
    <img src="/images/adwd.jpg">
    <div class="content">
      <h4>Masahiro Nishida</h4>
      <span>@adwd</span>
    </div>
  </card>
</template>

<script>
import Card from '~/components/parts/card'
export default {
  components: {
    Card
  }
}
</script>

<style scoped lang="scss">
img {
  height: 80px;
  border-radius: 5px 0 0 5px;
}

.content {
  display: inline-flex;
  flex-direction: column;
  margin: 10px 6px;
  justify-content: center;

  span {
    margin-top: 2px;
    font-size: 0.8em;
  }
}
</style>
