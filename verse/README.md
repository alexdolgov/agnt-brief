# Agentic Audit Brief: Verse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: Verse (`verse`)
- Website: [https://verse.bitcoin.com](https://verse.bitcoin.com)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: ethereum
- Contract surface: 104 unique implementations (179 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $424,910.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Verse. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- VerseToken (`0x249ca82617ec3dfb2589c4c17ab7ec9765350a18`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 104 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/56
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 104
- Raw deployments: 179
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 1.8% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VerseToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395721 | `0x249ca82617ec3dfb2589c4c17ab7ec9765350a18` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x09de4323c3cf8154006bd81b0953e554acf4aa4d`; ethereum `0x0c58579eceda5bfb87448da1f8bd6c99175640eb`; ethereum `0x108a24dc7d28cd69d95871aa1a2a70189345a71f`; ethereum `0x139769dc8fa06b0c428e756a8817da802a00c202`; ethereum `0x4690db9e2cc7b6717f5ede2bc39229f7249509aa`; ethereum `0x51caad9e1971a786cb6970a971570bcf1580b3a4`; ethereum `0x60cc8da9744ce1e9313bd9bf687b9ed935b6883a`; ethereum `0xbba7c5d42d9b5604964d81969a2ccf5a2191b93f`; ethereum `0xdf93053cb5158d6c279a18748d93757e4867c409`; ethereum `0xe5eaae4e7f5c9850237c8874e60a6e776a72b85e` | ⚠️ Unaudited |
| APYViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x81eed3dec7f7a9342ca2645a793962613f587526`; ethereum `0xd01f5e9cfb8396cdc3a8a4cfb4cf5dd33d0e005d` | ⚠️ Unaudited |
| BAGCOIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x808688c820ab080a6ff1019f03e5ec227d9b522b` | ⚠️ Unaudited |
| BitDex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafeb70ae58052456772f0d5e7a42e13fcd2a429e` | ⚠️ Unaudited |
| BurnEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b2a57de29e6d73650cb17b7710f2702b1f73cb8` | ⚠️ Unaudited |
| CalculateCloneAddress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957b9eef0ef6991b3cf8703703ba54126ef552a0` | ⚠️ Unaudited |
| CollectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a24c1989e5dff0de40f5804b47623b6b4300b04` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85eafc29690c6d64c8513499b6bea8864fbeb6d7` | ⚠️ Unaudited |
| DecimalPlaceHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa3b580d30c56580a04ac42646bc2d34fc3913983`; ethereum `0xfd9bced9b0027db9fa42ef0cca37c0d683b733c3` | ⚠️ Unaudited |
| DGBagToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bb3abdb312088b59e7e45a0540ccc48257fa597`; ethereum `0x735e4886dbaffd3bdbef2d00f70268de5556f6b1` | ⚠️ Unaudited |
| DGKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60287ef5487b01e3bef817e63f01ff5af917ce5` | ⚠️ Unaudited |
| DGLight | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b520c812e8430659fc9f12f6d0c39026c83588d` | ⚠️ Unaudited |
| DGTownHall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f81c790581b240a5c948afd173620ecc8c71c8d`; ethereum `0x5cdde785eeb4639adae95bc15955a5201e7eebc9` | ⚠️ Unaudited |
| LiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9961f05a53a1944001c0df650a5aff65b21a37d0` | ⚠️ Unaudited |
| LiquidityGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c306cad86550ec80d77668c0a8bee6eb34684b6` | ⚠️ Unaudited |
| LiquidityMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d467dd462e5732273953eba9ddfa9a9d85325ad` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef0d2f3a79b4338d8418003dd9df89281242063` | ⚠️ Unaudited |
| LiquidLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x34d62caf26ef43a0b20efe28eb1a22d14c222b9a`; ethereum `0x6c75ae327adb76814cf39863173be19de654719c`; ethereum `0x9399d46180c9f8c0018e4b8d610122496164f720`; ethereum `0xb86475c7cb1d10958cdfba14a11d94353e991604`; ethereum `0xcff8b3ea7acb5437c3495cb33e31c23e04328a07`; ethereum `0xe2ad2d0469165a386cb734b6921cb2e360f36518` | ⚠️ Unaudited |
| LiquidPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7fff62013c5d2bac440cc1b41692d67381fb23d` | ⚠️ Unaudited |
| LotteryETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46eb00d126d181341de6842de072907f1b537ea6`; ethereum `0xef897ae2477776131ef57aacae2cd10b574886fa` | ⚠️ Unaudited |
| MSG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0797307c0d897e439855157ed35d5075ae95d511` | ⚠️ Unaudited |
| NFTDealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x77130ef5124fa9c051bee3ee43498a0d2fa9f822`; ethereum `0xb2063afd93916c7af46f8e1ed6bc07c5ac386ed6`; ethereum `0xc4302a799d0b01e2b8cde0fe3eae38869b6b92bb`; ethereum `0xeeadee8e735e83276c5e3e0868b272759847b9f7` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x076546b64cbfc30e60a952bf9473d32288ed93f6`; ethereum `0x30c584ac2c3b9ac81d7dc6dc85955b59f800e58f`; ethereum `0x9d2fd301f9cf6d057049cd057d414c18f6c9cc89` | ⚠️ Unaudited |
| PositionNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x32e0a7f7c4b1a19594d25bd9b63eba912b1a5f61`; ethereum `0x9d6d4e2afab382ae9b52807a4b36a8d2afc78b07`; ethereum `0xda6c0b604405d8917cc7526d10ab4c3b959ed670` | ⚠️ Unaudited |
| PowerFarmNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2da2b30165b6d2728328d0edc391bed268e24c23`; ethereum `0x609fede276ef1c1313ae4e6cc221a2c8b3fe76e0`; ethereum `0xd29203c7aa1ab5c174d1d64b64416ebd50e7fa14` | ⚠️ Unaudited |
| PricingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x944455cab3af80bb1abded67ce573de27ddfdb1a` | ⚠️ Unaudited |
| RaidPartyInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6ea9ad24c07e0c49af88cc78f6a8ec352f0cac0e`; ethereum `0x766e26266a6e81d83fae8c551a27f6aaf68a460e`; ethereum `0xbf0d73d5735964989240a22ac8e4cee2c124a7ce`; ethereum `0xe61ab5b5348ee383561676d8b76353a9234d0179`; ethereum `0xeff20e35d9a1e6b3c1d8f4355fc0aec6b29e3a4f` | ⚠️ Unaudited |
| RefundSponsor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fc68dddb1bf4cb61307eef89729dc317f2325a` | ⚠️ Unaudited |
| SafeMathLibExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5139b176173ee182591c22c27b7a4de069ac99` | ⚠️ Unaudited |
| SDAIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e700c58063a85fc5e9fd702dc6cdbba3793af4d`; ethereum `0x9a8eaa4097102d3dd86f4b66904674f82522768e` | ⚠️ Unaudited |
| SimpleFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x17bdceec80d3506e384db09e5d5696edf70605ef`; ethereum `0x29e9c97de8e04a2f40508f9c379cf4f4d53447f6`; ethereum `0x42535f228897d309e644523189d44cff8a961dc7`; ethereum `0x4ba48df24008429ae9140a01e0d002f5fa6a125d`; ethereum `0x4e1f1206f2b9a651ecf2d49c5d33761861d4910c`; ethereum `0x4efff28192029bdb1ac027c53674721875da6b10`; ethereum `0x8295e4b84335af685e596dbcd76bbbbadbf88b01`; ethereum `0xc5af93687088c28da839371f3249df757b219aa8`; ethereum `0xcb2e16623b91dff38b7e5d8cb66631b375d71a0e`; ethereum `0xd920556b0f3522bb1257923292a256f1e3023e07`; ethereum `0xdd5a9eec299b74b2db2d3430608c1c5a8d9598eb`; ethereum `0xded0c22acd80e7a4bd6ec91ced451fc83f04cab2` | ⚠️ Unaudited |
| SimpleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x92de42edb383d05c7088648aabc71040e578e6e8`; ethereum `0xce12de1f4a98e6a8e1ae6170f3ccac8f83352dd5` | ⚠️ Unaudited |
| SwapsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95fdf39f44648a68f3bc5557b38a08233fc24a62`; ethereum `0xee3e9e46e34a27dc755a63e2849c9913ee1a06e2` | ⚠️ Unaudited |
| SwapsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e7707677043eb68864c719fd9de5f25aa7533bc`; ethereum `0xb4b0ea46fe0e9e8eab4afb765b527739f2718671` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x448795efed18c1927ca40c5ab9f98dafccf24225`; ethereum `0xe3c1ff5a831d682fa8aba468179bce2fde32b719` | ⚠️ Unaudited |
| TokenHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3554047c1d003847fc56d08d72c111083c0ef0d0`; ethereum `0x55df49b3f1adbad0e3543cd6f5114d35ee1d5422`; ethereum `0x998a1ab449595f996bd932964260f0f102d1e4a2` | ⚠️ Unaudited |
| TokenKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84111e308f3abb920d9f1449fd553a26eb8367db` | ⚠️ Unaudited |
| TokenProfit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10462091cb40f33eeb18541723b0ae4474c0c8ae`; ethereum `0x87a567060769348c7ff1836e4497b84f844ba99b` | ⚠️ Unaudited |
| TypeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb5537e7301660e3e48f0d6f3feace462684e9b` | ⚠️ Unaudited |
| VaultWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7bbef22955ceee1e7060e20056dc20efec4c213`; ethereum `0xf285ae1ddace607838e1cd8bdb83c0b113843ba3` | ⚠️ Unaudited |
| VaultWrapperSky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9680835591125ec533574610290003043a60fb` | ⚠️ Unaudited |
| VerseAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06accc171c371fdb01157d2e1e4aa95bfe644e6a` | ⚠️ Unaudited |
| VerseBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b089972c36578cf6eab8e7f2dad3b63c27bee07` | ⚠️ Unaudited |
| WBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0db00d79e60eaf3d5053f8b2b2831b46d686b1bd`; ethereum `0x147bd381911477096583182d6243f9cfc92ca1e9`; ethereum `0x6404c85947475f587a0a6aaa0b7c8d27d5bfb7c8`; ethereum `0x96ff7a7c519cdec9e42280c93cb0e32bcecd4e65`; ethereum `0xb88c8992da38a1484c15b625699b0f8c0e4f6f69` | ⚠️ Unaudited |
| WethCustomOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dba84a0454289f8ab534d4c083d72e0c14a0f66` | ⚠️ Unaudited |
| WiseInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7924a6d4d5994cae4c82481eee253e342437e656` | ⚠️ Unaudited |
| WiseLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x37e49bf3749513a02fa535f0cbc383796e8107e4`; ethereum `0x84524baa1951247b3a2617a843e6ece915bb9674`; ethereum `0x9f0f51d6358b4bbbe6d7d392000c7969b391d85c`; ethereum `0xbe30077a54c2f5d4d2f3a8820fdf763f8767160f` | ⚠️ Unaudited |
| WiseLendingTVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ff816d4204d7fff991ebcbc1c8d164ba36ecf6` | ⚠️ Unaudited |
| WiseOracleHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11d5f50a64f5b4f8d3f17f9214591dfcea0e303c`; ethereum `0xd2caa748b66768ac9c53a5443225bdf1365dd4b6`; ethereum `0xf8a8eae0206d36b9ac87eaa9a229047085af0178` | ⚠️ Unaudited |
| WiserStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0dec0f2df3abaed730d42e3c54835ed58b739eba`; ethereum `0xee99795c423eddbaf9ad4c31a8185cf355750497` | ⚠️ Unaudited |
| WiseSecurity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f8b6c17c3a6ef18b5711f9b562940990658400d`; ethereum `0x829c3ae2e82760ecead0f384918a650f8a31ba18`; ethereum `0xbe0270850667439e7b815ad4c13b2dfe83acdf32` | ⚠️ Unaudited |
| WiseStakingNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4909846842a063de5b07e1b1cbf3e96b25a4fd65`; ethereum `0xc42433fe111153977e9493a66fa428662e64bf4b`; ethereum `0xf863a603501fcd30f56dffcb6700a25effefbe94` | ⚠️ Unaudited |
| WiseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1def8c947adc6e2962259a2ce0f1bf590ba8b92f`; ethereum `0x66a0f676479cee1d7373f3dc2e2952778bff5bd6`; ethereum `0xa2e3ada46947fe93c16e7707283127f4c716b315`; ethereum `0xec2da8db094cc7c510f8a839b6b9c4747506a2bf` | ⚠️ Unaudited |
| wstETHManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x63faf7bb2e6fc14619441cc9ba64c4eaf54a60ac`; ethereum `0x9d12d473f00b9888e8254274fabcd29526db37ca`; ethereum `0xaa4aef3de98a0336928e949a8be405c1175ac1be`; ethereum `0xd32e94acf185c9b12a8a9fbf0c3d3e7891dc479a` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6ddc4e31059867897957faf409b4e4b873190398`; ethereum `0x93aa80f36b6080fc04440f2b6289cbf6fa1d63fc`; ethereum `0x9ab8a49677a20fc0cc694479df4462a82b4cc1c4`; ethereum `0xc42e9f1aa22f78bc585e6911424c6b4936674e08` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c4f00f928e70845cee2886c0e8eaf0574c650b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fb7c346a9f34c1b2d57a46f8b498a5b603c1f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15729acc89f00cde5aa08685444f296f91e390c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178efff26278e367cd42e049458b9442dc287f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19c97f7c71ad3a76483c9da70914949d559b0138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a38870d922a53a46899c582442d6ede3a791a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e940ab19d6d2935aa3116a5d05535ada7ef690e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2437afe222c6fc258fe4194a18a9ea7682c6f77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dedcda70c6724a5833a8e07c0103c0e5face529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30621f688e34ffbebc848ff47fccf84d6f2b0408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3489a8cc6923bd2e88a2835509eb1241b737929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ae0be093a2c82c63aaf763abb94b8343b56241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd4a56a9bac113d1636de4befcb329cd689df9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44cd20cecd1e8466477f2f11aa207f2623ebff17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46379639ae4bf1d21a97d6a5cdcbee557ea35fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a34870bc63d91396df1c723f807e8fd7f483c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a153378ba593132e32b2452bf4ed3ca63ec075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f491d389a5bf7c56bd1e4d8af2280fd217c8543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d2a2898962599ee7cee081ba4ad826412e9380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5214a738389192eb18980488f44bd45241999042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563ecdc511efe0d564f5a586a6d6e6ca633b9e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59bddab3e5115a1678e6314584d0d1bc2737381e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6071fc2990b4c6e594c6489ea4cfb66a2f410f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6139cf331c38a084aac5d84ad3aac41c98fe6c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b55165f666a90e49a3261f697577135b22f0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638c27794fc28ed00b16d045c6e81ffe869d07ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69656374d43a13e5215af7088f826e538abfa9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a9064a4b855a7d6362ea66e9e5f14c3425fc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0f51c63b1b7d0c2246fe24a653f2c0eb74dd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a111479c60209b39284e1d74de1b18fe3a3c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4baf7026f5e24580eaa512a006874c2a5e1501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf50a2f1b687b6fb59906223684cc40a62f026c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b872eaeadcd890e0f75c78a2e2d5c4d5d442dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c6d046cb4830bd84e388e08a7c6dac897255e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9506720d769b0eb11b94b8280176df705431497f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa03594ade98801fba4c0f4f73eba95eeea3d5b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07b929556db4d393a3805a5712589db8f8ad501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4032832ac9d9cc42666b389664a336926f5d367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ba62fc84660443f24999ce5679e84ba4ddf08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba5851d041540461f0e2b785ad97e0f2d2576cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad649227459960a27a34f1583965c590b99c0598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb74480d5672f0a183309988797c60fa1b2643ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb67be4d8ce2375706233f00b78f7e062ec516bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde39dd59f3e3525bace5e7718a70d5646d20f14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf196f3baeca704f13fa36f709d71daaf486a8377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd28f809e48331924eade0363370e0cf1fd61da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe441b0b26178fa030547bf8e98f855a5dd3ac82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfed1a3ce7307ad98228e6628ab89663713e18ffc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 178
- Live contracts: 0
- Unknown liveness contracts: 178
- Source-verified contracts: 130
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=15, contamination review=38, source verified unclassified=77, unverified unclassified=48

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | SimpleFarm<br>`0x17bdceec80d3506e384db09e5d5696edf70605ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x29e9c97de8e04a2f40508f9c379cf4f4d53447f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x42535f228897d309e644523189d44cff8a961dc7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x4ba48df24008429ae9140a01e0d002f5fa6a125d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x4e1f1206f2b9a651ecf2d49c5d33761861d4910c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x4efff28192029bdb1ac027c53674721875da6b10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0x8295e4b84335af685e596dbcd76bbbbadbf88b01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0xc5af93687088c28da839371f3249df757b219aa8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0xcb2e16623b91dff38b7e5d8cb66631b375d71a0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0xd920556b0f3522bb1257923292a256f1e3023e07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0xdd5a9eec299b74b2db2d3430608c1c5a8d9598eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SimpleFarm<br>`0xded0c22acd80e7a4bd6ec91ced451fc83f04cab2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SwapsFactory<br>`0xee3e9e46e34a27dc755a63e2849c9913ee1a06e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | SwapsRouter<br>`0xb4b0ea46fe0e9e8eab4afb765b527739f2718671` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| candidate review | VaultWrapperSky<br>`0x4a9680835591125ec533574610290003043a60fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | Adapter<br>`0x09de4323c3cf8154006bd81b0953e554acf4aa4d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | APYViewer<br>`0x81eed3dec7f7a9342ca2645a793962613f587526` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | BAGCOIN<br>`0x808688c820ab080a6ff1019f03e5ec227d9b522b` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | BitDex<br>`0xafeb70ae58052456772f0d5e7a42e13fcd2a429e` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | BurnEngine<br>`0x6b2a57de29e6d73650cb17b7710f2702b1f73cb8` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | CalculateCloneAddress<br>`0x957b9eef0ef6991b3cf8703703ba54126ef552a0` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | CollectorETH<br>`0x4a24c1989e5dff0de40f5804b47623b6b4300b04` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | Crowdsale<br>`0x85eafc29690c6d64c8513499b6bea8864fbeb6d7` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | DGBagToken<br>`0x3bb3abdb312088b59e7e45a0540ccc48257fa597` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | DGKeeper<br>`0xe60287ef5487b01e3bef817e63f01ff5af917ce5` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | DGLight<br>`0x4b520c812e8430659fc9f12f6d0c39026c83588d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | DGTownHall<br>`0x4f81c790581b240a5c948afd173620ecc8c71c8d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LiquidFactory<br>`0x9961f05a53a1944001c0df650a5aff65b21a37d0` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LiquidityGuard<br>`0x9c306cad86550ec80d77668c0a8bee6eb34684b6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LiquidityTransformer<br>`0xfef0d2f3a79b4338d8418003dd9df89281242063` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LiquidLocker<br>`0x34d62caf26ef43a0b20efe28eb1a22d14c222b9a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LiquidPool<br>`0xf7fff62013c5d2bac440cc1b41692d67381fb23d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | LotteryETH<br>`0x46eb00d126d181341de6842de072907f1b537ea6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | NFTDealer<br>`0x77130ef5124fa9c051bee3ee43498a0d2fa9f822` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | PricingOracle<br>`0x944455cab3af80bb1abded67ce573de27ddfdb1a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | RaidPartyInsurance<br>`0x6ea9ad24c07e0c49af88cc78f6a8ec352f0cac0e` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | RefundSponsor<br>`0xc3fc68dddb1bf4cb61307eef89729dc317f2325a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | SimpleManager<br>`0x92de42edb383d05c7088648aabc71040e578e6e8` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | SwapsFactory<br>`0x95fdf39f44648a68f3bc5557b38a08233fc24a62` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | SwapsRouter<br>`0x8e7707677043eb68864c719fd9de5f25aa7533bc` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | TokenHub<br>`0x3554047c1d003847fc56d08d72c111083c0ef0d0` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | TokenKeeper<br>`0x84111e308f3abb920d9f1449fd553a26eb8367db` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | TokenProfit<br>`0x10462091cb40f33eeb18541723b0ae4474c0c8ae` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | VaultWrapper<br>`0xa7bbef22955ceee1e7060e20056dc20efec4c213` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | VerseAirdrop<br>`0x06accc171c371fdb01157d2e1e4aa95bfe644e6a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | VerseBalances<br>`0x3b089972c36578cf6eab8e7f2dad3b63c27bee07` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WethCustomOracle<br>`0x7dba84a0454289f8ab534d4c083d72e0c14a0f66` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiseInsurance<br>`0x7924a6d4d5994cae4c82481eee253e342437e656` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiseLending<br>`0x37e49bf3749513a02fa535f0cbc383796e8107e4` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiseLendingTVL<br>`0x72ff816d4204d7fff991ebcbc1c8d164ba36ecf6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiseOracleHub<br>`0x11d5f50a64f5b4f8d3f17f9214591dfcea0e303c` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiserStaking<br>`0x0dec0f2df3abaed730d42e3c54835ed58b739eba` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| contamination review | WiseSecurity<br>`0x5f8b6c17c3a6ef18b5711f9b562940990658400d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x0c58579eceda5bfb87448da1f8bd6c99175640eb` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x108a24dc7d28cd69d95871aa1a2a70189345a71f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x139769dc8fa06b0c428e756a8817da802a00c202` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x4690db9e2cc7b6717f5ede2bc39229f7249509aa` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x51caad9e1971a786cb6970a971570bcf1580b3a4` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0x60cc8da9744ce1e9313bd9bf687b9ed935b6883a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0xbba7c5d42d9b5604964d81969a2ccf5a2191b93f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0xdf93053cb5158d6c279a18748d93757e4867c409` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Adapter<br>`0xe5eaae4e7f5c9850237c8874e60a6e776a72b85e` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | APYViewer<br>`0xd01f5e9cfb8396cdc3a8a4cfb4cf5dd33d0e005d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | DecimalPlaceHolder<br>`0xa3b580d30c56580a04ac42646bc2d34fc3913983` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | DecimalPlaceHolder<br>`0xfd9bced9b0027db9fa42ef0cca37c0d683b733c3` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | DGBagToken<br>`0x735e4886dbaffd3bdbef2d00f70268de5556f6b1` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | DGTownHall<br>`0x5cdde785eeb4639adae95bc15955a5201e7eebc9` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidityMaker<br>`0x2d467dd462e5732273953eba9ddfa9a9d85325ad` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidLocker<br>`0x6c75ae327adb76814cf39863173be19de654719c` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidLocker<br>`0x9399d46180c9f8c0018e4b8d610122496164f720` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidLocker<br>`0xb86475c7cb1d10958cdfba14a11d94353e991604` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidLocker<br>`0xcff8b3ea7acb5437c3495cb33e31c23e04328a07` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LiquidLocker<br>`0xe2ad2d0469165a386cb734b6921cb2e360f36518` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | LotteryETH<br>`0xef897ae2477776131ef57aacae2cd10b574886fa` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | MSG<br>`0x0797307c0d897e439855157ed35d5075ae95d511` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | NFTDealer<br>`0xb2063afd93916c7af46f8e1ed6bc07c5ac386ed6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | NFTDealer<br>`0xc4302a799d0b01e2b8cde0fe3eae38869b6b92bb` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | NFTDealer<br>`0xeeadee8e735e83276c5e3e0868b272759847b9f7` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PoolFactory<br>`0x076546b64cbfc30e60a952bf9473d32288ed93f6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PoolFactory<br>`0x30c584ac2c3b9ac81d7dc6dc85955b59f800e58f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PoolFactory<br>`0x9d2fd301f9cf6d057049cd057d414c18f6c9cc89` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PositionNFTs<br>`0x32e0a7f7c4b1a19594d25bd9b63eba912b1a5f61` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PositionNFTs<br>`0x9d6d4e2afab382ae9b52807a4b36a8d2afc78b07` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PositionNFTs<br>`0xda6c0b604405d8917cc7526d10ab4c3b959ed670` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PowerFarmNFTs<br>`0x2da2b30165b6d2728328d0edc391bed268e24c23` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PowerFarmNFTs<br>`0x609fede276ef1c1313ae4e6cc221a2c8b3fe76e0` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | PowerFarmNFTs<br>`0xd29203c7aa1ab5c174d1d64b64416ebd50e7fa14` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | RaidPartyInsurance<br>`0x766e26266a6e81d83fae8c551a27f6aaf68a460e` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | RaidPartyInsurance<br>`0xbf0d73d5735964989240a22ac8e4cee2c124a7ce` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | RaidPartyInsurance<br>`0xe61ab5b5348ee383561676d8b76353a9234d0179` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | RaidPartyInsurance<br>`0xeff20e35d9a1e6b3c1d8f4355fc0aec6b29e3a4f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | SafeMathLibExt<br>`0xda5139b176173ee182591c22c27b7a4de069ac99` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | SDAIOracle<br>`0x6e700c58063a85fc5e9fd702dc6cdbba3793af4d` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | SDAIOracle<br>`0x9a8eaa4097102d3dd86f4b66904674f82522768e` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | SimpleManager<br>`0xce12de1f4a98e6a8e1ae6170f3ccac8f83352dd5` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Token<br>`0x448795efed18c1927ca40c5ab9f98dafccf24225` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | Token<br>`0xe3c1ff5a831d682fa8aba468179bce2fde32b719` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | TokenHub<br>`0x55df49b3f1adbad0e3543cd6f5114d35ee1d5422` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | TokenHub<br>`0x998a1ab449595f996bd932964260f0f102d1e4a2` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | TokenProfit<br>`0x87a567060769348c7ff1836e4497b84f844ba99b` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | TypeToken<br>`0xfcb5537e7301660e3e48f0d6f3feace462684e9b` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | VaultWrapper<br>`0xf285ae1ddace607838e1cd8bdb83c0b113843ba3` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WBTCOracle<br>`0x0db00d79e60eaf3d5053f8b2b2831b46d686b1bd` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WBTCOracle<br>`0x147bd381911477096583182d6243f9cfc92ca1e9` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WBTCOracle<br>`0x6404c85947475f587a0a6aaa0b7c8d27d5bfb7c8` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WBTCOracle<br>`0x96ff7a7c519cdec9e42280c93cb0e32bcecd4e65` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WBTCOracle<br>`0xb88c8992da38a1484c15b625699b0f8c0e4f6f69` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseLending<br>`0x84524baa1951247b3a2617a843e6ece915bb9674` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseLending<br>`0x9f0f51d6358b4bbbe6d7d392000c7969b391d85c` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseLending<br>`0xbe30077a54c2f5d4d2f3a8820fdf763f8767160f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseOracleHub<br>`0xd2caa748b66768ac9c53a5443225bdf1365dd4b6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseOracleHub<br>`0xf8a8eae0206d36b9ac87eaa9a229047085af0178` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiserStaking<br>`0xee99795c423eddbaf9ad4c31a8185cf355750497` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseSecurity<br>`0x829c3ae2e82760ecead0f384918a650f8a31ba18` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseSecurity<br>`0xbe0270850667439e7b815ad4c13b2dfe83acdf32` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseStakingNFT<br>`0x4909846842a063de5b07e1b1cbf3e96b25a4fd65` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseStakingNFT<br>`0xc42433fe111153977e9493a66fa428662e64bf4b` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseStakingNFT<br>`0xf863a603501fcd30f56dffcb6700a25effefbe94` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseToken<br>`0x1def8c947adc6e2962259a2ce0f1bf590ba8b92f` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseToken<br>`0x66a0f676479cee1d7373f3dc2e2952778bff5bd6` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseToken<br>`0xa2e3ada46947fe93c16e7707283127f4c716b315` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WiseToken<br>`0xec2da8db094cc7c510f8a839b6b9c4747506a2bf` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | wstETHManager<br>`0x63faf7bb2e6fc14619441cc9ba64c4eaf54a60ac` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | wstETHManager<br>`0x9d12d473f00b9888e8254274fabcd29526db37ca` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | wstETHManager<br>`0xaa4aef3de98a0336928e949a8be405c1175ac1be` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | wstETHManager<br>`0xd32e94acf185c9b12a8a9fbf0c3d3e7891dc479a` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WstETHOracle<br>`0x6ddc4e31059867897957faf409b4e4b873190398` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WstETHOracle<br>`0x93aa80f36b6080fc04440f2b6289cbf6fa1d63fc` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WstETHOracle<br>`0x9ab8a49677a20fc0cc694479df4462a82b4cc1c4` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| source verified unclassified | WstETHOracle<br>`0xc42e9f1aa22f78bc585e6911424c6b4936674e08` | non_address_book | unknown | unknown | verified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x02c4f00f928e70845cee2886c0e8eaf0574c650b` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x0fb7c346a9f34c1b2d57a46f8b498a5b603c1f6c` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x15729acc89f00cde5aa08685444f296f91e390c4` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x178efff26278e367cd42e049458b9442dc287f55` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x19c97f7c71ad3a76483c9da70914949d559b0138` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x1a38870d922a53a46899c582442d6ede3a791a70` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x1e940ab19d6d2935aa3116a5d05535ada7ef690e` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x2437afe222c6fc258fe4194a18a9ea7682c6f77d` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x2dedcda70c6724a5833a8e07c0103c0e5face529` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x30621f688e34ffbebc848ff47fccf84d6f2b0408` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x3489a8cc6923bd2e88a2835509eb1241b737929f` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x34ae0be093a2c82c63aaf763abb94b8343b56241` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x3bd4a56a9bac113d1636de4befcb329cd689df9e` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x44cd20cecd1e8466477f2f11aa207f2623ebff17` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x46379639ae4bf1d21a97d6a5cdcbee557ea35fde` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x47a34870bc63d91396df1c723f807e8fd7f483c8` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x4a153378ba593132e32b2452bf4ed3ca63ec075d` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x4f491d389a5bf7c56bd1e4d8af2280fd217c8543` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x51d2a2898962599ee7cee081ba4ad826412e9380` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x5214a738389192eb18980488f44bd45241999042` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x563ecdc511efe0d564f5a586a6d6e6ca633b9e68` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x59bddab3e5115a1678e6314584d0d1bc2737381e` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x6071fc2990b4c6e594c6489ea4cfb66a2f410f26` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x6139cf331c38a084aac5d84ad3aac41c98fe6c84` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x62b55165f666a90e49a3261f697577135b22f0ac` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x638c27794fc28ed00b16d045c6e81ffe869d07ff` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x69656374d43a13e5215af7088f826e538abfa9a3` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x69a9064a4b855a7d6362ea66e9e5f14c3425fc92` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x6b0f51c63b1b7d0c2246fe24a653f2c0eb74dd60` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x73a111479c60209b39284e1d74de1b18fe3a3c0c` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x7b4baf7026f5e24580eaa512a006874c2a5e1501` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x7bf50a2f1b687b6fb59906223684cc40a62f026c` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x8b872eaeadcd890e0f75c78a2e2d5c4d5d442dfd` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x8c6d046cb4830bd84e388e08a7c6dac897255e39` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0x9506720d769b0eb11b94b8280176df705431497f` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xa03594ade98801fba4c0f4f73eba95eeea3d5b3c` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xa07b929556db4d393a3805a5712589db8f8ad501` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xa4032832ac9d9cc42666b389664a336926f5d367` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xa5ba62fc84660443f24999ce5679e84ba4ddf08a` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xaba5851d041540461f0e2b785ad97e0f2d2576cc` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xad649227459960a27a34f1583965c590b99c0598` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xb74480d5672f0a183309988797c60fa1b2643ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xcb67be4d8ce2375706233f00b78f7e062ec516bb` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xde39dd59f3e3525bace5e7718a70d5646d20f14e` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xf196f3baeca704f13fa36f709d71daaf486a8377` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xfd28f809e48331924eade0363370e0cf1fd61da1` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xfe441b0b26178fa030547bf8e98f855a5dd3ac82` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |
| unverified unclassified | UnnamedContract<br>`0xfed1a3ce7307ad98228e6628ab89663713e18ffc` | non_address_book | unknown | unknown | unverified | n/a | `0x641ad78baca220c5bd28b51ce8e0f495e85fe689` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bitcoin.com_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/bitcoin.com/Bitcoin.com_final-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [skynet.certik.com/projects/bitcoin-com](https://skynet.certik.com/projects/bitcoin-com) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [verse-security-audit.pdf](https://www.getverse.com/verse-security-audit.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [single-token-lp-audit.pdf](https://verse.bitcoin.com/single-token-lp-audit.pdf) | Chainsulting | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [dynamic-rewards-farming-audit.pdf](https://verse.bitcoin.com/dynamic-rewards-farming-audit.pdf) | Softstack | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14107] Bitcoin.com_final-audit-report.pdf — no match: Scope table lists 4 contracts: SwapsFactory, SwapsPair, SwapsRouter, SwapsERC20. Audit date range 2022-02-11 to 2022-02-14, end date used.
- [14108] skynet.certik.com/projects/bitcoin-com — no match: Only SimpleFarm.sol is explicitly listed as an assessed contract. IERC20.sol and SafeERC20.sol are listed under 'Audited Files' but are likely dependencies, not primary scope contracts.
- [14109] verse-security-audit.pdf — matched: Scope explicitly mentions VerseToken and VerseClaimer contracts. Audit date from cover page.
- [14110] single-token-lp-audit.pdf — no match: All contracts listed in 'Source Unites in Scope' table and 'Tested Contract Files' section. Audit date from cover page and version history.
- [14111] dynamic-rewards-farming-audit.pdf — no match: Two contracts in scope: TokenWrapper and DynamicRewardFarm. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bitcoin.com_final-audit-report.pdf | SwapsFactory | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsPair | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsRouter | unmatched — not counted | — | listed in scope table | no |
| Bitcoin.com_final-audit-report.pdf | SwapsERC20 | unmatched — not counted | — | listed in scope table | no |
| skynet.certik.com/projects/bitcoin-com | SimpleFarm | unmatched — not counted | — | Listed under 'Assessed Contracts' as SimpleFarm.sol | no |
| verse-security-audit.pdf | VerseToken | own contract | VerseToken (selected) `0x249ca82617ec3dfb2589c4c17ab7ec9765350a18` — deployed 2022-12-07 03:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| verse-security-audit.pdf | VerseClaimer | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityMaker | unmatched — not counted | — | listed in scope and findings | no |
| single-token-lp-audit.pdf | LiquidityHelper | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsFactory | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsPair | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| single-token-lp-audit.pdf | ISwapsRouter | unmatched — not counted | — | listed in scope | no |
| dynamic-rewards-farming-audit.pdf | TokenWrapper | unmatched — not counted | — | Listed in scope table and tested contract files | no |
| dynamic-rewards-farming-audit.pdf | DynamicRewardFarm | unmatched — not counted | — | Listed in scope table and tested contract files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [14107] Bitcoin.com_final-audit-report.pdf
- [14108] skynet.certik.com/projects/bitcoin-com
- [14110] single-token-lp-audit.pdf
- [14111] dynamic-rewards-farming-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
