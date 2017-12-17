<template>
  <div class="card-container">
    <slot></slot>
  </div>
</template>

<script>
export default {
}
</script>

<style scoped lang="scss">
.card-container {
  // margin-top: 20px;
  background-color: white;
  display: flex;
  border-radius: 5px;
  box-shadow: 0 1px 6px 0 rgba(0, 0, 0, 0.35);
}
</style>