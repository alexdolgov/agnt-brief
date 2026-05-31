# Agentic Audit Brief: Nerve

⚠️ Lifecycle status: DEAD - TVL dropped 6.4% over 90 days

## Project Overview

- Project: Nerve (`nerve`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-05-31T10:04:20.705Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc, ethereum
- Contract surface: 66 unique implementations (108 raw deployments)
- DeFi Llama TVL: $1,500,085.77
- On-chain TVL (included contracts): $508.66
- TVL by chain: Bsc $508.66

## Project Description

Nerve is a decentralized exchange (DEX) protocol that enables low-slippage swaps of stablecoins and pegged assets across multiple chains. It uses a specialized AMM design to facilitate efficient trading with minimal fees.

### Architecture

The Nerve family uses a proxy-based upgrade pattern where Swap contracts delegate to a shared SwapUtils library for core logic. AdminUpgradeabilityProxy contracts manage upgrades and access control across the system.

## Audit Coverage Summary

- Verified implementations audited: 0/22 (0.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 2
- Unverified implementations: 44
- Unique implementations: 66
- Raw deployments: 108
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $508.66
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $508.66 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NerveToken | token | bsc | 3 deployments: bsc [`0x363314...ad52d4`](./contracts/bsc-56/0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4/); bsc `0x42f6f5...db9096`; bsc `0xc901ea...73d9f5` | ⚠️ Unaudited |
| BtcSwapAssetV2 | unknown | bsc | [`0x542617...ae308a`](./contracts/bsc-56/0x54261774905f3e6e9718f2abb10ed6555cae308a/) | ⚠️ Unaudited |
| Dummy | unknown | bsc | [`0xcc65c6...971095`](./contracts/bsc-56/0xcc65c6989db42ee834c9321c0096670507971095/) | ⚠️ Unaudited |
| ERC20Migrator | token | bsc | 2 deployments: bsc [`0x285f9c...791e44`](./contracts/bsc-56/0x285f9cb834c23ea597fb03d027aeaa74c3791e44/); bsc `0xa9fd3f...0a4095` | ⚠️ Unaudited |
| MasterMind | unknown | bsc | 3 deployments: bsc [`0x15cfed...0a7a02`](./contracts/bsc-56/0x15cfed9a157290ffe648347c52972434360a7a02/); bsc `0x2ebe8c...31f24e`; bsc `0x705a73...55b641` | ⚠️ Unaudited |
| MathUtils | unknown | bsc | 2 deployments: bsc [`0x4ab8eb...945947`](./contracts/bsc-56/0x4ab8eb2591ab616dbac98e3d467018de22945947/); bsc `0xc148fe...869e1b` | ⚠️ Unaudited |
| MetaSwap | unknown | bsc | 4 deployments: bsc [`0x544d0f...689815`](./contracts/bsc-56/0x544d0f8579fbbfe7c35da2dcbefff88981689815/); bsc `0xe0ad6b...732b0c`; bsc `0xfa97ad...035ddf`; bsc `0xfcc397...d4a053` | ⚠️ Unaudited |
| MetaSwapDeployer | unknown | bsc | 5 deployments: bsc [`0x435e73...d409ae`](./contracts/bsc-56/0x435e7316e62b8a2883699490e270ab6cbed409ae/); bsc `0x57cc9c...e0a5c2`; bsc `0x9ab01e...d5a390`; bsc `0xd2c619...003ea2`; bsc `0xefe2df...27f973` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | bsc | 2 deployments: bsc [`0x45e660...02fd59`](./contracts/bsc-56/0x45e6607a6b1d5374e175b6b237541598ee02fd59/); bsc `0xd49bd8...22c329` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | bsc | 3 deployments: bsc [`0x3d5ce3...38d5a6`](./contracts/bsc-56/0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6/); bsc `0x5068b9...ffadf5`; bsc `0xe30b5f...826eea` | ⚠️ Unaudited |
| OldSwap | unknown | bsc | [`0x18eb9e...d35582`](./contracts/bsc-56/0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x0b05b4...c562b9`](./contracts/ethereum-1/0x0b05b4c57e3341b3eb1063a458e4610932c562b9/) | ⚠️ Unaudited |
| RUSD | unknown | ethereum | 2 deployments: ethereum [`0x87a69e...4fccc6`](./contracts/ethereum-1/0x87a69e54d5f8659a178c7a814594489e1c4fccc6/); ethereum `0xcf178a...aa6b7b` | ⚠️ Unaudited |
| Swap | unknown | bsc | 3 deployments: bsc [`0x146cd2...afa9c0`](./contracts/bsc-56/0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0/); bsc `0x47e232...3bd7d9`; bsc `0x6c3419...e6270c` | ⚠️ Unaudited |
| SwapDeployer | unknown | bsc | [`0x7c42ea...9717b8`](./contracts/bsc-56/0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | bsc | [`0xcb8665...6b7769`](./contracts/bsc-56/0xcb86651dd2589206d288b0b22f9da8fd1a6b7769/) | ⚠️ Unaudited |
| SwapUtils | unknown | bsc | 3 deployments: bsc [`0x02338e...e670e7`](./contracts/bsc-56/0x02338ee742ddcde44488640f4edf1aa947e670e7/); bsc `0x1b3771...c5fcdc`; bsc `0x4427b7...dd8bad` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | bsc | 6 deployments: bsc [`0x19bc7e...e50b25`](./contracts/bsc-56/0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25/); bsc `0x40cd80...8838a9`; bsc `0x61167b...801fb5`; bsc `0x85313e...6b82bd`; bsc `0xc901b5...297edb`; bsc `0xef9376...bd6488` | ⚠️ Unaudited |
| VestDummy | operational_periphery | bsc | [`0x7dcc26...0c7630`](./contracts/bsc-56/0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630/) | ⚠️ Unaudited |
| xNerve | unknown | bsc | [`0x15b946...59291e`](./contracts/bsc-56/0x15b9462d4eb94222a7506bc7a25fb27a2359291e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | 12 deployments: ethereum [`0x0390db...5c53e4`](./contracts/ethereum-1/0x0390db7d64d38ceb5976f069410b24cf315c53e4/); ethereum `0x3e84b2...351c02`; ethereum `0x42a243...fab24c`; ethereum `0xa8ccf2...cbf226`; ethereum `0xaa1069...d9f86a`; ethereum `0xb4da1d...f056bd`; ethereum `0xc883d9...bb310e`; ethereum `0xca7e4c...f0ea92`; ethereum `0xcd239b...c3c32a`; ethereum `0xd87c52...f7409a`; ethereum `0xdf6a57...8a83ee`; ethereum `0xfd4cb9...30e618` | ⚠️ Unaudited (bytecode match) |
| GenericERC20 | token | bsc | 6 deployments: bsc [`0x069ef9...d7bb9b`](./contracts/bsc-56/0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b/); bsc `0x260c1f...5070aa`; bsc `0x2e054f...cc9932`; bsc `0x54d58c...645c5e`; bsc `0x7f3dee...47c154`; bsc `0x9854f6...6cdf75` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x076638...44623d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bb55d...d7f174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e978f...a0149b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b9f08...ba7dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2efa7b...de9eae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x418e3c...635eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x475bb9...660481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x647d91...abc858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d3be6...d7b6f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x729d67...786cb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x747cbd...36c3a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x757790...17f405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79c0c9...172dff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f13cd...f76cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x81af55...97d852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8869f9...f9145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8baa34...e1d15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8df7d3...893035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8faf88...a37ab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x977ae9...a541ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e7bbb...86c937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1779c...fb0812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7746f...7b5285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbea3b5...022316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdaf2c1...bc0b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcda83...e0d7b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7a618...504122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb7713...f80146` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1598ea...2128d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1c8579...d100ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4604af...a25c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x50ae8e...b1f50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x630605...f82647` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x63c915...ab3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x80ede0...0f29b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa3754b...101bd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa7ea87...90a95f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb264bc...1a9742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb719dc...eb20f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc75f8f...498f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd36718...92d7f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdc02e2...937369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdd1f3c...b921dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf7390...51818e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x363314...ad52d4`](./contracts/bsc-56/0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4/) | NerveToken | token | $508.66 | Verified native implementation with $508.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x542617...ae308a`](./contracts/bsc-56/0x54261774905f3e6e9718f2abb10ed6555cae308a/) | BtcSwapAssetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcc65c6...971095`](./contracts/bsc-56/0xcc65c6989db42ee834c9321c0096670507971095/) | Dummy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x285f9c...791e44`](./contracts/bsc-56/0x285f9cb834c23ea597fb03d027aeaa74c3791e44/) | ERC20Migrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15cfed...0a7a02`](./contracts/bsc-56/0x15cfed9a157290ffe648347c52972434360a7a02/) | MasterMind | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ab8eb...945947`](./contracts/bsc-56/0x4ab8eb2591ab616dbac98e3d467018de22945947/) | MathUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x544d0f...689815`](./contracts/bsc-56/0x544d0f8579fbbfe7c35da2dcbefff88981689815/) | MetaSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x435e73...d409ae`](./contracts/bsc-56/0x435e7316e62b8a2883699490e270ab6cbed409ae/) | MetaSwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45e660...02fd59`](./contracts/bsc-56/0x45e6607a6b1d5374e175b6b237541598ee02fd59/) | MetaSwapDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d5ce3...38d5a6`](./contracts/bsc-56/0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6/) | MetaSwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18eb9e...d35582`](./contracts/bsc-56/0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582/) | OldSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87a69e...4fccc6`](./contracts/ethereum-1/0x87a69e54d5f8659a178c7a814594489e1c4fccc6/) | RUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x146cd2...afa9c0`](./contracts/bsc-56/0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c42ea...9717b8`](./contracts/bsc-56/0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8/) | SwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb8665...6b7769`](./contracts/bsc-56/0xcb86651dd2589206d288b0b22f9da8fd1a6b7769/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02338e...e670e7`](./contracts/bsc-56/0x02338ee742ddcde44488640f4edf1aa947e670e7/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19bc7e...e50b25`](./contracts/bsc-56/0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7dcc26...0c7630`](./contracts/bsc-56/0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630/) | VestDummy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15b946...59291e`](./contracts/bsc-56/0x15b9462d4eb94222a7506bc7a25fb27a2359291e/) | xNerve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
