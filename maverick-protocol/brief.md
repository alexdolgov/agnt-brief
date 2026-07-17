# Agentic Audit Brief: Maverick Protocol

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.474Z
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
| PoolPositionManager | core_logic | ethereum | n/a | [`0xe7583af5121a8f583efd82767cccfeb71069d93a`](./contracts/ethereum-1/0xe7583af5121a8f583efd82767cccfeb71069d93a/) | ✅ Audited |
| PoolPositionManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2`](./contracts/bsc-56/0x2d11545d36ffa0b8558e83c26e45cfaf14bdbab2/); base `0xc402d13b0d04867649a632f17528c753d8f6fbd2` | ✅ Audited |
| Router | adapter | ethereum | n/a | [`0xbbf1ee38152e9d8e3470dc47947eaa65dca94913`](./contracts/ethereum-1/0xbbf1ee38152e9d8e3470dc47947eaa65dca94913/) | ✅ Audited |
| Router | adapter | ethereum | n/a | [`0xc3b7af1d8c3ca78f375eb125f0211164b9071cc0`](./contracts/ethereum-1/0xc3b7af1d8c3ca78f375eb125f0211164b9071cc0/) | ✅ Audited |
| Router | adapter | bsc | n/a | [`0xd53a9f3fae2bd46d35e9a30ba58112a585542869`](./contracts/bsc-56/0xd53a9f3fae2bd46d35e9a30ba58112a585542869/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaverickToken | token | base | n/a | 3 deployments: ethereum `0x7448c7456a97769f6cd04f1e83a4a23ccdc46abd`; bsc `0xd691d9a68c887bdf34da8c36f63487333acfd103`; base [`0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | base | n/a | 4 deployments: ethereum `0x37232785acd3eaddfd784db3f9ecc1f8bcbd7ec7`; bsc `0x443b1f86d45c1ddc60b355d5a8a931656ab25267`; bsc `0x7573b601b2e4e0cdc8fbaa328e08e733c697c565`; base [`0x1cdc67950a68256c5157987bbf700e94595807f8`](./contracts/base-8453/0x1cdc67950a68256c5157987bbf700e94595807f8/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | ethereum | n/a | [`0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0`](./contracts/ethereum-1/0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0/) | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | arbitrum | n/a | 4 deployments: bsc `0x5deb1bae837374f988d8a30cc0fbccbc63892bb3`; base `0xe7c73727c1b67a2fa47e63dcbaa4859777aef392`; arbitrum [`0x293a7d159c5ad1b36b784998de5563fe36963460`](./contracts/arbitrum-42161/0x293a7d159c5ad1b36b784998de5563fe36963460/); scroll `0xd837fcba68a6a5aa63f791ea51f258d30546d2c1` | ⚠️ Unaudited |
| MaverickV2Router | adapter | scroll | n/a | 5 deployments: ethereum `0x62e31802c6145a2d5e842eed8efe01fc224422fa`; bsc `0x374bfcc264678c67a582d067ad91f1951bc6b20f`; base `0x5eded0d7e76c563ff081ca01d9d12d6b404df527`; arbitrum `0x5c3b380e5aeec389d1014da3eb372fa2c9e0fc76`; scroll [`0x15d5ff975c1181faf938cd33bd0633435bdfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrow | operational_periphery | arbitrum | n/a | [`0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d`](./contracts/arbitrum-42161/0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowFactory | operational_periphery | base | n/a | [`0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443`](./contracts/base-8453/0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443/) | ⚠️ Unaudited |
| MaverickV2VotingEscrowWSync | operational_periphery | base | n/a | 3 deployments: ethereum `0xc6addb3327a7d4b3b604227f82a6259ca7112053`; bsc `0x675178ae86a75ee7d7ef81e30a91e1798306094c`; base [`0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9`](./contracts/base-8453/0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9/) | ⚠️ Unaudited |
| Position | unknown | bsc | n/a | 2 deployments: ethereum `0x4a3e49f77a2a5b60682a2d6b8899c7c5211eb646`; bsc [`0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0`](./contracts/bsc-56/0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c93675719ad43648a1ab5f735dcaaa08e130be4`](./contracts/ethereum-1/0x0c93675719ad43648a1ab5f735dcaaa08e130be4/); ethereum `0x4949ac21d5b2a0ccd303c20425eeb29dccba66d8`; bsc `0xe6108f1869d37e5076a56168c66a1607edb10819`; base `0xfccb5263148fbf11d58433af6feeff0cc49e0ea5` | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x5300000000000000000000000000000000000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d621cd476628cefb56e8b481eb33196a0962814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8127a01bdb311378ed32f5b81690dd917dba35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e632f57b6d2634c6df21a4f199ddd07e5ff2f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32aed3bce901da12ca8489788f3a99fce1056e14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x472a978eef47f73382f16f78300cbce3c467581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a585e0f7c18e2c414221d6402652d5e0990e5f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4faf448121bf2985b991c0261dd356a9803b3cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53ee77b474f42936e61200f99f97885f365323aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56220668f583031680db6bf0a6fbfeef980adc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aeaa98d7e2b7c7af8a9a88a03cd8a1bb8571f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c814b1d7ca8e1b85ec9a07d458652d2e5fb7f16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f972613902b8d05037f3ecc2de3633e7acf09b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66704c7f74b9cc73c35cb8d2c31fc8801ab29dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a68a97b245fb32ab65a1386852197b3c0cbce33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b5e43c834e349cd91958a8a423c6400ce2e231d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x758f7a7a66435537f498599956cf690d04f0a2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a0271cf5566874e8dd0d5d71921c592df8d7cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x836179e1759f7fdf724ba8396375e5b641b6dd99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x909b6a06d27e92135a64be496dd10d5e5dfec71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb19b182560a766d161d2dab1cdf39e8d82192a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa101007385d0f85f0fb13d35044a0ec14d31396b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ebd82503c72299073657957f41b9cea6c0a43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa720177e000a5681f896e7d1994bbfcb85af37cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5bf61a664109e959d69c38734d4ea7df74e456` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab1a01392454cbf07f060a9585b15be0255b6c8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0f48509186948b52d22bc23c74e02165a919ff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc23523ba6424bc39e0cbb43babd7d4eded3d39ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ac59a56038eb2cbb9d65d1edaaa929c284b13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc55b117108080f18f3022c96f787e7336952a49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcbb81f9c56dba7b082ea6b780bd8e764dae2c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde2a3018e67e16128e0dcccebd219b01be3d8b11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec95f6d459b35226487568dc1c31d9cccd828a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee31636cffd543eb44a825783b28f71a998fb240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde7a3ff5991de2332b1b357a9ef79e8caac9566` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x205b88a1479431edb5117c15c1262c6e702eb461` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ace04a88188b084997af8cdbca5038b6411ad64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f3fafdbcd55102a4db9564898109b7a4ce4d580` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4320701c37ee0fa0702b10c7ebc369ae50738194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76311728ff86054ad4ac52d2e9ca005bc702f589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78968ecd61797138a46c4f8809e60c2902d0728a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x830c9e0295730bbb220bd78346c6499ff37851fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x999929ab02d9ad91d0c47175a3d57388246dec44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9a0567d09b2d85e5aeddf7159fdbdb2cb4a52c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbccbe11a0933a5b9f02933a0511bfa25ff0f3cbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5de82d5dc9a167b0b94c35e4ffb9d9fc889fbf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1b19b8577208be5d02456643e74f1aacef1bde6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb5016eb1ca4cede1ae3194faec27c69670edfa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1db14d30da3ce60627621e17148d6175348849` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf9a80f5e3e83a0651e09ff5761b4802789e0952` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x17132ce52d40248f5077f4f51c6e3bdf7682749f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x39e098a153ad69834a9dac32f0fca92066ad03f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x432e6791d35dc6c638f44e949a5c0228e4048244` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d93c58b348d99969257cec007cfb31b410b21a0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x521b444d5f9bb4b36cdd771f4d85ccd0b291fb92` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x787c09494ec8bcb24dcaf8659e7d5d69979ee508` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7edcb053d4598a145ddaf5260cf89a32263a2807` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xad8262e847676e7eddafee664c4fd492789260ba` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe86151af9cc43533add87921c381da11c314debf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfd54762d435a490405dda0fbc92b7168934e8525` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x01538aa697ce8cc8252c70c41452dae86ce22a3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d8127a01bdb311378ed32f5b81690dd917dba35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32aed3bce901da12ca8489788f3a99fce1056e14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b4a40e7a8197e2e719d416d143564a5d36b660d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f24d73773fcce560f4fd641125c23a2b93fcb05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x583a2e74a9926c6d8f8876b6aff634b89f8493d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65a3ad03be97619284ba7aa1e3ca05638b9d6364` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873bbcc36be3fd695a0a2f4fc964a87078b2efb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2855783a346735e4aae0c1eb894def861fa9b45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbf1ee38152e9d8e3470dc47947eaa65dca94913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddd2de45eded93453eb2deb9c061ed1c5edb8aaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf033790907c60c9b81ae355f76f74f52f92114a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7`](./contracts/base-8453/0x64b88c73a5dfa78d1713fe1b4c69a22d7e0faaa7/) | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cdc67950a68256c5157987bbf700e94595807f8`](./contracts/base-8453/0x1cdc67950a68256c5157987bbf700e94595807f8/) | MaverickV2RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0`](./contracts/ethereum-1/0xc0c3bc532690af8922a2f260c6e1deb6cfab45a0/) | MaverickV2RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x293a7d159c5ad1b36b784998de5563fe36963460`](./contracts/arbitrum-42161/0x293a7d159c5ad1b36b784998de5563fe36963460/) | MaverickV2RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x15d5ff975c1181faf938cd33bd0633435bdfa18d`](./contracts/scroll-534352/0x15d5ff975c1181faf938cd33bd0633435bdfa18d/) | MaverickV2Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d`](./contracts/arbitrum-42161/0xd5d8cb7569bb843c3b8fa98dbd5960d37e83ea8d/) | MaverickV2VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443`](./contracts/base-8453/0x1de8c03c2d5dd021bd456bc4bb4f0ecd85f99443/) | MaverickV2VotingEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9`](./contracts/base-8453/0x05b1b801191b41a21b9c0bfd4c4ef8952eb28cd9/) | MaverickV2VotingEscrowWSync | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0`](./contracts/bsc-56/0x23aeaf001e5df9d7410ee6c6916f502b7ac8e9d0/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c93675719ad43648a1ab5f735dcaaa08e130be4`](./contracts/ethereum-1/0x0c93675719ad43648a1ab5f735dcaaa08e130be4/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x5300000000000000000000000000000000000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | WrappedEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 79 |

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
