# Agentic Audit Brief: Feather

## Project Overview

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-22T19:34:26.549Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: celo, klaytn, sei
- Contract surface: 3 unique implementations (8 raw deployments)
- DeFi Llama TVL: $16,552,674.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Feather is a risk curation protocol that deploys and manages MetaMorpho vaults, optimizing yield and risk parameters for users across multiple chains.

### Architecture

All MetaMorpho vaults are deployed by the same deployer cluster and likely share a common SafeProxy for administrative control, with the unnamed contract possibly serving as a registry or factory.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 8
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MetaMorphoV1_1 | unknown | sei | 6 deployments: sei [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/); sei `0x50715a...28bfe8`; sei `0x8e1812...0a7223`; sei `0x948fcc...2a4923`; sei `0x94e6a8...5eb79c`; sei `0xbd1836...963dc5` | ⚠️ Unaudited |
| SafeProxy | unknown | celo | [`0x81c76f...2f091f`](./contracts/celo-42220/0x81c76f62f7e05dec75800150ba5a23f62e2f091f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | `0x6ba8f7...5a133e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/) | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
