<script lang="ts">
import { onMount } from 'svelte';

let { title = 'terminal', children } = $props();
</script>

<div class="tui-window flex flex-col h-full w-full overflow-hidden">
  <div class="tui-header">
    <div class="flex items-center gap-2">
      <span class="w-3 h-3 rounded-full bg-red-500/50 border border-red-500"></span>
      <span class="w-3 h-3 rounded-full bg-yellow-500/50 border border-yellow-500"></span>
      <span class="w-3 h-3 rounded-full bg-green-500/50 border border-green-500"></span>
      <span class="ml-2 font-bold uppercase tracking-wider opacity-80">{title}</span>
    </div>
    <div class="text-[10px] opacity-40">TTY1</div>
  </div>
  <div class="flex-grow p-4 overflow-auto bg-black/40 backdrop-blur-sm relative">
    <div class="scanline pointer-events-none"></div>
    {@render children()}
  </div>
</div>
