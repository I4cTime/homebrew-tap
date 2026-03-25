# Homebrew Tap for q-ring

[q-ring](https://github.com/I4cTime/quantum_ring) is a quantum-inspired keyring for AI coding tools (Cursor, Kiro, Claude Code). It provides secrets management with superposition, entanglement, tunneling, and an MCP server.

## Install

```bash
brew tap I4cTime/tap
brew install qring
```

## Usage

```bash
# Store a secret
qring set API_KEY sk-abc123

# Retrieve it
qring get API_KEY

# Start the MCP server (for AI agents)
qring-mcp
```

## Update

```bash
brew update
brew upgrade qring
```

## More info

- [Documentation](https://qring.i4c.studio/docs)
- [GitHub](https://github.com/I4cTime/quantum_ring)
- [npm](https://www.npmjs.com/package/@i4ctime/q-ring)
