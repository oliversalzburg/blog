/** @type {import("prettier").Config} */
export default {
  printWidth: 100,
  arrowParens: "avoid",
  overrides: [
    {
      files: "*.md",
      options: {
        tabWidth: 4,
      },
    },
  ],
};
