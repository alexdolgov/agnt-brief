# Agentic Audit Brief: NeuralAI

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: NeuralAI (`neuralai`)
- Website: [https://goneural.ai/](https://goneural.ai/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:43.088Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,205,215.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

NeuralAI is an AI/Web3 gaming infrastructure project. Its Ethereum $NEURAL token is part of the project's tokenomics, while any launchpad, staking, or related ecosystem mechanics should be treated as tokenomics or upcoming ecosystem features only where separately supported. wTAO should not be described as a core NeuralAI staking component without evidence of integration, and the broader project identity should account for both Ethereum and Solana $NEURAL token presence where in scope.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NeuralAI | unknown | ethereum | n/a | [`0x32b053...bde6e1`](./contracts/ethereum-1/0x32b053f2cba79f80ada5078cb6b305da92bde6e1/) | ⚠️ Unaudited |
| NeuralStaking | token | ethereum | n/a | [`0xbe2cf8...9b20c3`](./contracts/ethereum-1/0xbe2cf8da9887e2ab997ed53cc49263ebd09b20c3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [- Smart contracts audited by Hacken:](https://hacken.io/audits/neuralai) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x32b053...bde6e1`](./contracts/ethereum-1/0x32b053f2cba79f80ada5078cb6b305da92bde6e1/) | NeuralAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe2cf8...9b20c3`](./contracts/ethereum-1/0xbe2cf8da9887e2ab997ed53cc49263ebd09b20c3/) | NeuralStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3114] - Smart contracts audited by Hacken:

Fork inheritance lineage and inherited audits are included when available.
