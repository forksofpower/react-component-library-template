---
to: src/components/<%= h.capitalize(name) %>/<%= h.capitalize(name) %>.test.tsx
---
import React from 'react';
import { render } from '@testing-library/react';

import <%= h.capitalize(name) %> from './<%= h.capitalize(name) %>';

describe('<%= h.capitalize(name) %>', () => {
  test('it renders the <%= h.capitalize(name) %> component', () => {
    render(<<%= h.capitalize(name) %> text="Hello World" />);
  });
});
