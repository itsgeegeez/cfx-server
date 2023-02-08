export const isEnvBrowser = (): boolean => !(window as any).invokeNative;

export { fetchNui } from "./fetchNui";
