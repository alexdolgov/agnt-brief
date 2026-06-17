# Agentic Audit Brief: LOCKON

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: active (Tier 0, 58.3% below peak)
- Generated: 2026-06-17T07:00:40.600Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, polygon
- Contract surface: 13 unique implementations (24 raw deployments)
- DeFi Llama TVL: $907,843.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LOCKON is a DeFi protocol for automated index tokens composed using wallet-portfolio analytics, including analysis of portfolios held by high-performing wallet addresses. Its on-chain system uses Set Protocol-style contracts and related modules for index token issuance, redemption, and rebalancing. Separate incentive-related contracts, if present, should not be treated as part of the current core product without contract-linkage evidence.

### Architecture

The LOCKON family integrates index management (Controllers and SetTokens) with incentive contracts (LockStaking, LockonVesting, IndexStaking, LockToken, Airdrop) that likely use the SetTokens as staking or reward assets. All contracts share the same deployer cluster and proxy patterns, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Unverified dependencies: 5/22.

## Audit Coverage Summary

- Verified implementations audited: 9/10 (90.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 13
- Raw deployments: 24
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Bunzz | Tier 2 | 5 | 50.0% | 2024-10 |
| Hashlock | Tier 2 | 5 | 50.0% | 2025-09 |
| unknown | Tier 2 | 4 | 40.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | arbitrum | unit-24740 | [`0xf6e8fe...7e6b99`](./contracts/arbitrum-42161/0xf6e8fef3e5e0a7664caedbcc3e655e188a7e6b99/) | ✅ Audited |
| BasicIssuanceModule | unknown | arbitrum | n/a | 2 deployments: polygon `0x6f0790...4cb8ed`; arbitrum [`0x018afb...925e82`](./contracts/arbitrum-42161/0x018afbf49356138d7ccf465f3f3420e233925e82/) | ✅ Audited |
| ExchangeIssuanceZeroEx | unknown | polygon | n/a | 4 deployments: polygon [`0x44ace3...a408c4`](./contracts/polygon-137/0x44ace3accfb7ec2150a9b5a0ca747e65f2a408c4/); polygon `0xdbf320...79f058`; arbitrum `0x7eea52...b86c79`; arbitrum `0x8ca32f...65a585` | ✅ Audited |
| IndexStaking | unknown | arbitrum | unit-24738 | [`0x8087cb...f4312d`](./contracts/arbitrum-42161/0x8087cb6c02b7a3c35e8c88cdbbd5eeb3fcf4312d/) | ✅ Audited |
| LockonVesting | operational_periphery | arbitrum | unit-24737 | [`0x555962...91f2a0`](./contracts/arbitrum-42161/0x555962ce3093b15fac8d37c2a49935c96991f2a0/) | ✅ Audited |
| LockStaking | unknown | arbitrum | unit-24736 | [`0x36f6dd...11423a`](./contracts/arbitrum-42161/0x36f6ddf9ee7c6dbec3e799c81d03a7986411423a/) | ✅ Audited |
| LockToken | token | arbitrum | unit-24739 | [`0x992c20...d6ef74`](./contracts/arbitrum-42161/0x992c20c4e2f10f6b2c81ee686a200569fbd6ef74/) | ✅ Audited |
| PositionUnitAdjusterModule | unknown | polygon | n/a | 4 deployments: polygon [`0x8c2e03...95f06b`](./contracts/polygon-137/0x8c2e0399291d6225517a873de04ab92c2c95f06b/); polygon `0xb9bf07...642282`; arbitrum `0x99871a...b17278`; arbitrum `0xe1093e...05b7eb` | ✅ Audited |
| TradeModule | unknown | arbitrum | n/a | 3 deployments: polygon `0x6cc11e...1c3b01`; arbitrum [`0x495113...a026a6`](./contracts/arbitrum-42161/0x4951133b9429ac86ea894b428ff6409b08a026a6/); arbitrum `0xebe11a...56bcd3` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SetToken | token | polygon | n/a | 3 deployments: polygon [`0xadb6d6...437252`](./contracts/polygon-137/0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252/); polygon `0xbe9a09...e30f63`; polygon `0xd32dfe...80662f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x24b803...596c8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e877c...0ec079` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd4850...ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>\](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | contract_name | 5 | high |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 4 | medium |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 9 | high |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xadb6d6...437252`](./contracts/polygon-137/0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252/) | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=34

Zero-match audit list:

- [3228] DL audit link
- [3229] <>\
- [3233] final_report_LOCKON_Oct_25_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
