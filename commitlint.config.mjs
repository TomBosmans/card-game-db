export default {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "type-enum": [
      2,
      "always",
      [
        "feat",
        "fix",
        "docs",
        "style",
        "refactor",
        "perf",
        "test",
        "build",
        "ci",
        "chore",
      ],
    ],
    "scope-enum": [
      2,
      "always",
      ["deps", "config", "ui", "api"],
    ],
    "scope-empty": [0],
  },
};
