<script lang="ts">
import '../app.css';
import Nav from '$lib/components/Nav.svelte';
import favicon from '$lib/assets/favicon-32x32.png';

let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

<Nav />
<main class="pt-16">
  {@render children()}
</main>
