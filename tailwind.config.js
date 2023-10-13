/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [ 
    '_includes/**/*.html',
    '_layouts/**/*.html',
    '_pages/**/*.html',
    '_pages/**/*.md',
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
};
