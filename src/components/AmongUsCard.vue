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
    <slot />
    ({{ id }})
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
</style>
