import { isEnvBrowser } from "./index";

export async function fetchNui<T = any>(eventName: string, data: unknown = {}, mock?: T): Promise<T> {
  const options = {
    method: "post",
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: JSON.stringify(data),
  };

  if (isEnvBrowser() && mock) {
    return mock;
  }

  const resourceName = (window as any).GetParentResourceName();

  const resp = await fetch(`https://${resourceName}/${eventName}`, options);

  const yeet = await resp.json();

  return yeet;
}
