<template>
  <div
    class="card"
    :id="id"
    :draggable="draggable"
    @dragstart="dragStart"
    @dragover.stop
  >
    <img
      :src="require(`../assets/${id}.png`)"
      :draggable="false"
      aria-hidden="true"
    />
    <div class="card-info">
      <p contenteditable="true">nickname</p>
      <p>({{ id }})</p>
    </div>
  </div>
</template>

<script>
export default {
  props: ["id", "draggable"],
  methods: {
    dragStart: (e) => {
      const target = e.target;
      e.dataTransfer.setData("card_id", target.id);
    },
  },
};
</script>

<style>
.card {
  display: inline-block;
}

.card-info {
  display: inline-block;
  margin: 0px 5px;
  vertical-align: top;
}
</style>
