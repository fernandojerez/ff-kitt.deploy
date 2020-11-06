#!/usr/bin/env node
const { spawn } = require("child_process");

const command = `${__dirname}/kitt/kitt_terminal${
  process.platform === "win32" ? ".bat" : ""
}`;
const script = spawn(command, process.argv.slice(2), {
  stdio: "inherit",
});
