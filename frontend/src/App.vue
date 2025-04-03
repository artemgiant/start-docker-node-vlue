<template>
  <div style="padding: 2rem">
    <h1>Hello from Vue 3 + Vite!</h1>
    <p>Backend Response: {{ message }}</p>
    <button @click="fetchMessage">Load Message</button>
    <button @click="getUsers">Load Users</button>
  </div>
</template>

<script setup>
import {ref} from 'vue'

const message = ref('')

async function fetchMessage() {
  try {
    const res = await fetch('/api/hello')
    message.value = await res.text()
  } catch (err) {
    message.value = 'Error fetching from backend'
  }
}

async function getUsers() {
  try {

    const res = await fetch('api/users')
    message.value = await res.text()


  } catch (err) {
    message.value = err.message;
  }
}
</script>
