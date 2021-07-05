<template>
  <div class="column">
    <h2>{{ id }}</h2>
    <div :id="id" class="board" @dragover.prevent @drop.prevent="drop">
      <slot />
    </div>
  </div>
</template>

<script>
export default {
  props: ["id"],
  methods: {
    drop: (e) => {
      const card_id = e.dataTransfer.getData("card_id");
      const card = document.getElementById(card_id);

      e.target.appendChild(card);
    },
  },
};
</script>

<style>
#crew {
  border-color: blue;
}

#likely-innocent {
  border-color: green;
}

#unknown {
  border-color: grey;
}

#sus {
  border-color: blueviolet;
}

#impostor {
  border-color: red;
}
</style>
