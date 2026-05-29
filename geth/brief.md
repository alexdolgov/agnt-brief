# Agentic Audit Brief: GETH

## Project Overview

- Project: GETH (`geth`)
- Website: [https://guarda.com/staking/ethereum-staking/](https://guarda.com/staking/ethereum-staking/)
- Lifecycle: active (Tier 0, 51.4% below peak)
- Generated: 2026-05-29T07:45:14.139Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $16,048,230.57
- On-chain TVL (included contracts): $16,161,210.88
- TVL by chain: Ethereum $16,161,210.88

## Project Description

GETH is a liquid staking protocol on Ethereum that allows users to stake ETH and receive a liquid staking token (GETH) representing their staked position and accrued rewards.

### Architecture

The protocol consists of a single product family with one core contract, the StakeToken, which handles both staking and token issuance.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,161,210.88
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakeToken | token | ethereum | [`0x3802c2...eb74b8`](./contracts/ethereum-1/0x3802c218221390025bceabbad5d8c59f40eb74b8/) | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3802c2...eb74b8`](./contracts/ethereum-1/0x3802c218221390025bceabbad5d8c59f40eb74b8/) | StakeToken | token | $16,161,210.88 | Verified native implementation with $16,161,210.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6659] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6660] 0002-metadata-manifest-and-pull-command.md
- [6661] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
