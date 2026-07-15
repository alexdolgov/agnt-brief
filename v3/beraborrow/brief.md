# Agentic Audit Brief: Beraborrow

## Export Authority

- Production state: **published scope**
- Raw selected rows: 71 across 11 audit(s)
- Eligible audit results: 14 (11 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Beraborrow (`beraborrow`)
- Website: [https://app.beraborrow.com/](https://app.beraborrow.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 172 unique implementations (172 raw deployments)
- Coverage basis: 11/12 confirmed own live verified implementations (91.7%); conservative 91.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $312,961.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Beraborrow. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across berachain. Structural roles: 11 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (11), supporting (1)
- Contract kinds: contract (12)
- Detected standards: erc20 (3), erc1967proxy (1), erc20permit (1), erc4626 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (2), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 83 contracts are derived from known codebases. 83 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00c6db...a4f786`, chain 80094)
- UnnamedContract (`0x08fedd...c0789f`, chain 80094)
- UnnamedContract (`0x106d00...f55dd5`, chain 80094)
- UnnamedContract (`0x1d2a31...4eaa04`, chain 80094)
- UnnamedContract (`0x201688...0d4c1a`, chain 80094)
- UnnamedContract (`0x20b023...bdd049`, chain 80094)
- UnnamedContract (`0x2ab26f...363298`, chain 80094)
- UnnamedContract (`0x33478d...e21fd8`, chain 80094)
- UnnamedContract (`0x37f556...2a16b6`, chain 80094)
- UnnamedContract (`0x398108...bed474`, chain 80094)
- UnnamedContract (`0x3d7f3b...a37953`, chain 80094)
- UnnamedContract (`0x42ebe5...4e3004`, chain 80094)
- UnnamedContract (`0x45b3b6...6a61ae`, chain 80094)
- UnnamedContract (`0x4a91b9...97a391`, chain 80094)
- UnnamedContract (`0x4c0c5a...87dcdd`, chain 80094)
- UnnamedContract (`0x5025b7...2ad8d1`, chain 80094)
- UnnamedContract (`0x597877...e62128`, chain 80094)
- UnnamedContract (`0x5f1619...4dbf47`, chain 80094)
- UnnamedContract (`0x62cf6e...4c1852`, chain 80094)
- UnnamedContract (`0x631395...8f6d6f`, chain 80094)
- UnnamedContract (`0x65af6d...7c0b02`, chain 80094)
- UnnamedContract (`0x6751c0...be07bf`, chain 80094)
- UnnamedContract (`0x696a7a...87b14d`, chain 80094)
- UnnamedContract (`0x6f3d61...c86610`, chain 80094)
- UnnamedContract (`0x6f55fc...5abd75`, chain 80094)
- UnnamedContract (`0x72df39...4bfbf4`, chain 80094)
- UnnamedContract (`0x7bf774...cf01b7`, chain 80094)
- UnnamedContract (`0x81c78b...0b6085`, chain 80094)
- UnnamedContract (`0x8343a4...3c2c24`, chain 80094)
- UnnamedContract (`0x8ed442...e2abee`, chain 80094)
- UnnamedContract (`0x9158d1...ee9a1b`, chain 80094)
- UnnamedContract (`0x924d64...44e408`, chain 80094)
- UnnamedContract (`0x961934...25b345`, chain 80094)
- UnnamedContract (`0x965da3...5afd2e`, chain 80094)
- UnnamedContract (`0x9a3549...2a0cb2`, chain 80094)
- UnnamedContract (`0x9b4c71...2df512`, chain 80094)
- UnnamedContract (`0x9d74d9...52e1bb`, chain 80094)
- UnnamedContract (`0xa0f323...1fbe96`, chain 80094)
- UnnamedContract (`0xa7aca7...b9138a`, chain 80094)
- UnnamedContract (`0xabbf80...31659a`, chain 80094)
- UnnamedContract (`0xb2e7b0...0e2dba`, chain 80094)
- UnnamedContract (`0xb318cd...55e5bc`, chain 80094)
- UnnamedContract (`0xb6ab58...25cd0e`, chain 80094)
- UnnamedContract (`0xb87879...a8877d`, chain 80094)
- UnnamedContract (`0xb925d5...4b469b`, chain 80094)
- UnnamedContract (`0xb98bc6...0a51db`, chain 80094)
- UnnamedContract (`0xbb0c90...161b16`, chain 80094)
- UnnamedContract (`0xc3ad34...3cd667`, chain 80094)
- UnnamedContract (`0xc67628...2e0203`, chain 80094)
- UnnamedContract (`0xc68874...42e635`, chain 80094)
- UnnamedContract (`0xc94cd2...d7b7ff`, chain 80094)
- UnnamedContract (`0xce1e42...71ea12`, chain 80094)
- UnnamedContract (`0xcedeff...259d8a`, chain 80094)
- UnnamedContract (`0xcfb5bd...3c3d46`, chain 80094)
- UnnamedContract (`0xd65038...82e56a`, chain 80094)
- UnnamedContract (`0xd8a823...605a64`, chain 80094)
- UnnamedContract (`0xdb32ca...8e84b9`, chain 80094)
- UnnamedContract (`0xdc8408...e39259`, chain 80094)
- UnnamedContract (`0xe357b3...aa6582`, chain 80094)
- UnnamedContract (`0xe59ab0...e4d3b2`, chain 80094)
- UnnamedContract (`0xe66e98...0f2f8c`, chain 80094)
- UnnamedContract (`0xe992d8...6331a9`, chain 80094)
- UnnamedContract (`0xed103b...c9c5eb`, chain 80094)
- UnnamedContract (`0xee49c5...9947f0`, chain 80094)
- UnnamedContract (`0xf1356c...f0f954`, chain 80094)
- UnnamedContract (`0xf28429...4f8c82`, chain 80094)
- UnnamedContract (`0xf2a8f6...6d043b`, chain 80094)
- UnnamedContract (`0xf85196...399e32`, chain 80094)
- UnnamedContract (`0xfa7908...b440e6`, chain 80094)
- UnnamedContract (`0xfec9f8...f7a568`, chain 80094)
- UnnamedContract (`0xff14de...77405a`, chain 80094)
- BeraborrowCore (`0x12347c...fb93e9`, chain 80094)
- BrimeDen (`0x8faf95...dd1363`, chain 80094)
- DebtToken (`0x1ce0a2...4c79d3`, chain 80094)
- Factory (`0x8c2bc6...e4d3be`, chain 80094)
- IBGTVault (`0x1a29c9...b772cc`, chain 80094)
- InfraredWrapper (`0x17ecd2...2735ff`, chain 80094)
- LSPRouter (`0x3a7ed6...181446`, chain 80094)
- MultiDenGetter (`0x0690d8...d1b73c`, chain 80094)
- PermissionedDenManager (`0x359ba3...3db0a6`, chain 80094)
- PriceFeed (`0xa686dc...5c8589`, chain 80094)
- SortedDens (`0x312711...ffc3e6`, chain 80094)
- ValidatorPool (`0x6f801d...0ba07a`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 83/83 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/12 (91.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 83 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 6 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 83 of 172 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/101
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 172
- Raw deployments: 172
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 11 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 91.7% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 11 | 10.9% | 2025-05 |
| Halborn | Tier 2 | 7 | 6.9% | 2024-11 |
| Spearbit | Tier 1 | 5 | 5.0% | 2025-07 |
| Recon | Tier 2 | 4 | 4.0% | n/a |
| Unknown | Tier 2 | 3 | 3.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeraborrowCore | unknown | project_anchor | own_supporting | 0 | berachain | unit-380504 | `0x12347c...fb93e9` | ✅ Audited |
| BrimeDen | unknown | project_anchor | own_supporting | 0 | berachain | unit-380540 | `0x8faf95...dd1363` | ✅ Audited |
| DebtToken | unknown | project_anchor | own_supporting | 0 | berachain | unit-380507 | `0x1ce0a2...4c79d3` | ✅ Audited |
| Factory | unknown | project_anchor | own_supporting | 0 | berachain | unit-380538 | `0x8c2bc6...e4d3be` | ✅ Audited |
| IBGTVault | unknown | project_anchor | own_supporting | 0 | berachain | unit-380506 | `0x1a29c9...b772cc` | ✅ Audited |
| LSPRouter | unknown | project_anchor | own_supporting | 0 | berachain | unit-380517 | `0x3a7ed6...181446` | ✅ Audited |
| MultiDenGetter | unknown | project_anchor | own_supporting | 0 | berachain | unit-380501 | `0x0690d8...d1b73c` | ✅ Audited |
| PermissionedDenManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-380514 | `0x359ba3...3db0a6` | ✅ Audited |
| PriceFeed | unknown | project_anchor | own_supporting | 0 | berachain | unit-380549 | `0xa686dc...5c8589` | ✅ Audited |
| SortedDens | unknown | project_anchor | own_supporting | 0 | berachain | unit-380512 | `0x312711...ffc3e6` | ✅ Audited |
| ValidatorPool | unknown | project_anchor | own_supporting | 0 | berachain | unit-380533 | `0x6f801d...0ba07a` | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALMGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97b0cf...d19b28` | ⚠️ Unaudited |
| ALMPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1c1dbc...2568a1` | ⚠️ Unaudited |
| AlphaProPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x05bf48...883913` | ⚠️ Unaudited |
| AlphaProVaultFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x28ebfe...9869a7` | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x054160...8ff87d` | ⚠️ Unaudited |
| BeraborrowManagedLeveragedVaultGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27cc7c...a758e8` | ⚠️ Unaudited |
| BerachainDexAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xddf59f...6dfba9` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29589a...1ef5e9` | ⚠️ Unaudited |
| BPTStableOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb060ef...0d9341` | ⚠️ Unaudited |
| BribeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x61bd35...21da40` | ⚠️ Unaudited |
| CharmDeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04564e...135071` | ⚠️ Unaudited |
| CharmLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06aa44...bc78a8` | ⚠️ Unaudited |
| CharmManagedLeveragedVaultGettersV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x00dfb8...064395` | ⚠️ Unaudited |
| ChronicleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15fd57...ff7cbf` | ⚠️ Unaudited |
| CollateralVaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xce997a...2e35e1` | ⚠️ Unaudited |
| CollRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2bb1fb...edb1d1` | ⚠️ Unaudited |
| CollVaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e74a6...cd53b0` | ⚠️ Unaudited |
| DeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c161c...463313` | ⚠️ Unaudited |
| DenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43808f...16fc72` | ⚠️ Unaudited |
| DenManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2ecbe...878588` | ⚠️ Unaudited |
| DLVRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x472465...9a35e1` | ⚠️ Unaudited |
| DolomiteERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4583f6...037230` | ⚠️ Unaudited |
| EmptySwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3cf60e...7dd848` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x04cddc...cab7d7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x1fad98...c4ccd6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x8c0e12...2818e1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x8d4417...21298c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x9b6761...cd3fe5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0xb71b3d...2fc126` | ⚠️ Unaudited |
| EverlongALMFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf92d1c...219cc6` | ⚠️ Unaudited |
| EverlongCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xba665e...41a59a` | ⚠️ Unaudited |
| EverlongDeleverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29b4b6...210321` | ⚠️ Unaudited |
| EverlongLeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef8ef3...2faf24` | ⚠️ Unaudited |
| FeeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b3d1f...b17207` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x088d80...13e0c8` | ⚠️ Unaudited |
| Infrared | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x559d13...88092f` | ⚠️ Unaudited |
| InfraredBERA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x94b5d5...546d81` | ⚠️ Unaudited |
| InfraredBERADepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xef26bc...2fef87` | ⚠️ Unaudited |
| InfraredBERAFeeReceivor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab2dad...b18254` | ⚠️ Unaudited |
| InfraredBERAWithdraworLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x725a55...e92444` | ⚠️ Unaudited |
| InfraredBGT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac03ca...bb2e6b` | ⚠️ Unaudited |
| InfraredWrapper | unknown | project_anchor | own_supporting | 0 | berachain | unit-380505 | `0x17ecd2...2735ff` | ⚠️ Unaudited |
| InfraredWrapperFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0be8b0...296cb3` | ⚠️ Unaudited |
| KodiakIslandFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x160407...213e6e` | ⚠️ Unaudited |
| KodiakIslandVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c426f...b573b1` | ⚠️ Unaudited |
| LeverageHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6251c2...bfd245` | ⚠️ Unaudited |
| LeverageRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x75ebdc...3daea3` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ef448...b10b79` | ⚠️ Unaudited |
| LiquidStabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2a63e2...1628bd` | ⚠️ Unaudited |
| LiquidStabilityPoolGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39cd51...d20cb9` | ⚠️ Unaudited |
| LpRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x251161...acdd83` | ⚠️ Unaudited |
| LSPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x115652...303de2` | ⚠️ Unaudited |
| LSPRouterEnso | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7c4465...d0430c` | ⚠️ Unaudited |
| ManagedLeveragedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0167ee...5d55eb` | ⚠️ Unaudited |
| ManagedLeveragedVaultGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06405d...20302b` | ⚠️ Unaudited |
| MetaBeraborrowCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x27393e...984dc7` | ⚠️ Unaudited |
| MLVRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd1e607...2ec34d` | ⚠️ Unaudited |
| MLVSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5397aa...71f7ff` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x274741...ad75c8` | ⚠️ Unaudited |
| NectarFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6cfe96...08542e` | ⚠️ Unaudited |
| OriBGTFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xedd33a...1f0d14` | ⚠️ Unaudited |
| PermissionlessPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x478772...05c96c` | ⚠️ Unaudited |
| POLLEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x44b74a...175d8d` | ⚠️ Unaudited |
| PollenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x09d076...e0a165` | ⚠️ Unaudited |
| PollenStakingRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x02b1ec...1ad54b` | ⚠️ Unaudited |
| PollenSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x805867...ab6dab` | ⚠️ Unaudited |
| RewardsFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa0b5d5...e7e624` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x149f8c...34d85d` | ⚠️ Unaudited |
| SolvBTC_BNB_Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x17f57a...f44248` | ⚠️ Unaudited |
| SPollen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9a96ef...587a60` | ⚠️ Unaudited |
| SPollenRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x068c3c...059221` | ⚠️ Unaudited |
| TargetICRHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2f1309...8a30e4` | ⚠️ Unaudited |
| TriBPTStableOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe121e0...af4257` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0314af...e42f74` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x03bbb5...6c433f` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0430f0...07060f` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x073a8a...6ae05b` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x0934de...7fe086` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x24d466...6807ba` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x3a930e...5562fa` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x562355...53825d` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x672bf0...9d4b4c` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x8eb569...eea0af` | ⚠️ Unaudited |
| UpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xf37cc0...0869e2` | ⚠️ Unaudited |
| VaultFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x747b03...d7321c` | ⚠️ Unaudited |
| VePollenFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d20f9...1a1c0c` | ⚠️ Unaudited |
| VotingEscrowPollen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0d0849...27426b` | ⚠️ Unaudited |
| WBYUSDFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x78ca38...b19270` | ⚠️ Unaudited |
| WrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x021f62...eccb0d` | ⚠️ Unaudited |
| ylstETHFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7cfab0...e0e4ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380500 | `0x00c6db...a4f786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380502 | `0x08fedd...c0789f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380503 | `0x106d00...f55dd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380508 | `0x1d2a31...4eaa04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380509 | `0x201688...0d4c1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380510 | `0x20b023...bdd049` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380511 | `0x2ab26f...363298` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380513 | `0x33478d...e21fd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380515 | `0x37f556...2a16b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380516 | `0x398108...bed474` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380518 | `0x3d7f3b...a37953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380519 | `0x42ebe5...4e3004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380520 | `0x45b3b6...6a61ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380521 | `0x4a91b9...97a391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380522 | `0x4c0c5a...87dcdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380523 | `0x5025b7...2ad8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380524 | `0x597877...e62128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380525 | `0x5f1619...4dbf47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380526 | `0x62cf6e...4c1852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380527 | `0x631395...8f6d6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380528 | `0x65af6d...7c0b02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380529 | `0x6751c0...be07bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380530 | `0x696a7a...87b14d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380531 | `0x6f3d61...c86610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380532 | `0x6f55fc...5abd75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380534 | `0x72df39...4bfbf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380535 | `0x7bf774...cf01b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380536 | `0x81c78b...0b6085` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380537 | `0x8343a4...3c2c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380539 | `0x8ed442...e2abee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380541 | `0x9158d1...ee9a1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380542 | `0x924d64...44e408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380543 | `0x961934...25b345` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380544 | `0x965da3...5afd2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380545 | `0x9a3549...2a0cb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380546 | `0x9b4c71...2df512` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380547 | `0x9d74d9...52e1bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380548 | `0xa0f323...1fbe96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380550 | `0xa7aca7...b9138a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380551 | `0xabbf80...31659a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380552 | `0xb2e7b0...0e2dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380553 | `0xb318cd...55e5bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380554 | `0xb6ab58...25cd0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380555 | `0xb87879...a8877d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380556 | `0xb925d5...4b469b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380557 | `0xb98bc6...0a51db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380558 | `0xbb0c90...161b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380559 | `0xc3ad34...3cd667` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380560 | `0xc67628...2e0203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380561 | `0xc68874...42e635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380562 | `0xc94cd2...d7b7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380563 | `0xce1e42...71ea12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380564 | `0xcedeff...259d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380565 | `0xcfb5bd...3c3d46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380566 | `0xd65038...82e56a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380567 | `0xd8a823...605a64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380568 | `0xdb32ca...8e84b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380569 | `0xdc8408...e39259` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380570 | `0xe357b3...aa6582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380571 | `0xe59ab0...e4d3b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380572 | `0xe66e98...0f2f8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380573 | `0xe992d8...6331a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380574 | `0xed103b...c9c5eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380575 | `0xee49c5...9947f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380576 | `0xf1356c...f0f954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380577 | `0xf28429...4f8c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380578 | `0xf2a8f6...6d043b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380579 | `0xf85196...399e32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380580 | `0xfa7908...b440e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380581 | `0xfec9f8...f7a568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-380582 | `0xff14de...77405a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Beraborrow_Report.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Beraborrow_Report.pdf) | Unknown | Audit | 2024-12 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 13 | high |
| [Cantina_Beraborrow.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Cantina_Beraborrow.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | address | matched | 7 | 0 | 0 | 5 | medium |
| [Sherlock_Beraborrow_Update.pdf](https://github.com/santipu03/santipu03/blob/main/private-audits/Sherlock_Beraborrow_Update.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [- [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:](https://beraborrow.gitbook.io/docs/audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Contract address & Audits]()](https://beraborrow.gitbook.io/docs/pollen/vepollen/contract-address-and-audits.md) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 12 | medium |
| [CDP protocol private audit Halborn .pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FyMggcGsUSRbnQWRepNsS%2FCDP%20protocol%20private%20audit%20Halborn%20.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | matched | 12 | 0 | 0 | 18 | high |
| [CDP protocol private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2F6Dqc3dUpShsp5KUa26IS%2F%20CDP%20protocol%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 12 | high |
| [CDP protocol public audit competition Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FQWVZuONAgFlu6WKnvMD2%2FCDP%20protocol%20public%20audit%20competition%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | matched | 16 | 0 | 0 | 28 | high |
| [CDP protocol public audit competition Cantina (1).pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FmxZQ0WeLKd6haJRL3ohF%2FCDP%20protocol%20public%20audit%20competition%20Cantina%20(1).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 5 | medium |
| [Invariant Testing CDP protocol Recon.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FNcoDAsYQi9wt7W9eA9wS%2FInvariant%20Testing%20CDP%20protocol%20Recon.pdf) | Recon | Audit | n/a | unknown | Direct | contract_name | matched | 6 | 0 | 0 | 17 | medium |
| [BoycoVault private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FU3O3q3LdCRT0zlsItfKJ%2FBoycoVault%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 21 | high |
| [BoycoVault private audit Cantina.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FuYxauDnQwxY5czbtX5Sk%2FBoycoVault%20private%20audit%20Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | medium |
| [Managed Leverage Vaults v0 private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FUKDtjc6Dkn6P6i35j5H1%2FManaged%20Leverage%20Vaults%20v0%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Periphery and feeds extension private audit Sherlock.pdf](https://1570492309-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FffzDCMBDa391vIMqruBP%2Fuploads%2FS9FcsWw1G8YNzsJcbXLg%2FPeriphery%20and%20feeds%20extension%20private%20audit%20Sherlock.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16850] Beraborrow_Report.pdf — matched: Extracted from audit report header and scope section. Date range November 20 - December 27, 2024, end date used.
- [16851] Cantina_Beraborrow.pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings context and descriptions. The audit date is inferred from the report title 'BeraborrowBlockend Competition July 8, 2025'.
- [16852] Sherlock_Beraborrow_Update.pdf — matched: Extracted 6 contracts from scope section and file paths. Audit date from 'Date Audited: May19-May24,2025' -> end date 2024-05-24 (note: year appears as 2025 in text but likely typo; using 2024 as per context).
- [16854] - [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature: — no match: The provided text is a documentation index page listing audit report files and a link, but does not contain any contract names, scope sections, or audit dates.
- [16855] - [Contract address & Audits]() — no match: The document lists contract addresses under 'Contract address' but does not explicitly state they are in scope. However, they are the only contracts mentioned and are likely the audited contracts. No audit date found.
- [16856] CDP protocol private audit Halborn .pdf — matched: Extracted 30 contract names from the scope section of the audit report. The audit date is the end date of the engagement period (November 6, 2024).
- [16857] CDP protocol private audit Sherlock.pdf — matched: Extracted contract names from scope section and findings. Audit date from cover page: 'Date Audited: November 20 - December 27, 2024'.
- [16858] CDP protocol public audit competition Sherlock.pdf — matched: Extracted 44 contract names from the scope file listing. Audit date from 'Date Audited: January 13 - January 31, 2025'.
- [16859] CDP protocol public audit competition Cantina (1).pdf — matched: The report does not have a dedicated scope section; contract names were extracted from findings context. The date is inferred from the title 'Beraborrow Blockend Competition July8,2025'.
- [16860] Invariant Testing CDP protocol Recon.pdf — matched: No explicit scope section found; contracts extracted from findings and test files. Audit date not found in provided text.
- [16861] BoycoVault private audit Sherlock.pdf — matched: Extracted 25 contract names from the scope section listing files. Audit date from 'Date Audited: December 24 - January 7, 2025' -> end date 2025-01-07.
- [16862] BoycoVault private audit Cantina.pdf — matched: No explicit scope section found; contract names extracted from findings and context references.
- [16863] Managed Leverage Vaults v0 private audit Sherlock.pdf — no match: Scope section explicitly lists 10 files. Audit date range April 25-30, 2025, using end date.
- [16864] Periphery and feeds extension private audit Sherlock.pdf — matched: Scope section explicitly lists 6 files. Audit date from 'Date Audited: May19-May24,2025' -> end date 2024-05-24 (note year appears as 2025 but likely typo; using 2024 as per context).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Beraborrow_Report.pdf | PythWrapper | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | DenManager | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | StableBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | WeightedBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | bHONEYFeed | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95...dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c9...b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Beraborrow_Report.pdf | IInfraredVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IInfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | ISortedDens | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IBalancerV2Pool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | IPool | unmatched — not counted | — | listed in scope and findings | no |
| Beraborrow_Report.pdf | VaultMock | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Beraborrow.pdf | InfraredCollateralVault | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | PermissionlessPSM | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d...0ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | DenManager | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95...dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3...3db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Beraborrow.pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context and description | no |
| Cantina_Beraborrow.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | BPTStableFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | BPTWeightedFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | DeleverageRouter | unmatched — not counted | — | listed in scope | no |
| Sherlock_Beraborrow_Update.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Beraborrow_Update.pdf | LeverageRouter | unmatched — not counted | — | listed in scope | no |
| - [Contract address & Audits]() | LpAdapterProxy | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenAdapterProxy | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenRewardDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpRewardDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpVotingEscrowPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenVotingEscrowPollen | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | PollenRouter | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpPollenStaking | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenPollenStaking | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | LpVePollenFeeDistributor | unmatched — not counted | — | listed in contract address section | no |
| - [Contract address & Audits]() | SPollenVePollenFeeDistributor | unmatched — not counted | — | listed in contract address section | no |
| CDP protocol private audit Halborn .pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | SortedDens | own contract | SortedDens (selected) `0x312711...ffc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc...5c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a2...4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | KodiakIslandVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | bHONEYVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | PythWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | MultiDenGetter | own contract | MultiDenGetter (selected) `0x0690d8...d1b73c` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | iBGTVault | own contract | IBGTVault (selected) `0x1a29c9...b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | Factory | own contract | Factory (selected) `0x8c2bc6...e4d3be` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b9...97a391` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347c...fb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908...b440e6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Halborn .pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | LiquidStabilityPoolProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | CollateralVaultProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | bHoneyHook | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Halborn .pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol private audit Sherlock.pdf | PythWrapper | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | StableBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | WeightedBexFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | bHONEYFeed | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95...dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c9...b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | IInfraredVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc...5c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | SortedDens | own contract | SortedDens (selected) `0x312711...ffc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol private audit Sherlock.pdf | CollVault | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | LeverageRouter | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol private audit Sherlock.pdf | obRouter | unmatched — not counted | — | listed in scope and findings | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347c...fb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a2...4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | Factory | own contract | Factory (selected) `0x8c2bc6...e4d3be` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MetaBeraborrowCore | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc...5c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | SortedDens | own contract | SortedDens (selected) `0x312711...ffc3e6` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | UpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BoycoVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PSMBond | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3...3db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | DenManagerGetters | own contract | 0xfa7908… (selected) `0xfa7908...b440e6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LiquidStabilityPoolGetters | own contract | 0xf85196… (selected) `0xf85196...399e32` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MultiCollateralHintHelpers | own contract | 0x4a91b9… (selected) `0x4a91b9...97a391` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | MultiDenGetter | own contract | MultiDenGetter (selected) `0x0690d8...d1b73c` — deployed 2025-02-14 20:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | KodiakIslandFeed | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | KodiakIslandVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | UsdcVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | bHONEYVault | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | iBGTVault | own contract | IBGTVault (selected) `0x1a29c9...b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | PollenToken | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | FeeLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LSPStorageLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | ReentrancyGuardLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | TokenValidationLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | ChronicleWrapper | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | LSPOracle | unmatched — not counted | — | listed in scope | no |
| CDP protocol public audit competition Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Sherlock.pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d...0ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredCollateralVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionlessPSM | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | LiquidationManager | own contract | 0x965da3… (selected) `0x965da3...5afd2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | InfraredVault | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | ValidatorPool | own contract | ValidatorPool (selected) `0x6f801d...0ba07a` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | DenManager | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3...3db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| CDP protocol public audit competition Cantina (1).pdf | FeeReceiver | unmatched — not counted | — | mentioned in findings context | no |
| CDP protocol public audit competition Cantina (1).pdf | BrimeDen | own contract | BrimeDen (selected) `0x8faf95...dd1363` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | BaseCollateralVault | unmatched — not counted | — | Listed in scope and findings (H-01, M-03, M-05, Q-05) | no |
| Invariant Testing CDP protocol Recon.pdf | USDCVault | unmatched — not counted | — | Used in POC for H-01 | no |
| Invariant Testing CDP protocol Recon.pdf | PSMBond | unmatched — not counted | — | Listed in H-02 and Q-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PythWrapper | unmatched — not counted | — | Listed in H-03 | no |
| Invariant Testing CDP protocol Recon.pdf | PriceFeed | own contract | PriceFeed (selected) `0xa686dc...5c8589` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | InfraredCollateralVault | unmatched — not counted | — | Listed in M-03, I-01 | no |
| Invariant Testing CDP protocol Recon.pdf | bHONEYVault | unmatched — not counted | — | Listed in M-06 | no |
| Invariant Testing CDP protocol Recon.pdf | PollenToken | unmatched — not counted | — | Listed in Q-02 | no |
| Invariant Testing CDP protocol Recon.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | DenManager | unmatched — not counted | — | Listed in Q-11 | no |
| Invariant Testing CDP protocol Recon.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3...3db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | LSPStorageLib | unmatched — not counted | — | Listed in Q-06 | no |
| Invariant Testing CDP protocol Recon.pdf | LspRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | LiquidStabilityPool | unmatched — not counted | — | Listed in Q-06 | no |
| Invariant Testing CDP protocol Recon.pdf | IBGTVault | own contract | IBGTVault (selected) `0x1a29c9...b772cc` — deployed 2025-02-21 19:38:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Invariant Testing CDP protocol Recon.pdf | InfraredVault | unmatched — not counted | — | Listed in M-01, I-01 | no |
| Invariant Testing CDP protocol Recon.pdf | FeeLib | unmatched — not counted | — | Listed in H-01 traces | no |
| Invariant Testing CDP protocol Recon.pdf | Math | unmatched — not counted | — | Listed in H-01 traces | no |
| Invariant Testing CDP protocol Recon.pdf | MockERC20 | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | MockBeraborrowCore | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | MockPriceFeed | unmatched — not counted | — | Test contract in POC | no |
| Invariant Testing CDP protocol Recon.pdf | BaseCollateralVaultTests | unmatched — not counted | — | Test contract in POC | no |
| BoycoVault private audit Sherlock.pdf | MockDeployment | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DeployBBIBGTDenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DeployBBbHoneyDenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UpgradeBoycoVaults | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowCore | own contract | BeraborrowCore (selected) `0x12347c...fb93e9` — deployed 2025-02-14 20:35:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a2...4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | DenManager | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | LiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BoycoVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | PermissionedDenManager | own contract | PermissionedDenManager (selected) `0x359ba3...3db0a6` — deployed 2025-02-14 20:35:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Sherlock.pdf | UsdcPSMBond | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BaseCollateralVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | InfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UsdcVault | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowBase | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | BeraborrowOwnable | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | DelegatedOps | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | SystemStart | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | FeeLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | TokenValidationLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| BoycoVault private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | BoycoVault | unmatched — not counted | — | mentioned in findings and context | no |
| BoycoVault private audit Cantina.pdf | PSMBond | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | DebtToken | own contract | DebtToken (selected) `0x1ce0a2...4c79d3` — deployed 2025-01-25 19:35:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| BoycoVault private audit Cantina.pdf | DenManager | unmatched — not counted | — | mentioned in findings | no |
| BoycoVault private audit Cantina.pdf | BorrowerOperations | own contract | 0xdb32ca… (selected) `0xdb32ca...8e84b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ManagedLeveragedVault | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | BeraborrowMath | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ILiquidStabilityPool | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IMetaBeraborrowCore | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | IInfraredCollateralVault | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | ICollVaultRouter | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | EmissionsLib | unmatched — not counted | — | listed in scope | no |
| Managed Leverage Vaults v0 private audit Sherlock.pdf | PriceLib | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | BPTStableFeed | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | BPTWeightedFeed | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | CollVaultRouter | own contract | 0x5f1619… (selected) `0x5f1619...4dbf47` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Periphery and feeds extension private audit Sherlock.pdf | DeleverageRouter | unmatched — not counted | — | listed in scope | no |
| Periphery and feeds extension private audit Sherlock.pdf | LSPRouter | own contract | LSPRouter (selected) `0x3a7ed6...181446` — deployed 2025-02-14 20:35:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Periphery and feeds extension private audit Sherlock.pdf | LeverageRouter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x17ecd2...2735ff` | InfraredWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 71 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 152 unmatched
- Matched-own operational status: 71 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1, medium=5
- Match method counts: address=1, unique_name=70

Zero-match audit list:

- [16854] - [Audits](): Beraborrow has undergone several audits fro each part of the protocol, below you can find all the reports for each respective feature:
- [16855] - [Contract address & Audits]()
- [16863] Managed Leverage Vaults v0 private audit Sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
