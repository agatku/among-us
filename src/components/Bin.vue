<template>
  <div class="wrap" @dragover.prevent @drop.prevent="drop">
    <img class="bin" src="@/assets/bin.svg" alt="bin icon" />
    <p class="description">Delete an element.</p>
  </div>
</template>

<script>
export default {
  name: "Bin",
  methods: {
    drop: (e) => {
      const card_id = e.dataTransfer.getData("card_id");
      const card = document.getElementById(card_id);
      card.parentNode.removeChild(card);
    },
  },
};
</script>

<style>
.wrap {
  position: relative;
  height: 25px;
  width: 150px;
}

.description {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(29, 106, 154, 0.72);
  color: #fff;
  visibility: hidden;
  opacity: 0;
  transition: opacity 0.2s, visibility 0.2s;
}

.wrap:hover .description {
  visibility: visible;
  opacity: 1;
}
</style>
