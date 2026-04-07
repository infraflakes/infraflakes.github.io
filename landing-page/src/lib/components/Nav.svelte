<script lang="ts">
let { name = 'infraflakes' } = $props();
</script>

<nav class="sticky top-0 z-50 bg-canvas/80 backdrop-blur-sm border-b border-border mb-12">
  <div class="max-w-4xl mx-auto px-6 h-14 flex justify-between items-center">
    <div class="font-bold tracking-tighter text-base">
      [{name}]
    </div>
    <div class="flex gap-6 text-[11px] uppercase tracking-widest text-muted">
      <a href="#about" class="hover:text-accent">About</a>
      <a href="#projects" class="hover:text-accent">Projects</a>
      <a href="#contact" class="hover:text-accent">Link</a>
    </div>
  </div>
</nav>
