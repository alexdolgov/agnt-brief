# Agentic Audit Brief: LOCKON

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: active (Tier 0, 58.3% below peak)
- Generated: 2026-06-10T20:59:07.027Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, polygon
- Contract surface: 23 unique implementations (62 raw deployments)
- DeFi Llama TVL: $1,049,561.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LOCKON is a DeFi protocol for automated index tokens composed using wallet-portfolio analytics, including analysis of portfolios held by high-performing wallet addresses. Its on-chain system uses Set Protocol-style contracts and related modules for index token issuance, redemption, and rebalancing. Separate incentive-related contracts, if present, should not be treated as part of the current core product without contract-linkage evidence.

### Architecture

The LOCKON family integrates index management (Controllers and SetTokens) with incentive contracts (LockStaking, LockonVesting, IndexStaking, LockToken, Airdrop) that likely use the SetTokens as staking or reward assets. All contracts share the same deployer cluster and proxy patterns, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 9/16 (56.3%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 23
- Raw deployments: 62
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Bunzz | Tier 2 | 5 | 31.3% | 2024-10 |
| Hashlock | Tier 2 | 5 | 31.3% | 2025-09 |
| unknown | Tier 2 | 4 | 25.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Airdrop | operational_periphery | arbitrum | [`0xf6e8fe...7e6b99`](./contracts/arbitrum-42161/0xf6e8fef3e5e0a7664caedbcc3e655e188a7e6b99/) | ✅ Audited |
| BasicIssuanceModule | unknown | arbitrum | 8 deployments: polygon `0x2ce6c3...9f34b0`; polygon `0x3b2a94...18b64e`; polygon `0x4a4ebd...5cade4`; polygon `0x6f0790...4cb8ed`; polygon `0x78bc29...c846dc`; polygon `0xe6f4a7...cef262`; arbitrum [`0x018afb...925e82`](./contracts/arbitrum-42161/0x018afbf49356138d7ccf465f3f3420e233925e82/); arbitrum `0xcc0589...2e6723` | ✅ Audited |
| ExchangeIssuanceZeroEx | unknown | polygon | 7 deployments: polygon [`0x40c20f...dbac14`](./contracts/polygon-137/0x40c20fb57113ebe4f332c311a2b0257cdbdbac14/); polygon `0x44ace3...a408c4`; polygon `0xa2e9af...e83763`; polygon `0xdbf320...79f058`; polygon `0xe9eecd...eea18d`; arbitrum `0x7eea52...b86c79`; arbitrum `0x8ca32f...65a585` | ✅ Audited |
| IndexStaking | unknown | arbitrum | [`0x8087cb...f4312d`](./contracts/arbitrum-42161/0x8087cb6c02b7a3c35e8c88cdbbd5eeb3fcf4312d/) | ✅ Audited |
| LockonVesting | operational_periphery | arbitrum | [`0x555962...91f2a0`](./contracts/arbitrum-42161/0x555962ce3093b15fac8d37c2a49935c96991f2a0/) | ✅ Audited |
| LockStaking | unknown | arbitrum | [`0x36f6dd...11423a`](./contracts/arbitrum-42161/0x36f6ddf9ee7c6dbec3e799c81d03a7986411423a/) | ✅ Audited |
| LockToken | token | arbitrum | [`0x992c20...d6ef74`](./contracts/arbitrum-42161/0x992c20c4e2f10f6b2c81ee686a200569fbd6ef74/) | ✅ Audited |
| PositionUnitAdjusterModule | unknown | polygon | 6 deployments: polygon [`0x63005b...b35f50`](./contracts/polygon-137/0x63005bb8daa3774af731f7f8b0d7a8790eb35f50/); polygon `0x8c2e03...95f06b`; polygon `0xb9bf07...642282`; arbitrum `0x99871a...b17278`; arbitrum `0xc2031d...be1b02`; arbitrum `0xe1093e...05b7eb` | ✅ Audited |
| TradeModule | unknown | arbitrum | 3 deployments: polygon `0x6cc11e...1c3b01`; arbitrum [`0x495113...a026a6`](./contracts/arbitrum-42161/0x4951133b9429ac86ea894b428ff6409b08a026a6/); arbitrum `0xebe11a...56bcd3` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Controller | governance | polygon | 3 deployments: polygon [`0x153e73...fb6e83`](./contracts/polygon-137/0x153e739b8823b277844ad885a30ac5bd9dfb6e83/); arbitrum `0x828680...dfeb23`; arbitrum `0xa36c2b...b864be` | ⚠️ Unaudited |
| IntegrationRegistry | registry | arbitrum | 3 deployments: polygon `0x6bc676...67cc89`; arbitrum [`0x27e193...c604ae`](./contracts/arbitrum-42161/0x27e19358642b51363c9e63ffbea5b9f460c604ae/); arbitrum `0x97bd10...12b633` | ⚠️ Unaudited |
| MockToken | token | arbitrum | 3 deployments: polygon `0xec45d1...ea9f24`; arbitrum [`0x36a922...f82820`](./contracts/arbitrum-42161/0x36a9220ab15dfd0a12035a38aca9f6600ff82820/); arbitrum `0xb350d9...3069b2` | ⚠️ Unaudited |
| PositionComponentCorrectionModule | unknown | arbitrum | 6 deployments: polygon `0x8868c2...bcabb9`; polygon `0x8a11c6...a929e5`; polygon `0x9a4620...b041ba`; arbitrum [`0x5a0c15...0795b8`](./contracts/arbitrum-42161/0x5a0c15343702d070ab780e12f94fbde1f00795b8/); arbitrum `0x781f87...2cc7c5`; arbitrum `0xcaf7e1...f799e3` | ⚠️ Unaudited |
| SetToken | token | polygon | 3 deployments: polygon [`0xadb6d6...437252`](./contracts/polygon-137/0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252/); polygon `0xbe9a09...e30f63`; polygon `0xd32dfe...80662f` | ⚠️ Unaudited |
| ZeroExApiAdapter | adapter | arbitrum | 4 deployments: polygon `0x8d93a0...4320c1`; polygon `0xe65f1a...37309b`; arbitrum [`0x1f1a16...b37308`](./contracts/arbitrum-42161/0x1f1a16c32982829bc77c9796ce862c628fb37308/); arbitrum `0x28ccf5...8f4f23` | ⚠️ Unaudited |
| ZeroExApiV2Adapter | adapter | polygon | 4 deployments: polygon [`0x6b5842...45d5b5`](./contracts/polygon-137/0x6b5842a517089e58424a0b1650c90812ae45d5b5/); polygon `0xa18670...823cb3`; arbitrum `0x958360...648550`; arbitrum `0xb70e58...fdf3d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x9c50ce...a3520f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x175024...3290d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24b803...596c8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d0b47...72c300` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9e877c...0ec079` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb4106f...833468` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdd4850...ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>\](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | contract_name | 5 | high |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 6 | medium |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 18 | high |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x153e73...fb6e83`](./contracts/polygon-137/0x153e739b8823b277844ad885a30ac5bd9dfb6e83/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27e193...c604ae`](./contracts/arbitrum-42161/0x27e19358642b51363c9e63ffbea5b9f460c604ae/) | IntegrationRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36a922...f82820`](./contracts/arbitrum-42161/0x36a9220ab15dfd0a12035a38aca9f6600ff82820/) | MockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a0c15...0795b8`](./contracts/arbitrum-42161/0x5a0c15343702d070ab780e12f94fbde1f00795b8/) | PositionComponentCorrectionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xadb6d6...437252`](./contracts/polygon-137/0xadb6d62e142a2f911fb3c9ca1c1d0fe5d9437252/) | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 4 |
| standard_library | 5 |
| needs_review | 1 |

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
