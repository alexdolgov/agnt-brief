# Agentic Audit Brief: infiniFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: infiniFi (`infinifi`)
- Website: [https://infinifi.xyz](https://infinifi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 162 unique implementations (230 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $65,241,398.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for infiniFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across arbitrum, bsc, ethereum, plasma. Structural roles: 24 unclassified, 5 supporting, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: unclassified (24), supporting (5), core (3)
- Contract kinds: contract (32)
- Detected standards: pausable (4), ownable (3), accesscontrol (2), erc165 (2), erc20 (2)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4de0b0...0713db`, chain 9745)
- UnnamedContract (`0xa5e0a9...1dfc3b`, chain 9745)
- FarmRegistry (`0xf5f271...c46119`, chain 1)
- InfiniFiOFT (`0x60b14e...ebdf09`, chain 56)
- InfiniFiOFT (`0x9fa120...9f1c10`, chain 56)
- LockedPositionToken (`0x12b004...258442`, chain 1)
- LockedPositionToken (`0x3a744a...2cf8bb`, chain 1)
- LockedPositionToken (`0x3d360a...c2d644`, chain 1)
- LockedPositionToken (`0x66bcf6...156078`, chain 1)
- LockedPositionToken (`0xb06cc4...bc9707`, chain 1)
- LockedPositionToken (`0xbb5ca7...c912e1`, chain 1)
- LockedPositionToken (`0xbd3f98...bf087a`, chain 1)
- LockedPositionToken (`0xd15fbf...cc26d5`, chain 1)
- LockedPositionToken (`0xed030a...be4fcd`, chain 1)
- LockedPositionToken (`0xed2a36...444a0a`, chain 1)
- LockedPositionToken (`0xf0c4a7...57d7d1`, chain 1)
- LockedPositionToken (`0xf1839b...8ff361`, chain 1)
- LockedPositionToken (`0xf68b95...215085`, chain 1)
- ManualRebalancer (`0x160300...5c1d8a`, chain 1)
- ReceiptToken (`0x48f9e3...e3d89c`, chain 1)
- ReceiptToken (`0x626c23...134d54`, chain 9745)
- SafeProxy (`0x80608f...c2400c`, chain 1)
- StakedToken (`0xdbdc1e...389bcb`, chain 1)
- StakedToken (`0xe335ab...c39afd`, chain 9745)
- Timelock (`0x3d1848...1c48a9`, chain 1)
- Timelock (`0x4b174a...327c32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 32; live-surface rows included: 32 (29 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/38 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 128 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 29 of 162 unique; 133 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/94
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 162
- Raw deployments: 230
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a5c5d...e842b3`; plasma `0xdeb028...ce765f` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-242652 | `0x888888...58f946` | ⚠️ Unaudited |
| AfterMintHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xa5e274...4797a8`; plasma `0x1b286d...4de53d` | ⚠️ Unaudited |
| AllocationVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0x49fa67...0ff853`; plasma `0x13dd80...043bb6` | ⚠️ Unaudited |
| AssetsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a139...cd8619` | ⚠️ Unaudited |
| AutoFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15dc4c...bbb56c`; ethereum `0x92c3a5...c665bf` | ⚠️ Unaudited |
| BeforeRedeemHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0x4b2bfe...f61395`; plasma `0x44f949...a9c03b` | ⚠️ Unaudited |
| CapFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x31fb25...24c731`; ethereum `0x35f9eb...a06b87`; ethereum `0xac21b2...48b694` | ⚠️ Unaudited |
| CoWSwapFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce17...baffa7` | ⚠️ Unaudited |
| EmergencyWithdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa406af...fe26e9`; plasma `0xcb4416...dd44af` | ⚠️ Unaudited |
| ERC4626Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x05b9e7...a97e93`; ethereum `0x082de0...e00bb3`; ethereum `0x1484d6...65657a`; ethereum `0x1d2ed9...ed9f5c`; ethereum `0x4f6900...19ad88`; ethereum `0x6fbc44...a407a5`; ethereum `0xbafdc4...e8d527`; ethereum `0xf7f724...8ab884` | ⚠️ Unaudited |
| ERC4626FarmWithMaturity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d2e8...c35b78` | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x36cc59...245b2a`; ethereum `0x41646d...f66772`; ethereum `0x649243...94d95d`; ethereum `0xcb15a0...f7d4a7`; ethereum `0xe2d3f6...4b54d8`; ethereum `0xef985c...6889c2`; ethereum `0xfa503f...a0440e` | ⚠️ Unaudited |
| EUSDEMigrationFarm | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb48b...5af976` | ⚠️ Unaudited |
| FarmRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242641 | `0xf5f271...c46119` | ⚠️ Unaudited |
| FarmRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x73ab24...c88861` | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0b8325...6c1cb5`; ethereum `0x10f8ef...864dab`; ethereum `0x2630bb...d05083`; ethereum `0x3d6270...c4af13`; ethereum `0x51fc27...cff758`; ethereum `0x64b32f...e2e8f5`; ethereum `0x7ab218...753524`; ethereum `0x8abc95...b344c1`; ethereum `0xa53284...bd4bc1`; ethereum `0xb2dbfe...d46790`; ethereum `0xb52af3...745775`; ethereum `0xd15270...a3a79b`; ethereum `0xd16bf3...c3f3bf` | ⚠️ Unaudited |
| FluidRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: ethereum `0xd0ec80...65241e`; plasma `0x7ba3bc...4995a5`; plasma `0xc1fe7f...eb9bae` | ⚠️ Unaudited |
| FxSaveFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c06c...9beabc` | ⚠️ Unaudited |
| GauntletAlphaFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f59b7...608c25` | ⚠️ Unaudited |
| GPv2Settlement | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242628 | `0x9008d1...60ab41` | ⚠️ Unaudited |
| InfiniFiCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242643 | `0xf6d487...d25490` | ⚠️ Unaudited |
| InfiniFiCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x160300...5c1d8a`; plasma `0x4b174a...327c32` | ⚠️ Unaudited |
| InfiniFiGatewayV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7954d5...296d33` | ⚠️ Unaudited |
| InfiniFiGatewayV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04b37...1fb41f` | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242653 | 2 deployments: ethereum `0x3f04b6...7625b5`; ethereum `0xb44e49...fbffb6` | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | project_anchor | own_supporting | 1 | plasma | unit-242654 | 2 deployments: plasma `0x64d9c2...cc98a0`; plasma `0x7a3e70...578692` | ⚠️ Unaudited |
| InfiniFiMintOVaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x322135...ecc22d`; ethereum `0x728fab...714fad` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-242644 | `0x60b14e...ebdf09` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-242645 | `0x9fa120...9f1c10` | ⚠️ Unaudited |
| InfiniFiOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f2106...5bc3c0`; ethereum `0xdd1cb2...cb3005` | ⚠️ Unaudited |
| InfiniFiReceiptTokenSYAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf8b24d...120600` | ⚠️ Unaudited |
| InfiniFiStakedTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xabd98b...fe83c7`; plasma `0xeb32a3...6b6fd7` | ⚠️ Unaudited |
| InfiniFiStakeOVaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3f59f8...8ae245`; ethereum `0x6375d2...1d71e9` | ⚠️ Unaudited |
| LevelFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be546...ca124c` | ⚠️ Unaudited |
| LevelOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbc64...7d7e51` | ⚠️ Unaudited |
| LiquidationFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ad60c...07592a`; ethereum `0xda40ce...db1a11` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242617 | `0x12b004...258442` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242620 | `0x3a744a...2cf8bb` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242622 | `0x3d360a...c2d644` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242626 | `0x66bcf6...156078` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242630 | `0xb06cc4...bc9707` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242631 | `0xbb5ca7...c912e1` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242632 | `0xbd3f98...bf087a` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242634 | `0xd15fbf...cc26d5` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242637 | `0xed030a...be4fcd` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242638 | `0xed2a36...444a0a` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242639 | `0xf0c4a7...57d7d1` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242640 | `0xf1839b...8ff361` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242642 | `0xf68b95...215085` | ⚠️ Unaudited |
| LockingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d95cc...037ff7`; plasma `0x43c1c7...448d1c` | ⚠️ Unaudited |
| ManualRebalancer | adapter | project_anchor | own_supporting | 0 | ethereum | unit-242618 | `0x160300...5c1d8a` | ⚠️ Unaudited |
| MapleFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f9f59...a922f7`; ethereum `0x6e6e73...8c4acd`; ethereum `0xf56e94...8163b3` | ⚠️ Unaudited |
| MaturedFarmCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x607b5a...d4fa56` | ⚠️ Unaudited |
| MerklRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x7a6724...b661c6`; plasma `0x9b3bf0...396754` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242625 | `0x6131b5...6337b5` | ⚠️ Unaudited |
| MidasFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7373a7...d31679`; ethereum `0xf4ea3e...c4cecf` | ⚠️ Unaudited |
| MigrationController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5403...1839f8` | ⚠️ Unaudited |
| MinorRolesManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xa08bf8...66be9b`; plasma `0x2c0dfa...c19fe7` | ⚠️ Unaudited |
| MintController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49877d...a4c256`; plasma `0x6f8a9e...33bc66` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b300...19ed91` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d...c10ecc` | ⚠️ Unaudited |
| OVault_iUSD_siUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6345d9...a47fef`; ethereum `0xea52ce...59f3a3` | ⚠️ Unaudited |
| OVault_USDC_iUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ddbdc...55f105`; ethereum `0xefaf2b...02ab00` | ⚠️ Unaudited |
| OVault_USDC_siUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fac6a...6491f7`; ethereum `0xdc78ff...0bf016` | ⚠️ Unaudited |
| PendleCamelotV1VolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x239c7c...64c56e` | ⚠️ Unaudited |
| PendleInfinifiSIUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13dd80...043bb6` | ⚠️ Unaudited |
| PLSmoother | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32456...ed57a4` | ⚠️ Unaudited |
| PLSmootherHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215c7f...b010b8` | ⚠️ Unaudited |
| PrimeBrokerFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd1ea1...a83de4` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242623 | `0x48f9e3...e3d89c` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | plasma | unit-242648 | `0x626c23...134d54` | ⚠️ Unaudited |
| RedeemController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xcb1747...ec7601`; plasma `0xb6931f...f2616d` | ⚠️ Unaudited |
| ReservoirFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f53c1...3d86de` | ⚠️ Unaudited |
| ResolvOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x862bf0...d48171` | ⚠️ Unaudited |
| RWAEscrowFarm | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04d552...9f3271`; ethereum `0x277fdf...0884c1`; ethereum `0x75b4d3...ffad5f`; ethereum `0x9e5efc...451852`; ethereum `0xe919c6...f181cf` | ⚠️ Unaudited |
| RWAEscrowRateManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f6fa...6d4189` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242651 | `0x80608f...c2400c` | ⚠️ Unaudited |
| sGHOFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9aa4...92158d` | ⚠️ Unaudited |
| StakedToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242635 | `0xdbdc1e...389bcb` | ⚠️ Unaudited |
| StakedToken | token | project_anchor | own_supporting | 0 | plasma | unit-242650 | `0xe335ab...c39afd` | ⚠️ Unaudited |
| SwapFarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb32a3...6b6fd7` | ⚠️ Unaudited |
| SwapFarmV2WithMaturity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x75381e...ac568e`; ethereum `0x84ff7e...3fe4ee`; ethereum `0xe945de...751ea4` | ⚠️ Unaudited |
| TestOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90c9b...79cb00` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-242621 | `0x3d1848...1c48a9` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-242624 | `0x4b174a...327c32` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: plasma `0x0c206b...8927a3`; plasma `0x3d1848...1c48a9`; plasma `0xd105b9...e71ae1`; plasma `0xd54c8f...108b3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xad8e0c...af8b26`; plasma `0xec59c2...c70a9a` | ⚠️ Unaudited |
| UnstakeAndRedeemHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0122...339dfe` | ⚠️ Unaudited |
| UnwindingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7092a4...b3dfcc`; plasma `0xbf69a4...752488` | ⚠️ Unaudited |
| YieldSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e8b92...aea967` | ⚠️ Unaudited |
| YieldSharingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: ethereum `0x1cb9ed...d1f579`; plasma `0x133090...986c9c`; plasma `0x9b5ae9...851282` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d5dbf...1407e5`; ethereum `0x90e91f...bbae3b` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28a28...5642d9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleInfinifiSIUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f3050...9aa920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b449b...a0f685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5702...4a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c000...1c9a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c000...0bd17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4de0b0...0713db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555b6e...7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b14e...ebdf09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626c23...134d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d9c2...cc98a0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242629 | `0x9a9fa8...1650c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa120...9f1c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11ce6...3e0679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e0a9...1dfc3b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242633 | `0xc92e8b...fe0110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa00a...880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde3eb...a5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b474...40abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe335ab...c39afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf294ad...c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa339b...c7538a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x05266d...59863c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0a99b6...11ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0afcd2...1430c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0cac05...1526a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0e09aa...61cb99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x10f8ef...864dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x119c12...29035c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x132c45...dccf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x19f241...51b076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1cb58c...36b050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1d2ed9...ed9f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x227f23...d6dbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2320eb...044445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x234546...7a0ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2ab982...16dd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2e13c3...f8a19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3f04b6...7625b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4167c3...c78fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x43cc95...d361e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x456ab3...410dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4b2bfe...f61395` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242647 | `0x4de0b0...0713db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5feaad...c52777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60a0c8...fecab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x669345...27c95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6fbc44...a407a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7693b3...7af86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7954d5...296d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x872909...6e71ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8a98c4...25ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x929335...77842a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x944637...d1afa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x990150...698eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9f3050...9aa920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9ff50a...7356ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa2b300...19ed91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa4ad55...3ccdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242649 | `0xa5e0a9...1dfc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xac32d4...f6eb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb5734d...ae2a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbfd5fc...1c3580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcfdd5c...76a4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd91edc...11bdb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf31ec6...e5c37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf7f724...8ab884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfa10e3...a3da4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc4909...dc9497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ackee-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [ChainSecurity.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Dedaub-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 36 | high |
| [Spearbit.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Spearbit.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | medium |
| [WatchPug-LpOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [WatchPug-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [WatchPug-Part 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [WatchPug-PtOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [WatchPug-sAPE.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-sAPE.pdf) | WatchPug | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4769] Ackee-Part 1.pdf — no match: Extracted contract names from System Overview and findings targets. Excluded files listed as out of scope. Audit date from document revision and citation.
- [4772] ChainSecurity.pdf — no match: All contract names extracted from the scope table in section 2.1. Audit date from cover page.
- [4773] Dedaub-Part 1.pdf — no match: All contracts listed in the scope section of the audit report.
- [4776] Spearbit.pdf — no match: No explicit scope section; contracts extracted from findings context. Audit date from report cover page.
- [4777] WatchPug-LpOracle.pdf — no match: The audit report covers Pendle LP Oracle smart contracts. The main contracts in scope are PendleLpOracleLib and PendlePtOracleLib, with dependencies OracleLib and MarketMathCore. The audit date is explicitly stated as May 26, 2023.
- [4778] WatchPug-Part 1 Follow Up 1.pdf — no match: Extracted contract names from findings and referenced files. No explicit scope section found; contracts are those mentioned in the audit findings.
- [4779] WatchPug-Part 1 Follow Up 2.pdf — no match: Extracted contract names from file paths and findings. Audit date from delivery date.
- [4780] WatchPug-Part 1.pdf — no match: Extracted 10 contract names from the audit report's scope and findings sections. The audit date is explicitly stated as June 28, 2022.
- [4781] WatchPug-Part 2.pdf — no match: Extracted contract names from the audit report's scope and findings sections. The report covers Pendle v2 (Part 2) with a focus on liquidity mining and voting contracts.
- [4782] WatchPug-PtOracle.pdf — no match: Audit report for Pendle PT Oracle project. Scope includes PendlePtOracle and PendlePtUsdChainlinkOracle contracts.
- [4783] WatchPug-SparkLinearDiscountOracle.pdf — no match: Only one contract in scope: PendleSparkLinearDiscountOracle. Audit date from delivery date.
- [4784] WatchPug-sAPE.pdf — no match: Only one contract, PendleApeStakingSY, is explicitly in scope. The report also references TokenHelper.sol but it is a library, not a contract in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ackee-Part 1.pdf | SCYBase | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | RewardManager | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarket | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleRouter | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | finding M1 target | no |
| Ackee-Part 1.pdf | Math | unmatched — not counted | — | finding M2 target | no |
| Ackee-Part 1.pdf | MarketMathAux | unmatched — not counted | — | finding I2 mentions swapScyForExactPt in MarketMathAux | no |
| ChainSecurity.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | InterestManagerYT | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20Permit | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | MiniHelpers | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | TokenHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | LogExpMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | BoringOwnableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | ArrayLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | OracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleGauge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarket | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | MarketMathCore | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBase | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBaseWithRewards | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PYIndex | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYUtils | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleWstEthSY | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManagerAbstract | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleLpOracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracleLib | unmatched — not counted | — | listed in scope table | no |
| Dedaub-Part 1.pdf | PendleJoeSwapHelperUpg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYUtils | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYIndex | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MiniDeployer | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LibRLP | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketApproxLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketMathCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleMarket | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionYT | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCallback | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | CallbackHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC20 | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleRouter | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleBtrflySCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleWstEthSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PermissionsV2Upg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleGovernanceManager | unmatched — not counted | — | listed in scope | no |
| Spearbit.pdf | RewardManagerAbstract | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleCamelotV1VolatileSY | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleYieldToken | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | RewardManager | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | InterestManagerYT | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | MarketMathCore | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleLpOracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendlePtOracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | OracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PYIndex | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | SYUtils | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PMath | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | LogExpMath | unmatched — not counted | — | mentioned in finding context | no |
| WatchPug-LpOracle.pdf | PendleLpOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | PendlePtOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | OracleLib | unmatched — not counted | — | Referenced in finding WP-I2. | no |
| WatchPug-LpOracle.pdf | MarketMathCore | unmatched — not counted | — | Referenced in findings as a dependency. | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in findings H1, L2, H3 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in findings M4, H7, G8 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | Listed in finding L5 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionCallback | unmatched — not counted | — | Listed in findings L6, H7 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBase | unmatched — not counted | — | Referenced in findings L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYUtils | unmatched — not counted | — | Referenced in findings H1, L6 | no |
| WatchPug-Part 1 Follow Up 1.pdf | RewardManagerAbstract | unmatched — not counted | — | Referenced in findings M4 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenHelper | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleRouter | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | ActionCallback | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleMarket | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | SCYIndex | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | SCYBase | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | Listed in scope and finding WP-I1 | no |
| WatchPug-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in scope and findings (WP-G2, WP-I3) | no |
| WatchPug-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | Listed in scope and finding WP-I3 | no |
| WatchPug-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in scope and finding WP-H4 | no |
| WatchPug-Part 1.pdf | PendleMarket | unmatched — not counted | — | Listed in scope and finding WP-L6 | no |
| WatchPug-Part 1.pdf | MarketMathCore | unmatched — not counted | — | Listed in scope and findings (WP-I7, WP-G10) | no |
| WatchPug-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | Listed in scope and finding WP-I7 | no |
| WatchPug-Part 1.pdf | RewardManager | unmatched — not counted | — | Listed in scope and finding WP-I9 | no |
| WatchPug-Part 2.pdf | PendleVotingControllerUpg | unmatched — not counted | — | Listed in scope and findings (WP-M1, WP-L5, WP-I11) | no |
| WatchPug-Part 2.pdf | VotingControllerStorageUpg | unmatched — not counted | — | Listed in scope and findings (WP-M1, WP-I4) | no |
| WatchPug-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | Listed in scope and findings (WP-L2, WP-G8, WP-I10) | no |
| WatchPug-Part 2.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | Listed in scope and findings (WP-I3, WP-I9) | no |
| WatchPug-Part 2.pdf | PendleMarketFactory | unmatched — not counted | — | Listed in scope and findings (WP-I4) | no |
| WatchPug-Part 2.pdf | PendleGauge | unmatched — not counted | — | Listed in scope and findings (WP-I6, WP-G7) | no |
| WatchPug-Part 2.pdf | CelerSenderUpg | unmatched — not counted | — | Listed in scope and findings (WP-I10, WP-I11) | no |
| WatchPug-Part 2.pdf | PendleMarket | unmatched — not counted | — | Listed in scope and findings (WP-I12) | no |
| WatchPug-PtOracle.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope and finding references | no |
| WatchPug-PtOracle.pdf | PendlePtUsdChainlinkOracle | unmatched — not counted | — | finding references | no |
| WatchPug-SparkLinearDiscountOracle.pdf | PendleSparkLinearDiscountOracle | unmatched — not counted | — | listed in scope table and referenced in findings | no |
| WatchPug-sAPE.pdf | PendleApeStakingSY | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf5f271...c46119` | FarmRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6d487...d25490` | InfiniFiCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f04b6...7625b5` | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x64d9c2...cc98a0` | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x60b14e...ebdf09` | InfiniFiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9fa120...9f1c10` | InfiniFiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12b004...258442` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a744a...2cf8bb` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d360a...c2d644` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66bcf6...156078` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb06cc4...bc9707` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb5ca7...c912e1` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd3f98...bf087a` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd15fbf...cc26d5` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed030a...be4fcd` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed2a36...444a0a` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0c4a7...57d7d1` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf1839b...8ff361` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf68b95...215085` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x160300...5c1d8a` | ManualRebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48f9e3...e3d89c` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x626c23...134d54` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdbdc1e...389bcb` | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xe335ab...c39afd` | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d1848...1c48a9` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b174a...327c32` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 130 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, medium=1
- Match method counts: n/a

Zero-match audit list:

- [4769] Ackee-Part 1.pdf
- [4772] ChainSecurity.pdf
- [4773] Dedaub-Part 1.pdf
- [4776] Spearbit.pdf
- [4777] WatchPug-LpOracle.pdf
- [4778] WatchPug-Part 1 Follow Up 1.pdf
- [4779] WatchPug-Part 1 Follow Up 2.pdf
- [4780] WatchPug-Part 1.pdf
- [4781] WatchPug-Part 2.pdf
- [4782] WatchPug-PtOracle.pdf
- [4783] WatchPug-SparkLinearDiscountOracle.pdf
- [4784] WatchPug-sAPE.pdf

Fork inheritance lineage and inherited audits are included when available.
