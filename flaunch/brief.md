# Agentic Audit Brief: flaunch

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: active (Tier 0, 35% below peak)
- Generated: 2026-06-17T07:00:41.647Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 40 unique implementations (93 raw deployments)
- DeFi Llama TVL: $1,461,295.28
- On-chain TVL (included contracts): $21,199,741.10
- TVL by chain: Base $21,199,741.10

## Project Description

Flaunch is a launchpad protocol on Base that enables users to create and trade memecoins.

### Architecture

The Unnamed Infrastructure contract likely acts as a factory that deploys the numerous Memecoin instances across both the Memecoin Launchpad and Flaunch Core families. The flETH token may be used as a base asset for liquidity or staking within the Flaunch ecosystem.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 93 (91 live, 2 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 79/750.

## Audit Coverage Summary

- Verified implementations audited: 0/39 (0.0%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 40
- Raw deployments: 93
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,199,741.10
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | base | n/a | [`0x498581...652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | ⚠️ Unaudited |
| PoolSwap | core_logic | base | n/a | [`0xdcf8e5...3dd08e`](./contracts/base-8453/0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e/) | ⚠️ Unaudited |
| AddressFeeSplitManager | governance | base | n/a | [`0xf6d801...920a7d`](./contracts/base-8453/0xf6d8018450109a68acfbcd2523dc43fb31920a7d/) | ⚠️ Unaudited |
| AnyBidWall | unknown | base | n/a | [`0x2154c6...9240df`](./contracts/base-8453/0x2154c604df568a5285284d1c4918dc98c39240df/) | ⚠️ Unaudited |
| AnyFlaunch | unknown | base | n/a | [`0xc5b2e8...cf95d5`](./contracts/base-8453/0xc5b2e8f197407263f4b62a35c71bfc394ecf95d5/) | ⚠️ Unaudited |
| AnyMarketCappedPriceV3 | unknown | base | n/a | [`0xd565c4...5a2a93`](./contracts/base-8453/0xd565c460922ea1220eb65733b111cc8bde5a2a93/) | ⚠️ Unaudited |
| AnyPositionManager | unknown | base | n/a | [`0x8dc3b8...42e5dc`](./contracts/base-8453/0x8dc3b85e1dc1c846ebf3971179a751896842e5dc/) | ⚠️ Unaudited |
| BidWall | unknown | base | n/a | [`0x7f2235...d0ef9c`](./contracts/base-8453/0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c/) | ⚠️ Unaudited |
| BuyBackAction | unknown | base | n/a | [`0xda4866...e296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | ⚠️ Unaudited |
| BuyBackAndBurnFlay | unknown | base | n/a | [`0x2994a2...10413c`](./contracts/base-8453/0x2994a2849666c3487aaef9bb0662f853a710413c/) | ⚠️ Unaudited |
| ClankerWorldVerifier | unknown | base | n/a | [`0xf6ddfc...f2a20b`](./contracts/base-8453/0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b/) | ⚠️ Unaudited |
| ClosedPermissions | unknown | base | n/a | [`0x4dfc76...480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ⚠️ Unaudited |
| DistributeAction | unknown | base | n/a | [`0x8fffdd...e5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | ⚠️ Unaudited |
| DopplerVerifier | unknown | base | n/a | [`0xedd66b...80f993`](./contracts/base-8453/0xedd66b080b8e9425c39d349a3fb69f480580f993/) | ⚠️ Unaudited |
| FairLaunch | unknown | base | n/a | [`0x4dc442...f32640`](./contracts/base-8453/0x4dc442403e8c758425b93c59dc737da522f32640/) | ⚠️ Unaudited |
| FeeEscrow | operational_periphery | base | n/a | [`0x72e6f7...d27dde`](./contracts/base-8453/0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde/) | ⚠️ Unaudited |
| FeeEscrowRegistry | operational_periphery | base | n/a | [`0x588aba...457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | ⚠️ Unaudited |
| FlAaveV3WethGateway | token | base | n/a | [`0x344e4d...53d727`](./contracts/base-8453/0x344e4d19c851b317bb65d31bb5c4e3815b53d727/) | ⚠️ Unaudited |
| Flaunch | unknown | base | n/a | 3 deployments: base [`0x516af5...e10109`](./contracts/base-8453/0x516af52d0c629b5e378da4dc64ecb0744ce10109/); base `0x6a53f8...2d9571`; base `0xb4512b...04c18c` | ⚠️ Unaudited |
| FlaunchZap | adapter | base | n/a | 2 deployments: base [`0x2bc8cb...22dabf`](./contracts/base-8453/0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf/); base `0xe52de1...84b510` | ⚠️ Unaudited |
| FlayerGovernor | governance | ethereum | n/a | [`0x8ba5ea...fa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/) | ⚠️ Unaudited |
| flETH | unknown | base | n/a | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | ⚠️ Unaudited |
| flETHHooks | unknown | base | n/a | [`0x9e433f...41a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | ⚠️ Unaudited |
| IndexerSubscriber | unknown | base | n/a | [`0x7c6088...659663`](./contracts/base-8453/0x7c6088c1185fbb770deb1ca7ddeed4ba57659663/) | ⚠️ Unaudited |
| MarketCappedPrice | unknown | base | n/a | [`0xadfe60...8b0a6c`](./contracts/base-8453/0xadfe60c7df588fa102593644684566b2948b0a6c/) | ⚠️ Unaudited |
| Memecoin | unknown | base | n/a | 50 deployments: base [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/); base `0x02d777...1a7e26`; base `0x0346a9...dd0bcd`; base `0x06a050...69ddc5`; base `0x09a55c...3416a2`; base `0x0f4f5f...dead22`; base `0x1cc824...373783`; base `0x2188cf...ecd080`; base `0x21bac3...e4297c`; base `0x22aab1...dafbb7`; base `0x283149...122abf`; base `0x32dd9a...4ff306`; base `0x3d8931...d00a95`; base `0x46bc5b...72d59d`; base `0x49886a...e51039`; base `0x557e8f...90821a`; base `0x5c808a...f0cd78`; base `0x61934a...0e55cf`; base `0x63a33d...fe3456`; base `0x64573d...4500e8`; base `0x66c136...33ebf6`; base `0x716f8e...6b5809`; base `0x803c33...0dbd79`; base `0x80fb0f...f3dce0`; base `0x8644d6...f2a55b`; base `0x8cbb2c...1b91d4`; base `0x9074d7...4d4403`; base `0x909ebb...f6d9b3`; base `0x93657d...88ae57`; base `0x9551b0...c4eb25`; base `0x98805d...838c89`; base `0x9e9b78...a7bcea`; base `0xa448d4...899125`; base `0xa4e3dc...3b614d`; base `0xaf679b...d58bf1`; base `0xb7965a...ae0b68`; base `0xbab36d...14de5f`; base `0xbd072a...fdc7f4`; base `0xbd56f4...4026d1`; base `0xbd8b27...c73d8d`; base `0xbebddd...dbd0ea`; base `0xc3b678...90d231`; base `0xc78fab...753a4e`; base `0xc827d9...24976c`; base `0xcd62a5...80426a`; base `0xd98b11...8e2db3`; base `0xdc33a1...7bda3d`; base `0xe75413...61890c`; base `0xeb46fd...31caeb`; base `0xf4b7fa...b7767a` | ⚠️ Unaudited |
| Notifier | unknown | base | n/a | 2 deployments: base [`0x3aa39a...5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/); base `0xc31d9f...4b5d35` | ⚠️ Unaudited |
| PositionManager | unknown | base | n/a | [`0x23321f...902fdc`](./contracts/base-8453/0x23321f11a6d44fd1ab790044fdfde5758c902fdc/) | ⚠️ Unaudited |
| RevenueManager | governance | base | n/a | [`0x1af9b9...e7ee36`](./contracts/base-8453/0x1af9b9f168bfd2046f45e0ce03972864bce7ee36/) | ⚠️ Unaudited |
| StakingManager | governance | base | n/a | [`0xa15f92...fea193`](./contracts/base-8453/0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193/) | ⚠️ Unaudited |
| TokenImporter | token | base | n/a | [`0xb47af9...435842`](./contracts/base-8453/0xb47af90ae61bc916ea4b4bacffae4570e7435842/) | ⚠️ Unaudited |
| TreasuryManagerFactory | operational_periphery | base | n/a | [`0x48af8b...ca8763`](./contracts/base-8453/0x48af8b28ddc5e5a86c4906212fc35fa808ca8763/) | ⚠️ Unaudited |
| TrustedSignerFeeCalculator | unknown | base | n/a | [`0x2b6866...b321cd`](./contracts/base-8453/0x2b686652494798436af116076cf557f935b321cd/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6ff569...299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | ⚠️ Unaudited |
| VirtualsVerifier | unknown | base | n/a | [`0x06a089...43d3a4`](./contracts/base-8453/0x06a089fa231aca48d2aa77365123ad9aca43d3a4/) | ⚠️ Unaudited |
| WhitelistedPermissions | unknown | base | n/a | [`0x828b58...4493cc`](./contracts/base-8453/0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc/) | ⚠️ Unaudited |
| WhitelistFairLaunch | unknown | base | n/a | [`0xfbb09a...99462d`](./contracts/base-8453/0xfbb09a77c484e3d8ec8ec2b00bc4adbe8699462d/) | ⚠️ Unaudited |
| WhitelistVerifier | unknown | base | n/a | [`0x7a0436...70c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | ⚠️ Unaudited |
| ZoraVerifier | unknown | base | n/a | [`0x656047...59f8b9`](./contracts/base-8453/0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x688aeb...7ad384` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xdcf8e5...3dd08e`](./contracts/base-8453/0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e/) | PoolSwap | core_logic | $0.67 | Verified native implementation with $0.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf6d801...920a7d`](./contracts/base-8453/0xf6d8018450109a68acfbcd2523dc43fb31920a7d/) | AddressFeeSplitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2154c6...9240df`](./contracts/base-8453/0x2154c604df568a5285284d1c4918dc98c39240df/) | AnyBidWall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc5b2e8...cf95d5`](./contracts/base-8453/0xc5b2e8f197407263f4b62a35c71bfc394ecf95d5/) | AnyFlaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd565c4...5a2a93`](./contracts/base-8453/0xd565c460922ea1220eb65733b111cc8bde5a2a93/) | AnyMarketCappedPriceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8dc3b8...42e5dc`](./contracts/base-8453/0x8dc3b85e1dc1c846ebf3971179a751896842e5dc/) | AnyPositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7f2235...d0ef9c`](./contracts/base-8453/0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c/) | BidWall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda4866...e296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | BuyBackAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2994a2...10413c`](./contracts/base-8453/0x2994a2849666c3487aaef9bb0662f853a710413c/) | BuyBackAndBurnFlay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dfc76...480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ClosedPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fffdd...e5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | DistributeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dc442...f32640`](./contracts/base-8453/0x4dc442403e8c758425b93c59dc737da522f32640/) | FairLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x72e6f7...d27dde`](./contracts/base-8453/0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde/) | FeeEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x588aba...457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | FeeEscrowRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x516af5...e10109`](./contracts/base-8453/0x516af52d0c629b5e378da4dc64ecb0744ce10109/) | Flaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bc8cb...22dabf`](./contracts/base-8453/0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf/) | FlaunchZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ba5ea...fa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/) | FlayerGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | flETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e433f...41a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | flETHHooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c6088...659663`](./contracts/base-8453/0x7c6088c1185fbb770deb1ca7ddeed4ba57659663/) | IndexerSubscriber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xadfe60...8b0a6c`](./contracts/base-8453/0xadfe60c7df588fa102593644684566b2948b0a6c/) | MarketCappedPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/) | Memecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3aa39a...5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/) | Notifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23321f...902fdc`](./contracts/base-8453/0x23321f11a6d44fd1ab790044fdfde5758c902fdc/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1af9b9...e7ee36`](./contracts/base-8453/0x1af9b9f168bfd2046f45e0ce03972864bce7ee36/) | RevenueManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa15f92...fea193`](./contracts/base-8453/0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193/) | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb47af9...435842`](./contracts/base-8453/0xb47af90ae61bc916ea4b4bacffae4570e7435842/) | TokenImporter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x48af8b...ca8763`](./contracts/base-8453/0x48af8b28ddc5e5a86c4906212fc35fa808ca8763/) | TreasuryManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b6866...b321cd`](./contracts/base-8453/0x2b686652494798436af116076cf557f935b321cd/) | TrustedSignerFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x828b58...4493cc`](./contracts/base-8453/0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc/) | WhitelistedPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbb09a...99462d`](./contracts/base-8453/0xfbb09a77c484e3d8ec8ec2b00bc4adbe8699462d/) | WhitelistFairLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a0436...70c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | WhitelistVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
