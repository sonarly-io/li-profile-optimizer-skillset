#!/usr/bin/env node
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const templatePath = path.join(root, "skills/linkedin-profile-analysis/assets/report-template.html");
const dataPath = path.join(root, "examples/mock-audit-data.json");
const outputPath = path.join(root, "examples/mock-linkedin-profile-audit.html");
const check = process.argv.includes("--check");

const template = fs.readFileSync(templatePath, "utf8");
const auditData = JSON.parse(fs.readFileSync(dataPath, "utf8"));
const dataBlock = `    const auditData = ${JSON.stringify(auditData, null, 6).replace(/\n/g, "\n    ")};\n\n    const maxScore`;

const generated = template.replace(
  /    const auditData = \{[\s\S]*?\n    \};\n\n    const maxScore/,
  dataBlock
);

if (generated === template) {
  throw new Error("Could not replace auditData block in report template.");
}

if (check) {
  const current = fs.readFileSync(outputPath, "utf8");
  if (current !== generated) {
    console.error("examples/mock-linkedin-profile-audit.html is stale. Run: node scripts/generate-example.js");
    process.exit(1);
  }
  console.log("mock report example is current");
} else {
  fs.writeFileSync(outputPath, generated);
  console.log("generated examples/mock-linkedin-profile-audit.html");
}
