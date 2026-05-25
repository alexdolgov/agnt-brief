# Agentic Audit Brief: NeuralAI

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: NeuralAI (`neuralai`)
- Website: [https://goneural.ai/](https://goneural.ai/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T01:08:22.800Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,299,950.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NeuralAI is a DeFi protocol that enables users to stake tokens and earn rewards, likely centered around a staking mechanism involving its native token and a wrapped TAO token.

### Architecture

The NeuralAI contract likely serves as the main farm or coordinator, while NeuralStaking is the staking token and wTAO is a wrapped token used within the staking ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NeuralAI | unknown | ethereum | [`0x32b053...bde6e1`](./contracts/ethereum-1/0x32b053f2cba79f80ada5078cb6b305da92bde6e1/) | ⚠️ Unaudited |
| NeuralStaking | token | ethereum | [`0xbe2cf8...9b20c3`](./contracts/ethereum-1/0xbe2cf8da9887e2ab997ed53cc49263ebd09b20c3/) | ⚠️ Unaudited |
| wTAO | unknown | ethereum | [`0x77e06c...5b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | ⚠️ Unaudited |

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
| [- Smart contracts audited by Hacken:](https://hacken.io/audits/neuralai) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
| upstream | 1 |
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
