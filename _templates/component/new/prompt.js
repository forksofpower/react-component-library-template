/* eslint-disable no-undef */
module.exports = [
  {
    type: 'select',
    name: 'componentType',
    message: 'What type of component is this?',
    choices: ['atom', 'molecule', 'organism'],
    default: 0
  },
  {
    type: 'select',
    name: 'storyType',
    message: 'Pick a story language?',
    choices: ['tsx', 'mdx'],
    default: 0
  }
];
