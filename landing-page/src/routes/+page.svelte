<script lang="ts">
const projects = [
  {
    name: 'srwc',
    desc: 'An infinite canvas Wayland compositor.',
    lang: 'Rust',
    url: 'https://github.com/infraflakes/srwc',
  },
  {
    name: 'Veda Anchor',
    desc: 'WIP Windows app and web blocker in Go and C.',
    lang: 'C, Go',
    url: '#',
  },
  {
    name: 'srwm',
    desc: 'An infinite canvas X11 window manager.',
    lang: 'C, Rust',
    url: 'https://github.com/infraflakes/srwm-x11',
  },
  {
    name: 'blogserve',
    desc: 'Blazing fast and simple markdown-based static blog engine.',
    lang: 'Go',
    url: 'https://github.com/infraflakes/blogserve',
  },
];

const links = [
  { label: 'GitHub', url: 'https://github.com/infraflakes' },
  { name: 'LinkedIn', url: 'https://linkedin.com/in/infraflakes' },
  { name: 'Twitter', url: 'https://twitter.com/infraflakes' },
];
</script>

<svelte:head>
  <title>infraflakes | developer</title>
</svelte:head>

<div class="max-w-4xl mx-auto px-6 space-y-16 pb-24">
  <!-- Humble Header -->
  <header id="about" class="space-y-4 pt-8">
    <h1 class="text-xl">infraflakes</h1>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-muted leading-relaxed max-w-2xl">
      <p>
        Self taught platform engineer. I enjoy building high-performance systems and tooling.
      </p>
      <div class="text-[13px] space-y-2 font-mono uppercase tracking-tight tabular-nums border-l border-border pl-6">
        <div class="flex justify-between border-b border-border/50 pb-1.5"><span class="text-muted">Status:</span> <span class="text-foreground">On Hiatus</span></div>
        <div class="flex justify-between border-b border-border/50 pb-1.5"><span class="text-muted">Age:</span> <span class="text-foreground">18</span></div>
        <div class="flex justify-between border-b border-border/50 pb-1.5"><span class="text-muted">Stack:</span> <span class="text-foreground">Rust, C, Go, Nix</span></div>
        <div class="flex justify-between border-b border-border/50 pb-1.5"><span class="text-muted">Located:</span> <span class="text-foreground">Vietnam</span></div>
      </div>
    </div>
  </header>

  <!-- Projects Section -->
  <section id="projects" class="section-container space-y-6">
    <h2 class="text-xs uppercase tracking-[0.2em] text-muted">Projects</h2>
    <div class="border-t border-border">
      {#each projects as project}
        <a href={project.url} class="project-entry group">
          <div class="md:col-span-1 font-bold group-hover:text-accent">{project.name}</div>
          <div class="md:col-span-2 text-muted text-[13px]">{project.desc}</div>
          <div class="md:col-span-1 text-right text-[10px] text-neutral-300 uppercase italic">{project.lang}</div>
        </a>
      {/each}
    </div>
  </section>

  <!-- Contact/Links Section -->
  <section id="contact" class="section-container grid grid-cols-1 md:grid-cols-2 gap-12">
    <div class="space-y-4">
      <h2 class="text-xs uppercase tracking-[0.2em] text-muted">Contact</h2>
      <p class="text-muted">Available for discussions.</p>
      <a href="mailto:infraflakes@proton.me" class="util-link text-foreground font-bold">infraflakes@proton.me</a>
    </div>
    
    <div class="space-y-4">
      <h2 class="text-xs uppercase text-[15px] tracking-[0.2em] text-muted">Availability</h2>
      <ul class="space-y-2 text-xs">
        <li class="flex items-center gap-2">
          <span class="w-1.5 h-1.5 bg-accent/40 rounded-full"></span>
          <a href="https://github.com/infraflakes" class="util-link">GitHub</a>
        </li>
        <li class="flex items-center gap-2">
          <span class="w-1.5 h-1.5 bg-border rounded-full"></span>
          <a href="https://x.com/infraflakes" class="util-link">X (formerly Twitter)</a>
        </li>
      </ul>
    </div>
  </section>

  <footer class="pt-24 flex justify-between items-center text-[12px] text-muted tracking-widest uppercase">
    <div>2026 @ infraflakes</div>
    <div class="flex gap-8">
      <span>V0.0.1</span>
    </div>
  </footer>
</div>
