#!/usr/bin/env python3
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
required = [
    'README.md', 'LICENSE', 'skills/is-this-useful/SKILL.md',
    'install.sh', 'ROADMAP.md', 'assets/is-this-useful.png'
]
errors = []

for rel in required:
    if not (ROOT / rel).exists():
        errors.append(f'missing {rel}')

skill = ROOT / 'skills/is-this-useful/SKILL.md'
if skill.exists():
    text = skill.read_text(encoding='utf-8')
    checks = [
        ('frontmatter', text.startswith('---\n')),
        ('name', 'name: is-this-useful' in text),
        ('verdict format', 'Verdict: Use / Test / Watch / Skip' in text),
        ('attention tagline', 'This saves attention and bad decisions' in text),
    ]
    for name, ok in checks:
        if not ok:
            errors.append(f'SKILL.md missing {name}')

readme = ROOT / 'README.md'
if readme.exists():
    text = readme.read_text(encoding='utf-8')
    for phrase in ['This saves attention and bad decisions', 'Use / Test / Watch / Skip', 'npx -y skills add']:
        if phrase not in text:
            errors.append(f'README missing phrase: {phrase}')

if errors:
    print('Validation failed:')
    for e in errors:
        print(f'- {e}')
    sys.exit(1)
print('Validation passed.')
