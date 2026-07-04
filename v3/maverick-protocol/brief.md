# Agentic Audit Brief: Maverick Protocol

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:22.091Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, bsc, ethereum, scroll, zksync-era
- Contract surface: 95 unique implementations (114 raw deployments)
- DeFi Llama TVL: $1,717,046.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 27 project-authored contract(s) across 5 chain(s); 9 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 10 common project-authored base contract(s) (multicall, selfpermit, deadline). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 147; live-surface contracts included: 114 (33 live, 81 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/15 (33.3%)
- Deployed-live implementations: 16 of 95 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/16
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 95
- Raw deployments: 114
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 20.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 5 | 31.3% | 2023-03 |
| Code4rena | Tier 1 | 3 | 18.8% | 2022-12 |
| Zellic | Tier 2 | 3 | 18.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolPositionManager | core_logic | ethereum | n/a | [`0xe7583a...69d93a`](./contracts/ethereum-1/0xe7583af5121a8f583efd82767cccfeb71069d93a/) | ✅ Audited |
| PoolPositionManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x2d1154...bdbab2`](./contracts/bsc-56/0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2/); base `0xc402d1...f6fbd2` | ✅ Audited |
| Router | adapter | ethereum | n/a | [`0xbbf1ee...a94913`](./contracts/ethereum-1/0xbbf1ee38152e9d8e3470dc47947eaa65dca94913/) | ✅ Audited |
| Router | adapter | ethereum | n/a | [`0xc3b7af...071cc0`](./contracts/ethereum-1/0xc3b7af1d8c3ca78f375eb125f0211164b9071cc0/) | ✅ Audited |
| Router | adapter | bsc | n/a | [`0xd53a9f...542869`](./contracts/bsc-56/0xd53a9f3fae2bd46d35e9a30ba58112a585542869/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaverickToken | token | base | n/a | 3 deployments: ethereum `0x7448c7...c46abd`; bsc `0xd691d9...cfd103`; base [`0x64b88c...0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | base | n/a | 4 deployments: ethereum `0x372327...bd7ec7`; bsc `0x443b1f...b25267`; bsc `0x7573b6...97c565`; base [`0x1cdc67...5807f8`](./contracts/base-8453/0x1cdc67950a68256c5157987bbf700e94595807f8/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | ethereum | n/a | [`0xc0c3bc...ab45a0`](./contracts/ethereum-1/0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | arbitrum | n/a | 4 deployments: bsc `0x5deb1b...892bb3`; base `0xe7c737...aef392`; arbitrum [`0x293a7d...963460`](./contracts/arbitrum-42161/0x293a7d159c5ad1b36b784998de5563fe36963460/); scroll `0xd837fc...46d2c1` | ⚠️ Unaudited |
| MaverickV2Router | adapter | scroll | n/a | 5 deployments: ethereum `0x62e318...4422fa`; bsc `0x374bfc...c6b20f`; base `0x5eded0...4df527`; arbitrum `0x5c3b38...e0fc76`; scroll [`0x15d5ff...dfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrow | operational_periphery | arbitrum | n/a | [`0xd5d8cb...83ea8d`](./contracts/arbitrum-42161/0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowFactory | operational_periphery | base | n/a | [`0x1de8c0...f99443`](./contracts/base-8453/0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowWSync | operational_periphery | base | n/a | 3 deployments: ethereum `0xc6addb...112053`; bsc `0x675178...06094c`; base [`0x05b1b8...b28cd9`](./contracts/base-8453/0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9/) | ⚠️ Unaudited |
| Position | unknown | bsc | n/a | 2 deployments: ethereum `0x4a3e49...1eb646`; bsc [`0x23aeaf...c8e9d0`](./contracts/bsc-56/0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c9367...130be4`](./contracts/ethereum-1/0x0c93675719ad43648a1ab5f735dcaaa08e130be4/); ethereum `0x4949ac...ba66d8`; bsc `0xe6108f...b10819`; base `0xfccb52...9e0ea5` | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x530000...000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01538a...e22a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d621c...962814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8127...7dba35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e632f...ff2f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b4a40...6b660d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x472a97...67581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a585e...90e5f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4faf44...3b3cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53ee77...5323aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x562206...0adc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x583a2e...8493d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aeaa9...571f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c814b...fb7f16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f9726...cf09b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65a3ad...9d6364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66704c...b29dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a68a9...cbce33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b5e43...2e231d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x758f7a...f0a2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a0271...8d7cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836179...b6dd99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x909b6a...fec71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb19b...82192a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa10100...31396b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ebd8...c0a43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa72017...af37cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5bf6...74e456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab1a01...5b6c8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0f485...919ff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc23523...3d39ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ac59...84b13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc55b1...952a49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcbb81...ae2c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde2a30...3d8b11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9a80...9e0952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6625...bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec95f6...828a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee3163...8fb240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde7a3...ac9566` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x205b88...2eb461` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ace04...11ad64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f3faf...e4d580` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x432070...738194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763117...02f589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78968e...d0728a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x830c9e...7851fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x999929...6dec44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a056...4a52c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbccbe1...0f3cbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5de82...89fbf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1b19b...f1bde6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb5016...0edfa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1db1...348849` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf9a80...9e0952` | ❓ Unverified |
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
| UnnamedContract | unknown | base | n/a | `0x01538a...e22a3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d8127...7dba35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b4a40...6b660d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f24d7...3fcb05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x583a2e...8493d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65a3ad...9d6364` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873bbc...b2efb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb28557...fa9b45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbf1ee...a94913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddd2de...db8aaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf0337...92114a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb6625...bd9c9b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022-12-Code4rena.md](https://github.com/maverickprotocol/audits/blob/main/phase-1/2022-12-Code4rena.md) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | 4 | n/a |
| [ABDK_Maverick_MaverickProtocol_v_3_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/ABDK_Maverick_MaverickProtocol_v_3_0.pdf) | ABDK | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Maverick Protocol - Zellic Security Assessment Report.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/Maverick%20Protocol%20-%20Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | 3 | n/a |
| [REP-Maverick-Protocol__final-20220421T194749Z.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/REP-Maverick-Protocol__final-20220421T194749Z.pdf) | Unknown | Audit | 2022-04 | stale | Direct | contract_name | 3 | n/a |
| [ABDK_Maverick_MaverickPhase2_v_2_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/ABDK_Maverick_MaverickPhase2_v_2_0.pdf) | ABDK | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [Maverick Pool Positions Audit - Mar '23.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/Maverick%20Pool%20Positions%20Audit%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 2 | n/a |
| [report_mitigation.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/report_mitigation.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 95 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Zero-match audit list:

- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf
- [2879] report_mitigation.pdf

Fork inheritance lineage and inherited audits are included when available.
