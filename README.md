# React Component Library Template

## Get Started

```shell
$ yarn storybook

yarn test

yarn build

```

## Generators

Create a new react component called `NavBar` from the built-in Component template.

```
$ yarn new:component NavBar
? What type of component is this? …
▸ atom
  molecule
  organism
```

## Optimizations

_Babel needs to be added to do import replacement and dev expressions_

<!--
This package comes with some optimizations to improve the developer experience.

After your code is compiled with TypeScript, it is then processed with a few babel plugins:

- [babel-plugin-dev-expression](https://github.com/4Catalyzer/babel-plugin-dev-expression): A mirror of Facebook's dev-expression Babel plugin. It reduces or eliminates development checks from production code.
- [babel-plugin-rename-import](https://github.com/laat/babel-plugin-transform-rename-import): Used to rewrite any `lodash` imports. -->
