# Agentic Audit Brief: Maverick Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 51.1% over 90 days

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T13:58:47.554Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, bsc, ethereum, scroll, zksync-era
- Contract surface: 93 unique implementations (141 raw deployments)
- DeFi Llama TVL: $2,218,640.00
- On-chain TVL (included contracts): $26,763,110.03
- TVL by chain: Ethereum $25,606,496.79 | Bsc $654,353.06 | Base $502,260.18

## Project Description

Maverick Protocol is a decentralized exchange (DEX) that offers automated market-making with dynamic fee distribution and liquidity management. It enables users to provide liquidity in customizable pools, earn trading fees, and participate in governance through its native token and voting escrow system.

### Architecture

Maverick V1 and V2 share the same governance token (MaverickToken) and voting escrow (VotingEscrow) across chains. V2 introduces new factory and router contracts for reward management, while V1's core AMM logic (PoolPositionManager, PoolInformation) remains foundational on earlier deployments.

## Audit Coverage Summary

- Verified implementations audited: 6/17 (35.3%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 2
- Unverified implementations: 76
- Unique implementations: 93
- Raw deployments: 141
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $26,763,110.03
- Latest audit: 2023-05 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: 17.6% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $26,763,110.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 4 | 23.5% | 2023-03 |
| Code4rena | Tier 1 | 3 | 17.6% | 2022-12 |
| Zellic | Tier 2 | 1 | 5.9% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolPositionAndRewardFactorySlim | registry | ethereum | 7 deployments: ethereum [`0x4f24d7...3fcb05`](./contracts/ethereum-1/0x4f24d73773fcce560f4fd641125c23a2b93fcb05/); ethereum `0x550056...7842e2`; ethereum `0x56c692...a29cde`; ethereum `0x9b8c85...de25fe`; ethereum `0xdf8167...42635a`; ethereum `0xff5a09...4792f4`; bsc `0xfc328e...26a9c0` | ✅ Audited |
| PoolPositionDynamicDeployerSlim | core_logic | ethereum | 2 deployments: ethereum [`0x6db732...819760`](./contracts/ethereum-1/0x6db7325569e4049f9942114e166741a3ee819760/); ethereum `0x85e3f1...0b2b1b` | ✅ Audited |
| PoolPositionManager | core_logic | ethereum | 9 deployments: ethereum [`0x1468d0...99aeed`](./contracts/ethereum-1/0x1468d02ba11037552dcd61bd4da81fbcca99aeed/); ethereum `0x26ed58...86937f`; ethereum `0x873bbc...b2efb5`; ethereum `0xc402d1...f6fbd2`; ethereum `0xe7583a...69d93a`; ethereum `0xf0c33e...7909e9`; ethereum `0xffd7b2...b8ecca`; bsc `0x2d1154...bdbab2`; base `0xc402d1...f6fbd2` | ✅ Audited |
| PositionMetadata | unknown | ethereum | [`0xfd6038...9aa047`](./contracts/ethereum-1/0xfd603806aa2cbe94f2fc3750aec79e67f69aa047/) | ✅ Audited |
| Router | adapter | ethereum | 7 deployments: ethereum [`0x557a93...4b0ffd`](./contracts/ethereum-1/0x557a93de81b379e10a4aa7b8ac0631ec6b4b0ffd/); ethereum `0x9f1ec8...da0014`; ethereum `0xb28557...fa9b45`; ethereum `0xbbf1ee...a94913`; ethereum `0xc3b7af...071cc0`; ethereum `0xc945dc...114ce0`; bsc `0xd53a9f...542869` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MaverickToken | token | base | 3 deployments: ethereum `0x7448c7...c46abd`; bsc `0xd691d9...cfd103`; base [`0x64b88c...0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | ⚠️ Unaudited |
| LockupDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x58adf9...f46cb3`](./contracts/ethereum-1/0x58adf9953e5a2d175a15dc5807aca3520bf46cb3/); ethereum `0xf4e8cb...7dcf1d` | ⚠️ Unaudited |
| MaverickV2IncentiveMatcherFactory | registry | ethereum | 4 deployments: ethereum [`0x5740ca...23e0b0`](./contracts/ethereum-1/0x5740ca1b634d772fb5edb8bbc380fa982623e0b0/); bsc `0xeb2231...111002`; base `0x8a4c87...ba54a1`; arbitrum `0x6a534c...b84a84` | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | arbitrum | 4 deployments: ethereum `0x372327...bd7ec7`; bsc `0x7573b6...97c565`; base `0x3fa57c...e40b9a`; arbitrum [`0x353904...df826c`](./contracts/arbitrum-42161/0x353904e4afda57e8c4353a2eb173e566d8df826c/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | scroll | [`0xd837fc...46d2c1`](./contracts/scroll-534352/0xd837fcba68a6a5aa63f791ea51f258d30546d2c1/) | ⚠️ Unaudited |
| MaverickV2Router | adapter | scroll | [`0x15d5ff...dfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | ⚠️ Unaudited |
| PoolPositionBaseDeployerSlim | core_logic | ethereum | 2 deployments: ethereum [`0x34c405...5a19d5`](./contracts/ethereum-1/0x34c4055cb3250f7e042e9e5aeb20e22ae15a19d5/); ethereum `0x683a30...3561b3` | ⚠️ Unaudited |
| PositionInspector | unknown | ethereum | 6 deployments: ethereum [`0x19e86a...1ea629`](./contracts/ethereum-1/0x19e86af73880cee5cd59fe23b2d9331b571ea629/); ethereum `0x43c418...fe4752`; ethereum `0x456a37...3da53c`; ethereum `0x5cb6ce...f7b308`; bsc `0x70cd60...d888a0`; base `0x550056...7842e2` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | 4 deployments: ethereum [`0x0c9367...130be4`](./contracts/ethereum-1/0x0c93675719ad43648a1ab5f735dcaaa08e130be4/); ethereum `0x4949ac...ba66d8`; bsc `0xe6108f...b10819`; base `0xfccb52...9e0ea5` | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Position | unknown | base | 4 deployments: ethereum `0x4a3e49...1eb646`; ethereum `0xee3163...8fb240`; bsc `0x23aeaf...c8e9d0`; base [`0x0d8127...7dba35`](./contracts/base-8453/0x0d8127a01bdb311378ed32f5b81690dd917dba35/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolInformation | core_logic | ethereum | 7 deployments: ethereum [`0x0087d1...c5d949`](./contracts/ethereum-1/0x0087d11551437c3964dddf0f4fa58836c5c5d949/); ethereum `0x9980ce...925e23`; ethereum `0xadc6ce...59bfd3`; bsc `0x9e10c5...2dbc56`; bsc `0xb39161...1ab445`; base `0x4f24d7...3fcb05`; base `0x6e230d...06a14d` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (76)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x01538a...e22a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a7e84...a63c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d621c...962814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d8127...7dba35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e632f...ff2f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b4a40...6b660d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x472a97...67581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a585e...90e5f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4faf44...3b3cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53ee77...5323aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x562206...0adc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x583a2e...8493d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5aeaa9...571f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c814b...fb7f16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f9726...cf09b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65a3ad...9d6364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66704c...b29dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a68a9...cbce33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b5e43...2e231d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x758f7a...f0a2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a0271...8d7cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x836179...b6dd99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x909b6a...fec71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cb19b...82192a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa10100...31396b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5ebd8...c0a43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa72017...af37cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa5bf6...74e456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab1a01...5b6c8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0f485...919ff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc23523...3d39ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2ac59...84b13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcc55b1...952a49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcbb81...ae2c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde2a30...3d8b11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf9a80...9e0952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb6625...bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec95f6...828a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfde7a3...ac9566` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x432070...738194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x763117...02f589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf9a80...9e0952` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0e70ca...d4a5a3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x11244d...91745f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x17132c...82749f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x270a03...14d845` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x2c1a60...ccf7f5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x39e098...ad03f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x3e1c4b...a30c79` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x432e67...048244` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4d93c5...0b21a0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x521b44...91fb92` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x57d47f...e06449` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5aea57...9d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x74e565...40cec7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x787c09...9ee508` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7a6902...d1dc56` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7edcb0...3a2807` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x852639...87106c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x943928...1d5b2f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc9e5f0...86d7e0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xd32ce3...6d87f9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfd5476...4e8525` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x01538a...e22a3e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0a7e84...a63c1e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b4a40...6b660d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x583a2e...8493d7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65a3ad...9d6364` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x873bbc...b2efb5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb28557...fa9b45` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbbf1ee...a94913` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeb6625...bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0a7e84...a63c1e` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x0a7e84...a63c1e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022-12-Code4rena.md](https://github.com/maverickprotocol/audits/blob/main/phase-1/2022-12-Code4rena.md) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | 10 | high |
| [ABDK_Maverick_MaverickProtocol_v_3_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/ABDK_Maverick_MaverickProtocol_v_3_0.pdf) | ABDK | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Maverick Protocol - Zellic Security Assessment Report.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/Maverick%20Protocol%20-%20Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 7 | high |
| [REP-Maverick-Protocol__final-20220421T194749Z.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/REP-Maverick-Protocol__final-20220421T194749Z.pdf) | Unknown | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |
| [ABDK_Maverick_MaverickPhase2_v_2_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/ABDK_Maverick_MaverickPhase2_v_2_0.pdf) | ABDK | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Maverick Pool Positions Audit - Mar '23.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/Maverick%20Pool%20Positions%20Audit%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 18 | high |
| [report_mitigation.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/report_mitigation.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x64b88c...0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | MaverickToken | token | $26,763,110.03 | Verified native implementation with $26,763,110.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58adf9...f46cb3`](./contracts/ethereum-1/0x58adf9953e5a2d175a15dc5807aca3520bf46cb3/) | LockupDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5740ca...23e0b0`](./contracts/ethereum-1/0x5740ca1b634d772fb5edb8bbc380fa982623e0b0/) | MaverickV2IncentiveMatcherFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x353904...df826c`](./contracts/arbitrum-42161/0x353904e4afda57e8c4353a2eb173e566d8df826c/) | MaverickV2RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0xd837fc...46d2c1`](./contracts/scroll-534352/0xd837fcba68a6a5aa63f791ea51f258d30546d2c1/) | MaverickV2RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x15d5ff...dfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | MaverickV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0087d1...c5d949`](./contracts/ethereum-1/0x0087d11551437c3964dddf0f4fa58836c5c5d949/) | PoolInformation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34c405...5a19d5`](./contracts/ethereum-1/0x34c4055cb3250f7e042e9e5aeb20e22ae15a19d5/) | PoolPositionBaseDeployerSlim | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19e86a...1ea629`](./contracts/ethereum-1/0x19e86af73880cee5cd59fe23b2d9331b571ea629/) | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c9367...130be4`](./contracts/ethereum-1/0x0c93675719ad43648a1ab5f735dcaaa08e130be4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 18 |

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
