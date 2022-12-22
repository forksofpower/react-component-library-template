/* eslint-disable @typescript-eslint/no-var-requires */
const peerDepsExternal = require('rollup-plugin-peer-deps-external');
const resolve = require('@rollup/plugin-node-resolve');
const commonjs = require('@rollup/plugin-commonjs');
const typescript = require('@rollup/plugin-typescript');
const { default: dts } = require('rollup-plugin-dts');
const postcss = require('rollup-plugin-postcss');
const terser = require('@rollup/plugin-terser');

const packageJson = require('./package.json');

// eslint-disable-next-line no-undef
module.exports = [
  {
    input: 'src/index.ts',
    output: [
      {
        file: packageJson.main,
        format: 'cjs',
        sourcemap: true
      },
      {
        file: packageJson.module,
        format: 'esm',
        sourcemap: true
      }
    ],
    plugins: [
      peerDepsExternal(),
      resolve(),
      commonjs(),
      typescript({
        exclude: [
          '**/*.test.ts',
          '**/*.test.tsx',
          '**/*.stories.tsx',
          '**/*.stories.mdx'
        ]
      }),
      postcss({
        extract: true
      }),
      terser()
    ],
    external: ['react-dom']
  },
  {
    input: 'dist/esm/types/index.d.ts',
    output: [{ file: 'dist/index.d.ts', format: 'esm' }],
    plugins: [dts()],
    external: [/\.(css|less|scss)$/]
  }
];
