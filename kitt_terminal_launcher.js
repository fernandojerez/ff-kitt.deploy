#!/usr/bin/env node
const { spawn } = require("child_process");

const is_win = process.platform === "win32";
let command = `${__dirname}/kitt/kitt_terminal${is_win ? ".bat" : ""}`;
let args = process.argv.slice(2);

if (!is_win) {
  args = [command, ...args];
  command = "sh";
}

const script = spawn(command, args, {
  stdio: "inherit",
});
