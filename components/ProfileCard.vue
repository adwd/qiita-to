<template>
  <div class="profile-card-container">
    <img src="/images/adwd.jpg">
    <div class="content">
      <h4>Masahiro Nishida</h4>
      <span>@adwd</span>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped lang="scss">
.profile-card-container {
  // margin-top: 20px;
  background-color: white;
  display: flex;
  border-radius: 5px;

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
}
</style>
