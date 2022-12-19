---
to: src/components/<%= h.capitalize(name) %>/<%= h.capitalize(name) %>.tsx
---
import React from 'react';
import './<%= h.capitalize(name) %>.scss';

export interface <%= h.capitalize(name) %>Props {
  text: string;
}

const <%= h.capitalize(name) %>: React.FC<<%= h.capitalize(name) %>Props> = ({ text }) => {
  return <div>{text}</div>;
};

export default <%= h.capitalize(name) %>;
