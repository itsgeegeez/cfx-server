import { defineStore } from "pinia";

const state = {};

if (process.env.NODE_ENV !== "production") {
}

export const useUiStore = defineStore("ui", {
  state: () => state,
  getters: {},
  actions: {},
});
