# Agentic Audit Brief: Camelot

## Project Overview

- Project: Camelot (`camelot`)
- Website: [https://camelot.exchange/](https://camelot.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.410Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum
- Contract surface: 111 unique implementations (145 raw deployments)
- DeFi Llama TVL: $22,479,494.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 67 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 9 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 244; live-surface contracts included: 137 (63 live, 74 unknown).
- Excluded by liveness: 107 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/41 (7.3%)
- Deployed-live implementations: 41 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/41
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 111
- Raw deployments: 145
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 3 | 7.3% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotFactory | registry | arbitrum | n/a | [`0x6eccab...43a652`](./contracts/arbitrum-42161/0x6eccab422d763ac031210895c81787e87b43a652/) | ✅ Audited |
| GrailTokenV2 | token | arbitrum | n/a | [`0x3d9907...0982d8`](./contracts/arbitrum-42161/0x3d9907f9a368ad0a51be60f7da3b97cf940982d8/) | ✅ Audited |
| XGrailToken | token | arbitrum | n/a | [`0x3caae2...3f496b`](./contracts/arbitrum-42161/0x3caae25ee616f2c8e13c74da0813402eae3f496b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| AlgebraAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x148688...c893a0`](./contracts/arbitrum-42161/0x1486882e02e6a1037da6afc324b2f911f4c893a0/); arbitrum `0x46fca9...1780aa` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x971ba9...3a5e5a`](./contracts/arbitrum-42161/0x971ba90018c44ac60d5bb850249b3ec02a3a5e5a/); arbitrum `0xe3c3e2...1da69e` | ⚠️ Unaudited |
| AlgebraFactory | registry | arbitrum | n/a | 7 deployments: arbitrum [`0x1a3c9b...1fd35b`](./contracts/arbitrum-42161/0x1a3c9b1d2f0529d97f2afc5136cc23e58f1fd35b/); arbitrum `0x1e3db3...8455ca`; arbitrum `0x6b692b...4e5bb8`; arbitrum `0xbefc4b...7a2f37`; arbitrum `0xd3b4c3...5d6aea`; arbitrum `0xd490f2...f684dd`; arbitrum `0xe907d0...994ae3` | ⚠️ Unaudited |
| AlgebraStaticQuoter | periphery | arbitrum | n/a | [`0x4efc8a...f39e07`](./contracts/arbitrum-42161/0x4efc8a4ceeeeefbb81bfac55a001100b5af39e07/) | ⚠️ Unaudited |
| AlgebraV2Adapter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x28901c...05d947`](./contracts/arbitrum-42161/0x28901cc545bf9dc1b381cbd9da8ea94fc005d947/); arbitrum `0x64c086...2947f3`; arbitrum `0xd15996...db989f` | ⚠️ Unaudited |
| AlgebraV2StaticQuoter | periphery | arbitrum | n/a | [`0xe04538...c5594f`](./contracts/arbitrum-42161/0xe04538e23c58022cb8bce506e7d01e04fac5594f/) | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcfc79f...47513f`](./contracts/arbitrum-42161/0xcfc79fcd07929467a8e1925e06007de5f047513f/); arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| CamelotAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x79ab95...b70f9b`](./contracts/arbitrum-42161/0x79ab95b4c112337310ad04d977c5734dd3b70f9b/); arbitrum `0xabc401...688dab` | ⚠️ Unaudited |
| CamelotYakRouter | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x17bcb7...105d5c`](./contracts/arbitrum-42161/0x17bcb7cc86ad107d97511a17e35eee9d15105d5c/); arbitrum `0x99d4e8...ddec5e`; arbitrum `0xe9f622...845152` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x09fa9d...eb3ee1`](./contracts/arbitrum-42161/0x09fa9d4cb408f437442529d9d9daeed914eb3ee1/); arbitrum `0x0afae9...595fe4`; arbitrum `0x44fac3...7feaa4` | ⚠️ Unaudited |
| CampaignFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68c4a7...3b619b`](./contracts/arbitrum-42161/0x68c4a79bb793c354614a798b70aff3ae623b619b/); arbitrum `0xe8c0d2...f3e3c2` | ⚠️ Unaudited |
| Distributor | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0xb31263...ac5a01`](./contracts/arbitrum-42161/0xb312638b4c0d7b49e47057ba1e4febf4f6ac5a01/); arbitrum `0xd4f3dc...47880c` | ⚠️ Unaudited |
| DividendsV2 | unknown | arbitrum | n/a | [`0x5422aa...ebd3bb`](./contracts/arbitrum-42161/0x5422aa06a38fd9875fc2501380b40659feebd3bb/) | ⚠️ Unaudited |
| EXCLegacyToken | token | arbitrum | n/a | [`0x83bbc9...13c3b5`](./contracts/arbitrum-42161/0x83bbc9c4c436bd7a4b4a1c5d42b00caae113c3b5/) | ⚠️ Unaudited |
| FairAuction | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0ca4fc...f6c20b`](./contracts/arbitrum-42161/0x0ca4fc142e3b0a26f34b52faa1a022fc70f6c20b/); arbitrum `0x149ace...87975b`; arbitrum `0x2eb79e...36ffe1` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Launchpad | unknown | arbitrum | n/a | [`0x594fb2...c118a5`](./contracts/arbitrum-42161/0x594fb2ec5c7adf3cb68db1e90ace58e643c118a5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0x00c7f3...4dcd15`](./contracts/arbitrum-42161/0x00c7f3082833e796a5b3e4bd59f6642ff44dcd15/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x368435...babbc8`](./contracts/arbitrum-42161/0x368435a76b1a855d054d3cdf4c20f5e0b2babbc8/); arbitrum `0xa602e7...dce9d8`; arbitrum `0xacdcc3...890db3` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ad8c5...e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/); arbitrum `0x52d2eb...b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d22aa...7606dc`](./contracts/arbitrum-42161/0x2d22aa1c50433eb018077e4bfc52fadc437606dc/); arbitrum `0x89a13b...b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x49f598...32067c`](./contracts/arbitrum-42161/0x49f5985a122028093c91bb63084eb29a7632067c/); arbitrum `0x674d07...e7a7ef` | ⚠️ Unaudited |
| ProtocolEarnings | unknown | arbitrum | n/a | [`0x6a6383...ed1448`](./contracts/arbitrum-42161/0x6a63830e24f9a2f9c295fb2150107d0390ed1448/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x5db54b...3dd797`](./contracts/arbitrum-42161/0x5db54b55ffd0887bf1634a865db1e7db7a3dd797/) | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0fc730...4fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/); arbitrum `0xfe24b2...688f7b` | ⚠️ Unaudited |
| StakedUSDX | token | arbitrum | n/a | [`0x7788a3...d87d92`](./contracts/arbitrum-42161/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | [`0x1f721e...339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x4ee153...675f53`](./contracts/arbitrum-42161/0x4ee15342d6deb297c3a2aa7cffd451f788675f53/); arbitrum `0xa55582...839ef5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1313bb...b51d9f`](./contracts/arbitrum-42161/0x1313bbf677e8fda5284f714f9c743a55a8b51d9f/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/); arbitrum `0x903293...594c13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5822a4...6bc460`](./contracts/arbitrum-42161/0x5822a45b05d08028baa3d19626870076d26bc460/); arbitrum `0xd8676f...0e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa76021...280b5c`](./contracts/arbitrum-42161/0xa760212bc60a77b24ba52e889b0dc9d99e280b5c/); arbitrum `0xf4c88b...e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xf53b4b...edd8c1`](./contracts/arbitrum-42161/0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1/); arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |
| USDX | unknown | arbitrum | n/a | [`0xf3527e...a66cef`](./contracts/arbitrum-42161/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | arbitrum | n/a | [`0x0eaf6f...d82f7b`](./contracts/arbitrum-42161/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | arbitrum | n/a | [`0xb45c42...0a56d1`](./contracts/arbitrum-42161/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x08dff9...c2c3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x105a04...80598e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ac737...74959d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x279fa5...ade413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c09fe...f14ec4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f2a41...dcf861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30a4bd...c8e230` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4548ab...b04574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46306b...4d8820` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x586496...3b25f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x590655...553f34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x599999...80a9fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59d9e1...bd5925` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e11bb...f326ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e26ba...35897a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60a186...79e68b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x610934...0bc050` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61e69f...55c717` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65fbb3...9efcb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67f9e2...abe545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f2ac9...78f09f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x763b38...fb51b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77025d...405aec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x787c1a...1ada48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d1b59...963389` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d8c6b...0d2db4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dbc6c...3fdde7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83bb60...c0d3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84e5ba...06c9a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa8a6...6184fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c0971...33689b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9220d0...8b6245` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x955a70...2fedca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99f28a...28893a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a6627...0a1621` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaedc4e...2025ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e01e...4606ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2b2a9...273bd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6156f...e25ca2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc12987...73ebcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc216fc...7624b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7585c...c60960` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc96ff2...eb338d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf8d07...8e0ffa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8f185...800ec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6623...df3106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf22808...a7a21b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfdd069...2eb659` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeecfd...680e33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/camelot](https://paladinsec.co/projects/camelot) | Paladin | Audit | 2022-11 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 111 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
