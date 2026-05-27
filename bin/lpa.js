#!/usr/bin/env node
import { spawnSync } from "node:child_process";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "..");
const installScript = resolve(repoRoot, "install.sh");

const args = process.argv.slice(2);
const command = args[0] || "help";

function help() {
  console.log(`LinkedIn Profile Analyzer installer

Usage:
  lpa add [--target all|agents|claude|codex|gemini]
  lpa help

Examples:
  npx @sonarly/lpa add
  npx @sonarly/lpa add --target codex
  npx @sonarly/lpa add --target claude
`);
}

if (command === "help" || command === "--help" || command === "-h") {
  help();
  process.exit(0);
}

if (command !== "add" && command !== "install") {
  console.error(`Unknown command: ${command}`);
  help();
  process.exit(2);
}

const passthrough = args.slice(1);
const result = spawnSync("sh", [installScript, "--source", repoRoot, ...passthrough], {
  stdio: "inherit",
});

if (result.error) {
  console.error(result.error.message);
  process.exit(1);
}

process.exit(result.status ?? 0);
