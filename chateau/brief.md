# Agentic Audit Brief: CHATEAU

## Project Overview

- Project: CHATEAU (`chateau`)
- Website: [https://www.chateau.capital](https://www.chateau.capital)
- Lifecycle: active (Tier 0, 17.1% below peak)
- Generated: 2026-06-10T22:25:12.903Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: hyperliquid, plasma
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,036,282.93
- On-chain TVL (included contracts): $19,062.45
- TVL by chain: Plasma $19,062.45

## Project Description

CHATEAU is an RWA/institutional-asset DeFi protocol centered on chUSD, an overcollateralized synthetic dollar/stable-value asset. Its staked chUSD products, including StakedchUSDOFT and StakedchUSDV2 where applicable, represent vault-style exposure to off-chain institutional/private credit strategies rather than a simple stablecoin backed directly by real-world assets.

### Architecture

The two chUSD instances likely represent the same stablecoin across different chains or pools, while StakedchUSDOFT and StakedchUSDV2 are staking derivatives that depend on chUSD as the underlying asset. The unnamed contracts likely provide infrastructure such as staking logic or access control shared between the staking tokens.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $19,062.45
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 33.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| chUSD | token | plasma | 2 deployments: hyperliquid `0x222222...abea02`; plasma [`0x222222...f5fdc1`](./contracts/plasma-9745/0x22222215d4edc5510d23d0886133e7ece7f5fdc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedchUSDV2 | token | plasma | [`0x888888...ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | ⚠️ Unaudited |
| StakedchUSDOFT | token | hyperliquid | [`0x888888...b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | plasma | `0x14e445...525658` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xea6709...cd7296` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chateau - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Chateau%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x888888...ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | StakedchUSDV2 | token | $19,062.45 | Verified native implementation with $19,062.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x888888...b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | StakedchUSDOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
