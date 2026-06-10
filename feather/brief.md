# Agentic Audit Brief: Feather

## Project Overview

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T23:17:11.145Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: klaytn, sei
- Contract surface: 2 unique implementations (7 raw deployments)
- DeFi Llama TVL: $16,535,444.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Feather is an isolated-risk lending and borrowing protocol with Feather Vaults powered by Morpho. It curates lending markets and vault risk parameters, including support from an on-chain risk engine for lending parameters and oracle feeds, across supported chains.

### Architecture

All MetaMorpho vaults are deployed by the same deployer cluster and likely share a common SafeProxy for administrative control, with the unnamed contract possibly serving as a registry or factory.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MetaMorphoV1_1 | operational_periphery | sei | 6 deployments: sei [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/); sei `0x50715a...28bfe8`; sei `0x8e1812...0a7223`; sei `0x948fcc...2a4923`; sei `0x94e6a8...5eb79c`; sei `0xbd1836...963dc5` | ⚠️ Unaudited |

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
| sei | [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/) | MetaMorphoV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
