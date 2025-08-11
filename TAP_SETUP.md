# Setting Up Your Homebrew Tap for Quotescape

## 1. Create Your Tap Repository

Create a new GitHub repository named `homebrew-quotescape`:

```bash
# Create and navigate to the repository
mkdir homebrew-quotescape
cd homebrew-quotescape

# Initialize git
git init

# Create README
echo "# Homebrew Quotescape" > README.md
echo "Homebrew tap for Quotescape - Generate beautiful quote wallpapers" >> README.md

# Create Formula directory
mkdir Formula

# Copy the formula file
cp /path/to/quotescape.rb Formula/

# Commit and push
git add .
git commit -m "Initial tap setup with Quotescape formula"
git remote add origin https://github.com/codeabiswas/homebrew-quotescape.git
git push -u origin main
```

## 2. Prepare a Release

Before users can install via Homebrew, you need to create a GitHub release:

### On your main quotescape repository:

1. **Tag your release:**
```bash
cd /path/to/quotescape
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0
```

2. **Create a GitHub Release:**
   - Go to https://github.com/codeabiswas/quotescape/releases
   - Click "Create a new release"
   - Choose tag `v1.0.0`
   - Set release title: "Quotescape v1.0.0"
   - Add release notes
   - Publish release

3. **Get the SHA256 of your release:**
```bash
# Download the tarball
curl -L https://github.com/codeabiswas/quotescape/archive/refs/tags/v1.0.0.tar.gz -o quotescape-1.0.0.tar.gz

# Calculate SHA256
shasum -a 256 quotescape-1.0.0.tar.gz
```

4. **Update the formula** in your tap repository:
   - Replace `PLACEHOLDER_SHA256` with the actual SHA256
   - Commit and push the change

## 3. Test Your Tap

```bash
# Add your tap
brew tap codeabiswas/quotescape

# Install quotescape
brew install quotescape

# Test it
quotescape --help
```

## 4. Directory Structure

Your tap repository should look like:
```
homebrew-quotescape/
├── README.md
└── Formula/
    └── quotescape.rb
```

## 5. Updating the Formula

When you release a new version:

1. Update your main repository and create a new tag
2. Create a new GitHub release
3. Calculate the new SHA256
4. Update the formula:
   - Change the `url` to point to the new tag
   - Update the `sha256`
   - Update any changed dependencies
5. Commit and push to your tap repository

Users can then update with:
```bash
brew update
brew upgrade quotescape
```

## 6. Formula Maintenance Commands

```bash
# Audit your formula for issues
brew audit --strict --online quotescape

# Test installation
brew install --build-from-source quotescape

# Test the formula's test block
brew test quotescape

# Reinstall for testing
brew reinstall quotescape
```

## 7. User Installation Instructions

Add this to your main Quotescape README:

```markdown
### Install via Homebrew (macOS/Linux)

```bash
# Add the tap
brew tap codeabiswas/quotescape

# Install Quotescape
brew install quotescape

# Run Quotescape
quotescape --help
```
```

## 8. Troubleshooting

### Common Issues:

1. **SHA256 mismatch:**
   - Ensure you're calculating SHA256 for the exact URL in the formula
   - GitHub may change the archive format, always test download

2. **Python version issues:**
   - The formula requires `python@3.11` from Homebrew
   - Users may need to: `brew install python@3.11`

3. **Permissions issues:**
   - The formula creates directories in `/usr/local/var/quotescape`
   - These should be writable by the user

4. **Resource URLs:**
   - If PyPI URLs change, update the resource blocks
   - You can find current URLs at https://pypi.org/project/[package-name]/#files

## 9. Alternative: Simplified Tap Structure

If you want to keep it simple, you can also put the formula directly in your main repository:

1. In your `quotescape` repository, create a `HomebrewFormula` directory
2. Put `quotescape.rb` there
3. Users can then install directly:
```bash
brew install codeabiswas/quotescape/quotescape
```

This eliminates the need for a separate tap repository but is less conventional.

## 10. Versioning Best Practices

- Use semantic versioning (MAJOR.MINOR.PATCH)
- Tag releases consistently (v1.0.0, v1.0.1, etc.)
- Update the formula for every release
- Keep release notes detailed
- Test installation before announcing