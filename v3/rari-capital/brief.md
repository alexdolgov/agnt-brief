# Agentic Audit Brief: Rari Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Website: [https://www.rari.capital/](https://www.rari.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 296 unique implementations (532 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,276,138.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rari Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across ethereum. Structural roles: 21 unclassified, 5 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: unclassified (21), supporting (5), core (4)
- Contract kinds: contract (30)
- Detected standards: erc1967proxy (7), ownable (2)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x016bf0...6922b0`, chain 1)
- UnnamedContract (`0x704bff...d8ec77`, chain 1)
- UnnamedContract (`0x7c332f...3dc399`, chain 1)
- UnnamedContract (`0xa27be1...021f5d`, chain 1)
- AdminUpgradeabilityProxy (`0x00815e...0e5561`, chain 1)
- AdminUpgradeabilityProxy (`0x0833cf...2d7648`, chain 1)
- AdminUpgradeabilityProxy (`0x1fa69a...cd98c7`, chain 1)
- AdminUpgradeabilityProxy (`0x3baa6b...8559ae`, chain 1)
- AdminUpgradeabilityProxy (`0x59fa43...13fce6`, chain 1)
- AdminUpgradeabilityProxy (`0x66f485...3da569`, chain 1)
- AdminUpgradeabilityProxy (`0x96ce4c...d82a7f`, chain 1)
- AdminUpgradeabilityProxy (`0x9c0cae...fc1043`, chain 1)
- AdminUpgradeabilityProxy (`0xa54b47...f9b98a`, chain 1)
- AdminUpgradeabilityProxy (`0xafd2aa...190d74`, chain 1)
- AdminUpgradeabilityProxy (`0xb465ba...7d9635`, chain 1)
- AdminUpgradeabilityProxy (`0xc6bf8c...8ddf4a`, chain 1)
- AdminUpgradeabilityProxy (`0xcda477...1d65f4`, chain 1)
- AdminUpgradeabilityProxy (`0xd291e7...6cc623`, chain 1)
- AdminUpgradeabilityProxy (`0xd6e194...61275e`, chain 1)
- AdminUpgradeabilityProxy (`0xfe98a5...202244`, chain 1)
- RariFundProxy (`0x35ddef...42c6e8`, chain 1)
- RariGovernanceToken (`0xb528e8...ab1520`, chain 1)
- RariGovernanceTokenUniswapDistributor (`0x7a2bba...f5f7b2`, chain 1)
- RariGovernanceTokenVesting (`0x5888e7...66840c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 273 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 154
- Confirmed-live implementations: 23 of 296 unique; 273 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/136
- Verified + Unaudited implementations: 136
- Verified by bytecode match: 0
- Unverified implementations: 160
- Unique implementations: 296
- Raw deployments: 532
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (136)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf61734...3d9d39` | ⚠️ Unaudited |
| AavePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1821c1...259c98` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391301 | 2 deployments: ethereum `0x0833cf...2d7648`; ethereum `0x704bff...d8ec77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8da386...730493` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391303 | 2 deployments: ethereum `0x96ce4c...d82a7f`; ethereum `0xa27be1...021f5d` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c869...80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9...98d817` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66126b...dea96d`; ethereum `0x6efa26...79bf61` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968030...69d7db` | ⚠️ Unaudited |
| BoostDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892d7...e10aaf` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x760ea8...dc0731` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x8dacbe...476958`; ethereum `0x931420...fd7df8`; ethereum `0xa283fc...559d5d`; ethereum `0xb1ad72...99851b`; ethereum `0xce1284...d33dc4`; ethereum `0xf5ad2b...352107` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadeedd...343c99` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd124b5...2a6207` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf65d53...75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf38522...8a3016` | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78befc...1a6c7b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 89 | ethereum | n/a | 90 deployments: ethereum `0x00ce8e...8ae5b8`; ethereum `0x027255...3f7e03`; ethereum `0x0302f5...1c3464`; ethereum `0x03b6bf...a2412b`; ethereum `0x04281f...326531`; ethereum `0x04543d...65901b`; ethereum `0x0879db...2d415a`; ethereum `0x09bd9e...072c15`; ethereum `0x0d8272...c8448b`; ethereum `0x0d9034...c9fdc9`; ethereum `0x10e095...3933d4`; ethereum `0x1531c1...51de44`; ethereum `0x17b1a2...664efc`; ethereum `0x185ab8...acc87c`; ethereum `0x195f83...328f92`; ethereum `0x19d13b...af410c`; ethereum `0x1db6b7...0ab714`; ethereum `0x1f9045...b344c7`; ethereum `0x1fc28e...aa464b`; ethereum `0x202586...0c933e`; ethereum `0x20d676...198158`; ethereum `0x213052...24fe59`; ethereum `0x22d207...6da145`; ethereum `0x2914e8...73e807`; ethereum `0x2d853a...43aa90`; ethereum `0x2f251e...528fc5`; ethereum `0x312688...25b21f`; ethereum `0x352169...b9c940`; ethereum `0x35a1ac...ab6d50`; ethereum `0x3e5c12...ea1a5d`; ethereum `0x41d3ab...5b6503`; ethereum `0x484d06...2c7637`; ethereum `0x4a9e32...ede2f6`; ethereum `0x4ac346...f5aac3`; ethereum `0x4c8700...97c77c`; ethereum `0x4e686e...9c2122`; ethereum `0x4f1481...450bb1`; ethereum `0x527983...21cce4`; ethereum `0x59bd67...a9ae25`; ethereum `0x6313c1...f0d9d1`; ethereum `0x63475a...17d931`; ethereum `0x65acb4...bec4e6`; ethereum `0x67130c...f2cd91`; ethereum `0x67db14...bbfcf9`; ethereum `0x6856f0...84ebcd`; ethereum `0x69aed4...7e0858`; ethereum `0x6d53b4...f7ad41`; ethereum `0x6eda4b...6ec97b`; ethereum `0x6f95d4...4a8cf2`; ethereum `0x78c15e...1acd16`; ethereum `0x85b294...e4812e`; ethereum `0x869192...f6b1e7`; ethereum `0x86afd7...6b6ff5`; ethereum `0x8a200f...7482b6`; ethereum `0x8ad747...80caff`; ethereum `0x8e0b2e...1c8cd8`; ethereum `0x8e4e02...f20d19`; ethereum `0x8eacb5...d2cfdf`; ethereum `0x8f0861...6ede00`; ethereum `0x94c495...359c7e`; ethereum `0x9b9b93...cba693`; ethereum `0xa37d6d...09433c`; ethereum `0xa6be84...605b0a`; ethereum `0xad1716...5670cc`; ethereum `0xb61946...77a6df`; ethereum `0xb9f873...ff4b00`; ethereum `0xc03bba...159e9a`; ethereum `0xc12b58...ad747e`; ethereum `0xca56af...c02abc`; ethereum `0xca9219...3371c9`; ethereum `0xcf9055...f7ee44`; ethereum `0xd09bf4...369595`; ethereum `0xd66922...a97d09`; ethereum `0xd8f379...72a87b`; ethereum `0xd9c110...66bb00`; ethereum `0xdb55b7...6b6cc9`; ethereum `0xe2451a...db185e`; ethereum `0xe33928...351441`; ethereum `0xe42de3...258e61`; ethereum `0xe640e9...cb30c4`; ethereum `0xe742e1...3d4ff6`; ethereum `0xeb37ce...82be39`; ethereum `0xeebc9d...e32cfd`; ethereum `0xf06f65...2a5963`; ethereum `0xf0fe94...cedc2c`; ethereum `0xf13c91...997ba9`; ethereum `0xf31737...890def`; ethereum `0xf574e2...c0a638`; ethereum `0xf9f0ef...011c3e`; ethereum `0xfb6b44...0bcb2f` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3dd0...a79ed1` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 8 deployments: ethereum `0x3490db...370ec3`; ethereum `0x3611bd...256652`; ethereum `0x3ab1e4...c2a7f8`; ethereum `0x4b789c...fb7535`; ethereum `0x6160aa...27eb8c`; ethereum `0x67e70e...5e706c`; ethereum `0x880e2b...989ee1`; ethereum `0x8c2ab5...483671` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 33 deployments: ethereum `0x037107...3e2cde`; ethereum `0x07a81e...73fd57`; ethereum `0x0a0406...c20656`; ethereum `0x137bbe...5d946d`; ethereum `0x1b332b...78582e`; ethereum `0x1f947e...b90e98`; ethereum `0x260ca1...0d989e`; ethereum `0x28f979...a1a60d`; ethereum `0x37356b...1b72e0`; ethereum `0x396cea...3fafe3`; ethereum `0x3f279c...536f44`; ethereum `0x3f3631...8640d5`; ethereum `0x4288e4...449f08`; ethereum `0x4cd2ed...597783`; ethereum `0x4fe680...cda164`; ethereum `0x532356...651bdf`; ethereum `0x5459ea...1c1133`; ethereum `0x6a6a5b...46f613`; ethereum `0x6f28b8...db6ced`; ethereum `0x7403a2...b5e1ee`; ethereum `0x7ab45c...4372a4`; ethereum `0x82eecf...b91c60`; ethereum `0x86fc4f...3f8449`; ethereum `0x8a6eb0...b57640`; ethereum `0x949186...261dda`; ethereum `0x98da94...3f7997`; ethereum `0xacfae4...b8c372`; ethereum `0xbbacea...049674`; ethereum `0xc10d8b...8ff6d4`; ethereum `0xc5b5e4...fd999f`; ethereum `0xdeeee4...c91e8a`; ethereum `0xeff71d...8a93af`; ethereum `0xff859f...dfe6c6` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 10 deployments: ethereum `0x258592...4b3c1b`; ethereum `0x29f0a2...cbfaff`; ethereum `0x53ca7a...0f0cae`; ethereum `0x54b12f...7000dc`; ethereum `0x95fd9a...8419c6`; ethereum `0x97fe54...133552`; ethereum `0xca1ee2...a9542b`; ethereum `0xd557c7...2afb87`; ethereum `0xf6551c...b89789`; ethereum `0xfa1057...38f56e` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60884c...f849ba` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x92cc95...d86fa1`; ethereum `0xd77e28...853cbf` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec5...af9876` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76f24e...4b99d3`; ethereum `0xe10242...3e1493` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0602a...d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058c34...b2112d` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f63e5...6c0e43` | ⚠️ Unaudited |
| CompoundIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd55684...9db735` | ⚠️ Unaudited |
| CompoundPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0d83...6af3f4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x8a78a9...4543fe`; ethereum `0x934c2b...3e7d81`; ethereum `0x94b220...3a994e`; ethereum `0xddcbad...4010d7`; ethereum `0xe16db3...c18217` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02beff...342ad4`; ethereum `0x46f196...f05f7e`; ethereum `0x896dfb...3594a1` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c534...5e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d169...48fe60` | ⚠️ Unaudited |
| DelayedProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8eb5...f92386` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d...2e9bba` | ⚠️ Unaudited |
| Ejector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71061e...7a0434` | ⚠️ Unaudited |
| FeederLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2837c7...4125de` | ⚠️ Unaudited |
| FeederManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ae54...0abd8b` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48c591...2c4ba7`; ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62aa1d...9e063c`; ethereum `0x9ab586...8c90e2` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa88328...22b9ea`; ethereum `0xb61a6f...4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4fb30c...90752d`; ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| FeederWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6611...9f3a35` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158...463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48...807cc5` | ⚠️ Unaudited |
| ForgeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca912...138ded`; ethereum `0xbb90d0...12eaa1` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce13...707583` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa73158...e18f85` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959db...375311` | ⚠️ Unaudited |
| FusePoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x835482...d5c77e`; ethereum `0xd662ef...919abd` | ⚠️ Unaudited |
| FusePoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc81c8...cc80c6` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa...75e650` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633...992b43` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecd...9c3249` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f6058...358b39`; ethereum `0x9ecc58...24c759` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663e01...e422e6` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91d9c2...2cefd6`; ethereum `0xfd6aca...da039f` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6141d9...a92514`; ethereum `0x8d3646...c91792` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc9...a0e1bf` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce55...b47415` | ⚠️ Unaudited |
| InterestValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x98c54f...f7ba0e`; ethereum `0xf1049a...ff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca480d...e7d705`; ethereum `0xd36050...0f2f3f` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x075538...12c1d7`; ethereum `0x4ef294...f2ad60`; ethereum `0x5fdcb6...b7a4df`; ethereum `0x640dce...54c317`; ethereum `0x8f47be...aba0a5`; ethereum `0xb579d2...09c04b`; ethereum `0xbab47e...15f819`; ethereum `0xc35db3...a11672`; ethereum `0xc8acad...d490ad`; ethereum `0xcdc0a4...36cfc7`; ethereum `0xe1d35f...fe6680`; ethereum `0xede473...bd40f7` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x87a59a...449b01`; ethereum `0x8bd8ec...e093cc`; ethereum `0xb7c77d...0d5b9d` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe595d6...1f1dbd` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e91f8...188848` | ⚠️ Unaudited |
| Masset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x69ad13...2b587f`; ethereum `0xb83a5a...686f7e`; ethereum `0xe0d0d0...3df1c4`; ethereum `0xe4c5b1...a7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x945fac...7330a1` | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e41f...9d5944` | ⚠️ Unaudited |
| MassetValidationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c5e03...eac89b`; ethereum `0xabcc93...c16911` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x188711...4a764d`; ethereum `0x4f2373...e36515`; ethereum `0xb3c8ee...36d8fb` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e53b...9bc7a5` | ⚠️ Unaudited |
| MetaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bed4...e9acd2` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda681d...df9001` | ⚠️ Unaudited |
| MStableHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15aad...f6e8a3` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe31...d5fa0e` | ⚠️ Unaudited |
| MStableVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10d96b...585a6e`; ethereum `0x7c4cf0...a5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b283...945aee` | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2f2a5...5935a5` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80...845eb3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x038e3f...886298`; ethereum `0x1c9aa5...2c6ad3`; ethereum `0x3cd782...ace0c0`; ethereum `0x482136...65e3b1`; ethereum `0x485dd1...613f61`; ethereum `0xa6ae69...b4605b`; ethereum `0xab2543...5fcc6e`; ethereum `0xec5572...b67cae` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x369855...f4e262`; ethereum `0x3f4931...e43657`; ethereum `0x6afe6c...b09a8d`; ethereum `0xd9f223...f91a3c` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391311 | 2 deployments: ethereum `0x66f485...3da569`; ethereum `0xdac458...be0d47` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391292 | `0x9245ef...dc3ffa` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391294 | `0xa42289...7e24b6` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391305 | 2 deployments: ethereum `0xafd2aa...190d74`; ethereum `0xb42bc0...2b43b8` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391298 | `0x59fa43...13fce6` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391304 | `0xb465ba...7d9635` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391300 | `0xc6bf8c...8ddf4a` | ⚠️ Unaudited |
| RariFundManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391312 | `0xd6e194...61275e` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391310 | 2 deployments: ethereum `0x00815e...0e5561`; ethereum `0xd7d2d9...4083c5` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391308 | 2 deployments: ethereum `0xc34d76...8954ee`; ethereum `0xfe98a5...202244` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391290 | `0x35ddef...42c6e8` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a785f...996d4d` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391293 | `0xa3cc9e...3ebe5c` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391296 | `0xe4dee9...b3b439` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391297 | 2 deployments: ethereum `0x17728f...96aa4d`; ethereum `0x3baa6b...8559ae` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391307 | 2 deployments: ethereum `0xb849da...5911c6`; ethereum `0xcda477...1d65f4` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x54745f...3596d9`; ethereum `0xcd8adb...9bb94d`; ethereum `0xf00d7d...af3117`; ethereum `0xf727c8...c8e2c1` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391306 | 2 deployments: ethereum `0xb528e8...ab1520`; ethereum `0xd291e7...6cc623` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391309 | `0x9c0cae...fc1043` | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391302 | 2 deployments: ethereum `0x1fa69a...cd98c7`; ethereum `0x7a2bba...f5f7b2` | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2197ec...a8c99c`; ethereum `0x4650a8...a80525`; ethereum `0xbbd1b9...fd4571` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391299 | 2 deployments: ethereum `0x5888e7...66840c`; ethereum `0xa54b47...f9b98a` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6526fa...d6d027` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7fd9da...c47ada`; ethereum `0xc0ce1e...5a2708` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x014b22...78f436`; ethereum `0xdee870...566d79` | ⚠️ Unaudited |
| RevenueRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa78242...14fed5`; ethereum `0xffe2cd...6b6bec` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dfdf...916c50` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7...80aaed` | ⚠️ Unaudited |
| SaveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cb157...270eb9`; ethereum `0xd7c346...09dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c728f...572a39`; ethereum `0x3563cb...0b2bf8`; ethereum `0xcf3f73...b2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17d8cb...7a6c24` | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30647a...7eac19` | ⚠️ Unaudited |
| SavingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6f0566...e07d3f`; ethereum `0x7046b0...815370`; ethereum `0x7594ae...e46136`; ethereum `0x84e563...2ee6d1`; ethereum `0x9781c4...b6b301`; ethereum `0xcefcbb...50234f` | ⚠️ Unaudited |
| SimpleAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda13e3...b178fd` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf22...5e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f6...b4ed9c` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d4cd2...f94be4`; ethereum `0x6de3a9...651fb5`; ethereum `0x9b4aba...6c9a6f`; ethereum `0xe6e6e2...a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x259702...ad4e70`; ethereum `0x881c72...790c80`; ethereum `0xf4a7d2...f7f027`; ethereum `0xf7575d...baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54d06a...f603f3` | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd409c5...06d30a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2859e4...bba8ee`; ethereum `0x3a4498...e2d1c8`; ethereum `0x8ace03...1d19fc` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6c806e...739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6bcc07...fd125d`; ethereum `0x6dc585...836eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc76190...44165d`; ethereum `0xec929d...ad7117` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f42c...86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x480bae...4fe79f`; ethereum `0x552163...aca0ea`; ethereum `0x9ee412...e53208`; ethereum `0xc9ad18...d1c853`; ethereum `0xd4219c...017372`; ethereum `0xf411cd...ec9edf` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1860b...24ebdb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a797...cacf04` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29490a...77d29b`; ethereum `0xb7678d...b0f906` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed20...1ff9f1` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4...71c517` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4...1d5f1a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (160)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x5e829d997294f7f1d40a45c0f6431af13a381e63) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bbf31...2cd76c`; ethereum `0x5e829d...381e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015e43...88f757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391288 | `0x016bf0...6922b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0573cc...576d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084ec1...49a6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122ee0...75d02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ee02...909f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1510c1...46d4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159dc8...fef013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1e7b...7f8ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5655...a54ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1ec...071a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c77d2...3a9baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216c30...68e1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f9ce...96ecb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290e0f...557245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b88f7...06dd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba5f8...914da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0cd5...b0fe63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2da13a...adc651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f116c...0553d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3288a2...325de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f738...94982a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472f7...c64b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3659a0...f552e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c909...736c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397f22...13d1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8a76...08eae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3adc1f...b6bf1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1c9f...5c6888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0ae9...ba80d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f44ca...7a5e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f579f...ec9966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402026...1c9ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c7f2...27452f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e004...1c0d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a4af...8baf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af56e...599874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4afb2b...f477e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d10ca...959ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9e06...173735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9b31...34c7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50293e...f592c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5447c8...7176cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545d7c...6755dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55448f...426b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a729...af29a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c3e7...b47012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594bca...7b1aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aab54...bb1d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5add5c...095d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aeeb3...3f7cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2df2...bec4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a315...96c054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6127e3...4cde98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619de9...65557d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626a6f...723890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626d69...13bc11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b79a...646fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66159b...ae7b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679680...5b2f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac6a...2d51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab249...70af09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd8e1...219a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e345...e12c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710416...1bb790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72609c...c47ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ad93...c9ba4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72fd4c...fd851a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7328a0...f5a3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771575...59ea9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775234...4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc6da...8af007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391291 | `0x7c332f...3dc399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c99ae...fa3f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ecaf9...63e0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80829b...51cd89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83728b...14b814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85aaa6...742c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a405...e23e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884159...cbfdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e4a3...70a721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c1e81...a69d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8db188...69b958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9e1a...232e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3eaa...60be20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948e58...4dae66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b687...74fcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e6e9...e0afe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f7cb...8219ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a1c51...c114c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e35ce...bf52d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa9ff...9b0fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13a42...0b24cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18c88...5b8c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa32858...0aaa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f8dd...6ea928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae130f...4019cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7c21...6e4aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04be6...9b5c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb202ca...b9792e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e8e4...cb7000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5eeae...fc2784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb669d0...2b668b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb77a6...0f873b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29f8...7fea4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf8abd...8d854f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc09e98...92b39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d4c4...a204e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11581...a808fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc201b8...dd6a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7a842...4af3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8448...922fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe7a8...567157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc29fe...5c140e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a758...c184a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57ba8...f22e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a8ca...e39869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7590e...b8228a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80678...2431fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9456c...3d8ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a294...184544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9eefd...c1ea21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb0d8...6b5530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf281...afd001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde6796...35fc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeacc4...a78f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17852...92a29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23b82...4d0042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe26463...bf6f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5bb43...c47d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7db5c...79b9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb988f...bfe357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc075...c35ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebea14...9d0163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7577...7440b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2cd6...7c623f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1a4e...a13cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3035...165ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb106...65d3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02391...7388b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0f3a1...fc13d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3a36b...e86b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c10a...7dbf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c914...719f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8731e...c9ed36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc9ec...1fb7f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7 — no match: The provided text is a URL and title, not the full audit report content. No contract names or scope section could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x66f485...3da569` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9245ef...dc3ffa` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa42289...7e24b6` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafd2aa...190d74` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x59fa43...13fce6` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb465ba...7d9635` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6bf8c...8ddf4a` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6e194...61275e` | RariFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00815e...0e5561` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc34d76...8954ee` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35ddef...42c6e8` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3cc9e...3ebe5c` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4dee9...b3b439` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17728f...96aa4d` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb849da...5911c6` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb528e8...ab1520` | RariGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c0cae...fc1043` | RariGovernanceTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fa69a...cd98c7` | RariGovernanceTokenUniswapDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5888e7...66840c` | RariGovernanceTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 115 |
| upstream | 15 |
| standard_library | 5 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7

Fork inheritance lineage and inherited audits are included when available.
