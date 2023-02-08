const { build } = require('esbuild');

build({
  entryPoints: ['./client/index.ts'],
  outfile: '../build/client/client.js',
  minify: false,
  platform: 'node',
  bundle: true,
  tsconfig: 'client/tsconfig.json',
  plugins: [],
  watch: {
    onRebuild(error) {
      if (error) console.error('[client] build failed:', error);
      else {
        // onRebuild()
        console.log('[client] build succeeded');
      }
    },
  },
})
  .catch(() => process.exit(1))
  .then(() => {
    console.log('Watching client');
  });

build({
  entryPoints: ['./server/index.ts'],
  outfile: '../build/server/server.js',
  platform: 'node',
  minify: false,
  plugins: [],
  tsconfig: 'server/tsconfig.json',
  bundle: true,
  watch: {
    onRebuild(error) {
      if (error) console.error('[server] build failed:', error);
      else {
        console.log('[server] build succeeded');
      }
    },
  },
})
  .catch(() => process.exit(1))
  .then(() => {
    console.log('Watching server');
  });
