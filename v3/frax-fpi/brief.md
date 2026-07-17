# Agentic Audit Brief: Frax FPI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Frax FPI (`frax-fpi`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 109 unique implementations (109 raw deployments)
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
- Outside the address book: 107 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 2 of 109 unique; 107 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/108
- Verified + Unaudited implementations: 108
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 109
- Raw deployments: 109
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386596 | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ❓ Unverified |

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
| needs_review | 1 |

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
