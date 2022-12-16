---
to: src/components/<%= h.capitalize(name) %>/<%= h.capitalize(name) %>.stories.tsx
---
import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';
import <%= h.capitalize(name) %> from './<%= h.capitalize(name) %>';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: '<%= h.capitalize(componentType) %>s/<%= h.capitalize(name) %>',
  <%= name.toLowerCase() %>: <%= h.capitalize(name) %>
} as ComponentMeta<typeof <%= h.capitalize(name) %>>;

// More on <%= name.toLowerCase() %> templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof <%= h.capitalize(name) %>> = (args) => (
  <<%= h.capitalize(name) %> {...args} />
);

export const HelloWorld = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
HelloWorld.args = {
  text: 'Hello world!'
};
