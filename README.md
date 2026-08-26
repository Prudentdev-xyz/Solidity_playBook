# Solidity PlayBook 

A personal sandbox where I'm working through **Solidity by Example**, contract by contract — poking at each pattern, breaking it, deploying it, and seeing how it actually behaves on-chain rather than just reading about it.

## Why this repo exists

I learn Solidity best by running it, not just reading it. So this is my playground for grinding through the Solidity by Example docs — rebuilding each concept myself, testing it, then shipping it to a live testnet to see how it holds up outside the sandbox.

## What's in here

- **`src/`** — Contracts recreated from Solidity by Example, one concept at a time (storage patterns, modifiers, events, inheritance, error handling, and whatever else the docs throw at me)
- **`test/`** — Foundry tests for each contract, written to actually try to break my own assumptions
- **`script/`** — Deployment scripts
- **`lib/forge-std`** — Foundry standard library (submodule)

## Stack

- **Foundry** — build, test, fuzz
- **Solidity** — obviously
- Deployed and verified on **Sepolia testnet**

## Status

Actively adding contracts as I work through the examples. Each one gets:
1. Written from scratch (not copy-pasted)
2. Tested locally with Foundry
3. Deployed to Sepolia
4. Verified on Etherscan
5. Poked at directly on-chain to confirm it does what I think it does

## Running it locally

```bash
forge install
forge build
forge test
```

## Deploying

```bash
forge script script/<ScriptName>.s.sol --rpc-url sepolia --broadcast --verify
```

---

Not a tutorial repo, not a template — just my own reps before things get heavier next week.
