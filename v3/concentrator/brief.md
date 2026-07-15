# Agentic Audit Brief: Concentrator

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 34 (0 matched; 34 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Concentrator (`concentrator`)
- Website: [https://concentrator.aladdin.club/](https://concentrator.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 231 unique implementations (349 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $56,501,343.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Concentrator. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: unclassified (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Vyper_contract (`0x3f0e79...f2e5df`, chain 1)
- Vyper_contract (`0x5bc3dd...9c9dca`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 229 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 2 of 231 unique; 229 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 101
- Unique implementations: 231
- Raw deployments: 349
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 32 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6ecfa3...0122e8`; ethereum `0xab709e...952473` | ⚠️ Unaudited |
| Accumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x615959...88056f`; ethereum `0x65682c...bc4526`; ethereum `0xb1d778...e588a6`; ethereum `0xba445c...4776c8`; ethereum `0xc74c0e...9ee75b`; ethereum `0xe75da6...d88423` | ⚠️ Unaudited |
| AdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1662a5...adccf4` | ⚠️ Unaudited |
| AdapterRegistry | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd89f9...d4ea7b` | ⚠️ Unaudited |
| AladdinConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc8ff37...68e0e8` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6e3bb...bf99e1` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9...c73f86` | ⚠️ Unaudited |
| AngleMerklClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ee46...04515b` | ⚠️ Unaudited |
| AngleVaultGamma | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1649ff...f18ece`; ethereum `0x1e6f87...8d042d`; ethereum `0x4a277e...27bb2e`; ethereum `0xa0022d...ab89a6` | ⚠️ Unaudited |
| AutoCompoundingConvexFraxStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9cfd6...c58187` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01363d...a569d8`; ethereum `0x1b3a4e...62d2f1` | ⚠️ Unaudited |
| BoostMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa52f3d...c407f0`; ethereum `0xbc38d2...3fb6b8` | ⚠️ Unaudited |
| ClaimRewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097d23...bb79c6` | ⚠️ Unaudited |
| CLeverToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c20ac...972f86`; ethereum `0xf05e58...0ba904` | ⚠️ Unaudited |
| CompounderGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883fd3...f7df1f` | ⚠️ Unaudited |
| ControllerModule | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb3f463...017945`; ethereum `0xe56ce1...bde0b4` | ⚠️ Unaudited |
| ConvexFraxCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789e72...f1a034` | ⚠️ Unaudited |
| CRVDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c88a...c64026` | ⚠️ Unaudited |
| CRVPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9718...4c20aa` | ⚠️ Unaudited |
| CRVStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941550...46d8f7` | ⚠️ Unaudited |
| CurveShutdownStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x69d614...1ea2cd` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903a...8fb777` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac6...349545` | ⚠️ Unaudited |
| DarkParadiseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d1b5...e642c3` | ⚠️ Unaudited |
| DebtReducer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ac0a3...8e7cb4`; ethereum `0xf32ffd...0961ac` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5c48...58acb5` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11651...245681` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x51df76...9cfd2b`; ethereum `0x6d57d3...0d38f9`; ethereum `0xca9439...270d30` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae02...fa81c6` | ⚠️ Unaudited |
| FxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b9...f06d9b` | ⚠️ Unaudited |
| FXNAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87978a...5bfb13` | ⚠️ Unaudited |
| FXNAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1938...667ede` | ⚠️ Unaudited |
| FXNDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x799519...f1c7ab` | ⚠️ Unaudited |
| FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c35...cecb43` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9...c0ce01` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07d171...945f9a` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51...a7a851` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8...6d7f37` | ⚠️ Unaudited |
| GaugeMultiRewards | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c310f...4352d1` | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a8...c02956` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907...8a6784` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xa0fb1b...804e99`; ethereum `0xc40549...afe23f` | ⚠️ Unaudited |
| InflationReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f78dd...66820e`; ethereum `0xc9104e...4391ad` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c62...964e6a` | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786...fdaad1` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x28604f...44343a`; ethereum `0xf54bce...a0f68d` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4887ae...bd0cd8`; ethereum `0xc1e477...13ca3c` | ⚠️ Unaudited |
| LockerPreLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5ccb...cf0922` | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x231928...4b3f79`; ethereum `0x7e6a12...cde303`; ethereum `0xa5145f...af31e1` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea5e2...b61e1c` | ⚠️ Unaudited |
| MAVDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac34f...83a13c` | ⚠️ Unaudited |
| Merkle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414cbb...c10c29` | ⚠️ Unaudited |
| MerkleDistributorSdt | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf442e3...6f847f` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2989df...f7448c`; ethereum `0x9e0ee6...38b9fa` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36ecde...13a1ae`; ethereum `0xa95ce9...fc2066`; ethereum `0xabc6a4...514e98` | ⚠️ Unaudited |
| OnlyBoostAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3680cc...a7364f`; ethereum `0xa1b3d6...76350a`; ethereum `0xa1ffb2...dfdaa9`; ethereum `0xbcb9cc...4fae9c`; ethereum `0xc02385...d7de69`; ethereum `0xf59f24...e3f507` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x48af33...91bce7`; ethereum `0x63adcf...866a71`; ethereum `0x6d2cd2...f9a599`; ethereum `0xf82473...d7d578` | ⚠️ Unaudited |
| OpynPerpVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8f14...4fde1a` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6440e2...97c3db`; ethereum `0x695eb5...411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0084c2...63d703`; ethereum `0x323668...2380c8` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2be95a...d26f7f`; ethereum `0x69c408...3d7e10`; ethereum `0x9963e0...6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d73d3...7d4c3a`; ethereum `0x376909...03fbad`; ethereum `0x7bbfe4...bb1462`; ethereum `0x88f9e9...fc62ac`; ethereum `0x9af12d...ef97f9` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fdb73...870799`; ethereum `0x1359fc...f259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c...8b3cff` | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f8444...82ea93`; ethereum `0x21275a...b66b52` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b162d...87a3bb`; ethereum `0x8d4142...0a6280` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x05c630...da5653`; ethereum `0x4ae3be...69c815`; ethereum `0x81243a...cfc428`; ethereum `0x835191...174d7e`; ethereum `0xb25951...daa98b` | ⚠️ Unaudited |
| Redeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8a9c...c4d356` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3a4d...a5c6de` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5d...ee45ed` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e6746...e5521b`; ethereum `0x361f88...d5c8be`; ethereum `0x4fb944...a3c285`; ethereum `0x94172e...0e89d6`; ethereum `0xd36845...f44df7` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d1...657a7f` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x524fce...c3a3b3`; ethereum `0xc47bde...a7e336` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1...7b9c30` | ⚠️ Unaudited |
| RewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f1bb...c85ad7` | ⚠️ Unaudited |
| RewardReceiverMigrationModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c043d...cbfd46` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a207a...05ba12` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a6cf...505eef` | ⚠️ Unaudited |
| RouterModuleClaim | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd98ce...222ff5` | ⚠️ Unaudited |
| RouterModuleDeposit | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf0a5d...09b7c9` | ⚠️ Unaudited |
| RouterModuleMigrationStakeDAOV1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b84b...53c120` | ⚠️ Unaudited |
| RouterModuleVLSDT | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8155b8...557707` | ⚠️ Unaudited |
| RouterModuleWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88772...4cf63c` | ⚠️ Unaudited |
| Sanctuary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1486...1247d3` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe09...b130f5` | ⚠️ Unaudited |
| sdCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b565...f6abb5` | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26...476665` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43e54c...7b9922` | ⚠️ Unaudited |
| sdMAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x506875...bb02f9` | ⚠️ Unaudited |
| SdPendleBribeBurner | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bde1d...56ade2` | ⚠️ Unaudited |
| SdPendleCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x606462...c7fecf` | ⚠️ Unaudited |
| SdPendleGaugeStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94992d...dfe5cd` | ⚠️ Unaudited |
| SDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73968b...6cdb2f` | ⚠️ Unaudited |
| sdToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0c0575...85a43f`; ethereum `0x402f87...68ac36`; ethereum `0x4df454...118d9d`; ethereum `0x58aad8...b59ffd`; ethereum `0x5ea630...dc10a9`; ethereum `0x752b4c...00f87c`; ethereum `0xe19d1c...9653ad` | ⚠️ Unaudited |
| ShortPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0055e2...be82fa`; ethereum `0x7aed2b...9e1f70`; ethereum `0xf3d24b...10a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x218b68...d99801`; ethereum `0x22ba83...b0f3ff`; ethereum `0x6844aa...3f5e45`; ethereum `0x958df8...2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d35dc...174a74`; ethereum `0xb0c255...15e8d6`; ethereum `0xce744c...bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8...72aa3e` | ⚠️ Unaudited |
| StakeDAOCompounderBurner | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95420...c05d5b` | ⚠️ Unaudited |
| StakeDaoNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4f84...e66bd5` | ⚠️ Unaudited |
| StakeDaoNFT_V2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f572...5bb6cd` | ⚠️ Unaudited |
| StakeDaoNFT_V3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd223...e38ea2` | ⚠️ Unaudited |
| StakeDaoNFTPalace | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221738...8c751f` | ⚠️ Unaudited |
| StrategyWrapperLeverageRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07fa4c...64eebc`; ethereum `0x6382d8...1cdea3`; ethereum `0x94405b...da2580`; ethereum `0xdda6ad...e50240` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863f...e4e61a` | ⚠️ Unaudited |
| Token Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194...f71def` | ⚠️ Unaudited |
| UniformBoostProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3867...13c5b7` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5af15d...6e37b7`; ethereum `0xa2761b...075250`; ethereum `0xbc10c4...db7065`; ethereum `0xf3c2bd...56563f` | ⚠️ Unaudited |
| VeBoostDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xce00ad...6be923`; ethereum `0xfda13d...eb1688` | ⚠️ Unaudited |
| VeBoostDelegationMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xda9846...2bebdf`; ethereum `0xe1f9c8...63b9cf` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc790...6421e9` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2290ee...c10bdb`; ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e` | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e4f31...c54ced` | ⚠️ Unaudited |
| vlBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xab05ca...d2adda`; ethereum `0xba1b43...82f570` | ⚠️ Unaudited |
| vlSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x75d96b...e88ef1`; ethereum `0x94818a...0b80b8` | ⚠️ Unaudited |
| VoteBountyManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x752893...183e32`; ethereum `0xa20b14...10693f` | ⚠️ Unaudited |
| VoteWeightRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619ede...dd5a5c` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a...f1d469` | ⚠️ Unaudited |
| Voting Escrow v2.0.0 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09943c...a894a8` | ⚠️ Unaudited |
| vsdCRVOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b8d4...921e95` | ⚠️ Unaudited |
| vsdToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7346aa...3834fc`; ethereum `0xe079ac...96f3b8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 36 deployments: ethereum `0x051d7e...a74301`; ethereum `0x08780f...aa95da`; ethereum `0x1005f7...13d546`; ethereum `0x2932a8...3423f5`; ethereum `0x29f3dd...3e5d92`; ethereum `0x3175df...3473cc`; ethereum `0x33e411...7fdab0`; ethereum `0x4aa2af...18566a`; ethereum `0x501611...d160aa`; ethereum `0x552dad...357851`; ethereum `0x696b5d...72a53d`; ethereum `0x6d7871...6e5af3`; ethereum `0x72953a...581bbf`; ethereum `0x742c3c...de9571`; ethereum `0x75f8f7...fce882`; ethereum `0x81c46f...cd3dd7`; ethereum `0x86e917...cf114f`; ethereum `0x94be07...2e051e`; ethereum `0x99a584...b5788f`; ethereum `0x9b0254...7a2fe8`; ethereum `0x9f330d...2109d8`; ethereum `0xa1f8a6...24e577`; ethereum `0xa2d40e...ba628e`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xc50222...67f2f0`; ethereum `0xc78fa2...8cf247`; ethereum `0xcfc251...a59503`; ethereum `0xd09216...9d3778`; ethereum `0xdcef96...4241a2`; ethereum `0xe4c099...4b4968`; ethereum `0xf253f8...55a07f`; ethereum `0xf2f12b...82ba09`; ethereum `0xf3a433...0dc768`; ethereum `0xf43211...366c7a`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232180 | `0x3f0e79...f2e5df` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232181 | `0x5bc3dd...9c9dca` | ⚠️ Unaudited |
| YFIAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7793b...0d5fde` | ⚠️ Unaudited |
| YFIDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf908c0...2608c8` | ⚠️ Unaudited |
| YieldBasisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9aa6...595785` | ⚠️ Unaudited |
| YieldBasisFallbackHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325229...808ea9` | ⚠️ Unaudited |
| YieldnestDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0e63...a3352e` | ⚠️ Unaudited |
| yVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x24129b...975fed`; ethereum `0xb17640...af9567`; ethereum `0xcd6997...e70e84` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ef23...222619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d36c...ab8f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3...3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730...01d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0f27...cf1a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b132...7762a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x172573...194c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177eaa...70e7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0d72...eead09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce37b...1c8560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f4903...9f1d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe537...787fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210dfe...07a68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213119...42e209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ab51...a3bc4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2903db...6d0eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29e56d...8ef1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3e72...e1e3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b95a1...7e0884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b89...d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5e8c...39136b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3557bd...f63318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d107...c66270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060...c183c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cf54f...4450b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deb1b...297886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e7b4d...aa7ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e88f7...fbc574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4153f8...3f97d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad5a8...d908e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c2f99...1bef8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3736...dd996b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b47c...29346d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc9a...b8184e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51452b...64fde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518129...16c91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539e65...ca512c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716...0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576d7a...dbe080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588add...18370d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5892df...22d1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594061...a8dff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59866e...ada3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0944...007dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b75c6...a37bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfdf4...5479ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60136f...4318d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6037bb...e3ff64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x644a15...b26322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6543b0...a2a2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ef12...e53a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de...53cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760230...7339e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d5980...af98b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80a8ea...914e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592...4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88cae3...2b66be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x896451...38abc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8996cb...ccc265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917d8b...6f18cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cff1...2e3356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cc62...75f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x963bac...8f6563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6dc3...1573f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d967c...6f4510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebbb3...7cf5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa054b8...70e7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29646...a1339d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ecf0...a6359a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8a21...910bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf0...9413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae762a...e7e7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7691...96c918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae9ad1...fda964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc6ae...4f7814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ad6...be5aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb53943...035a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f963...cf99bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f790...0e9af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcfe5c...8d42e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf1f3...70c44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3040...da058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24d1f...c9a04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27917...76e973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69f52...d25ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b810...21e089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f15a...397bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf03d...6d3ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde65a1...be9375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec800...c8e359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42a46...f94f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c978...9cdc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe56d97...7e25db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb57...fc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702...d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39...5cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56c26...0c2166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57b53...cb87b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa86aa...6ec515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91ae...718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffec6c...8810fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AladdinETH_Report_v1.0_2022_12_22.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/AladdinETH_Report_v1.0_2022_12_22.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [SECBIT_AladdinCVX_v1.0_20221209.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.0_20221209.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SECBIT_AladdinCVX_v1.1_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinCVX_v1.1_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_AladdinDAO_aFXS_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_Report.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Furnace_Update_20221111.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SECBIT_Concentrator_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_Concentrator_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_Report_v1.1.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [SECBIT_Concentrator_aCRV_Update_20230203.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aCRV_Update_20230203.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SECBIT_Generic_CLever_Report.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_Generic_CLever_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_TokenSale_Report_v1.1.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_TokenSale_Report_v1.1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 29 | n/a |
| [SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [SECBIT_sdCRV_Report_v1.0_20230202.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.0_20230202.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SECBIT_sdCRV_Report_v1.2_20230616.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/SECBIT_sdCRV_Report_v1.2_20230616.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [TrailofBits_fx_oracle_202406.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_oracle_202406.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [TrailofBits_fx_protocol_202403.pdf](https://github.com/AladdinDAO/audit-reports/blob/main/TrailofBits_fx_protocol_202403.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [AladdinDao_V3_Report_Secbit.pdf](https://aladdin.club/audits/AladdinDao_V3_Report_Secbit.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf — no match: All contracts listed in section 2.2 Contract List are in scope. Audit date from title page.
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf — no match: No reason recorded
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf — no match: Only one contract name explicitly mentioned as a target in findings. No scope table or file listing provided.
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf — no match: Scope table lists 4 contracts: AladdinCVX.sol, AMOMath.sol, CLeverAMOBase.sol, RewardClaimable.sol. Audit date is December 9, 2022 from the report header.
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf — no match: Contracts listed in section 2.2 Contract List. Audit date from cover page: February 3, 2023.
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf — no match: No reason recorded
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf — no match: No reason recorded
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf — no match: No reason recorded
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf — no match: No reason recorded
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf — no match: Scope table explicitly lists MetaFurnace.sol and Furnace.sol. Audit date from report header: Nov 11, 2022.
- [5569] SECBIT_CLever_Report_v1.1.pdf — no match: No reason recorded
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf — no match: Extracted 5 contracts from scope table and 11 additional reviewed contracts. Audit date from title: March 8, 2023.
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf — no match: No reason recorded
- [5573] SECBIT_Concentrator_Report.pdf — no match: No reason recorded
- [5574] SECBIT_Concentrator_Report_v1.1.pdf — no match: No reason recorded
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf — no match: Scope table lists three contracts: AladdinCRVV2.sol, ConcentratorStrategyBase.sol, cvxCRVStakingWrapperStrategy.sol. Audit date from title.
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf — no match: No reason recorded
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf — no match: No reason recorded
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf — no match: No reason recorded
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf — no match: No reason recorded
- [5585] SECBIT_Generic_CLever_Report.pdf — no match: Contracts listed in 'Contract List' section of the audit report.
- [5586] SECBIT_TokenSale_Report_v1.1.pdf — no match: Only one contract, TokenSale, is in scope. The report mentions 'Concentrator contract' but it is not listed in scope; it appears to be a different contract. The audit date is from the report header.
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf — no match: No reason recorded
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf — no match: All five contracts from the scope table are extracted. The audit date is July 25, 2023, as stated in the title and introduction.
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf — no match: All contracts listed in section 2.2 Contract List are in scope.
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf — no match: No reason recorded
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf — no match: No reason recorded
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf — no match: No reason recorded
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf — no match: Extracted 6 contracts from the scope section (2.2 Contract List). Audit date from the report header.
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf — no match: Extracted 7 contracts from scope table and update note. Audit date from cover page and update note.
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf — no match: No reason recorded
- [5605] TrailofBits_fx_oracle_202406.pdf — no match: Extracted contract names from the 'Project Targets' section and detailed findings. The audit report date is July 10, 2024, as stated on the cover page and in the project timeline.
- [5606] TrailofBits_fx_protocol_202403.pdf — no match: No reason recorded
- [15350] AladdinDao_V3_Report_Secbit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AladdinETH_Report_v1.0_2022_12_22.pdf | FeeCustomization | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinETH | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorAladdinETHVault | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingConvexFraxStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AutoCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingCurveGaugeStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ManualCompoundingStrategyBase | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounder | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | listed in contract list | no |
| AladdinETH_Report_v1.0_2022_12_22.pdf | ConcentratorGeneralVault | unmatched — not counted | — | listed in contract list | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AddLiquidityHelper | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | GaugeRewardDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf | PlatformFeeDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf | AladdinCRV | unmatched — not counted | — | Target in finding PVE-001 and mentioned in code listings | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AladdinCVX | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | AMOMath | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | CLeverAMOBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.0_20221209.pdf | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AladdinCVX | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | CLeverAMOBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | RewardClaimable | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinCVX_v1.1_20230203.pdf | AMOConvexCurveStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinCompounder | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXS | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | AladdinFXSConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_Report.pdf | ConcentratorConvexVault | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | AladdinFXSV2 | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | BurnerBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterBase | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConverterRegistry | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | ConvexFraxCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | CvxFxsStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | PlatformFeeSpliter | unmatched — not counted | — | — | no |
| SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf | StakeDAOCompounderBurner | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | AllInOneGateWay | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveBasePoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveMetaPoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | ConcentratorCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | MetaFurnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | Furnace | unmatched — not counted | — | listed in scope table | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | StakeDaoHarvesterFacet | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | LibConcentratorHarvester | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounder | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCompounderWithStrategy | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | ConcentratorGeneralVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | CLeverAMOBase | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCVX | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVConvexVault | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinCRVV2 | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinFXS | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf | AladdinSdCRV | unmatched — not counted | — | mentioned as reviewed | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf | ConcentratorIFOVault | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRV.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinCRVZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVault.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinConvexVaultZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_Report_v1.1.pdf | AladdinZap.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | AladdinCRVV2 | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | ConcentratorStrategyBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aCRV_Update_20230203.pdf | cvxCRVStakingWrapperStrategy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf | CvxFxnStakingStrategy.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDCompounder4626.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf | FxUSDStandardizedYieldBase.sol | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorSdCrvGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOGaugeWrapper | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | ConcentratorStakeDAOLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | LegacyCompounderStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVBribeBurnerV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCRVLocker | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | SdCrvCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf | StakeDAOGaugeWrapperStash | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleBribeBurner | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleCompounder | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleGaugeStrategy | unmatched — not counted | — | — | no |
| SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf | SdPendleHelper | unmatched — not counted | — | — | no |
| SECBIT_Generic_CLever_Report.pdf | MataCLever | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | MetaFurnace | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | AladdinCRVStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorBatchStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | listed in contract list | no |
| SECBIT_Generic_CLever_Report.pdf | YieldStrategyBase | unmatched — not counted | — | listed in contract list | no |
| SECBIT_TokenSale_Report_v1.1.pdf | TokenSale | unmatched — not counted | — | listed in scope section and contract list | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ConvexCurveManagerImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | CvxFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ExponentialMovingAverage | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LidoConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearMultipleRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearReward | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | LiquidityManagerBaseImmutable | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | ManageableVesting | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | MultipleRewardAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | PlainVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolRegistry | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalancePoolSplitter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | RebalanceWithBonusToken | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SdFxnVestingManager | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | SharedLiquidityGauge | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | StETHAndxETHWrapper | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VestingManagerProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowBoost | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | VotingEscrowProxy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf | WordCodec | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalanceWithBonusToken | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHGateway | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | stETHTreasury | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | wstETHWrapper | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf | RebalancePool | unmatched — not counted | — | listed in scope table | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | ETHGateway | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | FractionalToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | LeveragedToken | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Market | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | StableCoinMath | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf | Treasury | unmatched — not counted | — | listed in contract list | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ChainlinkWstETHRateProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxETHTwapOracle | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | FxGateway | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | HarvestableTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Market | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | MultiPathConverter | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | ReservePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | StableCoinMath | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | Treasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | WrappedTokenTreasury | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf | wBETHProvider | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | MultipleRewardCompoundingAccumulator | unmatched — not counted | — | — | no |
| SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf | RebalancePoolGaugeClaimer | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AaveV3Strategy | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | AssetManagement | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | ConcentratorBase | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | FxUSDBasePoolV2Facet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | RewardHarvester | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSD | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | SavingFxUSDFacet | unmatched — not counted | — | — | no |
| SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf | StrategyBase | unmatched — not counted | — | — | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.0_20230202.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | AladdinSdCRV | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | SdCRVLocker | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOCRVVault | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOLockerProxy | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | StakeDAOVaultBase | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | VeSDTDelegation | unmatched — not counted | — | listed in scope table | no |
| SECBIT_sdCRV_Report_v1.2_20230616.pdf | ConcentratorVaultForAsdCRV | unmatched — not counted | — | mentioned in scope update | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | AutoCompoundingStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorCompounderBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBase | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | ConcentratorStrategyBaseV2 | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxCompounder | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | CvxStakingStrategy | unmatched — not counted | — | — | no |
| Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf | LinearRewardDistributor | unmatched — not counted | — | — | no |
| TrailofBits_fx_oracle_202406.pdf | FxBTCDerivativeOracleBase | unmatched — not counted | — | listed in scope and detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxSpotOracleBase | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | FxLSDOracleV2Base | unmatched — not counted | — | referenced in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | LeveragedTokenV2 | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_oracle_202406.pdf | SpotPriceOracle | unmatched — not counted | — | listed in detailed findings | no |
| TrailofBits_fx_protocol_202403.pdf | BoostableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ChainlinkTwapOracleV3 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ERC4626RateProvider | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FractionalTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxFrxETHTwapOracle | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxInitialFund | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxMarketV1Facet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxStableMath | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxTokenBalancerV2Wrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSD | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDRebalancer | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | FxUSDShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | GaugeControllerOwner | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LeveragedTokenWrapper | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | LibGatewayRouter | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | MarketV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ReservePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePool | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | ShareableRebalancePoolV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TokenConvertManagementFacet | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | TreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WrappedTokenTreasuryV2 | unmatched — not counted | — | — | no |
| TrailofBits_fx_protocol_202403.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRV | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinCRVZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVault | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinConvexVaultZap | unmatched — not counted | — | — | no |
| AladdinDao_V3_Report_Secbit.pdf | AladdinZap | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3f0e79...f2e5df` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5bc3dd...9c9dca` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 34
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 241 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5558] AladdinETH_Report_v1.0_2022_12_22.pdf
- [5559] PeckShield-Audit-Report-AladdinDAO-Concentrator-v1.0-20220704.pdf
- [5560] PeckShield-Audit-Report-AladdinV3Concentrator-v1.0.pdf
- [5561] SECBIT_AladdinCVX_v1.0_20221209.pdf
- [5562] SECBIT_AladdinCVX_v1.1_20230203.pdf
- [5563] SECBIT_AladdinDAO_aFXS_Report.pdf
- [5564] SECBIT_AladdinDAO_aFXS_V2_Report_v1.0_20230815.pdf
- [5565] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf
- [5567] SECBIT_Aladdin_aCVX_Report_v1.0_20231018.pdf
- [5568] SECBIT_CLever_Furnace_Update_20221111.pdf
- [5569] SECBIT_CLever_Report_v1.1.pdf
- [5571] SECBIT_Concentrator_Harvester_Report_v1.0_20230308.pdf
- [5572] SECBIT_Concentrator_IFO_Report_v1.2_20220701.pdf
- [5573] SECBIT_Concentrator_Report.pdf
- [5574] SECBIT_Concentrator_Report_v1.1.pdf
- [5575] SECBIT_Concentrator_aCRV_Update_20230203.pdf
- [5576] SECBIT_Concentrator_aFXN_Report_v1.0_20240726.pdf
- [5577] SECBIT_Concentrator_arUSD_Report_v1.0_20240618.pdf
- [5578] SECBIT_Concentrator_asdCRV_Update_Report_v1.0_20231228.pdf
- [5579] SECBIT_Concentrator_asdPENDLE_v1.0_20240813.pdf
- [5585] SECBIT_Generic_CLever_Report.pdf
- [5586] SECBIT_TokenSale_Report_v1.1.pdf
- [5591] SECBIT_f(x)_Protocol_New_Features_Report_v1.1_20231129.pdf
- [5592] SECBIT_f(x)_Protocol_RebalancePool_Report_v1.2_20230725.pdf
- [5593] SECBIT_f(x)_Protocol_Report_v1.0_20230614.pdf
- [5594] SECBIT_f(x)_Protocol_Update_Report_v1.1_20230917.pdf
- [5595] SECBIT_f(x)_Rebalance_Pool_Boost_Report_v1.0_20231213.pdf
- [5601] SECBIT_f(x)_fxSAVE_And_StabilityPoolUSDCStrategy_Report_v1.1_20250317.pdf
- [5602] SECBIT_sdCRV_Report_v1.0_20230202.pdf
- [5603] SECBIT_sdCRV_Report_v1.2_20230616.pdf
- [5604] Supremacy_AladdinDAO_aCVX_v1.0_20231228.pdf
- [5605] TrailofBits_fx_oracle_202406.pdf
- [5606] TrailofBits_fx_protocol_202403.pdf
- [15350] AladdinDao_V3_Report_Secbit.pdf

Fork inheritance lineage and inherited audits are included when available.
