<script lang="ts">
let { title = 'terminal', children } = $props();
</script>

<div class="tui-window flex flex-col h-full w-full">
  <div class="tui-header">
    <div class="flex items-center gap-2">
      <div class="flex gap-1.5">
        <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
        <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
        <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
      </div>
      <span class="ml-3 text-tui-dim uppercase tracking-[0.2em] text-[10px]">{title}</span>
    </div>
    <div class="text-[10px] text-tui-dim font-mono">SSH v2.0</div>
  </div>
  <div class="flex-grow p-6 overflow-y-auto overflow-x-hidden bg-slate-900/30">
    {@render children()}
  </div>
</div>

<style>
  div::-webkit-scrollbar {
    width: 4px;
  }
  div::-webkit-scrollbar-track {
    background: transparent;
  }
  div::-webkit-scrollbar-thumb {
    background: var(--color-tui-border);
    border-radius: 10px;
  }
</style>
