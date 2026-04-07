<script lang="ts">
import '../app.css';
import Nav from '$lib/components/Nav.svelte';

let { children } = $props();
</script>

<Nav />
<main class="pt-16">
  {@render children()}
</main>
