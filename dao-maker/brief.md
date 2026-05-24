# Agentic Audit Brief: DAO Maker

⚠️ Lifecycle status: DEAD - TVL changed 0.2% over 90 days

## Project Overview

- Project: DAO Maker (`dao-maker`)
- Website: [https://daomaker.com/](https://daomaker.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T14:41:39.305Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 17 unique implementations (24 raw deployments)
- DeFi Llama TVL: $2,101,902.00
- On-chain TVL (included contracts): $9,341,771.08
- TVL by chain: Ethereum $9,341,771.08

## Project Description

DAO Maker provides a vesting and token distribution platform, enabling projects to lock and release tokens to stakeholders over time. It also includes a staking mechanism for its native token.

### Architecture

The vesting family is self-contained, with the token contract serving as the core asset and the staking contract providing utility for token holders.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 17
- Raw deployments: 24
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,341,771.08
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $9,341,771.08 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | ethereum | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | ⚠️ Unaudited |
| BuyNLock | unknown | ethereum | [`0x9b8cc9...bf13ae`](./contracts/ethereum-1/0x9b8cc92cee71e789e6a69e5996cee43fa3bf13ae/) | ⚠️ Unaudited |
| Farm | unknown | ethereum | 6 deployments: ethereum [`0x141ba8...307346`](./contracts/ethereum-1/0x141ba88b17442f4fe305871c9642e3c1c6307346/); ethereum `0x17aa35...ea8490`; ethereum `0x6d2976...f87b45`; ethereum `0x7c27bc...d1a9ff`; ethereum `0xc8cf20...cb4ef6`; ethereum `0xea7891...3e553e` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 3 deployments: ethereum [`0xabfb0a...8f531e`](./contracts/ethereum-1/0xabfb0aa83b427519cc27da5b6357a0ccbd8f531e/); ethereum `0xd07e86...d6a847`; ethereum `0xefee37...b66188` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x30e8de...2747bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47617f...669f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4fa001...d87cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x608926...58d856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6347d8...1f5bf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a45b5...4182f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b03e2...079e0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7db84c...f9357f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7301d...7cc23d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf5180...3b0490` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddde91...fdb351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe55c9a...b0dde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xecb621...b1f74a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | Token | token | $9,341,771.08 | Verified native implementation with $9,341,771.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b8cc9...bf13ae`](./contracts/ethereum-1/0x9b8cc92cee71e789e6a69e5996cee43fa3bf13ae/) | BuyNLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141ba8...307346`](./contracts/ethereum-1/0x141ba88b17442f4fe305871c9642e3c1c6307346/) | Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabfb0a...8f531e`](./contracts/ethereum-1/0xabfb0aa83b427519cc27da5b6357a0ccbd8f531e/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2919] DL audit link
- [2920] DL audit link
- [2921] DL audit link
- [2922] DL audit link
- [2923] DL audit link
- [2924] DL audit link
- [2925] DL audit link

Fork inheritance lineage and inherited audits are included when available.
