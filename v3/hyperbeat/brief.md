# Agentic Audit Brief: Hyperbeat

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hyperbeat (`hyperbeat`)
- Website: [https://app.hyperbeat.org/earn?referral=5C37264D](https://app.hyperbeat.org/earn?referral=5C37264D)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, hyperliquid
- Contract surface: 251 unique implementations (605 raw deployments)
- Coverage basis: 7/22 confirmed own live verified implementations (31.8%); conservative 31.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,666,095.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hyperbeat. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across ethereum, hyperliquid. Structural roles: 16 unclassified, 9 supporting, 6 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: unclassified (16), supporting (9), core (6)
- Contract kinds: contract (31)
- Detected standards: erc20 (3), erc165 (2), erc1967proxy (2), pausable (2), accesscontrol (1), erc20permit (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (9), solmate (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e0b9a...23850d`, chain 1)
- BeatPotWithdrawalQueue (`0x7e89ac...045e10`, chain 999)
- BeHYPETimelock (`0xa24af7...4d2de4`, chain 999)
- BoringVault (`0x669abe...bc0cc1`, chain 1)
- dnHYPE (`0xe4c53a...9c1891`, chain 999)
- dnPUMP (`0xce3f76...f1ceee`, chain 999)
- hbUSDC (`0x76a201...c54871`, chain 999)
- hbUSDT (`0x77b133...78e690`, chain 999)
- hbXAUt (`0x8211c4...ac1523`, chain 999)
- liquidHYPE (`0x6d6849...71f585`, chain 999)
- lstHYPE (`0x7b5bd5...709d03`, chain 999)
- MetaMorphoV1_1Factory (`0x1897a8...535c24`, chain 1)
- PreLiquidationFactory (`0x6ff336...f83476`, chain 1)
- PublicAllocator (`0xfd32fa...91c75d`, chain 1)
- TransparentUpgradeableProxy (`0x96c6cb...44b1fb`, chain 999)
- TransparentUpgradeableProxy (`0xc061d3...674f94`, chain 999)
- UUPSProxy (`0x901024...294f76`, chain 999)
- UUPSProxy (`0x9d0b08...822538`, chain 999)
- UUPSProxy (`0xcead89...c38e0b`, chain 999)
- UUPSProxy (`0xd8fc8f...e5dda9`, chain 999)
- VaultToken (`0x4cc221...1b9bba`, chain 999)
- wVLP (`0x042e82...77ba34`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/22 (31.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 228 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 170
- Confirmed-live implementations: 23 of 251 unique; 228 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/198
- Verified + Unaudited implementations: 191
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 251
- Raw deployments: 605
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 4.5% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 2.5% | 2025-09 |
| Certora | Tier 1 | 1 | 0.5% | 2025-10 |
| Nethermind | Tier 2 | 1 | 0.5% | 2025-10 |
| Zellic | Tier 2 | 1 | 0.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeatPotWithdrawalQueue | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-242244 | `0x7e89ac...045e10` | ✅ Audited |
| BeHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242254 | `0xd8fc8f...e5dda9` | ✅ Audited |
| BeHYPETimelock | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-242245 | `0xa24af7...4d2de4` | ✅ Audited |
| RoleRegistry | registry | project_anchor | own_supporting | 1 | hyperliquid | unit-242255 | `0x901024...294f76` | ✅ Audited |
| StakingCore | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242256 | `0xcead89...c38e0b` | ✅ Audited |
| VaultToken | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-242243 | `0x4cc221...1b9bba` | ✅ Audited |
| WithdrawManager | operational_periphery | project_anchor | own_supporting | 1 | hyperliquid | unit-242259 | `0x9d0b08...822538` | ✅ Audited |

### ⚠️ Verified + Unaudited (191)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4a426...9b7483` | ⚠️ Unaudited |
| BeatPot | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242248 | 2 deployments: hyperliquid `0x53f971...4c8425`; hyperliquid `0x710d8a...ccd314` | ⚠️ Unaudited |
| BeatPotV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2f76ab...95ea89`; hyperliquid `0xae9316...d0d319` | ⚠️ Unaudited |
| BeatPotWithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: hyperliquid `0x721066...0fb966`; hyperliquid `0x9cd033...84f46e`; hyperliquid `0xd1556d...9d9673`; hyperliquid `0xf11207...a976b6`; hyperliquid `0xf97271...c0e798` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3a10f1...e35ea0`; hyperliquid `0xaea5b5...b080a3` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5121f2...63cae6`; hyperliquid `0xa32870...893ac0` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbd7ee2...c1a4a9`; hyperliquid `0xe83aaf...e19614` | ⚠️ Unaudited |
| BeHypeAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x18bd6f...2492ca`; hyperliquid `0x8c4bf0...542c01` | ⚠️ Unaudited |
| beHYPEBatchWithdrawalClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa86b7a...bef966` | ⚠️ Unaudited |
| beHYPEDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x696c55...021323` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-242230 | `0x669abe...bc0cc1` | ⚠️ Unaudited |
| CompositeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x610cb8...499df3`; hyperliquid `0xa89fa5...50da86` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x16947a...5a8483`; hyperliquid `0x7f1f3e...a4fe09`; hyperliquid `0xe90348...c62637` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | hyperliquid | n/a | 7 deployments: hyperliquid `0x0c59a0...ff4c70`; hyperliquid `0x6231f1...990e3a`; hyperliquid `0x871550...ec9b98`; hyperliquid `0x8da4c7...55b21e`; hyperliquid `0xd81448...f996ef`; hyperliquid `0xe3c79b...fb3434`; hyperliquid `0xe66f27...1b55f0` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | hyperliquid | n/a | 9 deployments: hyperliquid `0x1cc42c...3d42e7`; hyperliquid `0x289584...d56ea7`; hyperliquid `0x370703...9f5371`; hyperliquid `0x47fdde...b6dd74`; hyperliquid `0x5a5589...68a9e4`; hyperliquid `0xcb01c1...a985c2`; hyperliquid `0xcc10c5...4a3fa7`; hyperliquid `0xd28b1a...fd92c1`; hyperliquid `0xe1c769...0a4a75` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0058fa...80b7a8`; hyperliquid `0x0868a6...2da176`; hyperliquid `0x0f0d39...45c933`; hyperliquid `0x127c59...e464b9`; hyperliquid `0x205ac1...ae9201`; hyperliquid `0x223c4a...e451e0`; hyperliquid `0x315b70...838883`; hyperliquid `0x4c645e...96d51c`; hyperliquid `0x53dd0a...5967d1`; hyperliquid `0x5bfb09...4f9d60`; hyperliquid `0x60bb82...f9c893`; hyperliquid `0x60bf48...932c70`; hyperliquid `0x6261f3...6ac936`; hyperliquid `0x657c7f...1aaa4f`; hyperliquid `0x6ff429...24be21`; hyperliquid `0x76a48c...0defa8`; hyperliquid `0x8315ff...dbfd76`; hyperliquid `0x8b6bad...609b84`; hyperliquid `0x901beb...d666bf`; hyperliquid `0x929df5...5be4d0`; hyperliquid `0x93a970...ddbb4d`; hyperliquid `0x9eef6e...1dd4ed`; hyperliquid `0xa685ef...b6607c`; hyperliquid `0xafa7a5...12a1c5`; hyperliquid `0xb3060c...e6f2e0`; hyperliquid `0xbd3737...681698`; hyperliquid `0xccbc13...10d2d3`; hyperliquid `0xd40979...ed658b`; hyperliquid `0xd830bf...da71f5` | ⚠️ Unaudited |
| DepositReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0126c0...715105`; hyperliquid `0x1fc216...2151f8`; hyperliquid `0x21e099...dcdc8a`; hyperliquid `0x226acf...036f77`; hyperliquid `0x248b98...960d78`; hyperliquid `0x3067f8...ef0775`; hyperliquid `0x4f7bad...712a8b`; hyperliquid `0x4fe414...dcf1a9`; hyperliquid `0x5abfb1...c06a05`; hyperliquid `0x6c042e...c6fc6e`; hyperliquid `0x7abf6d...dc1c2a`; hyperliquid `0x8644fa...c738e6`; hyperliquid `0x9182b9...4dbc92`; hyperliquid `0x92dd15...6e03a4`; hyperliquid `0x93586b...53f736`; hyperliquid `0x95e89c...f265d2`; hyperliquid `0xa980d9...8aa59e`; hyperliquid `0xb3d7b9...df48ca`; hyperliquid `0xb3f15e...c70aec`; hyperliquid `0xb4cfbb...aca06b`; hyperliquid `0xbdc3d2...67297d`; hyperliquid `0xc0bd66...187969`; hyperliquid `0xc4dee7...ec3277`; hyperliquid `0xc74c98...fb1626`; hyperliquid `0xc8ca86...9ea14e`; hyperliquid `0xd52e5f...f92fbd`; hyperliquid `0xdcefcd...963884`; hyperliquid `0xe098e4...6280db`; hyperliquid `0xfd1fd8...fec16c` | ⚠️ Unaudited |
| DnCoreWriter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x00da21...235c96`; hyperliquid `0xcdc991...4c5418` | ⚠️ Unaudited |
| DnCoreWriter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5f6c8c...282932`; hyperliquid `0x67d8cc...1f7f56` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x06e655...8b5bb1`; hyperliquid `0x4d66bd...79a761` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x12ddd5...6c80c2`; hyperliquid `0xf0b283...228c68` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x14f9b9...b4458b`; hyperliquid `0x80e9d0...060cbf` | ⚠️ Unaudited |
| DnCoreWriterVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x155783...113774` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1a877d...831d0e`; hyperliquid `0x75eac6...9bdc30` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1c43be...7ac99c`; hyperliquid `0xf5ad07...8f130d` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x38a0ee...be97df`; hyperliquid `0x46e3b9...07ded5` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4074f9...a393ec`; hyperliquid `0x4604cf...234a20` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x46b72b...78b839`; hyperliquid `0x9e98a8...c05d90` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d340d...9a4467`; hyperliquid `0xeaf97b...968a8f` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x81956f...3feb29`; hyperliquid `0xc9f2cd...0394c0` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x86dce6...3ade57`; hyperliquid `0xc13c7c...ebdafc` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x925cdd...b8d359`; hyperliquid `0xf81312...5d5120` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9284b6...0276b4`; hyperliquid `0xd33125...327892` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd0f7a7...147b0e`; hyperliquid `0xe69da0...9d7707` | ⚠️ Unaudited |
| dnETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2540bd...d7ad78`; hyperliquid `0xc3ce68...0c6c77` | ⚠️ Unaudited |
| DnEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x72a173...e463a5`; hyperliquid `0xf213df...017fcc` | ⚠️ Unaudited |
| DnEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43daa4...e1b1ad`; hyperliquid `0xb1dd94...02e0a9` | ⚠️ Unaudited |
| DnEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6431a3...197382`; hyperliquid `0xed760c...007f37` | ⚠️ Unaudited |
| DnEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1afc88...072874`; hyperliquid `0x94a9e6...c1c2f2` | ⚠️ Unaudited |
| dnFART | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4a8ba2...fcda11`; hyperliquid `0xb39c20...6d012a` | ⚠️ Unaudited |
| DnFartCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x62e14d...1358c5`; hyperliquid `0xfd8b96...e100a9` | ⚠️ Unaudited |
| DnFartDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1549fe...4edcb3`; hyperliquid `0xf60c25...923dc6` | ⚠️ Unaudited |
| DnFartDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5af514...dcfbad`; hyperliquid `0x979a53...1f956d` | ⚠️ Unaudited |
| DnFartRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x448e29...c6ebd3`; hyperliquid `0xa61db2...d620a6` | ⚠️ Unaudited |
| dnHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242260 | 2 deployments: hyperliquid `0x949a72...3e6f29`; hyperliquid `0xe4c53a...9c1891` | ⚠️ Unaudited |
| DNHypeAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x1ca0ad...4fd41c`; hyperliquid `0x1e73ed...f92b23`; hyperliquid `0x21f547...ecad48`; hyperliquid `0xc6c06b...cdcd2f` | ⚠️ Unaudited |
| DnHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd22f53...7b8c74`; hyperliquid `0xeb3459...8aa469` | ⚠️ Unaudited |
| DnHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4e250d...3a11a5`; hyperliquid `0x6242fb...c2bf47` | ⚠️ Unaudited |
| DnHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x712eb0...1a3b38` | ⚠️ Unaudited |
| DnHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa4a6b8...51ff00`; hyperliquid `0xb159d4...5477d2` | ⚠️ Unaudited |
| DnHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7e5452...db98fd`; hyperliquid `0xbe61c1...616fff` | ⚠️ Unaudited |
| dnPUMP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242258 | 2 deployments: hyperliquid `0x8858a3...09c39b`; hyperliquid `0xce3f76...f1ceee` | ⚠️ Unaudited |
| DNPumpAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x0c83fa...a0d5fc`; hyperliquid `0x64b587...ec4f90`; hyperliquid `0xbbf26f...56bac6` | ⚠️ Unaudited |
| DnPumpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x707e99...ec77fc`; hyperliquid `0x86ea55...48540b` | ⚠️ Unaudited |
| DnPumpDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa26e15...d6b2de`; hyperliquid `0xa7f455...cafb02` | ⚠️ Unaudited |
| DnPumpDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x22cd29...980d96`; hyperliquid `0xaf8ffe...dbc66b` | ⚠️ Unaudited |
| DnPumpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8c3326...e88513`; hyperliquid `0x9c915c...cbf0d7` | ⚠️ Unaudited |
| dnTEST | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65f08f...d94a73`; hyperliquid `0x80cae1...e7d6b2` | ⚠️ Unaudited |
| DnTestCustomAggregatorFeedGrowth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0c459a...d4bd08`; hyperliquid `0xc4d238...9d867d` | ⚠️ Unaudited |
| DnTestDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1baf98...e5393d`; hyperliquid `0xa7a8f3...0b4d0a` | ⚠️ Unaudited |
| DnTestDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd08f3e...fdd394`; hyperliquid `0xed51fe...8e8b19` | ⚠️ Unaudited |
| DnTestRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x35d44b...b84941`; hyperliquid `0xd5a395...5e0a68` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05d702...f10723`; hyperliquid `0x97894a...0fe5c4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x079b37...3d0afc`; hyperliquid `0x94d9f7...74e3b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0b87b0...5370a9`; hyperliquid `0xf9bd6f...f64d33` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2cad81...94bffa`; hyperliquid `0xa075bc...ed21d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x350bb1...7f7366`; hyperliquid `0xf13f68...c538d2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4090f3...24acd7`; hyperliquid `0x852d95...5eb315` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x42ec6c...2a9d46`; hyperliquid `0x5b7cd0...03d789` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4e96a9...f0110b`; hyperliquid `0x724211...49369f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bd2bf...50a57c`; hyperliquid `0x6bc6b8...841fe8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x60d49b...0f3a5e`; hyperliquid `0xd032d5...a7ca5e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x613cab...073ec2`; hyperliquid `0xecff2f...0f9cf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x976270...9c64a4`; hyperliquid `0xb356b4...5e6239` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa487ab...6297f1`; hyperliquid `0xdb6a5a...3267fe` | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 13 deployments: hyperliquid `0x22a66f...cbd78a`; hyperliquid `0x2abeea...da8e38`; hyperliquid `0x4249c4...1a3c87`; hyperliquid `0x74717a...c3a28b`; hyperliquid `0x77ce3e...bc195b`; hyperliquid `0x88cf45...fa3049`; hyperliquid `0x891bab...f9030b`; hyperliquid `0x9fa8d2...7fd388`; hyperliquid `0xd08a65...eaf45a`; hyperliquid `0xdaaede...cb8c90`; hyperliquid `0xe24761...65171d`; hyperliquid `0xf13d61...0a1a1f`; hyperliquid `0xf2bc55...6cae23` | ⚠️ Unaudited |
| hbUSDC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242249 | 2 deployments: hyperliquid `0x057ced...6e8a61`; hyperliquid `0x76a201...c54871` | ⚠️ Unaudited |
| HBUsdcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x64425d...c45d48`; hyperliquid `0xc82cad...b87462` | ⚠️ Unaudited |
| HBUsdcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb013a5...cc7a23`; hyperliquid `0xf8f519...d4241d` | ⚠️ Unaudited |
| HBUsdcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02eb9f...6bebc3`; hyperliquid `0xd202cf...8ebd1c` | ⚠️ Unaudited |
| HBUsdcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73068e...3c82d7` | ⚠️ Unaudited |
| HBUsdcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3bf417...75a28c`; hyperliquid `0xbb820d...4c7a60` | ⚠️ Unaudited |
| hbUSDT | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242250 | 2 deployments: hyperliquid `0x5e1052...2e61eb`; hyperliquid `0x77b133...78e690` | ⚠️ Unaudited |
| HBUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xac3d81...79536a`; hyperliquid `0xfcf942...80257a` | ⚠️ Unaudited |
| HBUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x281207...eb2083`; hyperliquid `0xec7fa7...e88e7d` | ⚠️ Unaudited |
| HBUsdtDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x06a76e...2eb60d` | ⚠️ Unaudited |
| HBUsdtDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbdae44...d3035c`; hyperliquid `0xbe8a4f...8e6f19` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x371d04...e2bc1f`; hyperliquid `0xc00c5e...501662` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x873add...b13d59`; hyperliquid `0xc898a5...fdf042` | ⚠️ Unaudited |
| hbXAUt | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242252 | 2 deployments: hyperliquid `0x6eb672...dc05f8`; hyperliquid `0x8211c4...ac1523` | ⚠️ Unaudited |
| HBXautCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x8285a6...dd1f8b`; hyperliquid `0xf3db9f...20921d`; hyperliquid `0xf58960...8d858d` | ⚠️ Unaudited |
| HBXautDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x5b3003...1c7279`; hyperliquid `0xccc8b1...88bb8f`; hyperliquid `0xdb9817...6c3845` | ⚠️ Unaudited |
| HBXautDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2be064...2932e0`; hyperliquid `0x79a93a...fceccb` | ⚠️ Unaudited |
| HBXautDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x448897...1de8a6` | ⚠️ Unaudited |
| HBXautDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48fb10...da1c4e`; hyperliquid `0xef2aa0...dc354b` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x675814...4e625f`; hyperliquid `0xd26bb9...ac50e7` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7ce2d1...445687`; hyperliquid `0x9feb6a...98960a` | ⚠️ Unaudited |
| HypeWrapHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd201a8...f48f3f` | ⚠️ Unaudited |
| kitBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0bd8cf...c0e82c`; hyperliquid `0x618969...8d3683` | ⚠️ Unaudited |
| KitBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6707d9...a60294`; hyperliquid `0xd2f570...8f76c7` | ⚠️ Unaudited |
| KitBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xc4aec7...65c432`; hyperliquid `0xd57935...fd8ae8` | ⚠️ Unaudited |
| KitBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x12d55a...a26691`; hyperliquid `0x210376...3d370e` | ⚠️ Unaudited |
| KitBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1605f7...1803b0`; hyperliquid `0xbd1b1e...f06c81` | ⚠️ Unaudited |
| kitHYPE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x47cfc1...37745d`; hyperliquid `0xaf801b...a5e248` | ⚠️ Unaudited |
| KitHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43e279...39c6a8`; hyperliquid `0x9f4896...34752a` | ⚠️ Unaudited |
| KitHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8d28be...894513`; hyperliquid `0xb64eb4...802448` | ⚠️ Unaudited |
| KitHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2ae9f6...b8ad9b`; hyperliquid `0x89ab3b...a098a0` | ⚠️ Unaudited |
| KitHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1cdd9b...8f271e`; hyperliquid `0x73c4f5...33252b` | ⚠️ Unaudited |
| kitUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x797d81...e54edb`; hyperliquid `0xd385ba...39ba4d` | ⚠️ Unaudited |
| KitUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbcfab3...35d7ac`; hyperliquid `0xebfc1f...b680ff` | ⚠️ Unaudited |
| KitUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2da71a...aeb7e2`; hyperliquid `0x46f5e7...ac70fe` | ⚠️ Unaudited |
| KitUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6bd660...a749c1`; hyperliquid `0xfaa662...82c20e` | ⚠️ Unaudited |
| KitUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x86b748...7c6c38`; hyperliquid `0xd197a6...e4e5f8` | ⚠️ Unaudited |
| liquidHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242247 | 2 deployments: hyperliquid `0x441794...489d29`; hyperliquid `0x6d6849...71f585` | ⚠️ Unaudited |
| LiquidHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1ceab7...9aca0f`; hyperliquid `0x20a9bb...29bff8` | ⚠️ Unaudited |
| LiquidHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x156286...fdb01e`; hyperliquid `0x705197...c907bd` | ⚠️ Unaudited |
| LiquidHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0de56f...c0f2f2` | ⚠️ Unaudited |
| LiquidHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x67efa4...87e37d`; hyperliquid `0xf53867...f6d8dc` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x558806...87aa32`; hyperliquid `0x679b43...0c806c` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6b1331...e2e137`; hyperliquid `0xa69ca6...825cd2` | ⚠️ Unaudited |
| lstHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242251 | 2 deployments: hyperliquid `0x7b5bd5...709d03`; hyperliquid `0x81e064...752a76` | ⚠️ Unaudited |
| LstHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2b959a...f31560`; hyperliquid `0x767807...66e013` | ⚠️ Unaudited |
| LstHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d876e...d59a27`; hyperliquid `0xfcf86f...0b29ba` | ⚠️ Unaudited |
| LstHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2b158d...c97737`; hyperliquid `0x60597a...0d865e` | ⚠️ Unaudited |
| LstHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x58d5c2...8dbd3b` | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1eff01...da5440`; hyperliquid `0x3678ec...460b8d` | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75b6f0...bcfc16` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x08c00f...ceadf3`; hyperliquid `0x264a06...856578`; hyperliquid `0x4851d4...dffd34` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242224 | `0x1897a8...535c24` | ⚠️ Unaudited |
| MidasAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 3 deployments: hyperliquid `0x594ff0...038420`; hyperliquid `0x5fd65c...9f7c59`; hyperliquid `0xcc94f6...05e7a8` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x0aeeea...5a5e37`; hyperliquid `0x5d6ffd...db3e10`; hyperliquid `0xd7d4b6...a31921`; hyperliquid `0xed6221...f11654` | ⚠️ Unaudited |
| MidasLzVaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x159417...5e52a5`; hyperliquid `0x4becf8...b0a7a7` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x76613b...c37d5f` | ⚠️ Unaudited |
| MidasVaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0b6e5d...2744cd`; hyperliquid `0x718c52...312457` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4f5fa9...4ab61f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68e37d...0c57cd` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeb476f...6f9af5` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5730ac...04ad74` | ⚠️ Unaudited |
| MultiRolesAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 40 deployments: hyperliquid `0x060690...342312`; hyperliquid `0x164b7e...dccab0`; hyperliquid `0x16cc58...52bff9`; hyperliquid `0x1c9b0b...7d16b1`; hyperliquid `0x20790f...a0d156`; hyperliquid `0x2193fa...a903c9`; hyperliquid `0x22630f...f8630e`; hyperliquid `0x2cb0ec...c0fcdf`; hyperliquid `0x2e685e...9e9e09`; hyperliquid `0x304505...d56b10`; hyperliquid `0x342fb4...8c6fc1`; hyperliquid `0x36fad7...b28a5f`; hyperliquid `0x40f5b5...6cfc45`; hyperliquid `0x421d2d...f87c60`; hyperliquid `0x49943e...0d096c`; hyperliquid `0x4fe4ba...2ed10e`; hyperliquid `0x549baf...0713d9`; hyperliquid `0x54fff0...c35734`; hyperliquid `0x5a4015...1dadf1`; hyperliquid `0x614775...773160`; hyperliquid `0x621810...c0d6ba`; hyperliquid `0x6278d7...05099a`; hyperliquid `0x763ab4...bfa215`; hyperliquid `0x786108...42d523`; hyperliquid `0x79285f...7ae5b6`; hyperliquid `0x7b12a8...ff9fa2`; hyperliquid `0x829995...27c4eb`; hyperliquid `0x85717d...f8bad0`; hyperliquid `0x9cd4c8...665411`; hyperliquid `0xa105c5...9fef5e`; hyperliquid `0xa2321f...558280`; hyperliquid `0xa43bfa...b83597`; hyperliquid `0xa9d525...ba3275`; hyperliquid `0xb68a5b...3301b9`; hyperliquid `0xb7fc0b...5cb46f`; hyperliquid `0xd9b07f...b91a2a`; hyperliquid `0xe062f4...a265dc`; hyperliquid `0xf05dd2...fe00d2`; hyperliquid `0xf420df...7a9b47`; hyperliquid `0xf81795...c251cf` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3e3a26...8cb005` | ⚠️ Unaudited |
| obeatUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4295e5...085391`; hyperliquid `0x94bf32...3ec9e6` | ⚠️ Unaudited |
| ObeatUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3c1682...b391ca`; hyperliquid `0x8407e1...c515c3` | ⚠️ Unaudited |
| ObeatUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3cdf50...81f28e`; hyperliquid `0x44219e...4062a3` | ⚠️ Unaudited |
| ObeatUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x302345...360e5f`; hyperliquid `0x65d0a1...c37458` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb6b2c8...54a64a`; hyperliquid `0xe1cf4c...602f4b` | ⚠️ Unaudited |
| ObeatUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x36094a...edc953`; hyperliquid `0xf318c1...e89b77` | ⚠️ Unaudited |
| OracleAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5e1381...f52b73`; hyperliquid `0xb2ed7f...63c6ee` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x0cd51d...13a8be` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x2b91c4...42237c` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd887cd...a22528` | ⚠️ Unaudited |
| PendleHyperbeatMidasNoRedeemSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xc027af...29c8e5` | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x618b2c...631c0d` | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x9f0554...9ea3f3` | ⚠️ Unaudited |
| PreLiquidationFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242235 | `0x6ff336...f83476` | ⚠️ Unaudited |
| Pricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 30 deployments: hyperliquid `0x059d7a...cf6ce6`; hyperliquid `0x0f1824...4b4738`; hyperliquid `0x1de596...77817b`; hyperliquid `0x3636a2...4c6579`; hyperliquid `0x3b55e3...698030`; hyperliquid `0x42db88...5f5322`; hyperliquid `0x5100ae...afed8d`; hyperliquid `0x52f131...0f4407`; hyperliquid `0x56a560...9930ea`; hyperliquid `0x58f613...a92ea6`; hyperliquid `0x5ed0ec...9b884b`; hyperliquid `0x6607f7...c30d57`; hyperliquid `0x725f73...29f756`; hyperliquid `0x7881b0...42c489`; hyperliquid `0x8cf469...2933d7`; hyperliquid `0x9081c2...89743b`; hyperliquid `0x90a0a6...6f8f11`; hyperliquid `0x988e3e...e1a597`; hyperliquid `0xa532a4...d338a8`; hyperliquid `0xaa3fd6...9b101a`; hyperliquid `0xb46eb7...467785`; hyperliquid `0xbeecd5...fec8c0`; hyperliquid `0xc23cdf...ac668b`; hyperliquid `0xc6090a...791db2`; hyperliquid `0xcb4561...c7b078`; hyperliquid `0xd2e5f0...3109dd`; hyperliquid `0xd52d1e...53f844`; hyperliquid `0xe0995a...763316`; hyperliquid `0xf21440...fb8236`; hyperliquid `0xf29f39...73042c` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-242242 | `0xfd32fa...91c75d` | ⚠️ Unaudited |
| RelendUSDCOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9ab96a...aa7b8d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x543a23...a74601` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242257 | `0x96c6cb...44b1fb` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242253 | `0xc061d3...674f94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02f6ca...302053`; hyperliquid `0x94a44e...88c43a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x07b528...535de9`; hyperliquid `0x2b3821...79c49a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x13d730...ef0c0f`; hyperliquid `0x945a22...654256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x15ab8d...b2adba`; hyperliquid `0x7ceda4...d09697` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1d31d0...28fd13`; hyperliquid `0x81e00e...645f87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2334a2...beeaf1`; hyperliquid `0x6de41c...4cc359` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2ac694...bbbe91`; hyperliquid `0xdc8d8d...a8b8c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2d5a18...0b29bc`; hyperliquid `0xa9ffe6...91d31f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x466cbb...3c13b0`; hyperliquid `0x816c3f...cc4552` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5101e8...8085f6`; hyperliquid `0xa1a3da...3f2cd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6233e7...8ed26c`; hyperliquid `0x908125...e6e37e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x63da1d...1c3ad8`; hyperliquid `0xa21f46...f2ff45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x869224...366dc4`; hyperliquid `0xde6602...f91a2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x885719...ad9234`; hyperliquid `0xcb3c66...1a65e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x88940a...b6045d`; hyperliquid `0xb16290...31f6ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa97af0...9a457b`; hyperliquid `0xd491b3...bdbcf5` | ⚠️ Unaudited |
| USDGWithdrawalHypeSponsor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67de62...248124` | ⚠️ Unaudited |
| VaultFactoryLite | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x1fc8c8...7b553f`; hyperliquid `0x4f2ba9...a1f038`; hyperliquid `0xe5aba3...a948d9` | ⚠️ Unaudited |
| VaultsSolverMidas | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5e7eaa...303f05`; hyperliquid `0x60d6d5...97eb25` | ⚠️ Unaudited |
| VaultToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 15 deployments: hyperliquid `0x0d0f82...a29b5a`; hyperliquid `0x130ee3...9bbb09`; hyperliquid `0x265b3c...ae0302`; hyperliquid `0x445515...b5b6f0`; hyperliquid `0x52bc95...3355b8`; hyperliquid `0x842537...ff4b5a`; hyperliquid `0x9ddf96...10d9d2`; hyperliquid `0xa4cf00...5fd6c8`; hyperliquid `0xb78dcc...d435c3`; hyperliquid `0xb7956c...f365bb`; hyperliquid `0xc48448...3327e6`; hyperliquid `0xcd867e...94ada0`; hyperliquid `0xdf1fcd...9a1057`; hyperliquid `0xecde33...b7e744`; hyperliquid `0xfb5943...1aaad7` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0d30b2...4b9e0e`; hyperliquid `0x0d7f3d...7aad82`; hyperliquid `0x0dfe20...bcb423`; hyperliquid `0x100242...438be3`; hyperliquid `0x1cc393...8e5869`; hyperliquid `0x1d749e...4fc4bf`; hyperliquid `0x202b34...a2511c`; hyperliquid `0x240e0b...45b1c6`; hyperliquid `0x261a2b...49f906`; hyperliquid `0x368995...2134d6`; hyperliquid `0x43cacc...8f8e8c`; hyperliquid `0x5236b7...6e5bd6`; hyperliquid `0x52784b...ba7c4a`; hyperliquid `0x667859...bec1b7`; hyperliquid `0x66d9be...7449f0`; hyperliquid `0x6b68c4...9c1089`; hyperliquid `0x70bc29...109f39`; hyperliquid `0x73905d...3d3949`; hyperliquid `0x788c7c...43a143`; hyperliquid `0x8b04cd...d09d98`; hyperliquid `0x9d90b2...a0e294`; hyperliquid `0xa03e0e...5a84fe`; hyperliquid `0xb62b28...bf085e`; hyperliquid `0xbc63a6...058dd1`; hyperliquid `0xbe2f89...8f16bc`; hyperliquid `0xc7becb...4b8225`; hyperliquid `0xda768e...157a38`; hyperliquid `0xdac07c...36094c`; hyperliquid `0xe73722...df7507` | ⚠️ Unaudited |
| wNLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x27bfb8...33a2a8`; hyperliquid `0xece723...c8c98e` | ⚠️ Unaudited |
| WNlpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7b593f...389553`; hyperliquid `0x96d609...c6e175` | ⚠️ Unaudited |
| WNlpDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9109a7...ff6cf9`; hyperliquid `0xb697f1...a46c56` | ⚠️ Unaudited |
| WNlpDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x13dea8...37e1b2`; hyperliquid `0xb379c3...e4a0e5` | ⚠️ Unaudited |
| WNlpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x814e39...77eef2`; hyperliquid `0xce66b1...965b76` | ⚠️ Unaudited |
| wVLP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242246 | 2 deployments: hyperliquid `0x042e82...77ba34`; hyperliquid `0xd66d69...c4fd42` | ⚠️ Unaudited |
| WVLPDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x765fa3...db26a6`; hyperliquid `0xe2ba9a...808b67` | ⚠️ Unaudited |
| WVLPDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x542d52...2bc828` | ⚠️ Unaudited |
| WVLPDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x70dbda...cb725b`; hyperliquid `0xc800f6...1b8a78` | ⚠️ Unaudited |
| WVLPRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x462b95...58aa06`; hyperliquid `0xb0602a...aba9d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242233 | `0x6e0b9a...23850d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x018fad...0ca12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x072e75...3e9a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0d82ab...c891e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0f7ce5...867086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x11400d...6a9266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1bd141...565a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x215adb...2e9349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x21ff55...96143b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x28c2b2...86831f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2eb2c0...aa85b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x316fb3...d881ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3b325a...ed06d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3fec2c...1a463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x410f32...119cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x49e74f...e3bccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4eeb7e...8ba332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x53734f...bc0d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x60e221...f17d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x628338...6abf27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ba0bd...af9697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6c6f64...2050d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73d901...25074a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x74cbaf...33c825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7b367e...c947da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x80b7af...e4e2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x82e272...d96b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8a14c9...875f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9095e5...049aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x929e58...037bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x93590e...10c121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa4a3a7...a9267d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa6658d...652dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa8f36e...5c648f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xafcf37...296a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb41bdd...cdb232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbb1721...5252d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbc8c56...001fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc59a5e...b02604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6c005...ab2c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcc4c1d...0becf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4b705...a50e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4d067...133bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd71665...500061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdc347f...69c024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe0ca28...7cb50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe34034...263565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe3941a...4a56ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe6b9f2...2c6ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xea67e7...39bbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xefd734...8a16d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf2530f...212da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf8db00...dff888` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits (GitHub directory)](https://github.com/0xhyperbeat/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.morpho.org/get-started/resources/audits](https://docs.morpho.org/get-started/resources/audits) | Morpho | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Zellic.pdf](https://github.com/0xhyperbeat/Audits/blob/main/BeatPot/Zellic.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [Codespect.pdf](https://github.com/0xhyperbeat/Audits/blob/main/USD%2B/Codespect.pdf) | Codespect | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Certora.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Nethermind.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Certora.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | matched | 5 | 4 | 0 | 4 | high |
| [Pashov.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Pashov.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | n/a | matched | 5 | 4 | 0 | 0 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [22.03.18 - Fractal Final Report.pdf](https://content.gitbook.com/content/LaS0wfc7geC7DaOTDEn7/blobs/3UeT78zGv53RD0ugoPeg/22.03.18%20-%20Fractal%20Final%20Report.pdf) | ChainSecurity | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf) | Hacken | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [audits.sherlock.xyz/contests/332](https://audits.sherlock.xyz/contests/332) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3867] Audits (GitHub directory) — no match: The provided text is a GitHub repository page listing folder names (BeatPot, USD+, Vault-Infra, Vaults-Solver, Withdrawal-Queue, beHYPE, liquid-bank) but no actual audit report content, scope section, or contract file paths. No contracts in scope could be identified.
- [3868] docs.morpho.org/get-started/resources/audits — no match: Extracted contract names from the scope column of the audit table. No single audit date; multiple dates per row.
- [3869] Zellic.pdf — matched: No reason recorded
- [3870] Codespect.pdf — no match: Two contracts explicitly listed in scope table. Audit date from cover page and final report date.
- [3871] Certora.pdf — matched: All contracts listed in the Project Scope section of the audit report.
- [3872] Nethermind.pdf — matched: All 12 contracts listed in the 'Audited Files' table on page 3 are in scope. Audit date is the final report date: October 1, 2025.
- [3875] Certora.pdf — matched: Scope section explicitly lists 9 contracts with file paths. Audit end date is 04/09/2025.
- [3877] Pashov.pdf — matched: No reason recorded
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf — no match: Extracted 14 contract names from the scope section. Audit date is August 2024, mapped to last day of month.
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf — no match: All contracts listed in scope section 2.1.1. Audit date from cover page.
- [3882] 22.03.18 - Fractal Final Report.pdf — no match: Extracted contract names from findings targets and scope section. Audit date from cover page.
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf — no match: All contracts listed in Appendix 2 Scope section of the audit report.
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf — no match: All contracts listed in Appendix 2 Scope table. Audit date from cover page: 18/01/2024.
- [3885] audits.sherlock.xyz/contests/332 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.morpho.org/get-started/resources/audits | Vault V2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Adapters Registry | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1.1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Preliquidation | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Public Allocator | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Periphery | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MORPHO Token | unmatched — not counted | — | listed in scope table | no |
| Zellic.pdf | BeatPotV2 | unmatched — not counted | — | — | no |
| Zellic.pdf | BeatPotWithdrawalQueue | own contract | BeatPotWithdrawalQueue (selected) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Codespect.pdf | MorphoV2Orchestrator | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Codespect.pdf | CreditFundExchangeUpdater | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Certora.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9a...23850d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Certora.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221...1b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | Pricer | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | DepositReceiver | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | IPriceProvider | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | Depositor | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Nethermind.pdf | OracleAggregator | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IAggregatorV3 | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IMidasPriceFeed | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ICoreWriter | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DnCoreWriterVault | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DepositReceiver | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | Pricer | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221...1b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9a...23850d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind.pdf | Depositor | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IPriceProvider | unmatched — not counted | — | listed in audited files table | no |
| Certora.pdf | BeHYPE | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BeHYPETimelock | own contract | BeHYPETimelock (selected) `0xa24af7...4d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | RoleRegistry | own proxy deployment | UUPSProxy (proxy) (selected) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | StakingCore | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | WithdrawManager | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BucketLimiter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | CoreWriter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | L1Read | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | UUPSProxy | ambiguous — not counted | UUPSProxy (proxy) (alternative) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Pashov.pdf | BeHYPE.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | BeHYPETimelock.sol | own contract | BeHYPETimelock (selected) `0xa24af7...4d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | RoleRegistry.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | StakingCore.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | WithdrawManager.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | TimelockedERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | OwnableLiquidityPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | AbstractLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | HookableLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseLendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | DateUtils | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPermissionlessLoansDeployer | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | ILenderHook | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPeerToPeerOpenTermLoan | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | AddressWhitelist | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | LightweightOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedCall | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC20v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC4626v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedClaimOnlyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | IAllocable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TokenizedAccount | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc061d3...674f94` — deployed 2025-04-28 16:30:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x96c6cb...44b1fb` — deployed 2025-04-04 17:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseTokenizedAccount | unmatched — not counted | — | listed in scope | no |
| 22.03.18 - Fractal Final Report.pdf | Vault | unmatched — not counted | — | Target in finding 3.1 | no |
| 22.03.18 - Fractal Final Report.pdf | FractalVaultV1 | unmatched — not counted | — | Target in findings 3.3 and 3.4 | no |
| 22.03.18 - Fractal Final Report.pdf | Mintable | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | AddressWhitelist | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | Migrations | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | DexLibrary | unmatched — not counted | — | Target in finding 3.2 | no |
| 22.03.18 - Fractal Final Report.pdf | DateUtils | unmatched — not counted | — | Target in findings 3.7 and 3.8 | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | RedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | stUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | ManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Blacklistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Greenlistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IStUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | RedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | mTBILL | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | ManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasInitializable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Greenlistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IMTbill | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x53f971...4c8425` | BeatPot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x669abe...bc0cc1` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x949a72...3e6f29` | dnHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x8858a3...09c39b` | dnPUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x057ced...6e8a61` | hbUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e1052...2e61eb` | hbUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6eb672...dc05f8` | hbXAUt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x441794...489d29` | liquidHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x7b5bd5...709d03` | lstHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ff336...f83476` | PreLiquidationFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfd32fa...91c75d` | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x96c6cb...44b1fb` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc061d3...674f94` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x042e82...77ba34` | wVLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 158 |
| upstream | 10 |
| standard_library | 18 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 99 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: unique_name=13

Zero-match audit list:

- [3867] Audits (GitHub directory)
- [3868] docs.morpho.org/get-started/resources/audits
- [3870] Codespect.pdf
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf
- [3882] 22.03.18 - Fractal Final Report.pdf
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf
- [3885] audits.sherlock.xyz/contests/332

Fork inheritance lineage and inherited audits are included when available.
