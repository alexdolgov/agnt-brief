# Agentic Audit Brief: FireBot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: FireBot (`firebot`)
- Website: [https://firebot.gg](https://firebot.gg)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 91 unique implementations (208 raw deployments)
- Coverage basis: 1/7 confirmed own live verified implementations (14.3%); conservative 14.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,357,511.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for FireBot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, polygon. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), erc20permit (3), ownable (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf9680d...205945`, chain 1)
- UnnamedContract (`0x10f964...da5e6a`, chain 137)
- UnnamedContract (`0xab5946...862de0`, chain 137)
- UnnamedContract (`0xc907e1...d57f6f`, chain 137)
- FirePool (`0xe20e04...670234`, chain 137)
- FireVaultEP (`0xa2b205...8e5cc3`, chain 137)
- FireVaultFBXV2 (`0x960d43...14dfbe`, chain 137)
- FUSDv2 (`0x3c56f0...563a99`, chain 137)
- Pyromancy (`0xea459c...bf370a`, chain 137)
- UniswapV2Pair (`0x1000bb...1eb8f9`, chain 137)
- UniswapV2Pair (`0xe7b7cf...5a5bed`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/7 (14.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 11 of 91 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/71
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 91
- Raw deployments: 208
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| RedTiger | Tier 2 | 1 | 1.4% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FireVaultEP | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239909 | `0xa2b205...8e5cc3` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17b509...a8e821` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0551ea...443815` | ⚠️ Unaudited |
| BurnerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x188cd8...f264d2`; polygon `0x862661...9232cc` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1f7190...676856`; polygon `0x4a900f...6df6f3` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x841e38...efb1d7` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2f4eaf...ef4ed0`; polygon `0x72874c...ba5e45` | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaeb318...409a07` | ⚠️ Unaudited |
| DynamicCryptoIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xc91953...0763fc`; polygon `0xfae813...99c488` | ⚠️ Unaudited |
| ElementalParticles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x031509...263fd8`; polygon `0x0a68d4...78ee04`; polygon `0x0ebbb5...4c752e`; polygon `0x0f9f54...120d01`; polygon `0x29bef7...0e5481`; polygon `0x4b63fe...905d2d`; polygon `0x5f7a5f...5faa62`; polygon `0x60ed6a...751af2`; polygon `0x7087fd...46b459`; polygon `0x898fa6...665234`; polygon `0xa476a9...d26f1e`; polygon `0xc16a31...e2b83b`; polygon `0xd1ed84...56fc09`; polygon `0xf581bd...7767ab`; polygon `0xf91d99...202dcb`; polygon `0xfb0f33...52f504` | ⚠️ Unaudited |
| EPSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x2918ea...e41402`; polygon `0x5b7c2b...b991c7`; polygon `0x814dbf...c99b28`; polygon `0x85658c...e81f76`; polygon `0xa82474...c30f6f`; polygon `0xbc036d...6c0066` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x92a918...6c62c9`; polygon `0xf65c47...f57ab8` | ⚠️ Unaudited |
| FBX_WETH_LP_Farm | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c1bfe...e8d6ee` | ⚠️ Unaudited |
| FireBondETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xd1aad9...ee8f3e`; polygon `0xf1e32e...a236b6` | ⚠️ Unaudited |
| FireBot_Bulksender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x1e9bba...9b06a0`; polygon `0xc85285...4cde90` | ⚠️ Unaudited |
| firebot_market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x02e219...31dd86`; polygon `0x242fa7...af9538`; polygon `0xd709e1...d2d0bd` | ⚠️ Unaudited |
| FireBotGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c10db...9ae457` | ⚠️ Unaudited |
| FireBotItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e3c74...3c89da` | ⚠️ Unaudited |
| FireBotItemsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e1452...d6176e` | ⚠️ Unaudited |
| firebotMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xc99567...c1d334`; polygon `0xf312bf...7eb39c` | ⚠️ Unaudited |
| FireBotPromoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x814a9f...831a4f`; polygon `0xd3ec89...1cf109` | ⚠️ Unaudited |
| FireBots | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9eee7...333295` | ⚠️ Unaudited |
| FireBotStakedEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd16780...84acec` | ⚠️ Unaudited |
| FireBotToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd12544...6f8218` | ⚠️ Unaudited |
| FireLabsAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x94d072...3f48d2`; polygon `0xc0c17b...3302cd`; polygon `0xf73e17...a33c41` | ⚠️ Unaudited |
| FireLabsTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x003e00...6daca9`; polygon `0x029aa8...f3cd5b`; polygon `0x07f061...fb77d0`; polygon `0x88f4cc...f54e18`; polygon `0xb3daf9...8f8c9a` | ⚠️ Unaudited |
| FireLabsUniversalStableDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x3e277e...8d3e29`; polygon `0x4a681e...1455fa`; polygon `0x63c69b...d2aa3d`; polygon `0xbf6a08...5fd3d2`; polygon `0xde4577...e64b69`; polygon `0xeb7962...af077a` | ⚠️ Unaudited |
| FireLabsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x15a20c...cf3b2e`; polygon `0x519901...b6326f`; polygon `0xa4e2a0...585abb`; polygon `0xa865da...7ae725` | ⚠️ Unaudited |
| FirePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: polygon `0x0170c4...1836a8`; polygon `0x0f4279...c0309c`; polygon `0x18a7b3...a3e1bd`; polygon `0x447cff...3e74b2`; polygon `0x49d1d8...0ef0c4`; polygon `0x4f65a0...1a49de`; polygon `0x6eca89...350311`; polygon `0x7b354f...38d7b5`; polygon `0x81110e...0eb1e0`; polygon `0xccc2cb...cf3311` | ⚠️ Unaudited |
| FirePool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239912 | `0xe20e04...670234` | ⚠️ Unaudited |
| FireVaultEP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x3d1615...5b15b5`; polygon `0x66cf89...c24094`; polygon `0xcf93d1...720843` | ⚠️ Unaudited |
| FireVaultFBX | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0xa461b5...cf132b`; polygon `0xd3368e...a78e75`; polygon `0xe344db...127b9a` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 17 deployments: polygon `0x09083f...91c049`; polygon `0x098534...a6d4df`; polygon `0x0f3226...8b22d9`; polygon `0x2b5f17...1ded23`; polygon `0x30f096...0bd486`; polygon `0x364663...abbf56`; polygon `0x4758d9...e16044`; polygon `0x651042...cd9047`; polygon `0x65b8e5...7f936d`; polygon `0x77ff4f...583348`; polygon `0x869f1e...8e241b`; polygon `0x9bf581...9c14c7`; polygon `0xa163f1...8f5cfe`; polygon `0xd0e489...e7c271`; polygon `0xda6167...7046d1`; polygon `0xe44f4e...05f5f8`; polygon `0xf584be...4ef875` | ⚠️ Unaudited |
| FireVaultFBXV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-239908 | `0x960d43...14dfbe` | ⚠️ Unaudited |
| FireVaultFBXV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d979f...022594` | ⚠️ Unaudited |
| FireVaultFBXV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ccfb7...067577` | ⚠️ Unaudited |
| FUSDv1ToV2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x37852b...ff7901`; polygon `0x570ed0...37dd27`; polygon `0x7db8ea...fe82fb` | ⚠️ Unaudited |
| FUSDv2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-239907 | `0x3c56f0...563a99` | ⚠️ Unaudited |
| FUSDv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x9ac98c...2ec2c7`; polygon `0xcafab3...550531`; polygon `0xef2a8e...b3562a` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x7a5475...b5d837`; polygon `0xf03d69...e9ae50` | ⚠️ Unaudited |
| item_selector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad79b4...76dcf0` | ⚠️ Unaudited |
| item_vault_swap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc82669...cf4910` | ⚠️ Unaudited |
| LPFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x257793...4c6626` | ⚠️ Unaudited |
| Migrations | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dcfd6...25a5fc` | ⚠️ Unaudited |
| NoLossRoulette | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc2d93...6e246a` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x126739...008592` | ⚠️ Unaudited |
| OracleLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa347ea...7e4c84` | ⚠️ Unaudited |
| Pyromancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x3be8ff...262701`; polygon `0x6a5f24...694f5e`; polygon `0xd72c96...0ee643` | ⚠️ Unaudited |
| Pyromancy | unknown | project_anchor | own_supporting | 0 | polygon | unit-239914 | `0xea459c...bf370a` | ⚠️ Unaudited |
| PyromancyBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dc9cf...00c5f4` | ⚠️ Unaudited |
| PyromancyEPDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd06bd0...37a65b` | ⚠️ Unaudited |
| PyromancyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb8364...650067` | ⚠️ Unaudited |
| RefToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: polygon `0x055fa3...ff8bb5`; polygon `0x0d0c7e...343e94`; polygon `0x13d9bb...292e4d`; polygon `0x1aca6c...790a4e`; polygon `0x1c6bcf...7baab5`; polygon `0x587290...b06798`; polygon `0x5f403d...402beb`; polygon `0x6c1338...49e57f`; polygon `0x7a0412...0e9b08`; polygon `0x7fc0fd...d6cfdc`; polygon `0x995491...316855`; polygon `0xc5d5a5...48fca0`; polygon `0xc7f694...cfbd7d` | ⚠️ Unaudited |
| Sweeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x21406a...58b82e`; polygon `0x6fd632...ad8092`; polygon `0x962555...3b4d38`; polygon `0xa2632d...7212a6`; polygon `0xca1e9c...a1eecb`; polygon `0xcdac1c...59a35e`; polygon `0xef2cb1...dedf00`; polygon `0xf3c6a4...b5058c` | ⚠️ Unaudited |
| SweeepETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x917c84...7a62a3` | ⚠️ Unaudited |
| SweeepZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x07a9aa...a574e2`; polygon `0x2d1f90...21f116`; polygon `0x8cb0c6...ec0aeb` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xefb4ff...994740` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x5ae2fe...fb5cda`; polygon `0x6365b8...cbb807` | ⚠️ Unaudited |
| TransmuterFBXtoDCI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x0d5ae7...4e51ad`; polygon `0x3faf58...d66148`; polygon `0xbc62a9...332285`; polygon `0xc0629a...69347a`; polygon `0xc3af5a...46e65e`; polygon `0xcc1cea...f549b1`; polygon `0xfb9871...5fc72c` | ⚠️ Unaudited |
| TransmuterFBXtoFUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x497407...92d791` | ⚠️ Unaudited |
| TransmuterFUSDtoFBX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cdb53...f26525` | ⚠️ Unaudited |
| TransmuterFUSDtoFBXZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe74cc1...490e7e` | ⚠️ Unaudited |
| TransmuterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0039a4...4d13ce` | ⚠️ Unaudited |
| TransmuterZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafac5d...dfe159` | ⚠️ Unaudited |
| TransmuterZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x129a30...502add`; polygon `0x703968...160548`; polygon `0xbb6b85...23cb26`; polygon `0xea81f7...f14d8d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | polygon | unit-239905 | `0x1000bb...1eb8f9` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x41d9de...95e397`; polygon `0xcffbfa...fe8a77` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | polygon | unit-239913 | `0xe7b7cf...5a5bed` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x6c14fa...2d56df`; polygon `0x9da4de...1f2f1c`; polygon `0xa6b96e...3a29bb` | ⚠️ Unaudited |
| WorldCupPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x5fb33c...46b455`; polygon `0xa2d632...d0f757`; polygon `0xf378f8...76082e` | ⚠️ Unaudited |
| wUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42ea45...c101ce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239904 | `0xf9680d...205945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x036724...bb6e35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239906 | `0x10f964...da5e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19457d...61f5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d7168...25402d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f700a...c5ec01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x615213...5add21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6be50a...ec0007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d11d1...ebdfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74911f...5fd403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74b03f...cfea94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x922dcf...ed62f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96f579...0bb17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c3b60...9aaded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239910 | `0xab5946...862de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2d656...439b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaec62...5c8410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc42f65...620f80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-239911 | `0xc907e1...d57f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf9a2d...c193d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [RedTiger_FireBot_2023.pdf](https://firebot.gg/audits/RedTiger_FireBot_2023.pdf) | RedTiger | Audit | 2023-07 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [RedTiger_Sweeep_2023.pdf](https://firebot.gg/audits/RedTiger_Sweeep_2023.pdf) | RedTiger | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2865] RedTiger_FireBot_2023.pdf — matched: No reason recorded
- [2866] RedTiger_Sweeep_2023.pdf — no match: The provided text is a marketing/landing page for FireBot, not an audit report. No audit scope, contracts, or date are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RedTiger_FireBot_2023.pdf | ElementalParticles | unmatched — not counted | — | — | no |
| RedTiger_FireBot_2023.pdf | FireVaultEP | own contract | FireVaultEP (selected) `0xa2b205...8e5cc3` — deployed 2023-07-07 23:57:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xe20e04...670234` | FirePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x960d43...14dfbe` | FireVaultFBXV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3c56f0...563a99` | FUSDv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xea459c...bf370a` | Pyromancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2866] RedTiger_Sweeep_2023.pdf

Fork inheritance lineage and inherited audits are included when available.
