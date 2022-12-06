import { babel } from "@rollup/plugin-babel";
import external from "rollup-plugin-peer-deps-external";
import resolve from "@rollup/plugin-node-resolve";
import scss from "rollup-plugin-scss";
import typescript from "@rollup/plugin-typescript";
import { terser } from "rollup-plugin-terser";

// imports to replace
const replacements = [
  { original: 'lodash', replacement: 'lodash-es'}
]

const treeshake = {
  treeshake: {
    propertyReadSideEffects: false
  }
}

export default [
  {
    input: "./src/index.ts",
    output: [
      {
        file: "dist/index.js",
        format: "cjs",
        treeshake,
      },
      {
        file: "dist/index.es.js",
        format: "es",
        exports: "named",
        treeshake,
      },
    ],
    plugins: [
      scss({
        output: true,
        failOnError: true,
        outputStyle: "compressed",
      }),
      babel({
        exclude: "node_modules/**",
        presets: ["@babel/preset-react"],
        plugins: [
          'babel-plugin-dev-expression',
          ['babel-plugin-transform-rename-import', { replacements }]
      ]
      }),
      external(),
      resolve(),
      typescript(),
      terser(),
    ],
  },
];

