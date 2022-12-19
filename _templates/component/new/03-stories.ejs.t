---
to: src/components/<%= h.inflection.camelize(name) %>/<%= h.inflection.camelize(name) %>.stories.<%= storyType %>
---

<% if (locals.storyFormat === 'tsx') { -%>
import React from 'react';
import { ComponentStory, ComponentMeta } from '@storybook/react';
import <%= h.inflection.camelize(name) %> from './<%= h.inflection.camelize(name) %>';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  title: '<%= h.inflection.camelize(componentType) %>s/<%= h.inflection.camelize(name) %>',
  <%= name.toLowerCase() %>: <%= h.inflection.camelize(name) %>
} as ComponentMeta<typeof <%= h.inflection.camelize(name) %>>;

// More on <%= name.toLowerCase() %> templates: https://storybook.js.org/docs/react/writing-stories/introduction#using-args
const Template: ComponentStory<typeof <%= h.inflection.camelize(name) %>> = (args) => (
  <<%= h.inflection.camelize(name) %> {...args} />
);

export const HelloWorld = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
HelloWorld.args = {
  text: 'Hello world!'
};
<% } else { -%>
import { Canvas, Meta, Story, ArgsTable } from '@storybook/addon-docs';
import <%= h.inflection.camelize(name, false) %> from './<%= h.inflection.camelize(name, false) %>';

<Meta title="<%= h.inflection.camelize(componentType) %>s/<%= h.inflection.camelize(name, false) %>" component={<%= h.inflection.camelize(name, false) %>} />

export const Template = (args) => <<%= h.inflection.camelize(name, false) %> {...args} />;

# <%= h.inflection.camelize(name, false) %>

This is example documentation for the `<%= h.inflection.camelize(name, false) %>`.

<Canvas>
  <Story
    name="default"
    args={{
      text: 'Hello <%= h.inflection.camelize(name, false) %>'
    }}
  >
    {Template.bind({})}
  </Story>
</Canvas>

<ArgsTable of={<%= h.inflection.camelize(name, false) %>} />
<% } -%>


