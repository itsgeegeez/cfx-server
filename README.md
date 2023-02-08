# Plug and Play FiveM/RedM server <img src="https://img.shields.io/github/languages/code-size/itsgeegeez/cfx-server?style=plastic" /> <img src="https://img.shields.io/github/stars/itsgeegeez/cfx-server?style=plastic" /> <img src="https://img.shields.io/github/forks/itsgeegeez/cfx-server?style=plastic"/> <img src="https://img.shields.io/github/issues/itsgeegeez/cfx-server?style=plastic"/>

A github repository where you can instantly start a cfx server from fresh with shortcuts. Let us do the hardwork while you focus on your scripts. On top of that, this repo comes with extra features!

## 📚 How-to

---

1. Clone this repository and cd to the root of this repository
2. Run `yarn` to install all dependencies
3. Run `lerna bootstrap` to link all projects
4. Run `yarn download` to download CitizenFx artifacts
5. Update your [server.cfg](server.cfg) accordingly
6. Run `yarn start` to start up your CitizenFx server

## ✨ **Features**

---

- Monorepo system - _Utilizing Lerna, you can drag and drop resource boilerplates into [resources/[core]](resources/%5Bcore%5D/) and from the root folder, you can do `lerna run {script name} --parallel` to run the specific script in all of the resources in [resources/[core]](resources/%5Bcore%5D/) without having to open multiple terminals and running all of their script._
- Lower server storage size - _Because all the node_modules are shared across all resources, you can save storage space if you have big projects_
- Universal library - _Gone are the need to copy and paste modules from utility files to every resource. You can now define your utility functions in [library](library/) and reference it in any resource (if using boilerplate) via `@lib/{folder name}`_
- Universal type definitions - _All in one type definition files in [typings](typings/) and referenced via `@typings`_
- Easy update to latest cfx artifacts
- TypeScript - _Make use of the power of TypeScript for easy debugging and type checks_
- Built-in essential standalone resources - _Comes with [oxmysql](https://github.com/overextended/oxmysql), [pma-voice](https://github.com/AvarianKnight/pma-voice), [PolyZone](https://github.com/mkafrin/PolyZone), etc_

## ❓ FAQ's

---

1. I want to create my own TypeScript resource, how do I integrate?
   - Of course you can. You just need to configure your `tsconfig.json` as such:
     - `extends` - Reference the relative path to the `tsconfig.{client/server}.json` (only for non-ui folders)
     - `paths` - Add `@lib/*` and `@typings` and reference them to the [library](library/) and [typings](typings/) folder respectively at the root folder. Do the same for ui folders within your resource. Ensure that you reference it to the ui bundler as well! For exampe, for ViteJs, make sure you reference `@lib` and `@typings` in `vite.config.ts` at the `resolve.alias`
2. I want to add a dependency to the template resource, how do I do that?
   - Install in the root folder with `yarn add`. If it doesn't work (usually doesn't for UI ), install it directly into the project folder
3. I want to add more type definition files, how?
   - Create a new file (if necessary) in the [typings](typings/) folder, make sure to add the `export` syntax and then add `export * from "./{fileName}"` in `typings/index`
4. I want to more utility functions, how?
   - Create a new folder (if necessary) and add `index.ts` to that folder. Define your functions and export it inside `index.ts`. It'll automically be read and can be referenced via `@lib/{folderName}`.
