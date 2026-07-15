# Agentic Audit Brief: flaunch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 86 unique implementations (209 raw deployments)
- Coverage basis: 6/12 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,351,134.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for flaunch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across base, ethereum. Structural roles: 8 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (5), erc165 (4), accesscontrol (2), erc721 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (9), solady (9), solmate (2), permit2 (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressFeeSplitManager (`0xf6d801...920a7d`, chain 8453)
- BidWall (`0x7f2235...d0ef9c`, chain 8453)
- FeeEscrow (`0x72e6f7...d27dde`, chain 8453)
- Flaunch (`0x516af5...e10109`, chain 8453)
- FlaunchZap (`0xe52de1...84b510`, chain 8453)
- PoolManager (`0x498581...652b2b`, chain 8453)
- PoolSwap (`0xdcf8e5...3dd08e`, chain 8453)
- PositionManager (`0x23321f...902fdc`, chain 8453)
- RevenueManager (`0x1af9b9...e7ee36`, chain 8453)
- StakingManager (`0xa15f92...fea193`, chain 8453)
- TreasuryManagerFactory (`0x48af8b...ca8763`, chain 8453)
- UniversalRouter (`0x6ff569...299b43`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/12 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 12 of 86 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/68
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 86
- Raw deployments: 209
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FlayerLabs | Tier 2 | 6 | 8.8% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BidWall | unknown | project_anchor | own_supporting | 0 | base | unit-266840 | `0x7f2235...d0ef9c` | ✅ Audited |
| Flaunch | unknown | project_anchor | own_supporting | 0 | base | unit-266837 | `0x516af5...e10109` | ✅ Audited |
| FlaunchZap | adapter | project_anchor | own_supporting | 0 | base | unit-266843 | `0xe52de1...84b510` | ✅ Audited |
| PositionManager | governance | project_anchor | own_supporting | 0 | base | unit-266834 | `0x23321f...902fdc` | ✅ Audited |
| RevenueManager | governance | project_anchor | own_supporting | 0 | base | unit-266833 | `0x1af9b9...e7ee36` | ✅ Audited |
| TreasuryManagerFactory | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266835 | `0x48af8b...ca8763` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressFeeSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x58e8b9...79a307`; base `0x6baa4e...149f99`; base `0x929d48...a3d90c`; base `0xabde68...78334b`; base `0xc3f4e7...f6faf9`; base `0xe5a5ad...f7f386`; base `0xfab4ba...1e89f3` | ⚠️ Unaudited |
| AddressFeeSplitManager | governance | project_anchor | own_supporting | 0 | base | unit-266844 | `0xf6d801...920a7d` | ⚠️ Unaudited |
| AnyBidWall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2154c6...9240df` | ⚠️ Unaudited |
| AnyFlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x32e59c...500983`; base `0x71001d...e43666`; base `0xc5b2e8...cf95d5`; base `0xf175a3...844c50` | ⚠️ Unaudited |
| AnyMarketCappedPriceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x08222e...ccf390`; base `0xd565c4...5a2a93` | ⚠️ Unaudited |
| AnyPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dc3b8...42e5dc` | ⚠️ Unaudited |
| BurnTokensAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8696a1...3382c8` | ⚠️ Unaudited |
| BuyBackAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda4866...e296be` | ⚠️ Unaudited |
| BuyBackAndBurnFlay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x2994a2...10413c`; base `0x558a4d...725192`; base `0x93db9a...b4016f`; base `0xc5ee96...30968a`; base `0xd0bc17...881982`; base `0xe8476a...bf8dd3` | ⚠️ Unaudited |
| BuyBackManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3aaf3b...ba8a3f` | ⚠️ Unaudited |
| ClaimFeesAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db1d2...0cf20b` | ⚠️ Unaudited |
| ClankerWorldVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xf6ddfc...f2a20b`; base `0xfe55df...cb4dda` | ⚠️ Unaudited |
| ClosedPermissions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dfc76...480fa1` | ⚠️ Unaudited |
| DistributeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fffdd...e5d8ff` | ⚠️ Unaudited |
| DopplerVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedd66b...80f993` | ⚠️ Unaudited |
| DynamicAddressFeeSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x187138...fd6f8d`; base `0x9b332e...e35fc8` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x184b9f...b68f92`; base `0x4dc442...f32640` | ⚠️ Unaudited |
| FastFlaunchZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x68d967...e20f92`; base `0x70b5f6...0d7ea4`; base `0xd79e27...4b02f6` | ⚠️ Unaudited |
| FeeEscrow | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266839 | `0x72e6f7...d27dde` | ⚠️ Unaudited |
| FeeEscrowRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x588aba...457342`; base `0x759b36...338ea7`; base `0xa49bae...deff60`; base `0xfa140f...22a3d6` | ⚠️ Unaudited |
| FeeExemptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdce45...2c4e06` | ⚠️ Unaudited |
| FlAaveV3WethGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344e4d...53d727` | ⚠️ Unaudited |
| Flaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0cf6bd...3553af`; base `0x6a53f8...2d9571`; base `0xb4512b...04c18c`; base `0xba303a...f06d73` | ⚠️ Unaudited |
| FlaunchFeeExemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4bdd06...cc5d69`; base `0x705624...3fe613` | ⚠️ Unaudited |
| FlaunchPremineZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefa826...c8dffe` | ⚠️ Unaudited |
| FlaunchZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x2bc8cb...22dabf`; base `0x8af174...c913ee`; base `0xa9bd94...24c172`; base `0xc3c6dd...126763`; base `0xe70c28...318211`; base `0xf9753e...b8b114`; base `0xfa9e85...0a672a` | ⚠️ Unaudited |
| FlayBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x90c079...d1a8f0`; base `0x94e1ea...888ce9` | ⚠️ Unaudited |
| FlayerGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ba5ea...fa5d38`; ethereum `0xb5862e...36288a` | ⚠️ Unaudited |
| flETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...fc7cf8` | ⚠️ Unaudited |
| flETHHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e433f...41a888` | ⚠️ Unaudited |
| IndexerSubscriber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x221a11...c86088`; base `0x7c6088...659663`; base `0xf14d1f...61ef10` | ⚠️ Unaudited |
| MarketCappedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x09a10a...993ee7`; base `0xadfe60...8b0a6c` | ⚠️ Unaudited |
| MarketCappedPriceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x3192c0...ac6d2c`; base `0x6575a6...e8528b`; base `0xf318e1...23e7f6`; base `0xff59e0...90196e` | ⚠️ Unaudited |
| Memecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 51 deployments: base `0x0086cf...51d959`; base `0x02d777...1a7e26`; base `0x0346a9...dd0bcd`; base `0x06a050...69ddc5`; base `0x09a55c...3416a2`; base `0x0f4f5f...dead22`; base `0x1cc824...373783`; base `0x2188cf...ecd080`; base `0x21bac3...e4297c`; base `0x22aab1...dafbb7`; base `0x283149...122abf`; base `0x32dd9a...4ff306`; base `0x3d8931...d00a95`; base `0x46bc5b...72d59d`; base `0x49886a...e51039`; base `0x557e8f...90821a`; base `0x5c808a...f0cd78`; base `0x61934a...0e55cf`; base `0x63a33d...fe3456`; base `0x64573d...4500e8`; base `0x66c136...33ebf6`; base `0x716f8e...6b5809`; base `0x803c33...0dbd79`; base `0x80fb0f...f3dce0`; base `0x8644d6...f2a55b`; base `0x8cbb2c...1b91d4`; base `0x9074d7...4d4403`; base `0x909ebb...f6d9b3`; base `0x93657d...88ae57`; base `0x9551b0...c4eb25`; base `0x98805d...838c89`; base `0x9e9b78...a7bcea`; base `0xa448d4...899125`; base `0xa4e3dc...3b614d`; base `0xaf679b...d58bf1`; base `0xb7965a...ae0b68`; base `0xbab36d...14de5f`; base `0xbd072a...fdc7f4`; base `0xbd56f4...4026d1`; base `0xbd8b27...c73d8d`; base `0xbebddd...dbd0ea`; base `0xc3b678...90d231`; base `0xc78fab...753a4e`; base `0xc827d9...24976c`; base `0xcd62a5...80426a`; base `0xd98b11...8e2db3`; base `0xdc33a1...7bda3d`; base `0xe75413...61890c`; base `0xeb46fd...31caeb`; base `0xf1eeee...bd945c`; base `0xf4b7fa...b7767a` | ⚠️ Unaudited |
| MemecoinTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x739739...791232`; base `0xa32772...768145` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x635b4a...59077a` | ⚠️ Unaudited |
| Notifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3aa39a...5909f6`; base `0xc31d9f...4b5d35` | ⚠️ Unaudited |
| ParagraphVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e7444...67e542` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | base | unit-266836 | `0x498581...652b2b` | ⚠️ Unaudited |
| PoolSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2112...5aca25` | ⚠️ Unaudited |
| PoolSwap | core_logic | project_anchor | own_supporting | 0 | base | unit-266842 | `0xdcf8e5...3dd08e` | ⚠️ Unaudited |
| PreventNoFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ecd49...4c9294` | ⚠️ Unaudited |
| ProtocolFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1150c5...4ee079` | ⚠️ Unaudited |
| ReferralEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbd39c7...47fe55`; base `0xd381f8...96f28c` | ⚠️ Unaudited |
| RevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x2a1fc8...c679e2`; base `0x33f04d...1b2282`; base `0x4fb9de...c01b8f`; base `0x641d5c...89d72d`; base `0x662a76...4f9950`; base `0x712fa8...02d898`; base `0xb6c0cc...e92b3d`; base `0xc8d4b2...cc1b50` | ⚠️ Unaudited |
| SignedImporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90664e...34e358` | ⚠️ Unaudited |
| SolanaVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba28ac...6c9055` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x361a87...24b630`; base `0x3c3bc8...b40bf0`; base `0x540677...a9622d`; base `0xb5dd2f...badbea`; base `0xcc920a...1324c2`; base `0xdcb1be...72b5b2`; base `0xec0069...b3125d` | ⚠️ Unaudited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-266841 | `0xa15f92...fea193` | ⚠️ Unaudited |
| StaticFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x002f0f...6302ec`; base `0xaa2719...f2fab9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x000000...d8c545`; ethereum `0x1b8a68...37b993`; ethereum `0x2d48ba...693ac4`; ethereum `0x64de23...04c948`; ethereum `0x6c4c0c...ef27b0` | ⚠️ Unaudited |
| TokenImporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6fb66f...668197`; base `0xb47af9...435842` | ⚠️ Unaudited |
| TreasuryActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5c20...add4a4` | ⚠️ Unaudited |
| TrustedSignerFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x06ea8b...ec60f3`; base `0x2a78ab...b7a26c`; base `0x2b6866...b321cd`; base `0x4d0a21...3aa3a4`; base `0xbd478b...cc8fa4` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | base | unit-266838 | `0x6ff569...299b43` | ⚠️ Unaudited |
| VirtualsVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06a089...43d3a4` | ⚠️ Unaudited |
| WhitelistedPermissions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x828b58...4493cc` | ⚠️ Unaudited |
| WhitelistFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8ea82b...e226f6`; base `0x8ecc81...47c7e5`; base `0x9718c9...d7f1d3`; base `0xfbb09a...99462d` | ⚠️ Unaudited |
| WhitelistPoolSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x29d66c...4c3837`; base `0x6af705...ea94ee`; base `0x862d54...af054a`; base `0xde9cfa...d4534d` | ⚠️ Unaudited |
| WhitelistVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a0436...70c5a6` | ⚠️ Unaudited |
| YieldReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5e76f...b3f471` | ⚠️ Unaudited |
| ZoraVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x656047...59f8b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d5e0f...32048d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17e025...aea690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x312706...b014a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37596d...ce3c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bfad6...75d398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e7cb1...616fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x688aeb...7ad384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f2fa0...265a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70f2ef...001a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73e279...ed9ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c5f5a...429bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ea407...e78c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ed7d...1ccd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc98a11...10a142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f3c6...2e9ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2ef58...df9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf72dcd...04069b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-12_Security_Review_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FvGZ6DMH5qc5WmOLDVo1R%2F2024-12_Security_Review_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-11 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 6 | medium |
| [2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FrUVPPUrniThyiTPkK2kn%2F2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FLe4HhcXKikOZSlfl2bSl%2F2025-03_Security%20Review_FlayerLabs_Flaunch%20v1.1%20Protocol%20Upgrade.pdf) | FlayerLabs | Audit | 2025-03 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20299] 2024-12_Security_Review_FlayerLabs_Flaunch.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions.
- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf — no match: The report is an extension review of a diff between commits, but no specific contract names or file paths are listed in scope. The only mention is 'flayerlabs/flaunch-contracts' repository, which is not a contract name.
- [20301] 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf — matched: Extracted contract names from findings context and informational items. Audit date from title page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f...902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | DynamicFeeCalculator | unmatched — not counted | — | mentioned in finding L-03 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | BidWall | own contract | BidWall (selected) `0x7f2235...d0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | FeeDistributor | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MarketCappedPrice | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | InitialPrice | unmatched — not counted | — | mentioned in finding L-02 and I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | TreasuryAction | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MemecoinTreasury | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | RevenueManager | own contract | RevenueManager (selected) `0x1af9b9...e7ee36` — deployed 2025-10-03 18:01:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManagerFactory | own contract | TreasuryManagerFactory (selected) `0x48af8b...ca8763` — deployed 2025-04-23 16:13:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FlaunchZap | own contract | FlaunchZap (selected) `0xe52de1...84b510` — deployed 2025-09-11 17:50:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | SnapshotAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | MerkleAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BidWall | own contract | BidWall (selected) `0x7f2235...d0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f...902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyPositionManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | Flaunch | own contract | Flaunch (selected) `0x516af5...e10109` — deployed 2025-08-13 18:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyFlaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FairLaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | HypeFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BuyBackAndBurnFlay | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xf6d801...920a7d` | AddressFeeSplitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x72e6f7...d27dde` | FeeEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x498581...652b2b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdcf8e5...3dd08e` | PoolSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa15f92...fea193` | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6ff569...299b43` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1, medium=1
- Match method counts: unique_name=8

Zero-match audit list:

- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
