<script lang="ts">
import Window from '$lib/components/Window.svelte';
import TypedText from '$lib/components/TypedText.svelte';
import { onMount } from 'svelte';

let stage = $state(0);
let showContent = $state(false);

const nextStage = () => {
  stage++;
};

onMount(() => {
  // Start the sequence
});
</script>

<svelte:head>
  <title>infraflakes | Portfolio</title>
</svelte:head>

<main class="min-h-screen p-4 md:p-8 flex items-center justify-center bg-tui-bg relative overflow-hidden">
  <div class="fixed inset-0 pointer-events-none z-50 overflow-hidden">
    <div class="absolute inset-0 bg-[radial-gradient(circle,rgba(0,255,0,0.05)_1px,transparent_1px)] bg-[size:20px_20px]"></div>
    <div class="crt-flicker absolute inset-0 bg-tui-bg/5 pointer-events-none"></div>
  </div>

  <div class="w-full max-w-4xl aspect-video md:aspect-auto md:h-[80vh] flex flex-col gap-4">
    <Window title="system_io">
      <div class="space-y-2 text-sm md:text-base">
        {#if stage >= 0}
          <TypedText text="> Initializing infraflakes_core v1.0.4..." speed={30} onComplete={nextStage} />
        {/if}
        
        {#if stage >= 1}
          <TypedText text="> Loading kernel modules... [OK]" speed={20} delay={500} onComplete={nextStage} />
        {/if}
        
        {#if stage >= 2}
          <TypedText text="> Checking network interfaces... [CONNECTED]" speed={20} delay={300} onComplete={nextStage} />
        {/if}
        
        {#if stage >= 3}
          <div class="pt-4">
            <TypedText text="WELCOME TO INFRAFLAKES PORTFOLIO" speed={50} delay={500} onComplete={() => { stage++; showContent = true; }} />
          </div>
        {/if}

        {#if showContent}
          <div class="mt-8 grid grid-cols-1 md:grid-cols-2 gap-8 animate-in fade-in slide-in-from-bottom-4 duration-1000">
            <section class="space-y-4">
              <h2 class="text-xl font-bold border-b border-tui-fg/30 pb-1 inline-block">ABOUT.BIN</h2>
              <p class="text-tui-fg/80 leading-relaxed">
                I am a developer focused on infrastructure, automation, and elegant code systems. 
                Constantly exploring the boundaries of technology and design.
              </p>
              <div class="flex gap-4 pt-2">
                <a href="#projects" class="tui-button text-xs uppercase tracking-widest">View Projects</a>
                <a href="#contact" class="tui-button text-xs uppercase tracking-widest">Contact</a>
              </div>
            </section>

            <section class="space-y-4">
              <h2 class="text-xl font-bold border-b border-tui-fg/30 pb-1 inline-block">SYSTEM_SPECS</h2>
              <ul class="space-y-1 text-sm">
                <li class="flex justify-between"><span class="opacity-50">OS:</span> <span>NixOS / Arch Linux</span></li>
                <li class="flex justify-between"><span class="opacity-50">SHELL:</span> <span>Fish / Zsh</span></li>
                <li class="flex justify-between"><span class="opacity-50">LANGS:</span> <span>Rust, Go, TypeScript</span></li>
                <li class="flex justify-between"><span class="opacity-50">TOOLS:</span> <span>Docker, K8s, Terraform</span></li>
              </ul>
            </section>
          </div>

          <div id="projects" class="mt-12 space-y-4 animate-in fade-in slide-in-from-bottom-8 duration-1000 delay-500">
            <h2 class="text-xl font-bold border-b border-tui-fg/30 pb-1">PROJECTS.DIR</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
              {#each [1, 2, 3] as i}
                <div class="border border-tui-border p-4 hover:border-tui-fg/50 transition-colors group">
                  <h3 class="font-bold group-hover:text-tui-accent">Project_{i}.sh</h3>
                  <p class="text-xs text-tui-fg/60 mt-2">A brief description of this awesome project and what it achieves.</p>
                  <div class="mt-3 flex gap-2">
                    <span class="text-[10px] bg-tui-dim/20 px-1 border border-tui-dim">Svelte</span>
                    <span class="text-[10px] bg-tui-dim/20 px-1 border border-tui-dim">Rust</span>
                  </div>
                </div>
              {/each}
            </div>
          </div>
        {/if}
      </div>
    </Window>

    {#if showContent}
      <div class="mt-auto py-4 flex justify-between items-center text-[10px] opacity-40 hover:opacity-100 transition-opacity">
        <div>(C) 2024 INFRAFLAKES</div>
        <div class="flex gap-4">
          <a href="https://github.com/infraflakes" class="hover:text-tui-fg transition-colors">GITHUB</a>
          <a href="https://linkedin.com/in/infraflakes" class="hover:text-tui-fg transition-colors">LINKEDIN</a>
          <a href="https://twitter.com/infraflakes" class="hover:text-tui-fg transition-colors">TWITTER</a>
        </div>
        <div>LATENCY: 24ms</div>
      </div>
    {/if}
  </div>
</main>

<style>
  :global(html) {
    scroll-behavior: smooth;
  }
</style>
