#!/usr/bin/env bash
set -euo pipefail

# Simple project skeleton creator for Termux (Android)
# Usage: ./create_skeleton_termux.sh

dirs=(
  "mansion/gateway"
  "mansion/api"
  "mansion/ai-layer/mira-core"
  "mansion/ai-layer/agentic-pack"
  "mansion/ai-layer/local-hosted"
  "mansion/ai-layer/cloud-endpoints"
  "mansion/dev-room/dashboard"
  "mansion/dev-room/hotkeys"
  "mansion/dev-room/secrets"
  "mansion/database/postgres"
  "mansion/database/redis"
  "mansion/economy/microtransactions"
  "mansion/economy/subscriptions"
  "mansion/economy/upsells"
  "mansion/assets/graphic-editor"
  "mansion/assets/video-editor"
  "mansion/assets/parser"
  "mansion/assets/variant-gen"
  "mansion/shops/builder-shops"
  "mansion/shops/marketplace"
  "mansion/gameroom/bot-arena"
  "mansion/gameroom/tamagotchi"
  "mansion/gameroom/cohabitat"
  "mansion/socialAI/trend-monitor"
  "mansion/socialAI/chat-assistant"
  "mansion/socialAI/analytics"
  "mansion/media/compositor"
  "mansion/media/scene-builder"
  "mansion/media/export-templates"
  "mansion/pipeline/automation"
  "mansion/pipeline/monitoring"
  "mansion/pipeline/scheduler"
  "mansion/dev-tools/IDE"
  "mansion/dev-tools/dashboards"
  "mansion/dev-tools/notifications"
  "mansion/security/auth"
  "mansion/security/audit-logs"
  "mansion/security/backups"
  "mansion/deployment/docker"
  "mansion/deployment/k8s"
  "mansion/deployment/scripts"

  # mira_vault
  "mira_vault/prompts/social_posting"
  "mira_vault/prompts/agent_behavior"
  "mira_vault/prompts/content_creation"
  "mira_vault/prompts/monetization"
  "mira_vault/templates/reels_tikTok"
  "mira_vault/templates/insta_post"
  "mira_vault/templates/discord_events"
  "mira_vault/templates/telegram_microbots"
  "mira_vault/templates/VRChat_Roblox_exports"
  "mira_vault/agent_profiles/streamer_Mira"
  "mira_vault/agent_profiles/social_Mira"
  "mira_vault/agent_profiles/builder_Mira"
  "mira_vault/agent_profiles/gameroom_Mira"
  "mira_vault/analytics/trends"
  "mira_vault/analytics/growth"
  "mira_vault/analytics/revenue"
  "mira_vault/autopilot/posting_scheduler"
  "mira_vault/autopilot/bot_launcher"
  "mira_vault/autopilot/money_maker"
)

echo "Creating directories..."
for d in "${dirs[@]}"; do
  mkdir -p "${d}"
done

echo "Adding .gitkeep placeholders..."
for d in "${dirs[@]}"; do
  touch "${d}/.gitkeep"
done

echo "Creating mira_vault/README.md..."
cat > mira_vault/README.md <<'MD'
# Mira Vault

Centralized vault for prompts, templates, agent profiles, analytics and autopilot flows.

Structure:
- prompts/: optimized captions, agent reasoning, content generation prompts, monetization scripts
- templates/: platform-specific templates (TikTok Reels, Instagram, Discord events, etc.)
- agent_profiles/: pre-configured Mira agent roles (streamer, social, builder, gameroom)
- analytics/: trend & growth signals and revenue checklists
- autopilot/: posting scheduler, bot launcher and viral pipelines
MD

if [ ! -f README.md ]; then
  echo "Creating top-level README.md..."
  cat > README.md <<'MD'
# Mike Forge Mansion

Project skeleton for Mike Forge Mansion — full-stack studio & AI knowledge vault.

See \`mike_mansion_full_stack_copilot_card.md\` for the high-level vision and phase checklist.
MD
else
  echo "README.md already exists; skipping."
fi

if [ ! -f .gitignore ]; then
  echo "Creating .gitignore..."
  cat > .gitignore <<'GIT'
node_modules/
dist/
.env
.DS_Store
.vscode/
GIT
else
  echo ".gitignore already exists; skipping."
fi

echo

echo "Skeleton created. Next steps (example git flow) — run these in Termux:"
echo "  # 1. Ensure you are on the branch you want to commit to. If the remote branch exists:"
echo "  git fetch origin"
echo "  if git ls-remote --heads origin chore/create-project-skeleton | grep -q 'chore/create-project-skeleton'; then"
echo "    git checkout -B chore/create-project-skeleton origin/chore/create-project-skeleton"
echo "  else"
echo "    git checkout -B chore/create-project-skeleton"
echo "  fi"
echo

echo "  # 2. Add, commit and push"
echo "  git add ."
echo "  git commit -m \"chore: create project skeleton and mira_vault structure\""
echo "  git push --set-upstream origin chore/create-project-skeleton"
echo

echo "If you need me to produce the exact commands customised to your repo (remote name, branch), tell me and I'll print them."
