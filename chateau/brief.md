# Agentic Audit Brief: CHATEAU

## Project Overview

- Project: CHATEAU (`chateau`)
- Website: [https://www.chateau.capital](https://www.chateau.capital)
- Lifecycle: active (Tier 0, 17.1% below peak)
- Generated: 2026-06-18T12:24:12.434Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: hyperliquid, plasma
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,036,483.43
- On-chain TVL (included contracts): $19,062.45
- TVL by chain: Plasma $19,062.45

## Project Description

CHATEAU is an RWA/institutional-asset DeFi protocol centered on chUSD, an overcollateralized synthetic dollar/stable-value asset. Its staked chUSD products, including StakedchUSDOFT and StakedchUSDV2 where applicable, represent vault-style exposure to off-chain institutional/private credit strategies rather than a simple stablecoin backed directly by real-world assets.

### Architecture

The two chUSD instances likely represent the same stablecoin across different chains or pools, while StakedchUSDOFT and StakedchUSDV2 are staking derivatives that depend on chUSD as the underlying asset. The unnamed contracts likely provide infrastructure such as staking logic or access control shared between the staking tokens.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (6 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $19,062.45
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| chUSD | unknown | plasma | n/a | 2 deployments: hyperliquid `0x222222...abea02`; plasma [`0x222222...f5fdc1`](./contracts/plasma-9745/0x22222215d4edc5510d23d0886133e7ece7f5fdc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedchUSDV2 | token | plasma | n/a | [`0x888888...ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | ⚠️ Unaudited |
| EndpointV2 | operational_periphery | plasma | n/a | [`0x6f4756...48dd5b`](./contracts/plasma-9745/0x6f475642a6e85809b1c36fa62763669b1b48dd5b/) | ⚠️ Unaudited |
| StakedchUSDOFT | token | hyperliquid | n/a | [`0x888888...b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x14e445...525658` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xea6709...cd7296` | ❓ Unverified |

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
| upstream | 1 |
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
