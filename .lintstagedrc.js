/** @type {import("lint-staged").Config} */
export default {
  "package.json": "yarn prettier-package-json --write",
  "*.{js,json,md,ts,yml}": "prettier --write",
};
