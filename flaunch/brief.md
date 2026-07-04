# Agentic Audit Brief: flaunch

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.362Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 59 unique implementations (182 raw deployments)
- DeFi Llama TVL: $1,351,134.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 81 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on solady.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (erc165, erc721holder, erc1155holder). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 194; live-surface contracts included: 182 (178 live, 4 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/54 (48.1%)
- Deployed-live implementations: 55 of 59 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/55
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 59
- Raw deployments: 182
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 26 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FlayerLabs | Tier 2 | 26 | 47.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressFeeSplitManager | unknown | base | n/a | 8 deployments: base [`0x58e8b9...79a307`](./contracts/base-8453/0x58e8b94affa117c525d040918344b7a0b779a307/); base `0x6baa4e...149f99`; base `0x929d48...a3d90c`; base `0xabde68...78334b`; base `0xc3f4e7...f6faf9`; base `0xe5a5ad...f7f386`; base `0xf6d801...920a7d`; base `0xfab4ba...1e89f3` | ✅ Audited |
| AnyBidWall | unknown | base | n/a | [`0x2154c6...9240df`](./contracts/base-8453/0x2154c604df568a5285284d1c4918dc98c39240df/) | ✅ Audited |
| AnyFlaunch | unknown | base | n/a | 4 deployments: base [`0x32e59c...500983`](./contracts/base-8453/0x32e59c950dbbf0123e3a7008dab56480c3500983/); base `0x71001d...e43666`; base `0xc5b2e8...cf95d5`; base `0xf175a3...844c50` | ✅ Audited |
| AnyPositionManager | governance | base | n/a | [`0x8dc3b8...42e5dc`](./contracts/base-8453/0x8dc3b85e1dc1c846ebf3971179a751896842e5dc/) | ✅ Audited |
| BidWall | unknown | base | n/a | [`0x7f2235...d0ef9c`](./contracts/base-8453/0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c/) | ✅ Audited |
| BuyBackAndBurnFlay | unknown | base | n/a | 6 deployments: base [`0x2994a2...10413c`](./contracts/base-8453/0x2994a2849666c3487aaef9bb0662f853a710413c/); base `0x558a4d...725192`; base `0x93db9a...b4016f`; base `0xc5ee96...30968a`; base `0xd0bc17...881982`; base `0xe8476a...bf8dd3` | ✅ Audited |
| BuyBackManager | unknown | base | n/a | [`0x3aaf3b...ba8a3f`](./contracts/base-8453/0x3aaf3b1d8cd5b61c77f99ba7cdf41e9ec0ba8a3f/) | ✅ Audited |
| FairLaunch | unknown | base | n/a | 2 deployments: base [`0x184b9f...b68f92`](./contracts/base-8453/0x184b9f99ff343d982574cfc3bd8bed8634b68f92/); base `0x4dc442...f32640` | ✅ Audited |
| FeeEscrow | operational_periphery | base | n/a | [`0x72e6f7...d27dde`](./contracts/base-8453/0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde/) | ✅ Audited |
| Flaunch | unknown | base | n/a | 5 deployments: base [`0x0cf6bd...3553af`](./contracts/base-8453/0x0cf6bdf0a85a9d6763361037985b76c8893553af/); base `0x516af5...e10109`; base `0x6a53f8...2d9571`; base `0xb4512b...04c18c`; base `0xba303a...f06d73` | ✅ Audited |
| FlaunchPremineZap | unknown | base | n/a | [`0xefa826...c8dffe`](./contracts/base-8453/0xefa8267954b0740dc981a40d8e23d07116c8dffe/) | ✅ Audited |
| FlaunchZap | adapter | base | n/a | 8 deployments: base [`0x2bc8cb...22dabf`](./contracts/base-8453/0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf/); base `0x8af174...c913ee`; base `0xa9bd94...24c172`; base `0xc3c6dd...126763`; base `0xe52de1...84b510`; base `0xe70c28...318211`; base `0xf9753e...b8b114`; base `0xfa9e85...0a672a` | ✅ Audited |
| IndexerSubscriber | unknown | base | n/a | 3 deployments: base [`0x221a11...c86088`](./contracts/base-8453/0x221a110f421384c2d5f2c56f04b8e97e47c86088/); base `0x7c6088...659663`; base `0xf14d1f...61ef10` | ✅ Audited |
| MarketCappedPrice | unknown | base | n/a | 2 deployments: base [`0x09a10a...993ee7`](./contracts/base-8453/0x09a10aee38e93e3ed196728adcf1999e38993ee7/); base `0xadfe60...8b0a6c` | ✅ Audited |
| MerkleAirdrop | unknown | base | n/a | [`0x635b4a...59077a`](./contracts/base-8453/0x635b4afcf977ed946bda31fc7e381c970159077a/) | ✅ Audited |
| PositionManager | governance | base | n/a | [`0x23321f...902fdc`](./contracts/base-8453/0x23321f11a6d44fd1ab790044fdfde5758c902fdc/) | ✅ Audited |
| PreventNoFairLaunch | unknown | base | n/a | [`0x8ecd49...4c9294`](./contracts/base-8453/0x8ecd49f762c82b48db927cb80b5629fb3f4c9294/) | ✅ Audited |
| RevenueManager | governance | base | n/a | 9 deployments: base [`0x1af9b9...e7ee36`](./contracts/base-8453/0x1af9b9f168bfd2046f45e0ce03972864bce7ee36/); base `0x2a1fc8...c679e2`; base `0x33f04d...1b2282`; base `0x4fb9de...c01b8f`; base `0x641d5c...89d72d`; base `0x662a76...4f9950`; base `0x712fa8...02d898`; base `0xb6c0cc...e92b3d`; base `0xc8d4b2...cc1b50` | ✅ Audited |
| SignedImporter | unknown | base | n/a | [`0x90664e...34e358`](./contracts/base-8453/0x90664e887e4e98cf281f4c244a9957544134e358/) | ✅ Audited |
| StakingManager | unknown | base | n/a | 8 deployments: base [`0x361a87...24b630`](./contracts/base-8453/0x361a874945c07069beed611f950506a8e324b630/); base `0x3c3bc8...b40bf0`; base `0x540677...a9622d`; base `0xa15f92...fea193`; base `0xb5dd2f...badbea`; base `0xcc920a...1324c2`; base `0xdcb1be...72b5b2`; base `0xec0069...b3125d` | ✅ Audited |
| StaticFeeCalculator | unknown | base | n/a | [`0x002f0f...6302ec`](./contracts/base-8453/0x002f0f6d57bd3692ee9bb59e82e5433afd6302ec/) | ✅ Audited |
| TokenImporter | unknown | base | n/a | 2 deployments: base [`0x6fb66f...668197`](./contracts/base-8453/0x6fb66f4fc262dc86e12136c481ba7c411e668197/); base `0xb47af9...435842` | ✅ Audited |
| TreasuryManagerFactory | operational_periphery | base | n/a | [`0x48af8b...ca8763`](./contracts/base-8453/0x48af8b28ddc5e5a86c4906212fc35fa808ca8763/) | ✅ Audited |
| WhitelistedPermissions | unknown | base | n/a | [`0x828b58...4493cc`](./contracts/base-8453/0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc/) | ✅ Audited |
| WhitelistFairLaunch | unknown | base | n/a | 4 deployments: base [`0x8ea82b...e226f6`](./contracts/base-8453/0x8ea82b35b890987cd6b55271f593abbc0fe226f6/); base `0x8ecc81...47c7e5`; base `0x9718c9...d7f1d3`; base `0xfbb09a...99462d` | ✅ Audited |
| WhitelistPoolSwap | unknown | base | n/a | 4 deployments: base [`0x29d66c...4c3837`](./contracts/base-8453/0x29d66cbfa911cc54bc7111ca5ee19d1f2e4c3837/); base `0x6af705...ea94ee`; base `0x862d54...af054a`; base `0xde9cfa...d4534d` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyMarketCappedPriceV3 | unknown | base | n/a | 2 deployments: base [`0x08222e...ccf390`](./contracts/base-8453/0x08222ea6abe9111b77cf006dc7f0a7c71fccf390/); base `0xd565c4...5a2a93` | ⚠️ Unaudited |
| BuyBackAction | unknown | base | n/a | [`0xda4866...e296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | ⚠️ Unaudited |
| ClaimFeesAction | unknown | base | n/a | [`0x3db1d2...0cf20b`](./contracts/base-8453/0x3db1d2d3a1fcb23386df92cb50025e25980cf20b/) | ⚠️ Unaudited |
| ClankerWorldVerifier | periphery | base | n/a | [`0xf6ddfc...f2a20b`](./contracts/base-8453/0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b/) | ⚠️ Unaudited |
| ClosedPermissions | unknown | base | n/a | [`0x4dfc76...480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ⚠️ Unaudited |
| DistributeAction | unknown | base | n/a | [`0x8fffdd...e5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | ⚠️ Unaudited |
| DopplerVerifier | periphery | base | n/a | [`0xedd66b...80f993`](./contracts/base-8453/0xedd66b080b8e9425c39d349a3fb69f480580f993/) | ⚠️ Unaudited |
| DynamicAddressFeeSplitManager | unknown | base | n/a | 2 deployments: base [`0x187138...fd6f8d`](./contracts/base-8453/0x18713855492a778363e23e2cde325344b8fd6f8d/); base `0x9b332e...e35fc8` | ⚠️ Unaudited |
| FastFlaunchZap | unknown | base | n/a | 3 deployments: base [`0x68d967...e20f92`](./contracts/base-8453/0x68d967d25806fef4aa134db031cdcc55d3e20f92/); base `0x70b5f6...0d7ea4`; base `0xd79e27...4b02f6` | ⚠️ Unaudited |
| FeeEscrowRegistry | operational_periphery | base | n/a | [`0x588aba...457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | ⚠️ Unaudited |
| FeeExemptions | unknown | base | n/a | [`0xfdce45...2c4e06`](./contracts/base-8453/0xfdce459071c74b732b2dec579afb38ea552c4e06/) | ⚠️ Unaudited |
| FlAaveV3WethGateway | token | base | n/a | [`0x344e4d...53d727`](./contracts/base-8453/0x344e4d19c851b317bb65d31bb5c4e3815b53d727/) | ⚠️ Unaudited |
| FlaunchFeeExemption | unknown | base | n/a | 2 deployments: base [`0x4bdd06...cc5d69`](./contracts/base-8453/0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69/); base `0x705624...3fe613` | ⚠️ Unaudited |
| FlayerGovernor | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ba5ea...fa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/); ethereum `0xb5862e...36288a` | ⚠️ Unaudited |
| flETH | unknown | base | n/a | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | ⚠️ Unaudited |
| flETHHooks | unknown | base | n/a | [`0x9e433f...41a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | ⚠️ Unaudited |
| MarketCappedPriceV3 | unknown | base | n/a | 4 deployments: base [`0x3192c0...ac6d2c`](./contracts/base-8453/0x3192c0192888f273642865234f341c33f9ac6d2c/); base `0x6575a6...e8528b`; base `0xf318e1...23e7f6`; base `0xff59e0...90196e` | ⚠️ Unaudited |
| Memecoin | unknown | base | n/a | 51 deployments: base [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/); base `0x02d777...1a7e26`; base `0x0346a9...dd0bcd`; base `0x06a050...69ddc5`; base `0x09a55c...3416a2`; base `0x0f4f5f...dead22`; base `0x1cc824...373783`; base `0x2188cf...ecd080`; base `0x21bac3...e4297c`; base `0x22aab1...dafbb7`; base `0x283149...122abf`; base `0x32dd9a...4ff306`; base `0x3d8931...d00a95`; base `0x46bc5b...72d59d`; base `0x49886a...e51039`; base `0x557e8f...90821a`; base `0x5c808a...f0cd78`; base `0x61934a...0e55cf`; base `0x63a33d...fe3456`; base `0x64573d...4500e8`; base `0x66c136...33ebf6`; base `0x716f8e...6b5809`; base `0x803c33...0dbd79`; base `0x80fb0f...f3dce0`; base `0x8644d6...f2a55b`; base `0x8cbb2c...1b91d4`; base `0x9074d7...4d4403`; base `0x909ebb...f6d9b3`; base `0x93657d...88ae57`; base `0x9551b0...c4eb25`; base `0x98805d...838c89`; base `0x9e9b78...a7bcea`; base `0xa448d4...899125`; base `0xa4e3dc...3b614d`; base `0xaf679b...d58bf1`; base `0xb7965a...ae0b68`; base `0xbab36d...14de5f`; base `0xbd072a...fdc7f4`; base `0xbd56f4...4026d1`; base `0xbd8b27...c73d8d`; base `0xbebddd...dbd0ea`; base `0xc3b678...90d231`; base `0xc78fab...753a4e`; base `0xc827d9...24976c`; base `0xcd62a5...80426a`; base `0xd98b11...8e2db3`; base `0xdc33a1...7bda3d`; base `0xe75413...61890c`; base `0xeb46fd...31caeb`; base `0xf1eeee...bd945c`; base `0xf4b7fa...b7767a` | ⚠️ Unaudited |
| MemecoinTreasury | unknown | base | n/a | 2 deployments: base [`0x739739...791232`](./contracts/base-8453/0x7397390360bd9d559d9277e60d47b99933791232/); base `0xa32772...768145` | ⚠️ Unaudited |
| Notifier | unknown | base | n/a | 2 deployments: base [`0x3aa39a...5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/); base `0xc31d9f...4b5d35` | ⚠️ Unaudited |
| PoolManager | core_logic | base | n/a | [`0x498581...652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | ⚠️ Unaudited |
| PoolSwap | unknown | base | n/a | 2 deployments: base [`0x4c2112...5aca25`](./contracts/base-8453/0x4c211268cbf275637a8c235e63a26bc0e05aca25/); base `0xdcf8e5...3dd08e` | ⚠️ Unaudited |
| ReferralEscrow | unknown | base | n/a | 2 deployments: base [`0xbd39c7...47fe55`](./contracts/base-8453/0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55/); base `0xd381f8...96f28c` | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 5 deployments: ethereum [`0x000000...d8c545`](./contracts/ethereum-1/0x000000000bb63d5c070d0d5791517886a4d8c545/); ethereum `0x1b8a68...37b993`; ethereum `0x2d48ba...693ac4`; ethereum `0x64de23...04c948`; ethereum `0x6c4c0c...ef27b0` | ⚠️ Unaudited |
| TrustedSignerFeeCalculator | unknown | base | n/a | 5 deployments: base [`0x06ea8b...ec60f3`](./contracts/base-8453/0x06ea8bd7476e370c919fa76f78eb08277aec60f3/); base `0x2a78ab...b7a26c`; base `0x2b6866...b321cd`; base `0x4d0a21...3aa3a4`; base `0xbd478b...cc8fa4` | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6ff569...299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | ⚠️ Unaudited |
| VirtualsVerifier | periphery | base | n/a | [`0x06a089...43d3a4`](./contracts/base-8453/0x06a089fa231aca48d2aa77365123ad9aca43d3a4/) | ⚠️ Unaudited |
| WhitelistVerifier | periphery | base | n/a | [`0x7a0436...70c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | ⚠️ Unaudited |
| ZoraVerifier | periphery | base | n/a | [`0x656047...59f8b9`](./contracts/base-8453/0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x37596d...ce3c62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bfad6...75d398` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x688aeb...7ad384` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f2ef...001a67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-12_Security_Review_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FvGZ6DMH5qc5WmOLDVo1R%2F2024-12_Security_Review_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-11 | aging | Direct | contract_name | 28 | high |
| [2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FrUVPPUrniThyiTPkK2kn%2F2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FLe4HhcXKikOZSlfl2bSl%2F2025-03_Security%20Review_FlayerLabs_Flaunch%20v1.1%20Protocol%20Upgrade.pdf) | FlayerLabs | Audit | 2025-03 | aging | Direct | contract_name | 56 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x08222e...ccf390`](./contracts/base-8453/0x08222ea6abe9111b77cf006dc7f0a7c71fccf390/) | AnyMarketCappedPriceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda4866...e296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | BuyBackAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3db1d2...0cf20b`](./contracts/base-8453/0x3db1d2d3a1fcb23386df92cb50025e25980cf20b/) | ClaimFeesAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf6ddfc...f2a20b`](./contracts/base-8453/0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b/) | ClankerWorldVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dfc76...480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ClosedPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fffdd...e5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | DistributeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xedd66b...80f993`](./contracts/base-8453/0xedd66b080b8e9425c39d349a3fb69f480580f993/) | DopplerVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x187138...fd6f8d`](./contracts/base-8453/0x18713855492a778363e23e2cde325344b8fd6f8d/) | DynamicAddressFeeSplitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68d967...e20f92`](./contracts/base-8453/0x68d967d25806fef4aa134db031cdcc55d3e20f92/) | FastFlaunchZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x588aba...457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | FeeEscrowRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfdce45...2c4e06`](./contracts/base-8453/0xfdce459071c74b732b2dec579afb38ea552c4e06/) | FeeExemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x344e4d...53d727`](./contracts/base-8453/0x344e4d19c851b317bb65d31bb5c4e3815b53d727/) | FlAaveV3WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4bdd06...cc5d69`](./contracts/base-8453/0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69/) | FlaunchFeeExemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ba5ea...fa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/) | FlayerGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000000...fc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | flETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e433f...41a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | flETHHooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3192c0...ac6d2c`](./contracts/base-8453/0x3192c0192888f273642865234f341c33f9ac6d2c/) | MarketCappedPriceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0086cf...51d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/) | Memecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x739739...791232`](./contracts/base-8453/0x7397390360bd9d559d9277e60d47b99933791232/) | MemecoinTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3aa39a...5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/) | Notifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x498581...652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c2112...5aca25`](./contracts/base-8453/0x4c211268cbf275637a8c235e63a26bc0e05aca25/) | PoolSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbd39c7...47fe55`](./contracts/base-8453/0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55/) | ReferralEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ea8b...ec60f3`](./contracts/base-8453/0x06ea8bd7476e370c919fa76f78eb08277aec60f3/) | TrustedSignerFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ff569...299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06a089...43d3a4`](./contracts/base-8453/0x06a089fa231aca48d2aa77365123ad9aca43d3a4/) | VirtualsVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a0436...70c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | WhitelistVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x656047...59f8b9`](./contracts/base-8453/0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9/) | ZoraVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=84

Zero-match audit list:

- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
