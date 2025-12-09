#!/bin/bash

set -e

PROJECT_NAME="WatchMeRun"

echo "📁 Setting up project structure for $PROJECT_NAME..."

# App structure
mkdir -p App/Sources/App
mkdir -p App/Sources/Features/Home
mkdir -p App/Sources/Features/UpcomingEvents
mkdir -p App/Sources/Features/FeaturedAthletes

mkdir -p App/Sources/Shared/Components
mkdir -p App/Sources/Shared/Styles
mkdir -p App/Sources/Shared/Extensions

mkdir -p App/Sources/Services/API
mkdir -p App/Sources/Services/Persistence
mkdir -p App/Sources/Services/Analytics

mkdir -p App/Sources/Resources
mkdir -p App/SupportingFiles

# Tests
mkdir -p Tests/UnitTests
mkdir -p Tests/UITests

# Tooling & docs
mkdir -p Scripts
mkdir -p Docs

# GitHub
mkdir -p .github/workflows

echo "✅ Folder structure created successfully."
echo ""
echo "➡️ Next steps:"
echo "1. Drag the new folders into Xcode (Create groups, NOT folder references)"
echo "2. Move existing Swift files into App/Sources/App"
echo "3. Create Swift files for Home, Upcoming Events, and Featured Athletes"

