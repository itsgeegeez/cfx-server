const packageJson = require("../package.json");
import * as os from "os";
import { spawn } from "child_process";
// @ts-ignore
import * as zip from "7zip";
import * as https from "https";
import * as fs from "fs";
import * as path from "path";

const isWindows = os.platform() === "win32";
const platformFolder = isWindows ? "build_server_windows" : "build_proot_linux";
const url = `https://runtime.fivem.net/artifacts/fivem/${platformFolder}/master/`;
const serverVersion = packageJson.data.serverVersion || 6248;
const _7zip = zip["7z"];

const activeDownloads = new Set();
const downloadRE = new RegExp(`${serverVersion}-[a-f0-9]+/(?:server|fx)\\.[a-z0-9.]+`, "gim");

if (fs.existsSync(`./artifacts/${serverVersion}`)) {
  console.log("Server version already downloaded");
  process.exit(0);
}

const folder = path.resolve(__dirname, `./${serverVersion}`);

const downloadServer = (serverFile: string) => {
  const filename = `server-${serverVersion}.${serverFile.split(".").pop()}`;
  if (activeDownloads.has(filename)) {
    return;
  }
  activeDownloads.add(filename);
  console.log(`Downloading ${serverFile}`);
  https.get(`${url}${serverFile}`, (result) => {
    let body = Buffer.alloc(0);
    result.on("data", (chunk) => {
      body = Buffer.concat([body, chunk]);
    });

    result.on("end", async () => {
      console.log(`Downloaded ${body.length}`);
      fs.writeFileSync(filename, body);

      fs.mkdirSync(path.resolve(__dirname, `./${serverVersion}`));

      console.log(`Extracting ${filename}`);
      let task;
      if (isWindows) task = spawn(_7zip, ["x", filename, "-y", `-o${folder}`]);
      else task = spawn("tar", ["-xf", filename, "-C", folder]);
      task.stdout.on("data", (data) => console.log(data.toString()));

      task.stderr.on("data", (data) => console.error(data.toString()));

      task.on("exit", async () => {
        console.log("Extraction Complete");
        console.log("Deleting zip...");
        fs.unlinkSync(filename);
      });
    });
  });
};

https.get(url, (result) => {
  let body = "";
  result.on("data", (chunk) => {
    body += chunk;
  });

  result.on("end", async () => {
    const matches = body.match(downloadRE);
    if (matches) {
      for (const match of matches) {
        downloadServer(match);
      }
    } else {
      console.log("No matches found");
      process.exit(1);
    }
  });
});
