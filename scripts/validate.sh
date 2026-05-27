#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

skill_validator="${SKILL_VALIDATE_PY:-$HOME/.codex/skills/.system/skill-creator/scripts/quick_validate.py}"
plugin_validator="${PLUGIN_VALIDATE_PY:-$HOME/.codex/skills/.system/plugin-creator/scripts/validate_plugin.py}"

if [[ -f "$skill_validator" ]]; then
  python3 "$skill_validator" skills/linkedin-profile-analysis
  python3 "$skill_validator" .agents/plugins/lpo/skills/linkedin-profile-analysis
else
  echo "Skipping skill validator; set SKILL_VALIDATE_PY to enable it."
fi

if [[ -f "$plugin_validator" ]]; then
  python3 "$plugin_validator" .
  python3 "$plugin_validator" .agents/plugins/lpo
else
  echo "Skipping plugin validator; set PLUGIN_VALIDATE_PY to enable it."
fi

if command -v claude >/dev/null 2>&1; then
  claude plugin validate .
else
  echo "Skipping Claude plugin validation; claude CLI is not installed."
fi

diff -qr skills .agents/plugins/lpo/skills
node scripts/generate-example.js --check

node - <<'NODE'
const fs = require('fs');
for (const file of [
  'skills/linkedin-profile-analysis/assets/report-template.html',
  'examples/mock-linkedin-profile-audit.html'
]) {
  const html = fs.readFileSync(file, 'utf8');
  const script = html.match(/<script>([\s\S]*)<\/script>/)?.[1];
  if (!script) throw new Error(`No script block found in ${file}`);
  new Function(script);
  console.log(`${file}: script syntax ok`);
}
NODE
