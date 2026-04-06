<script lang="ts">
import { onMount } from 'svelte';

let { text = '', speed = 50, delay = 0, onComplete = () => {} } = $props();
let displayedText = $state('');
let index = $state(0);

onMount(() => {
  setTimeout(() => {
    const interval = setInterval(() => {
      if (index < text.length) {
        displayedText += text[index];
        index++;
      } else {
        clearInterval(interval);
        onComplete();
      }
    }, speed);
  }, delay);
});
</script>

<div class="font-mono">
  <span>{displayedText}</span>
  {#if index < text.length}
    <span class="inline-block w-2 bg-tui-fg h-4 animate-pulse ml-0.5 align-middle"></span>
  {/if}
</div>
