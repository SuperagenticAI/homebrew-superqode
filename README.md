# homebrew-superqode

Homebrew tap for SuperQode - Agentic Quality Engineering Platform

## What is SuperQode?

SuperQode is an agentic quality engineering platform that uses multiple AI agents to test, validate, and harden your code. It provides enterprise-grade code quality assurance with advanced AI-driven testing methodologies.

## Installation

### Quick Install
```bash
# Add the tap
brew tap SuperagenticAI/superqode

# Install SuperQode
brew install superqode

# Verify installation
superqode --version
```

### Update
```bash
# Update SuperQode
brew upgrade superqode
```

### Uninstall
```bash
# Remove SuperQode
brew uninstall superqode

# Remove the tap (optional)
brew untap SuperagenticAI/superqode
```

## Documentation

- **Website**: https://super-agentic.ai
- **GitHub**: https://github.com/SuperagenticAI/superqode
- **Releases**: https://github.com/SuperagenticAI/superqode/releases

## Usage Examples

```bash
# Check version
superqode --version

# Show help
superqode --help

# Run quality engineering (when available)
superqode qe run .
```

## Requirements

- macOS 12.0 or later
- Homebrew

## Troubleshooting

### Installation Issues
```bash
# Update Homebrew first
brew update

# Clear cache and retry
brew untap SuperagenticAI/superqode 2>/dev/null || true
brew tap SuperagenticAI/superqode
brew install superqode
```

### Permission Issues
```bash
# Check binary permissions
ls -la /usr/local/bin/superqode

# Reinstall if needed
brew reinstall superqode
```

### Update Issues
```bash
# Force update
brew update && brew upgrade superqode

# Check for outdated packages
brew outdated
```

## Support

- **Issues**: https://github.com/SuperagenticAI/homebrew-superqode/issues
- **Discussions**: https://github.com/SuperagenticAI/superqode/discussions

## Contributing

1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This Homebrew tap is licensed under the MIT License. SuperQode itself has its own licensing terms.