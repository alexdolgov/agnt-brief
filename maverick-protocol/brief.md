# Agentic Audit Brief: Maverick Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 51.1% over 90 days

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T07:00:04.191Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, base, bsc, ethereum, scroll, zksync-era
- Contract surface: 31 unique implementations (50 raw deployments)
- DeFi Llama TVL: $1,768,377.00
- On-chain TVL (included contracts): $26,763,110.03
- TVL by chain: Ethereum $25,606,496.79 | Bsc $654,353.06 | Base $502,260.18

## Project Description

Maverick Protocol is liquidity infrastructure centered on the Maverick AMM, supporting token swaps and liquidity provisioning with mechanisms intended to improve capital efficiency and give liquidity providers control over how liquidity is positioned in pools.

### Architecture

Maverick V1 and V2 share the same governance token (MaverickToken) and voting escrow (VotingEscrow) across chains. V2 introduces new factory and router contracts for reward management, while V1's core AMM logic (PoolPositionManager, PoolInformation) remains foundational on earlier deployments.

## Contract Surface Quality

- Indexed contracts: 165; live-surface contracts included: 50 (47 live, 3 unknown).
- Excluded by liveness: 115 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Unverified dependencies: 3/15.

## Audit Coverage Summary

- Verified implementations audited: 6/16 (37.5%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 1
- Unverified implementations: 15
- Unique implementations: 31
- Raw deployments: 50
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $26,763,110.03
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: 25.0% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $26,763,110.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 5 | 31.3% | 2023-03 |
| Code4rena | Tier 1 | 4 | 25.0% | 2022-12 |
| Zellic | Tier 2 | 3 | 18.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolPositionManager | core_logic | ethereum | unit-35836 | [`0xe7583a...69d93a`](./contracts/ethereum-1/0xe7583af5121a8f583efd82767cccfeb71069d93a/) | ✅ Audited |
| PoolPositionManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x2d1154...bdbab2`](./contracts/bsc-56/0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2/); base `0xc402d1...f6fbd2` | ✅ Audited |
| Router | adapter | ethereum | unit-35833 | [`0xbbf1ee...a94913`](./contracts/ethereum-1/0xbbf1ee38152e9d8e3470dc47947eaa65dca94913/) | ✅ Audited |
| Router | adapter | ethereum | unit-35835 | [`0xc3b7af...071cc0`](./contracts/ethereum-1/0xc3b7af1d8c3ca78f375eb125f0211164b9071cc0/) | ✅ Audited |
| Router | adapter | bsc | unit-35837 | [`0xd53a9f...542869`](./contracts/bsc-56/0xd53a9f3fae2bd46d35e9a30ba58112a585542869/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaverickToken | token | base | n/a | 3 deployments: ethereum `0x7448c7...c46abd`; bsc `0xd691d9...cfd103`; base [`0x64b88c...0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | base | n/a | 4 deployments: ethereum `0x372327...bd7ec7`; bsc `0x443b1f...b25267`; bsc `0x7573b6...97c565`; base [`0x1cdc67...5807f8`](./contracts/base-8453/0x1cdc67950a68256c5157987bbf700e94595807f8/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | ethereum | unit-35834 | [`0xc0c3bc...ab45a0`](./contracts/ethereum-1/0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | arbitrum | n/a | 4 deployments: bsc `0x5deb1b...892bb3`; base `0xe7c737...aef392`; arbitrum [`0x293a7d...963460`](./contracts/arbitrum-42161/0x293a7d159c5ad1b36b784998de5563fe36963460/); scroll `0xd837fc...46d2c1` | ⚠️ Unaudited |
| MaverickV2Router | adapter | scroll | n/a | 5 deployments: ethereum `0x62e318...4422fa`; bsc `0x374bfc...c6b20f`; base `0x5eded0...4df527`; arbitrum `0x5c3b38...e0fc76`; scroll [`0x15d5ff...dfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrow | operational_periphery | arbitrum | n/a | [`0xd5d8cb...83ea8d`](./contracts/arbitrum-42161/0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowFactory | operational_periphery | base | n/a | [`0x1de8c0...f99443`](./contracts/base-8453/0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowWSync | operational_periphery | base | n/a | 3 deployments: ethereum `0xc6addb...112053`; bsc `0x675178...06094c`; base [`0x05b1b8...b28cd9`](./contracts/base-8453/0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x4949ac...ba66d8`](./contracts/ethereum-1/0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8/); bsc `0xe6108f...b10819`; base `0xfccb52...9e0ea5` | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Position | unknown | base | n/a | 3 deployments: ethereum `0x4a3e49...1eb646`; bsc `0x23aeaf...c8e9d0`; base [`0x0d8127...7dba35`](./contracts/base-8453/0x0d8127a01bdb311378ed32f5b81690dd917dba35/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4a585e...90e5f8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x17132c...82749f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x39e098...ad03f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x432e67...048244` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d93c5...0b21a0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x521b44...91fb92` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x787c09...9ee508` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7edcb0...3a2807` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xad8262...9260ba` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe86151...14debf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfd5476...4e8525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddd2de...db8aaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf0337...92114a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022-12-Code4rena.md](https://github.com/maverickprotocol/audits/blob/main/phase-1/2022-12-Code4rena.md) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | 5 | high |
| [ABDK_Maverick_MaverickProtocol_v_3_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/ABDK_Maverick_MaverickProtocol_v_3_0.pdf) | ABDK | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Maverick Protocol - Zellic Security Assessment Report.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/Maverick%20Protocol%20-%20Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [REP-Maverick-Protocol__final-20220421T194749Z.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/REP-Maverick-Protocol__final-20220421T194749Z.pdf) | Unknown | Audit | 2022-04 | stale | Direct | contract_name | 3 | high |
| [ABDK_Maverick_MaverickPhase2_v_2_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/ABDK_Maverick_MaverickPhase2_v_2_0.pdf) | ABDK | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Maverick Pool Positions Audit - Mar '23.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/Maverick%20Pool%20Positions%20Audit%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | high |
| [report_mitigation.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/report_mitigation.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x64b88c...0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | MaverickToken | token | $26,763,110.03 | Verified native implementation with $26,763,110.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cdc67...5807f8`](./contracts/base-8453/0x1cdc67950a68256c5157987bbf700e94595807f8/) | MaverickV2RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0c3bc...ab45a0`](./contracts/ethereum-1/0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0/) | MaverickV2RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x293a7d...963460`](./contracts/arbitrum-42161/0x293a7d159c5ad1b36b784998de5563fe36963460/) | MaverickV2RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x15d5ff...dfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | MaverickV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd5d8cb...83ea8d`](./contracts/arbitrum-42161/0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d/) | MaverickV2VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1de8c0...f99443`](./contracts/base-8453/0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443/) | MaverickV2VotingEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05b1b8...b28cd9`](./contracts/base-8453/0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9/) | MaverickV2VotingEscrowWSync | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4949ac...ba66d8`](./contracts/ethereum-1/0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=42

Zero-match audit list:

- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf
- [2879] report_mitigation.pdf

Fork inheritance lineage and inherited audits are included when available.
