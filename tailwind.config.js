module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './node_modules/flowbite/**/*.js',  // Add this line for Flowbite
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('flowbite/plugin'),  // Add this line for Flowbite
  ],
};
