#!/bin/bash
cd /root/.openclaw/workspace
git add -A
git diff --cached --quiet && echo "Không có thay đổi" && exit 0
git commit -m "Daily backup $(date '+%Y-%m-%d %H:%M %Z')"
git push origin main
echo "Backup thành công: $(date)"
