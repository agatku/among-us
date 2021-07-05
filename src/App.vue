<template>
  <header class="info">
    <h1>Welcome to Among us tracker</h1>
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

export default {
  name: "App",
  components: {
    Board,
    Card,
  },
};
</script>

<style>
html,
body {
  height: 100%;
  margin: 0px;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  height: 100%;
}

div {
  border: 1px solid black;
}

.info {
  height: 20%;
}

.flexbox {
  display: flex;
  height: 80%;
  width: 100%;
}

.board {
  border: 1px solid blueviolet;
  width: 20%;
}
</style>
