# Agentic Audit Brief: Frax FPI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Frax FPI (`frax-fpi`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 433 unique implementations (433 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $160,517.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Frax FPI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2397321b301b80a1c0911d6f9ed4b6033d43cf51`, chain 1)
- GnosisSafe (`0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 431 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 2 of 433 unique; 431 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/108
- Verified + Unaudited implementations: 108
- Verified by bytecode match: 0
- Unverified implementations: 325
- Unique implementations: 433
- Raw deployments: 433
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (108)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitratorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8b301b90eb8801f1eefe73285eec117d2ffc95` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce6408f923326f81a7d7929952947748180f1e6` | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256e1bba846611c37cf89844a02435e6c098b86d` | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2cf21b157b2f203e37b616b619f438b5aa86ee5` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ff43b8a18b8ab76485283e42b4bd632e82d24` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9801acfdf3b8852865149d93acffef9120272d` | ⚠️ Unaudited |
| ChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f29b765be2de395cb6b10d9ead46975057b51ed` | ⚠️ Unaudited |
| ChefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4940896e635ea177f1095009be9ee9ef02f15d0c` | ⚠️ Unaudited |
| ClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| ConvexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e01aac4b3e8781a85b21d9d9f848e72af77b362` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0334c20700207ba4999a5596969fa63ec924ef8` | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7287488f8df7dddc5f373142d4827aaf92aac845` | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82bebc607cd258c66a6d5006a19401eafb786a4` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391df68cdb38a89828a6d51f3976e3e76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e295a69928d3404e576a8ff3c8766559cb8f5` | ⚠️ Unaudited |
| CvxCrvRari | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2a279ffddde98cb154f04375e69205156b987` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFpisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| cvxFxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| CvxMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343` | ⚠️ Unaudited |
| cvxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| CvxStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4401f14970a874d27fad5c8a945292cbe97943fa` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bbc863bafe5006c68613b89130812a7b586a4e` | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc3de2e9d6963bab146dc35dc3925add0cfc918` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbffba31097510d291ad9150b150b3bb07d8852` | ⚠️ Unaudited |
| FeeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbec22233dad5e15ab9c02caa4d914f3c97323f7` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dba2751b5aa26f7d03657066c0984c66999178` | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0` | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c5e6d1891d2af49dec041d41a3a663e03f8f24` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf` | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3` | ⚠️ Unaudited |
| FPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca135cb8527d76e932f34b5145575f9d8cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37` | ⚠️ Unaudited |
| FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2544a32872a91f4a553b404c6950e89de901fdb` | ⚠️ Unaudited |
| FpisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27445d3f59d6b966072abe20e41a29fbb6a7a04b` | ⚠️ Unaudited |
| FpisRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93989b104a3bc2eba16210748cecdf76ea3238d` | ⚠️ Unaudited |
| FraxswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ec799eadd63848443e2347c49f5f52e8fe0f6f` | ⚠️ Unaudited |
| FraxswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc14d550632db8592d1243edc8b95b0ad06703867` | ⚠️ Unaudited |
| FraxVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cfcd384746ec3035299d90782be065e466800b` | ⚠️ Unaudited |
| FxsDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d7c21bdff1a51afaa60f3de7590222a3181e` | ⚠️ Unaudited |
| FXSRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6980170fd45bdebf5902b597c53a2a0678f1f7` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bb59bd617f06eeeee00caeaffc8f3b68510330` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386597 | `0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| JointVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599113b0403e3fa613c318af0bf75826bedfb9ec` | ⚠️ Unaudited |
| LockerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c` | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc2cf69d474b39b91665e24e7f2606ed142991` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd3d38fecebcdda6d934979d4ac7f17330a96ca` | ⚠️ Unaudited |
| PoolHarvestHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f47010f230ce1568bea53a06ebaf528d05c5c1b` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd20904e5916113d11414f083229e9c8c6f91d1e1` | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1b12065d0ae21dff4848d5871ca2a5227889f` | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f315a5b5dd4dbacd38862562a51490e500183` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a849f4074726179f95ee08c59caa8f6f21b1e83` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e9d97440182ea72d988d48eb9b156a0c02e11` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a5881c17185383e19df6fa4ec158a6f4851a69` | ⚠️ Unaudited |
| PoolRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96` | ⚠️ Unaudited |
| PoolTypes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c` | ⚠️ Unaudited |
| PoolUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fba69a794f395184b5760daf1134028608e5cd1` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66807b5598a848602734b82e432dd88dbe13fc8f` | ⚠️ Unaudited |
| RescueToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ffb543211b558d40160811e5dcbcd7d5aaac9` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ⚠️ Unaudited |
| StakingProxyConvex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921852ba77cbceaa29e986e45ef2207f6e664df2` | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0c890236261c3a2440af03ab10654e60476d80` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64167f69a10ab360a8c45b8c7db31d7752111181` | ⚠️ Unaudited |
| StashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f88bfc32f5946b0e0851ca53f277fe177bd87c` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884da067b66677e72530df91eabb6e3ce69c2be4` | ⚠️ Unaudited |
| StashTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ⚠️ Unaudited |
| TreasuryFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1389388d01708118b497f59521f6943be2541bb7` | ⚠️ Unaudited |
| TreasuryLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858847c21b075e45727fcb0b544bd843cd750361` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b601f74c8d3d42379921106b907f1055f80` | ⚠️ Unaudited |
| TreasuryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab2bb34eeaa177bd8d36e46114b45528aac4507` | ⚠️ Unaudited |
| TreasurySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00711e5c8fcd631ba9c6165d99e641face75d21d` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454d747e037da288db568d4121117eab34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9716dba05289df85a90d0fd9d39bee808de` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d79e1e69f659f4ab97db07a35ce73d9174b` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| VaultEarnedView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cd669d473a35202c9c3c74168518e0ab3d925` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98984ad858075813ada4261af47e68a64e28fcc` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349ffba494ac3c888ffa16fd438f44b8c67fb07` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b83552729067d1c32a2a31024776bd83c48816e` | ⚠️ Unaudited |
| VotingBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4d57f69f3081694e721dcd1a42536062857ce9` | ⚠️ Unaudited |
| VotingBalanceMax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccbaabbfcac52e007a706242c5b81a48179bf2` | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc2cfed7e40bab890ca532ad0dbb413e072b988` | ⚠️ Unaudited |
| VotingEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7cbbb1d5d5124f86e92001c9dfdc068c05801d` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (325)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016563f5eb22cf84fa0ff8b593ddc5343ca15856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02577b426f223a6b4f2351315a19ecd6f357d65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ba20d2cc47c63bce1166c2864f0241e4d0a0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b7c6e8d22ece102fb282c41075bcc968b6e046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06fa869caa1160754c6a0b744da6454c5ea325d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a53544b2194dd8ebc62c779043fc0624705bb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6136f9abb7a0c21fbe076771625b39c544bdf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10460d02226d6ef7b2419ae150e6377bdbb7ef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1313d143be1ac25acaceff39bf31877bccdb9622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ada72a3b52a88e25ddd2cc2ba1120234e34bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e5fd3fdca9f3fb7c75d09037cbeb65703e470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a5ca670dc42d0551f00e11a730074f6787f17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21dd0ce3ba89375fc39f1b134ad15671022660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6ca5dee97c8c368ca559892ccce2454c8c35c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e1356eb81a56daecfada456e007b26c86c56670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e30eff4358e6fd18139af0ee36d813460e44083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228567c10b7533c88057c10ddea6349360f122c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386596 | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c66ba25ca2a53bb97b452b9f45dd075b07cf55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e9aca5951262241290841b6f863d59d37dc4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278dc748eda1d8efef1adfb518542612b49fcd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e97f35d80514d5dd1caa730e22a292e912a214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29396aae6198130a15f6ff982c44bc4a7353ef37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6ddd9401b14d0443d0738b8a78fd5b99829a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2261f970f605c813f160e8baed455e9004a842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d550218631d974e02afeb8061e02a5999e95dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de1354c98880889643c4ca8b06fa2fb8fc1fd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f08f4645d2fa1fb12d2db8531c0c2ea0268bde2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe065e6ffef9ac95ab39e5042744d695f560729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309ac8840f9b4c7eeb5bab1e89669d8dbb86c060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313c803622d59188f6b9dee555d86009eae94f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bd22b18cd13ed02316c91600bf4a2ea299aba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ddf80508cfd8fed8abe375582fc7cfd20372c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35678017e1d252da1cdd6745b147e3e75d1f9c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fc5fd90e06c47c0d9debfedb1daf55bce14e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3669c421b77340b2979d1a00a792cc2ee0fce737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a0b6a5f7b318a2b4af75fffb1b51a5c78deb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38950d42cd549842b3fc862a45f00eb24331f462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccc4677356c53c9ff9c888e98b41403a767e962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e14f6eedcc5bc1d0fc7b20b45eae7b1f74a6aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef1d856ea62a2292b8690855042095a7ac48b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef26504dbc8dd7b7aa3e97bc9f3813a9fc0b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2e53b1a3036fd33f3c2f3cc49dab26a88df2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43959a388603dcb6b02ca084a55d4c7f3b442c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8792af00eae944484bf572bc33029b2184a50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505603e2440b44c1602b44d0eb8385399b3f7bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4cdb17d3e10c9bc88b3744f3fd7c25695eee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c2758fba4063aa9eb1d1d7a481d53266214f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5878d03aa50d2c00a921948ea8fa5f2d247f6bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f91aa50dfb3e4ac6d3580e5a2fc22a7c24f505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1b75770258e464dd73b0f3130943e2c918ab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e15e40a3aa06beca711ede9f3f76e1d80c34490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x621d0e62f26314387f338a2509afa3ae3414661a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6650d5183c4cd294a81b1f724c365b0c42f8270a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698137c473bc1f0ea9b85ade45caf64ef2df48d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac96f65156281a9383455d704b58a74ea9c9ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e1e624c6d3e027b8674e6c72f104f1429fc17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x741e47cfa0ff046130cc9436d2bd2ab062f7546d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788e44b6424a0e4160ae4766e86640ec5a6bad5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798fd0b27283cae4f3ace987d0e03864bf3e7d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af00cf8d3a8a75210a5ed74f2254e2ec43b5b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb3da98fe0d8c59f460afc0c8e6ec5ef1e0f63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80c72d42846eff15cb1bdee8fec9a57594f17960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80fac16d5b7e7973048951678dd78d16cbfc8dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d955acef822db058eb8505911ed77f175b99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c5f05ae4cb68190c695a22b292c3ba90696128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c0a521807f43a646978e9f302baf693350eaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870f5a9afa272f07bd941e8f8a8b43ced0b64a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878002f100a7de99bced8178010c84ccce99a5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8875a328eadb1e142f4021fc2098096796a30cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899aa575e0e46344d18471f69337663c48b76e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8afd5082e0c24decea39a9efb14e4acf4373d7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ff54efff7564ba3884a91d0e293502d8e6ff90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x921f943dd71c44d206233b4ea433f81b07930f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a472696c6c9190fc11811b849b915e08466fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cff60496c71a0302ababa0da1a1f21626f9613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94ddd112c9ea0fb534e376be09a50d310f0612b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9507189f5b6d820cd93d970d67893006968825ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9781fe446cd97d3cdad5ecebc77d1dedb843246c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f5e4b7d9edf57a6ed41b334bd40b2eaa6b6e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab224996d25bfdcb91d838f7f1902698ac0a742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b62402eb9a755677debdae3639cb531c0af0e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8aed182b8a9430c14e97bf2c02f129f2b36854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bdbe31bb011d99c55b17455acbe71814065e718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d46c0584c5c89e14fb1143e2414712fef36f00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e66e7811feacf5402b65021475d1a293f7ea797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f76b097cd95627bfbd8052a583127ff6e7b3fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11b9c88e4bf89ad9a70f5d408ffb5a6d5feb6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367a3f057f3191b62bd4055845a33411892b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa381d58e96ec3818c825e1fb264099448945cf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa632fab76fe013199c8271ac22b466b9d11bfe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64ed4018f0838545fdc57db1b43ca7c9637fd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae47146fa8a920d220ac567366b1e6c170579993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4305d05e9b08b1d17894ce1ace8235528f7ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb076b06f669e682609fb4a8c6646d2619717be4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28223e6f50fec6caffdcd4779b9d18ca81e81e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b323e6b501f6cc7fa7df60446c95bcf48af6f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb526ee3e0a4e333bb46106c4725c1379f7b52aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6b0290a39e2f896bbd8fc19cf17fe393e993de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88107bfb7aa9b6a5ec8784374018073e76d4df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e49724a342c5f4c02918a1cda6b3b25632d04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9bd175a67209182e987b7cfd5f4008ba3a2405a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb6b54f8969a4711527fdf6ab852b6d6cdf368d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3a2bf4fa20be2056dce5bfb168970ba657f187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf33b67f243a4dabed494ff5840f113b2e202a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf37a256d7826d443cde124f2d7d7b72de7ada40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59f89736a44c5c1d4f9e5fbdd88347e2da1d352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca026e80f1e9e44da7ce3ed6ac2e9630260b9276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbccba2fa84606df153b593dd01c37a50ac8427c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe6ea4725e4ba34aa215b95239dfa6e8854b49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd4aa7db9d8a995a651498e94f6693a4d26e6c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfc491804a420b677f8e788b5157856910e2f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4dbaf3fa72c962ee1f371694109fc2a80b03f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce597d830229b0bf827d4230a09d0069f4e93c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf37b62109b537fa0cb9a90af4ca72f6fb85e241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1458dd8fb4dad1ca3a52923e32e6277dbca0d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b19c772f225c6f55eec8ac6a40dc338f28eee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd875628b942f8970de3cceaf6417005f68540d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a3150618d3c72b00985c41eab2d2c5582619a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd922cd347eb367fc4fb4bbcb68a84c6cdd3ba4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9d06166c2085988920fb35eb2d322b4aadf1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae210bfb0cf8c81edb4b459e2e0ba14d553e2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb6ef63ea2753c6598fca1b220358f17e4d137e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe09394ae14d7c3b1798e4dbea4c280973b2689a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe52d0337904d4d0519ef7487e707268e1db6495f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5657ee93a49da064bb6b811952ee79b0e8e113a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe679312c16200bc42b7a05edde8b0162b340a1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8453a2e8e97cba69365a1d727fde3768b18d814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb30a2d9f4e623884df27ad5a7c52f435f89f153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebd04015996df0e10e7606ee05709441f6f87bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5825d5185a1d512706f9068e69146a54b6e076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18b122c3935ff49f62c8f1f77dc42a6f85a0bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e1dea8f1053fd9c5f47f72f1f03977e17af242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22471ac2156b489cc4a59092c56713f813ff53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37057823910653a554d996b49e3399dc87fae1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf380200b115caa22d49e6c115b758d6130377620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf397abd7495eb6fe4697f45b5ba17166f03533b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42111014f27f8d84f93966f7eaf96edc297afab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf498e3bd153da218dd5318804d46f79ccb9079a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55c563148ca0c0f1626834ec1b8651844d76792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf562b2f33b3c90d5d273f88cdf0ced866e17092e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8caed1943b15b877d7105b9906a618c154f69e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9931973fcc0c37908687eec2ccb28fc3b94b086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9b355303d74bc1ddb0ff70a4fb050e237ecbb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb788f9e20ef426a32a67986654750172a6c1788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc512849d4dceeefaa1bfce08b3dc9dad755482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd33d2f3330f063c87b523ba80d5f7f296e5393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc77a420f56dec53e3b91d7fc936902e132335ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7eba20c20c8ff12a337f940ce7a97c6e2594de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe66a866b249f5d7c97b4a4c84742a393bc9354` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 324
- Live contracts: 0
- Unknown liveness contracts: 324
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=324

Showing first 200 of 324 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x016563f5eb22cf84fa0ff8b593ddc5343ca15856` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x02577b426f223a6b4f2351315a19ecd6f357d65c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x04ba20d2cc47c63bce1166c2864f0241e4d0a0cc` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x04baf30115d7bac714709910dd286718cfad8808` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0639076265e9f88542c91dcdeda65127974a5ca5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x069c24600c2a03147d4e1d9b04d193151676f577` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x06b7c6e8d22ece102fb282c41075bcc968b6e046` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x06fa869caa1160754c6a0b744da6454c5ea325d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x093edae2f47da37db7a1cc443d5552d1408d5337` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0a53544b2194dd8ebc62c779043fc0624705bb56` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0e894387c073c6f62c9bbded21e33d3062847440` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x0f6136f9abb7a0c21fbe076771625b39c544bdf5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x10460d02226d6ef7b2419ae150e6377bdbb7ef16` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1313d143be1ac25acaceff39bf31877bccdb9622` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x15ada72a3b52a88e25ddd2cc2ba1120234e34bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x169e5fd3fdca9f3fb7c75d09037cbeb65703e470` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x18a5ca670dc42d0551f00e11a730074f6787f17f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1c21dd0ce3ba89375fc39f1b134ad15671022660` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1c6ca5dee97c8c368ca559892ccce2454c8c35c7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1d837a45bb5cc1e170c690aefee4121323a889b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1e077b2a6a67f543629c8fccc97229452211a612` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1e1356eb81a56daecfada456e007b26c86c56670` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1e30eff4358e6fd18139af0ee36d813460e44083` | non_address_book | unknown | unknown | unverified | n/a | `0x26ce2091749059a66703cd4b998156d94ec393ef` |
| unverified unclassified | UnnamedContract<br>`0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x1f18188cf19cc28172e54dc6f580229b2e255015` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x228567c10b7533c88057c10ddea6349360f122c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x240eba32583bb925b2cb3acfee189f559219bf37` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x24c66ba25ca2a53bb97b452b9f45dd075b07cf55` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x25e9aca5951262241290841b6f863d59d37dc4f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x278dc748eda1d8efef1adfb518542612b49fcd34` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x27e97f35d80514d5dd1caa730e22a292e912a214` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x29396aae6198130a15f6ff982c44bc4a7353ef37` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2a6ddd9401b14d0443d0738b8a78fd5b99829a80` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2d2261f970f605c813f160e8baed455e9004a842` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2d550218631d974e02afeb8061e02a5999e95dff` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2de1354c98880889643c4ca8b06fa2fb8fc1fd7a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2f08f4645d2fa1fb12d2db8531c0c2ea0268bde2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2fe065e6ffef9ac95ab39e5042744d695f560729` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x309ac8840f9b4c7eeb5bab1e89669d8dbb86c060` | non_address_book | unknown | unknown | unverified | n/a | `0x26ce2091749059a66703cd4b998156d94ec393ef` |
| unverified unclassified | UnnamedContract<br>`0x30c271e2758fa59671106cc523708ddeaa188841` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x313c803622d59188f6b9dee555d86009eae94f09` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x32bd22b18cd13ed02316c91600bf4a2ea299aba0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x32d7261e6924600abb668ff82da86f6532304c6e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x32ddf80508cfd8fed8abe375582fc7cfd20372c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x35678017e1d252da1cdd6745b147e3e75d1f9c27` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x35fc5fd90e06c47c0d9debfedb1daf55bce14e6d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3669c421b77340b2979d1a00a792cc2ee0fce737` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x36a0b6a5f7b318a2b4af75fffb1b51a5c78deb8c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x375278d3c65f29c1a90e8550888f1439cfefe465` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3860358a3a8eead5e1e47c8407fdaa571972a673` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x38950d42cd549842b3fc862a45f00eb24331f462` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3c2982ca260e870eee70c423818010dfef212659` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ccc4677356c53c9ff9c888e98b41403a767e962` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ddb00cb5c927a71feddec48db1a231901568a1d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3e14f6eedcc5bc1d0fc7b20b45eae7b1f74a6aec` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ef1d856ea62a2292b8690855042095a7ac48b4b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3ef26504dbc8dd7b7aa3e97bc9f3813a9fc0b4b0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3f2e53b1a3036fd33f3c2f3cc49dab26a88df2e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x43959a388603dcb6b02ca084a55d4c7f3b442c57` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4462df433d01f32ac0c4adb0a76dcf255634490c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x49ee75278820f409ecd67063d8d717b38d66bd71` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4b8792af00eae944484bf572bc33029b2184a50c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4e710b33c87cedf832cd82e11d743a011864f733` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x4e7cf3569529660bf23926060efb25866d67314b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x505603e2440b44c1602b44d0eb8385399b3f7bab` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x50b4cdb17d3e10c9bc88b3744f3fd7c25695eee7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5154e7698b235e6003bfa025839d192230e39dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x53c2758fba4063aa9eb1d1d7a481d53266214f2e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5425724e4ce3b469c61876b59be43a210a572997` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5699d20732a2efa9a895ef04bb210aa751c4db96` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5814cbfb4f67cb384de981849d773a9da179fec9` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5878d03aa50d2c00a921948ea8fa5f2d247f6bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x59e132164ec2e48b0714eb6abdb10225df44da0e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x59f91aa50dfb3e4ac6d3580e5a2fc22a7c24f505` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5b1b75770258e464dd73b0f3130943e2c918ab48` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5cce1098be1734b8910e22e240aa0673ab9083fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5e15e40a3aa06beca711ede9f3f76e1d80c34490` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x6025040aa316692fbf80909d0fc9cf7b997a2795` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x604cb55e89568b68e125e1c0272a71ff1faab46b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x621d0e62f26314387f338a2509afa3ae3414661a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x6650d5183c4cd294a81b1f724c365b0c42f8270a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x66e323284c10dcec5a4810beba7eb3b992476320` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x698137c473bc1f0ea9b85ade45caf64ef2df48d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x6ac96f65156281a9383455d704b58a74ea9c9ec4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x70f1ceae0fe7205d96151f995e65a6c30f028649` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7228d63ff5fb0e66cee650b113c2187212776c26` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7301bb959ee286d8abc46f341144afe443cedae5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x73e1e624c6d3e027b8674e6c72f104f1429fc17e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x741e47cfa0ff046130cc9436d2bd2ab062f7546d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x76c8cef5b18994a85bc2be1991e5b9c716626767` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x788e44b6424a0e4160ae4766e86640ec5a6bad5b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x798fd0b27283cae4f3ace987d0e03864bf3e7d83` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7af00cf8d3a8a75210a5ed74f2254e2ec43b5b5b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7cb3da98fe0d8c59f460afc0c8e6ec5ef1e0f63b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x80c72d42846eff15cb1bdee8fec9a57594f17960` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x80fac16d5b7e7973048951678dd78d16cbfc8dfd` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x853d955acef822db058eb8505911ed77f175b99e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8545d32ac1d423016197866e884aa0e8d953eef5` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x85c5f05ae4cb68190c695a22b292c3ba90696128` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x86c0a521807f43a646978e9f302baf693350eaa3` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x870f5a9afa272f07bd941e8f8a8b43ced0b64a5a` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x878002f100a7de99bced8178010c84ccce99a5c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x878f2059435a19c79c20318ee57657bf4543b6d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8875a328eadb1e142f4021fc2098096796a30cf8` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x899aa575e0e46344d18471f69337663c48b76e35` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8afd5082e0c24decea39a9efb14e4acf4373d7d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x8f8273f271b134f514b8a33f87b4de803e44d723` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x900909c07c2761d84c5d863ff5905102916df69c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x90503d86e120b3b309cebf00c2ca013ab3624736` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x90e7efdca79de10f1713c59bc3ae9b076e753490` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x914cb62c14777068956090adb494ab4279424499` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x91ff54efff7564ba3884a91d0e293502d8e6ff90` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x921f943dd71c44d206233b4ea433f81b07930f87` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x94a472696c6c9190fc11811b849b915e08466fcd` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x94cff60496c71a0302ababa0da1a1f21626f9613` | non_address_book | unknown | unknown | unverified | n/a | `0x26ce2091749059a66703cd4b998156d94ec393ef` |
| unverified unclassified | UnnamedContract<br>`0x94d97dee8fa8b97576375c68d856239ff7681086` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x94ddd112c9ea0fb534e376be09a50d310f0612b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9507189f5b6d820cd93d970d67893006968825ef` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x96665d63c1b53f8335e3c9287ee255f306c93c45` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x966aa4de332da1fece5a90e025b08a43919d9705` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9781fe446cd97d3cdad5ecebc77d1dedb843246c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x98f5e4b7d9edf57a6ed41b334bd40b2eaa6b6e26` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9ab224996d25bfdcb91d838f7f1902698ac0a742` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9b62402eb9a755677debdae3639cb531c0af0e5d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9b6c44168f7a29a44949429ca55f411acd8391d0` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9b8aed182b8a9430c14e97bf2c02f129f2b36854` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9bdbe31bb011d99c55b17455acbe71814065e718` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9d46c0584c5c89e14fb1143e2414712fef36f00f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9e66e7811feacf5402b65021475d1a293f7ea797` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9e7a52c1619c5134c223f780237c12fd9001b75f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9f1c425ae40908a071f003ae604d7e421a289c8f` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x9f76b097cd95627bfbd8052a583127ff6e7b3fa9` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa11b9c88e4bf89ad9a70f5d408ffb5a6d5feb6a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa13d7886abc466da907e0c9345d5d271b8852647` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa29367a3f057f3191b62bd4055845a33411892b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa381d58e96ec3818c825e1fb264099448945cf8b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa3cce9ae6571c9075c980afa2749451793b947bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa632fab76fe013199c8271ac22b466b9d11bfe88` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa64ed4018f0838545fdc57db1b43ca7c9637fd54` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0xa6623dd479c95010f05bad523609edf1928d2b8c` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Dec 2021 - Trail of Bits (opens in a new tab)](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ42021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab)](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf) | Trail of Bits | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab)](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [30106] Dec 2021 - Trail of Bits (opens in a new tab) — no match: Extracted contract names from Project Targets section and findings. Audit date from final report delivery date.
- [30107] August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) — no match: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.
- [30114] May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) — no match: Scope section explicitly lists 5 files: FPISLocker.sol, FPISLockerUtils.sol, IlFPISEvents.sol, IlFPISStructs.sol, and FraxtalERC4626MintRedeemer.sol. Audit date is October 24, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxPoolV3 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | veFXS | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | CrossChainCanonical | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | CCFrax1to1AMM | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxUnifiedFarmTemplate | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | StakingRewards | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxGaugeFXSRewardsDistributor | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxUniV3Farm_Stable | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | StakingRewardsMultiGauge | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | Convex_AMO_V2 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxAMOMinter | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | BasicCvxHolder | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | veFXSYieldDistributorV4 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | OHM_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | Frax | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | ComboOracle | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FRAXOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FXSOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FXS1559_AMO_V3 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | UniV3LiquidityAMO_V2_old | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | UniV3LiquidityAMO_V2 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | UniV3LiquidityAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | MIM_Convex_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxUniV3Farm_Volatile | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | SushiSwapLiquidityAMO_ARBI | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | TWAMM | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | FraxCrossChainFarmSushi | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | ConvexAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits (opens in a new tab) | ManualTokenTrackerAMO | unmatched — not counted | — | mentioned in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | UniV2TWAMMPair | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | LongTermOrders | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | ExecVirtualOrders | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | FPIControllerPool | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | CPITrackerOracle | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | FraxLendPairDeployer | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab) | FraxLendCore | unmatched — not counted | — | listed in scope and findings | no |
| May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) | FPISLocker | unmatched — not counted | — | listed in scope | no |
| May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) | FPISLockerUtils | unmatched — not counted | — | listed in scope | no |
| May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) | IlFPISEvents | unmatched — not counted | — | listed in scope | no |
| May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) | IlFPISStructs | unmatched — not counted | — | listed in scope | no |
| May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab) | FraxtalERC4626MintRedeemer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 101 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 325 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [30106] Dec 2021 - Trail of Bits (opens in a new tab)
- [30107] August 2022 - Fraxswap & FPI Trail of Bits (opens in a new tab)
- [30114] May 2024 - FPISLocker & FraxtalERC4626MintRedeemer - Frax Security Cartel (opens in a new tab)

Fork inheritance lineage and inherited audits are included when available.
