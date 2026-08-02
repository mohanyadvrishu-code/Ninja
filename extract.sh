#!/bin/bash
set -e

echo "🔍 Finding ZIP file..."
ZIP_FILE=$(find . -maxdepth 1 -name "*.zip" -type f | head -1)

if [ -z "$ZIP_FILE" ]; then
    echo "❌ No ZIP file found!"
    exit 1
fi

echo "✅ Found: $ZIP_FILE"
echo "📦 Extracting..."

# Extract to temp directory
mkdir -p temp_extract
unzip -q "$ZIP_FILE" -d temp_extract/

# Find the main project folder
PROJECT=$(find temp_extract -maxdepth 1 -type d ! -name "temp_extract" | head -1)

if [ -z "$PROJECT" ]; then
    echo "❌ Could not find project folder"
    exit 1
fi

echo "📂 Project found: $PROJECT"
echo "🚚 Moving files to root..."

# Move all files from project to root
cp -r "$PROJECT"/* . 2>/dev/null || true

# Cleanup
rm -rf temp_extract

echo "✅ Setup complete!"
ls -la gradlew 2>/dev/null && echo "✅ gradlew found!" || echo "❌ gradlew not found"
