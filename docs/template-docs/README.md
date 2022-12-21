# React Component Library Template

## Get Started

```shell
$ yarn storybook

yarn test

yarn build

```

## Generators

Create a new react component named `NavBar` from the built-in Component template.

```
$ yarn new:component NavBar
? What type of component is this? …
▸ atom
  molecule
  organism
? Pick a story language? …
▸ tsx
  mdx

Loaded templates: _templates
       added: src/components/NavBar/NavBar.tsx
       added: src/components/NavBar/index.ts
       added: src/components/NavBar/NavBar.scss
       added: src/components/NavBar/NavBar.stories.tsx
       added: src/components/NavBar/NavBar.test.tsx
      inject: src/components/index.ts
```

## Optimizations

_Babel needs to be added to do import replacement and dev expressions_

<!--
This package comes with some optimizations to improve the developer experience.

After your code is compiled with TypeScript, it is then processed with a few babel plugins:

- [babel-plugin-dev-expression](https://github.com/4Catalyzer/babel-plugin-dev-expression): A mirror of Facebook's dev-expression Babel plugin. It reduces or eliminates development checks from production code.
- [babel-plugin-rename-import](https://github.com/laat/babel-plugin-transform-rename-import): Used to rewrite any `lodash` imports. -->

## Customization

**Remove all template docs and utilities**

```
$ rm -r docs/template-docs utils README.md
$ touch README.md
```

**Remove hygen generators**

```
$ rm -r _templates/*
```

## Why?

**Why not use a tool like `tsdx` or `dts-cli`?**

Zero-config tools are an excellent way to build a modern TypeScript stack quickly and I suggest you use them. This project intends to remove any mystery from the stack itself. Customization is essentially unlimited as this is just a starting place.

# TODO

- [ ] npm deployment
- [ ] storybook site deployment
- [ ] add babel to rollup
- [ ] optimizations
  - [ ] babel-plugin-annotate-pure-calls
  - [ ] babel-plugin-dev-expressions
  - [ ] babel-plugin-rename-import
- [ ] customizations
  - [ ] tailwind
  - [ ] emotion
