import { createApp } from "vue";
import "@/styles/index.sass";
import App from "./App.vue";
import { createPinia } from "pinia";

createApp(App).use(createPinia()).mount("#app");
