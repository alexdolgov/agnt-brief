# Agentic Audit Brief: Frax FPI

## Project Overview

- Project: Frax FPI (`frax-fpi`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.497Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 108 unique implementations (108 raw deployments)
- DeFi Llama TVL: $160,517.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 106 project-authored contract(s) across 1 chain(s); 16 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (stakingproxybase, owned, erc20burnable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Frax Finance** (`frax-finance`) in the BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, CvxCrvStakingWrapper, CvxLocker, … subsystem.
13 audits inherited from `frax-finance`, scoped to that subsystem.

Total inherited audits: 13. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 108; live-surface contracts included: 108 (108 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/101 (13.9%)
- Deployed-live implementations: 108 of 108 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/108
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 108
- Raw deployments: 108
- Audits discovered: 13 (0 direct, 13 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 13.9% (Certora, ChainSecurity, Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 14 | 13.0% | 2024-10 |
| ChainSecurity | Tier 1 | 14 | 13.0% | 2025-07 |
| Code4rena | Tier 1 | 14 | 13.0% | 2024-10 |
| Frax Security Cartel | Tier 2 | 14 | 13.0% | 2025-03 |
| Trail of Bits | Tier 1 | 14 | 13.0% | 2024-03 |
| Zellic | Tier 2 | 14 | 13.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Booster | unknown | ethereum | n/a | [`0x2b8b301b90eb8801f1eefe73285eec117d2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/) | ✅ Audited |
| BoosterOwner | unknown | ethereum | n/a | [`0x3ce6408f923326f81a7d7929952947748180f1e6`](./contracts/ethereum-1/0x3ce6408f923326f81a7d7929952947748180f1e6/) | ✅ Audited |
| BoosterOwnerSecondary | unknown | ethereum | n/a | [`0x256e1bba846611c37cf89844a02435e6c098b86d`](./contracts/ethereum-1/0x256e1bba846611c37cf89844a02435e6c098b86d/) | ✅ Audited |
| CPITrackerOracle | unknown | ethereum | n/a | [`0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146`](./contracts/ethereum-1/0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146/) | ✅ Audited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ✅ Audited |
| CvxLocker | unknown | ethereum | n/a | [`0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/) | ✅ Audited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a19342e8f1838460ebfccef09f6585e32db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ✅ Audited |
| FPIControllerPool | unknown | ethereum | n/a | [`0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37`](./contracts/ethereum-1/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | ✅ Audited |
| StakingProxyConvex | unknown | ethereum | n/a | [`0x921852ba77cbceaa29e986e45ef2207f6e664df2`](./contracts/ethereum-1/0x921852ba77cbceaa29e986e45ef2207f6e664df2/) | ✅ Audited |
| StakingProxyERC20Joint | unknown | ethereum | n/a | [`0x64167f69a10ab360a8c45b8c7db31d7752111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/) | ✅ Audited |
| TreasuryManager | unknown | ethereum | n/a | [`0x858847c21b075e45727fcb0b544bd843cd750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/) | ✅ Audited |
| TreasuryManagerFrax | unknown | ethereum | n/a | [`0x9d464b601f74c8d3d42379921106b907f1055f80`](./contracts/ethereum-1/0x9d464b601f74c8d3d42379921106b907f1055f80/) | ✅ Audited |
| TreasurySwap | unknown | ethereum | n/a | [`0x00711e5c8fcd631ba9c6165d99e641face75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/) | ✅ Audited |
| UniV2TWAMMFactory | unknown | ethereum | n/a | [`0x54f454d747e037da288db568d4121117eab34e79`](./contracts/ethereum-1/0x54f454d747e037da288db568d4121117eab34e79/) | ✅ Audited |

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitratorVault | unknown | ethereum | n/a | [`0x25e12482a25cf36ec70fda2a09c1ed077fc21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ⚠️ Unaudited |
| BaseRewardPool | unknown | ethereum | n/a | [`0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | ethereum | n/a | [`0xa2cf21b157b2f203e37b616b619f438b5aa86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | ⚠️ Unaudited |
| BoosterRewardManager | unknown | ethereum | n/a | [`0x817ff43b8a18b8ab76485283e42b4bd632e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xba9801acfdf3b8852865149d93acffef9120272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | ⚠️ Unaudited |
| ChefRewardHook | unknown | ethereum | n/a | [`0x0f29b765be2de395cb6b10d9ead46975057b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ⚠️ Unaudited |
| ChefToken | unknown | ethereum | n/a | [`0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | ethereum | n/a | [`0x4940896e635ea177f1095009be9ee9ef02f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ⚠️ Unaudited |
| ClaimZap | unknown | ethereum | n/a | [`0x3f29cb4111cbda8081642da1f75b3c12decf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ⚠️ Unaudited |
| ConvexRewarder | unknown | ethereum | n/a | [`0x9e01aac4b3e8781a85b21d9d9f848e72af77b362`](./contracts/ethereum-1/0x9e01aac4b3e8781a85b21d9d9f848e72af77b362/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | [`0xa0334c20700207ba4999a5596969fa63ec924ef8`](./contracts/ethereum-1/0xa0334c20700207ba4999a5596969fa63ec924ef8/) | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | ethereum | n/a | [`0x7287488f8df7dddc5f373142d4827aaf92aac845`](./contracts/ethereum-1/0x7287488f8df7dddc5f373142d4827aaf92aac845/) | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | ethereum | n/a | [`0xa82bebc607cd258c66a6d5006a19401eafb786a4`](./contracts/ethereum-1/0xa82bebc607cd258c66a6d5006a19401eafb786a4/) | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x8014595f2ab54cd7c604b00e9fb932176fdc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | ethereum | n/a | [`0xd99391df68cdb38a89828a6d51f3976e3e76afff`](./contracts/ethereum-1/0xd99391df68cdb38a89828a6d51f3976e3e76afff/) | ⚠️ Unaudited |
| CurveLendOperator | unknown | ethereum | n/a | [`0xb64e295a69928d3404e576a8ff3c8766559cb8f5`](./contracts/ethereum-1/0xb64e295a69928d3404e576a8ff3c8766559cb8f5/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | n/a | [`0x4fc2a279ffddde98cb154f04375e69205156b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| cvxCrvToken | unknown | ethereum | n/a | [`0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | ethereum | n/a | [`0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db3eaa93b7293021e38416650d2e666bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFpisToken | unknown | ethereum | n/a | [`0xa2847348b58ced0ca58d23c7e9106a49f1427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| cvxFxsToken | unknown | ethereum | n/a | [`0xfeef77d3f69374f66429c91d732a244f074bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | n/a | [`0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| cvxRewardPool | unknown | ethereum | n/a | [`0xcf50b810e57ac33b91dcf525c6ddd9881b139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| CvxStakingProxy | unknown | ethereum | n/a | [`0x4401f14970a874d27fad5c8a945292cbe97943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | ethereum | n/a | [`0xb5bbc863bafe5006c68613b89130812a7b586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | ethereum | n/a | [`0x9dc3de2e9d6963bab146dc35dc3925add0cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | ethereum | n/a | [`0x0dbffba31097510d291ad9150b150b3bb07d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ⚠️ Unaudited |
| FeeBridge | unknown | ethereum | n/a | [`0xd430246142084ec68f7ab090cbd9252a1d1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | n/a | [`0xcbec22233dad5e15ab9c02caa4d914f3c97323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | [`0x29dba2751b5aa26f7d03657066c0984c66999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | ethereum | n/a | [`0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | ethereum | n/a | [`0x31c5e6d1891d2af49dec041d41a3a663e03f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | ethereum | n/a | [`0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | ethereum | n/a | [`0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | ethereum | n/a | [`0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | [`0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | ⚠️ Unaudited |
| FPI | unknown | ethereum | n/a | [`0x5ca135cb8527d76e932f34b5145575f9d8cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | n/a | [`0xc2544a32872a91f4a553b404c6950e89de901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | ⚠️ Unaudited |
| FpisDepositor | unknown | ethereum | n/a | [`0x27445d3f59d6b966072abe20e41a29fbb6a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | ⚠️ Unaudited |
| FpisRewardHook | unknown | ethereum | n/a | [`0xb93989b104a3bc2eba16210748cecdf76ea3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | ⚠️ Unaudited |
| FraxswapFactory | unknown | ethereum | n/a | [`0x43ec799eadd63848443e2347c49f5f52e8fe0f6f`](./contracts/ethereum-1/0x43ec799eadd63848443e2347c49f5f52e8fe0f6f/) | ⚠️ Unaudited |
| FraxswapRouter | unknown | ethereum | n/a | [`0xc14d550632db8592d1243edc8b95b0ad06703867`](./contracts/ethereum-1/0xc14d550632db8592d1243edc8b95b0ad06703867/) | ⚠️ Unaudited |
| FraxVoterProxy | unknown | ethereum | n/a | [`0x59cfcd384746ec3035299d90782be065e466800b`](./contracts/ethereum-1/0x59cfcd384746ec3035299d90782be065e466800b/) | ⚠️ Unaudited |
| FxsDepositor | unknown | ethereum | n/a | [`0x8f55d7c21bdff1a51afaa60f3de7590222a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | ⚠️ Unaudited |
| FXSRewardHook | unknown | ethereum | n/a | [`0x1a6980170fd45bdebf5902b597c53a2a0678f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | ethereum | n/a | [`0x04bb59bd617f06eeeee00caeaffc8f3b68510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502`](./contracts/ethereum-1/0x6a7efa964cf6d9ab3bc3c47ebddb853a8853c502/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0x6d6bcac2266468a44da9fa482ca54aaed586e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | ethereum | n/a | [`0x1972b5d65a690de0bc36278ac93d47fd98bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| JointVaultManager | unknown | ethereum | n/a | [`0x599113b0403e3fa613c318af0bf75826bedfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | ⚠️ Unaudited |
| LockerAdmin | unknown | ethereum | n/a | [`0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | ethereum | n/a | [`0xa1bc2cf69d474b39b91665e24e7f2606ed142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0xafd3d38fecebcdda6d934979d4ac7f17330a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | ⚠️ Unaudited |
| PoolHarvestHook | unknown | ethereum | n/a | [`0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | ⚠️ Unaudited |
| PoolManager | unknown | ethereum | n/a | [`0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | ⚠️ Unaudited |
| PoolManagerProxy | unknown | ethereum | n/a | [`0x5f47010f230ce1568bea53a06ebaf528d05c5c1b`](./contracts/ethereum-1/0x5f47010f230ce1568bea53a06ebaf528d05c5c1b/) | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | ethereum | n/a | [`0xd20904e5916113d11414f083229e9c8c6f91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | ethereum | n/a | [`0x73b1b12065d0ae21dff4848d5871ca2a5227889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | ethereum | n/a | [`0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | ⚠️ Unaudited |
| PoolManagerV2 | unknown | ethereum | n/a | [`0xae5f315a5b5dd4dbacd38862562a51490e500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | ⚠️ Unaudited |
| PoolManagerV3 | unknown | ethereum | n/a | [`0x8a849f4074726179f95ee08c59caa8f6f21b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | ⚠️ Unaudited |
| PoolManagerV4 | unknown | ethereum | n/a | [`0x0e4e9d97440182ea72d988d48eb9b156a0c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x41a5881c17185383e19df6fa4ec158a6f4851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | ⚠️ Unaudited |
| PoolRewardHook | unknown | ethereum | n/a | [`0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | ⚠️ Unaudited |
| PoolTypes | unknown | ethereum | n/a | [`0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | ⚠️ Unaudited |
| PoolUtilities | unknown | ethereum | n/a | [`0x5fba69a794f395184b5760daf1134028608e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x66807b5598a848602734b82e432dd88dbe13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ⚠️ Unaudited |
| RescueToken | unknown | ethereum | n/a | [`0xb15ffb543211b558d40160811e5dcbcd7d5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | ⚠️ Unaudited |
| RewardFactory | unknown | ethereum | n/a | [`0xedccb35798fae4925718a43cc608ae136208aa8d`](./contracts/ethereum-1/0xedccb35798fae4925718a43cc608ae136208aa8d/) | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | ethereum | n/a | [`0x1d0c890236261c3a2440af03ab10654e60476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | ⚠️ Unaudited |
| StashFactory | unknown | ethereum | n/a | [`0x73f88bfc32f5946b0e0851ca53f277fe177bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | ⚠️ Unaudited |
| StashFactoryV2 | unknown | ethereum | n/a | [`0x884da067b66677e72530df91eabb6e3ce69c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | ⚠️ Unaudited |
| StashTokenWrapper | unknown | ethereum | n/a | [`0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0x3c995e43e6ddd551e226f4c5544c77bfed147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | ⚠️ Unaudited |
| TreasuryFunds | unknown | ethereum | n/a | [`0x1389388d01708118b497f59521f6943be2541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | ⚠️ Unaudited |
| TreasuryLend | unknown | ethereum | n/a | [`0x04dd97255ddee29c941d85f5b5cde6ace8bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryRegistry | unknown | ethereum | n/a | [`0xcab2bb34eeaa177bd8d36e46114b45528aac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | ethereum | n/a | [`0xa007a9716dba05289df85a90d0fd9d39bee808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | ethereum | n/a | [`0x59985d79e1e69f659f4ab97db07a35ce73d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41ef2281893b5971769370d6cdd35864b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| VaultEarnedView | unknown | ethereum | n/a | [`0x382cd669d473a35202c9c3c74168518e0ab3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | ⚠️ Unaudited |
| VestedEscrow | unknown | ethereum | n/a | [`0xe98984ad858075813ada4261af47e68a64e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | ethereum | n/a | [`0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | ethereum | n/a | [`0x5349ffba494ac3c888ffa16fd438f44b8c67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | ⚠️ Unaudited |
| VoterProxyOwner | unknown | ethereum | n/a | [`0x2b83552729067d1c32a2a31024776bd83c48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | ⚠️ Unaudited |
| VotingBalance | unknown | ethereum | n/a | [`0x4c4d57f69f3081694e721dcd1a42536062857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | ⚠️ Unaudited |
| VotingBalanceMax | unknown | ethereum | n/a | [`0x59ccbaabbfcac52e007a706242c5b81a48179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | ethereum | n/a | [`0x1cc2cfed7e40bab890ca532ad0dbb413e072b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | ⚠️ Unaudited |
| VotingEligibility | unknown | ethereum | n/a | [`0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xdb7cbbb1d5d5124f86e92001c9dfdc068c05801d`](./contracts/ethereum-1/0xdb7cbbb1d5d5124f86e92001c9dfdc068c05801d/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | [`0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fraxtal North Star Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) | Frax Security Cartel | Audit | 2025-03 | aging | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [Curve AMO Audit Report - Frax Security Cartel - May 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) | Code4rena | Contest | 2024-05 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [Fraxtal Audit - April 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) | Frax Security Cartel | Audit | 2024-04 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [frxETH V2 Audit Report - Frax Security Cartel - March 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) | Trail of Bits | Audit | 2024-03 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits - Oct 2023.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) | Trail of Bits | Audit | 2023-10 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [2023-05-fraxgov-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) | Trail of Bits | Audit | 2023-05 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) | Trail of Bits | Audit | 2022-10 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [code4rena.com/reports/2022-09-frax](https://code4rena.com/reports/2022-09-frax) | Code4rena | Contest | 2022-09 | stale | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [Frax0 Mesh - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax0%20Mesh%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-09 | fresh | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [Frax - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-07 | aging | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [Frax-Certora (Bamm) report - Final.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax-Certora%20(Bamm)%20report%20-%20%20Final.pdf) | Certora | Audit | 2024-10 | aging | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |
| [FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-10 | aging | Inherited from Frax Finance — forked code, scoped to BokkyPooBahsDateTimeContract, Booster, BoosterOwner, BoosterOwnerSecondary, +10 more | inherited | 14 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25e12482a25cf36ec70fda2a09c1ed077fc21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ArbitratorVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2cf21b157b2f203e37b616b619f438b5aa86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/) | BoosterPlaceholder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817ff43b8a18b8ab76485283e42b4bd632e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | BoosterRewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba9801acfdf3b8852865149d93acffef9120272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f29b765be2de395cb6b10d9ead46975057b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/) | ChefRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/) | ChefToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4940896e635ea177f1095009be9ee9ef02f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ClaimVecrvFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb4111cbda8081642da1f75b3c12decf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8014595f2ab54cd7c604b00e9fb932176fdc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fc2a279ffddde98cb154f04375e69205156b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | CvxCrvRari | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | cvxCrvToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | CvxCrvUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | CvxDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa87db3eaa93b7293021e38416650d2e666bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2847348b58ced0ca58d23c7e9106a49f1427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | cvxFpisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeef77d3f69374f66429c91d732a244f074bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | cvxFxsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | CvxMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf50b810e57ac33b91dcf525c6ddd9881b139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | cvxRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4401f14970a874d27fad5c8a945292cbe97943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/) | CvxStakingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5bbc863bafe5006c68613b89130812a7b586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | CvxStakingProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc3de2e9d6963bab146dc35dc3925add0cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ExtraRewardStashTokenRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dbffba31097510d291ad9150b150b3bb07d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/) | ExtraRewardStashV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd430246142084ec68f7ab090cbd9252a1d1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbec22233dad5e15ab9c02caa4d914f3c97323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29dba2751b5aa26f7d03657066c0984c66999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/) | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | FeeReceiverCvxFpis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c5e6d1891d2af49dec041d41a3a663e03f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/) | FeeReceiverCvxFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | FeeReceiverPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/) | FeeReceiverVeFxs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | FeeReceiverVlCvx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/) | FeeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca135cb8527d76e932f34b5145575f9d8cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2544a32872a91f4a553b404c6950e89de901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27445d3f59d6b966072abe20e41a29fbb6a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | FpisDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93989b104a3bc2eba16210748cecdf76ea3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | FpisRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ec799eadd63848443e2347c49f5f52e8fe0f6f`](./contracts/ethereum-1/0x43ec799eadd63848443e2347c49f5f52e8fe0f6f/) | FraxswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc14d550632db8592d1243edc8b95b0ad06703867`](./contracts/ethereum-1/0xc14d550632db8592d1243edc8b95b0ad06703867/) | FraxswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59cfcd384746ec3035299d90782be065e466800b`](./contracts/ethereum-1/0x59cfcd384746ec3035299d90782be065e466800b/) | FraxVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f55d7c21bdff1a51afaa60f3de7590222a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | FxsDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6980170fd45bdebf5902b597c53a2a0678f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/) | FXSRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bb59bd617f06eeeee00caeaffc8f3b68510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/) | GaugeExtraRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bcac2266468a44da9fa482ca54aaed586e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5d65a690de0bc36278ac93d47fd98bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599113b0403e3fa613c318af0bf75826bedfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/) | JointVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | LockerAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc2cf69d474b39b91665e24e7f2606ed142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | MerkleAirdropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafd3d38fecebcdda6d934979d4ac7f17330a96ca`](./contracts/ethereum-1/0xafd3d38fecebcdda6d934979d4ac7f17330a96ca/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | PoolHarvestHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/) | PoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f47010f230ce1568bea53a06ebaf528d05c5c1b`](./contracts/ethereum-1/0x5f47010f230ce1568bea53a06ebaf528d05c5c1b/) | PoolManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd20904e5916113d11414f083229e9c8c6f91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | PoolManagerSecondaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b1b12065d0ae21dff4848d5871ca2a5227889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | PoolManagerShutdownProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/) | PoolManagerTertiaryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae5f315a5b5dd4dbacd38862562a51490e500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | PoolManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a849f4074726179f95ee08c59caa8f6f21b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/) | PoolManagerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e4e9d97440182ea72d988d48eb9b156a0c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/) | PoolManagerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a5881c17185383e19df6fa4ec158a6f4851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | PoolRewardHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/) | PoolTypes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fba69a794f395184b5760daf1134028608e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/) | PoolUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66807b5598a848602734b82e432dd88dbe13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb15ffb543211b558d40160811e5dcbcd7d5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | RescueToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedccb35798fae4925718a43cc608ae136208aa8d`](./contracts/ethereum-1/0xedccb35798fae4925718a43cc608ae136208aa8d/) | RewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0c890236261c3a2440af03ab10654e60476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/) | StakingProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73f88bfc32f5946b0e0851ca53f277fe177bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/) | StashFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x884da067b66677e72530df91eabb6e3ce69c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | StashFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | StashTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c995e43e6ddd551e226f4c5544c77bfed147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1389388d01708118b497f59521f6943be2541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/) | TreasuryFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97255ddee29c941d85f5b5cde6ace8bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcab2bb34eeaa177bd8d36e46114b45528aac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | TreasuryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa007a9716dba05289df85a90d0fd9d39bee808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | UniV2TWAMMRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59985d79e1e69f659f4ab97db07a35ce73d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | UniV3TWAPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41ef2281893b5971769370d6cdd35864b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382cd669d473a35202c9c3c74168518e0ab3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/) | VaultEarnedView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe98984ad858075813ada4261af47e68a64e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | VestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/) | vlCvxExtraRewardDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5349ffba494ac3c888ffa16fd438f44b8c67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | VoteDelegateExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b83552729067d1c32a2a31024776bd83c48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c4d57f69f3081694e721dcd1a42536062857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | VotingBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ccbaabbfcac52e007a706242c5b81a48179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | VotingBalanceMax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc2cfed7e40bab890ca532ad0dbb413e072b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/) | VotingBalanceV2Gauges | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | VotingEligibility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb7cbbb1d5d5124f86e92001c9dfdc068c05801d`](./contracts/ethereum-1/0xdb7cbbb1d5d5124f86e92001c9dfdc068c05801d/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/) | WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 101 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=182

Fork inheritance lineage and inherited audits are included when available.
