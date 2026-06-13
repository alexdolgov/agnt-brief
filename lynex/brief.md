# Agentic Audit Brief: Lynex

⚠️ Lifecycle status: DECLINING - TVL dropped 20.0% over 90 days

## Project Overview

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-13T19:48:28.237Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: linea
- Contract surface: 45 unique implementations (104 raw deployments)
- DeFi Llama TVL: $882,387.00
- On-chain TVL (included contracts): $261,970.13
- TVL by chain: Linea $261,970.13

## Project Description

Lynex is a decentralized exchange (DEX) protocol on Linea that enables users to swap tokens, provide liquidity, and earn rewards. It operates across two versions (V1 and V2) with automated market maker (AMM) pools and a veNFT-based governance and incentive system.

### Architecture

Both families share a common veNFT and reward infrastructure (veNFTAPIV2, RewardAPIV2, EpochController) that governs incentives and voting across versions. The V2 family extends V1 with additional API and proxy contracts, while V1 relies on a simpler PairAPI for data access.

## Audit Coverage Summary

- Verified implementations audited: 0/44 (0.0%)
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 45
- Raw deployments: 104
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $261,970.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $261,970.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlgebraPool | core_logic | linea | 4 deployments: linea [`0x3cb104...e3f587`](./contracts/linea-59144/0x3cb104f044db23d6513f2a6100a1997fa5e3f587/); linea `0x6e9ad0...216a9b`; linea `0x8e8001...e58ada`; linea `0xe24b4a...5ddb29` | ⚠️ Unaudited |
| CLFeesVault | core_logic | linea | 2 deployments: linea [`0x10ae74...664a84`](./contracts/linea-59144/0x10ae74a82ace90d0ac4aacafe6eb57c96a664a84/); linea `0x2c40ea...88a361` | ⚠️ Unaudited |
| AccessControls | governance | linea | [`0x9d9459...89c7dc`](./contracts/linea-59144/0x9d945924416dff6fc99bf10fa768f57b7889c7dc/) | ⚠️ Unaudited |
| AirdropClaimV2 | operational_periphery | linea | 2 deployments: linea [`0x5d4614...a6cce6`](./contracts/linea-59144/0x5d4614ffed6164df543e48f8906a255bdda6cce6/); linea `0x6fbee8...318308` | ⚠️ Unaudited |
| AirdropClaimV2Strategic | operational_periphery | linea | 2 deployments: linea [`0x61fc82...1557da`](./contracts/linea-59144/0x61fc82fd2c5c9f137ac11c0a2ab8d2f29c1557da/); linea `0xdec9fc...37664b` | ⚠️ Unaudited |
| AlgebraFactory | registry | linea | [`0x622b2c...a08d0f`](./contracts/linea-59144/0x622b2c98123d303ae067db4925cd6282b3a08d0f/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | linea | [`0x9a8949...6a2c48`](./contracts/linea-59144/0x9a89490f1056a7bc607ec53f93b921fe666a2c48/) | ⚠️ Unaudited |
| BatchAuction | periphery | linea | [`0x5b8865...1566dd`](./contracts/linea-59144/0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd/) | ⚠️ Unaudited |
| BribeFactoryV4 | operational_periphery | linea | [`0xca79b7...b325b0`](./contracts/linea-59144/0xca79b73d967c948864058642eb736de541b325b0/) | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | linea | [`0xe8a4c9...ce557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | ⚠️ Unaudited |
| Crowdsale | unknown | linea | 3 deployments: linea [`0x08283a...a92140`](./contracts/linea-59144/0x08283a22b62cc0c6e85e3bea176a843fa2a92140/); linea `0x3223aa...9f0ccb`; linea `0xa5cd27...bf985f` | ⚠️ Unaudited |
| DistributeFees | unknown | linea | [`0xfa638e...45c469`](./contracts/linea-59144/0xfa638ee72312adf564195c2ae415ec943945c469/) | ⚠️ Unaudited |
| DutchAuction | unknown | linea | [`0x6c13a3...3d6632`](./contracts/linea-59144/0x6c13a305f58eea8696b7c9ab39e598da1f3d6632/) | ⚠️ Unaudited |
| EpochController | governance | linea | 9 deployments: linea [`0x344530...042d80`](./contracts/linea-59144/0x3445307caed9a144901872380fd5772f71042d80/); linea `0x39871f...71871d`; linea `0x9dfa7d...bd8df5`; linea `0xb2306f...2e0f89`; linea `0xc2eaf6...495933`; linea `0xd2a6b3...1f2773`; linea `0xd405a3...d84d3a`; linea `0xd8a570...f8a9b9`; linea `0xf1e2e5...93136c` | ⚠️ Unaudited |
| GaugeFactoryV2 | operational_periphery | linea | [`0xb94404...41948e`](./contracts/linea-59144/0xb94404c0fdebda8d14fc147f8787a35feb41948e/) | ⚠️ Unaudited |
| GaugeFactoryV2_CL | operational_periphery | linea | [`0xc04d35...2783ee`](./contracts/linea-59144/0xc04d35a1f8881b061bbdae148c91cfa78a2783ee/) | ⚠️ Unaudited |
| HyperbolicAuction | unknown | linea | [`0x4fb4b4...4d3ae5`](./contracts/linea-59144/0x4fb4b44947ba2457959ec44e9eaaa08ba94d3ae5/) | ⚠️ Unaudited |
| Launcher | unknown | linea | [`0x3b7191...7022ac`](./contracts/linea-59144/0x3b7191b37bd5ecff4ca41a841a4694cb267022ac/) | ⚠️ Unaudited |
| ListFactory | registry | linea | [`0x7fb2aa...f937e5`](./contracts/linea-59144/0x7fb2aaa0ba7ee5883cb283ba7f88dec4bff937e5/) | ⚠️ Unaudited |
| Lynex | unknown | linea | 2 deployments: linea [`0x1a51b1...71e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/); linea `0x6758be...bee6aa` | ⚠️ Unaudited |
| LynxClaimToken | token | linea | 2 deployments: linea [`0x036559...f89059`](./contracts/linea-59144/0x0365592c3db1e4fc43b9bac2276605e007f89059/); linea `0xf86381...ac645a` | ⚠️ Unaudited |
| LynxClaimV2 | unknown | linea | 2 deployments: linea [`0xb2bed0...2418ba`](./contracts/linea-59144/0xb2bed04305b7411f29e0d76201a62b3dcd2418ba/); linea `0xd8cee4...23e6c6` | ⚠️ Unaudited |
| Market | unknown | linea | [`0x4d6ee0...faa881`](./contracts/linea-59144/0x4d6ee03712c403ae6174467229ef5b3d79faa881/) | ⚠️ Unaudited |
| MerkleTree | operational_periphery | linea | 4 deployments: linea [`0x08a846...7ebcf8`](./contracts/linea-59144/0x08a846946a1d7e70c56ec002b0832699747ebcf8/); linea `0x46ff46...3635f1`; linea `0x6ccc6b...66272f`; linea `0xd89351...ad398b` | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | linea | [`0x9030ae...eb19d4`](./contracts/linea-59144/0x9030ae4d0997658de58d274f79d3074b1beb19d4/) | ⚠️ Unaudited |
| MultiSender | unknown | linea | [`0xc535ee...5ffd8c`](./contracts/linea-59144/0xc535ee7f17ccd18f8cab0f8c275111497c5ffd8c/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | linea | [`0x5d3d9e...249e4b`](./contracts/linea-59144/0x5d3d9e20ad27dd61182505230d1bd075bd249e4b/) | ⚠️ Unaudited |
| PairAPI | unknown | linea | 6 deployments: linea [`0x0da12f...72584d`](./contracts/linea-59144/0x0da12f269f953c6a8f32ff873de275f21072584d/); linea `0x0e23d5...eeb762`; linea `0x17f3b0...1efa9d`; linea `0x775765...bbc0b8`; linea `0x8a8bb2...e6eea6`; linea `0xeb7eab...2fa017` | ⚠️ Unaudited |
| PairAPISimple | unknown | linea | 6 deployments: linea [`0x067c77...5e3af0`](./contracts/linea-59144/0x067c77e4fb48aea20199c40a1f1fa99f215e3af0/); linea `0x85965d...c1a541`; linea `0xa5df3b...591342`; linea `0xb27a0d...4cfe78`; linea `0xba5d01...138743`; linea `0xef5f19...7f264d` | ⚠️ Unaudited |
| PairAPIV1 | unknown | linea | 2 deployments: linea [`0x6f4005...e08cd7`](./contracts/linea-59144/0x6f4005ae6e02b769b4634698db2113b623e08cd7/); linea `0x8398fe...a702c8` | ⚠️ Unaudited |
| PairFactory | registry | linea | 2 deployments: linea [`0x6ed7b9...b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/); linea `0xbc7695...99f9ee` | ⚠️ Unaudited |
| PointList | unknown | linea | [`0x7be8f0...a1eaf4`](./contracts/linea-59144/0x7be8f060c025d57aa18d287a267928eb33a1eaf4/) | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | linea | [`0xd85a5e...834a2e`](./contracts/linea-59144/0xd85a5ed176bd1abf2e2ba73935c71126bb834a2e/) | ⚠️ Unaudited |
| PreMining | unknown | linea | 3 deployments: linea [`0x0b3a25...67c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/); linea `0x224b20...430c0e`; linea `0xbf05db...d20452` | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | 13 deployments: linea [`0x04cbfc...34a3fc`](./contracts/linea-59144/0x04cbfc369a40ceb4a91cec53c3afe2922b34a3fc/); linea `0x1d7355...76c5b9`; linea `0x37d28b...62ac57`; linea `0x464481...0fe816`; linea `0x4b6f63...4b5645`; linea `0x59ce7d...925c79`; linea `0x6e0673...64251f`; linea `0x7a7d96...be363d`; linea `0x7ebd70...f6bf0f`; linea `0xa82e62...d68685`; linea `0xb3f6ed...6f1de2`; linea `0xc9453e...0e8c13`; linea `0xf3f5be...523c27` | ⚠️ Unaudited |
| Quoter | periphery | linea | [`0x851d97...cac83e`](./contracts/linea-59144/0x851d97fd7823e44193d227682e32234ef8cac83e/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | [`0xce8296...3a0640`](./contracts/linea-59144/0xce829655b864e56fc34b783874cf9590053a0640/) | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | 6 deployments: linea [`0x1f43bd...8965e4`](./contracts/linea-59144/0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4/); linea `0x436244...05c743`; linea `0x51487f...30acc3`; linea `0x5be4bd...231edf`; linea `0x968a4b...679d97`; linea `0xa8dcc9...6cb274` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | linea | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | ⚠️ Unaudited |
| RouterV2 | adapter | linea | 2 deployments: linea [`0x610d2f...c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/); linea `0xc51d74...e4a840` | ⚠️ Unaudited |
| SwapRouter | adapter | linea | [`0x3921e8...583390`](./contracts/linea-59144/0x3921e8cb45b17fc029a0a6de958330ca4e583390/) | ⚠️ Unaudited |
| veNFTAPIV2 | token | linea | 6 deployments: linea [`0x15020d...105f1b`](./contracts/linea-59144/0x15020d2d7eab8d893517778e7143021dfe105f1b/); linea `0x18e526...41ee93`; linea `0x255e81...a1892f`; linea `0x29468b...da79a8`; linea `0x32777d...327236`; linea `0x86453c...b86e59` | ⚠️ Unaudited |
| VoterV5 | unknown | linea | [`0x0b2c83...3b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/) | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | linea | [`0x8d95f5...9b4c0c`](./contracts/linea-59144/0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | linea | `0x98e5cd...5ca474` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x10ae74...664a84`](./contracts/linea-59144/0x10ae74a82ace90d0ac4aacafe6eb57c96a664a84/) | CLFeesVault | core_logic | $3.89 | Verified native implementation with $3.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9d9459...89c7dc`](./contracts/linea-59144/0x9d945924416dff6fc99bf10fa768f57b7889c7dc/) | AccessControls | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5d4614...a6cce6`](./contracts/linea-59144/0x5d4614ffed6164df543e48f8906a255bdda6cce6/) | AirdropClaimV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x61fc82...1557da`](./contracts/linea-59144/0x61fc82fd2c5c9f137ac11c0a2ab8d2f29c1557da/) | AirdropClaimV2Strategic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5b8865...1566dd`](./contracts/linea-59144/0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd/) | BatchAuction | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe8a4c9...ce557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x08283a...a92140`](./contracts/linea-59144/0x08283a22b62cc0c6e85e3bea176a843fa2a92140/) | Crowdsale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6c13a3...3d6632`](./contracts/linea-59144/0x6c13a305f58eea8696b7c9ab39e598da1f3d6632/) | DutchAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x344530...042d80`](./contracts/linea-59144/0x3445307caed9a144901872380fd5772f71042d80/) | EpochController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4fb4b4...4d3ae5`](./contracts/linea-59144/0x4fb4b44947ba2457959ec44e9eaaa08ba94d3ae5/) | HyperbolicAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3b7191...7022ac`](./contracts/linea-59144/0x3b7191b37bd5ecff4ca41a841a4694cb267022ac/) | Launcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7fb2aa...f937e5`](./contracts/linea-59144/0x7fb2aaa0ba7ee5883cb283ba7f88dec4bff937e5/) | ListFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1a51b1...71e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/) | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x036559...f89059`](./contracts/linea-59144/0x0365592c3db1e4fc43b9bac2276605e007f89059/) | LynxClaimToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb2bed0...2418ba`](./contracts/linea-59144/0xb2bed04305b7411f29e0d76201a62b3dcd2418ba/) | LynxClaimV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4d6ee0...faa881`](./contracts/linea-59144/0x4d6ee03712c403ae6174467229ef5b3d79faa881/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc535ee...5ffd8c`](./contracts/linea-59144/0xc535ee7f17ccd18f8cab0f8c275111497c5ffd8c/) | MultiSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0da12f...72584d`](./contracts/linea-59144/0x0da12f269f953c6a8f32ff873de275f21072584d/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x067c77...5e3af0`](./contracts/linea-59144/0x067c77e4fb48aea20199c40a1f1fa99f215e3af0/) | PairAPISimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6f4005...e08cd7`](./contracts/linea-59144/0x6f4005ae6e02b769b4634698db2113b623e08cd7/) | PairAPIV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6ed7b9...b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7be8f0...a1eaf4`](./contracts/linea-59144/0x7be8f060c025d57aa18d287a267928eb33a1eaf4/) | PointList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd85a5e...834a2e`](./contracts/linea-59144/0xd85a5ed176bd1abf2e2ba73935c71126bb834a2e/) | PostAuctionLauncher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b3a25...67c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x851d97...cac83e`](./contracts/linea-59144/0x851d97fd7823e44193d227682e32234ef8cac83e/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xce8296...3a0640`](./contracts/linea-59144/0xce829655b864e56fc34b783874cf9590053a0640/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x610d2f...c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x15020d...105f1b`](./contracts/linea-59144/0x15020d2d7eab8d893517778e7143021dfe105f1b/) | veNFTAPIV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 5 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
