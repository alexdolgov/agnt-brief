# Agentic Audit Brief: Nerve

## Project Overview

- Project: Nerve (`nerve`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.365Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum
- Contract surface: 65 unique implementations (97 raw deployments)
- DeFi Llama TVL: $1,463,656.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 25 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (upgradeabilityproxy, proxy, swap). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 97 (53 live, 44 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 65
- Raw deployments: 97
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | ethereum | n/a | [`0xd87c52...f7409a`](./contracts/ethereum-1/0xd87c52809a972fdae2dbab69d438510f17f7409a/) | ⚠️ Unaudited |
| BtcSwapAssetV2 | unknown | bsc | n/a | [`0x542617...ae308a`](./contracts/bsc-56/0x54261774905f3e6e9718f2abb10ed6555cae308a/) | ⚠️ Unaudited |
| Dummy | unknown | bsc | n/a | [`0xcc65c6...971095`](./contracts/bsc-56/0xcc65c6989db42ee834c9321c0096670507971095/) | ⚠️ Unaudited |
| ERC20Migrator | token | bsc | n/a | 2 deployments: bsc [`0x285f9c...791e44`](./contracts/bsc-56/0x285f9cb834c23ea597fb03d027aeaa74c3791e44/); bsc `0xa9fd3f...0a4095` | ⚠️ Unaudited |
| GenericERC20 | token | bsc | n/a | 6 deployments: bsc [`0x069ef9...d7bb9b`](./contracts/bsc-56/0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b/); bsc `0x260c1f...5070aa`; bsc `0x2e054f...cc9932`; bsc `0x54d58c...645c5e`; bsc `0x7f3dee...47c154`; bsc `0x9854f6...6cdf75` | ⚠️ Unaudited |
| MasterMind | unknown | bsc | n/a | 3 deployments: bsc [`0x15cfed...0a7a02`](./contracts/bsc-56/0x15cfed9a157290ffe648347c52972434360a7a02/); bsc `0x2ebe8c...31f24e`; bsc `0x705a73...55b641` | ⚠️ Unaudited |
| MathUtils | unknown | bsc | n/a | 2 deployments: bsc [`0x4ab8eb...945947`](./contracts/bsc-56/0x4ab8eb2591ab616dbac98e3d467018de22945947/); bsc `0xc148fe...869e1b` | ⚠️ Unaudited |
| MetaSwap | unknown | bsc | n/a | 7 deployments: bsc [`0x0eafaa...0f7114`](./contracts/bsc-56/0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114/); bsc `0x2dcce1...a130e0`; bsc `0x544d0f...689815`; bsc `0xd0fbf0...bcf3d3`; bsc `0xe0ad6b...732b0c`; bsc `0xfa97ad...035ddf`; bsc `0xfcc397...d4a053` | ⚠️ Unaudited |
| MetaSwapDeployer | unknown | bsc | n/a | 5 deployments: bsc [`0x435e73...d409ae`](./contracts/bsc-56/0x435e7316e62b8a2883699490e270ab6cbed409ae/); bsc `0x57cc9c...e0a5c2`; bsc `0x9ab01e...d5a390`; bsc `0xd2c619...003ea2`; bsc `0xefe2df...27f973` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | bsc | n/a | 2 deployments: bsc [`0x45e660...02fd59`](./contracts/bsc-56/0x45e6607a6b1d5374e175b6b237541598ee02fd59/); bsc `0xd49bd8...22c329` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | bsc | n/a | 3 deployments: bsc [`0x3d5ce3...38d5a6`](./contracts/bsc-56/0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6/); bsc `0x5068b9...ffadf5`; bsc `0xe30b5f...826eea` | ⚠️ Unaudited |
| NerveToken | token | bsc | n/a | 3 deployments: bsc [`0x363314...ad52d4`](./contracts/bsc-56/0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4/); bsc `0x42f6f5...db9096`; bsc `0xc901ea...73d9f5` | ⚠️ Unaudited |
| OldSwap | unknown | bsc | n/a | [`0x18eb9e...d35582`](./contracts/bsc-56/0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582/) | ⚠️ Unaudited |
| Swap | unknown | bsc | n/a | 3 deployments: bsc [`0x146cd2...afa9c0`](./contracts/bsc-56/0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0/); bsc `0x47e232...3bd7d9`; bsc `0x6c3419...e6270c` | ⚠️ Unaudited |
| SwapDeployer | unknown | bsc | n/a | [`0x7c42ea...9717b8`](./contracts/bsc-56/0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | bsc | n/a | [`0xcb8665...6b7769`](./contracts/bsc-56/0xcb86651dd2589206d288b0b22f9da8fd1a6b7769/) | ⚠️ Unaudited |
| SwapUtils | unknown | bsc | n/a | [`0x02338e...e670e7`](./contracts/bsc-56/0x02338ee742ddcde44488640f4edf1aa947e670e7/) | ⚠️ Unaudited |
| SwapUtils | unknown | bsc | n/a | 2 deployments: bsc [`0x1b3771...c5fcdc`](./contracts/bsc-56/0x1b3771a66ee31180906972580ade9b81afc5fcdc/); bsc `0x4427b7...dd8bad` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | bsc | n/a | 6 deployments: bsc [`0x19bc7e...e50b25`](./contracts/bsc-56/0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25/); bsc `0x40cd80...8838a9`; bsc `0x61167b...801fb5`; bsc `0x85313e...6b82bd`; bsc `0xc901b5...297edb`; bsc `0xef9376...bd6488` | ⚠️ Unaudited |
| VestDummy | operational_periphery | bsc | n/a | [`0x7dcc26...0c7630`](./contracts/bsc-56/0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630/) | ⚠️ Unaudited |
| xNerve | unknown | bsc | n/a | [`0x15b946...59291e`](./contracts/bsc-56/0x15b9462d4eb94222a7506bc7a25fb27a2359291e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x076638...44623d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bb55d...d7f174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e978f...a0149b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b9f08...ba7dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2efa7b...de9eae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x418e3c...635eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x475bb9...660481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x647d91...abc858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3be6...d7b6f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729d67...786cb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x747cbd...36c3a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x757790...17f405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79c0c9...172dff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f13cd...f76cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81af55...97d852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8869f9...f9145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8baa34...e1d15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8df7d3...893035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8faf88...a37ab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x977ae9...a541ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e7bbb...86c937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1779c...fb0812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7746f...7b5285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea3b5...022316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaf2c1...bc0b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcda83...e0d7b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a618...504122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb7713...f80146` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1598ea...2128d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c8579...d100ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4604af...a25c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50ae8e...b1f50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x630605...f82647` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63c915...ab3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80ede0...0f29b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3754b...101bd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7ea87...90a95f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb264bc...1a9742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb719dc...eb20f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc75f8f...498f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd36718...92d7f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc02e2...937369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1f3c...b921dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf7390...51818e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf](https://github.com/nerve-finance/contracts/blob/main/audits/Certik%20-%20REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20867] Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
