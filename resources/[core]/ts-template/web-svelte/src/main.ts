import App from './App.svelte';
import '@/css/index.sass'

const app = new App({
  target: document.getElementById('app')!,
});

export default app;