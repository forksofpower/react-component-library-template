import React from 'react';
import { render } from '@testing-library/react';

import Button from './Button';

describe('Button', () => {
  test('it renders the button component', () => {
    render(<Button label="Hello World" />);
  });
});
