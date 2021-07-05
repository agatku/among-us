<template>
  <header class="info">
    <h1>Welcome to Among us tracker</h1>

    <Bin />
  </header>

  <main class="flexbox">
    <Board id="crew"> </Board>
    <Board id="likely-innocent"> </Board>
    <Board id="unknown">
      <Card id="banana" draggable="true"> </Card>
      <Card id="black" draggable="true"> </Card>
      <Card id="blue" draggable="true"> </Card>
      <Card id="brown" draggable="true"> </Card>
      <Card id="coral" draggable="true"> </Card>
      <Card id="cyan" draggable="true"> </Card>
      <Card id="gray" draggable="true"> </Card>
      <Card id="green" draggable="true"> </Card>
      <Card id="lime" draggable="true"> </Card>
      <Card id="maroon" draggable="true"> </Card>
      <Card id="orange" draggable="true"> </Card>
      <Card id="pink" draggable="true"> </Card>
      <Card id="purple" draggable="true"> </Card>
      <Card id="red" draggable="true"> </Card>
      <Card id="rose" draggable="true"> </Card>
      <Card id="tan" draggable="true"> </Card>
      <Card id="white" draggable="true"> </Card>
      <Card id="yellow" draggable="true"> </Card>
    </Board>
    <Board id="sus"> </Board>
    <Board id="impostor"> </Board>
  </main>
</template>

<script>
import Board from "./components/Board.vue";
import Card from "./components/AmongUsCard.vue";

import Bin from "./components/Bin.vue";

export default {
  name: "App",
  components: {
    Board,
    Card,
    Bin,
  },
};
</script>

<style>
html,
body {
  height: 100%;
  margin: 0px;
}

h1 {
  margin: 0px;
  padding-bottom: 10px;
}

h2 {
  text-align: center;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  height: 100%;
}

* {
  margin: 0;
  padding: 0;
  border: 0;
}

/* div {
  border: 1px solid black;
} */

.info {
  padding: 10px;
  height: 20%;
}

.flexbox {
  display: flex;
  height: 80%;
  width: 100%;
}

.column {
  width: 20%;
}

.board {
  height: 80%;
  border: 1px solid blueviolet;
  border-radius: 25px;
  margin: 2%;
  padding: 5%;
}
</style>
