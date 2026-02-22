#!/usr/bin/env bash
set -euo pipefail

# Root-level directories (mansion + top-level vault / mira_vault)
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

  # mira_vault (as requested)
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
  mkdir -p "$d"
done

echo "Creating .gitkeep placeholders and simple README files..."
# Place .gitkeep in each directory and small README in mira_vault
for d in "${dirs[@]}"; do
  touch "$d/.gitkeep"
done

cat > mira_vault/README.md <<'EOF'
# Mira Vault

Centralized vault for prompts, templates, agent profiles, analytics and autopilot flows.

Structure:
- prompts/: optimized captions, agent reasoning, content generation prompts, monetization scripts
- templates/: platform-specific templates (TikTok Reels, Instagram, Discord events, etc.)
- agent_profiles/: pre-configured Mira agent roles (streamer, social, builder, gameroom)
- analytics/: trend & growth signals and revenue checklists
- autopilot/: posting scheduler, bot launcher and viral pipelines
EOF

# Optional root README if missing
if [ ! -f README.md ]; then
  cat > README.md <<'EOF'
# Mike Forge Mansion

Project skeleton for Mike Forge Mansion — full-stack studio & AI knowledge vault.

See `mike_mansion_full_stack_copilot_card.md` for the high-level vision and phase checklist.
EOF
fi

# Optional .gitignore if missing
if [ ! -f .gitignore ]; then
  cat > .gitignore <<'EOF'
node_modules/
dist/
.env
.DS_Store
.vscode/
EOF
fi

echo "Done. To add and push these changes:"
echo "  git add ."
echo "  git commit -m \"chore: create project skeleton and mira_vault structure\""
echo "  git push origin main   # or your branch name"

echo "  To add and push these changes:"
echo "  git add ."
echo "  git commit -m \"chore: create project skeleton and mira_vault structure\""
echo "  git push origin main   # or your branch name"

exit 0
