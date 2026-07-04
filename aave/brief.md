# Agentic Audit Brief: Aave

## Project Overview

- Project: Aave (`aave`)
- Website: [https://aave.com](https://aave.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.925Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: avalanche, ethereum, polygon
- Contract surface: 166 unique implementations (168 raw deployments)
- DeFi Llama TVL: $32,671,718,249.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 52 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, versionedinitializable, baseupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 168 (53 live, 115 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/51 (60.8%)
- Deployed-live implementations: 53 of 166 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 32/54
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 112
- Unique implementations: 166
- Raw deployments: 168
- Audits discovered: 132 (132 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 82
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 26 fresh, 56 aging, 44 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 32 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 56.9% (Certora, ChainSecurity, ConsenSys Diligence, MixBytes, OpenZeppelin, Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ConsenSys Diligence | Tier 1 | 27 | 50.0% | 2020-10 |
| Sigma Prime | Tier 2 | 18 | 33.3% | 2023-10 |
| MixBytes | Tier 1 | 16 | 29.6% | 2026-03 |
| CertiK | Tier 2 | 15 | 27.8% | 2020-12 |
| PeckShield | Tier 2 | 14 | 25.9% | 2022-12 |
| Certora | Tier 1 | 11 | 20.4% | 2025-11 |
| ABDK | Tier 2 | 10 | 18.5% | 2025-07 |
| Trail of Bits | Tier 1 | 10 | 18.5% | 2025-11 |
| Blackthorn | Tier 2 | 8 | 14.8% | 2026-02 |
| OpenZeppelin | Tier 1 | 8 | 14.8% | 2022-11 |
| yAudit | Tier 2 | 8 | 14.8% | 2026-03 |
| Pashov Audit Group | Tier 2 | 7 | 13.0% | 2026-03 |
| StErMi | Tier 2 | 7 | 13.0% | 2025-07 |
| Savant | Tier 2 | 5 | 9.3% | 2025-11 |
| Oxorio | Tier 2 | 4 | 7.4% | 2025-01 |
| Sherlock | Tier 1 | 3 | 5.6% | 2026-05 |
| Enigma Ventures | Tier 2 | 2 | 3.7% | 2026-03 |
| ChainSecurity | Tier 1 | 1 | 1.9% | 2026-02 |
| Spearbit | Tier 1 | 1 | 1.9% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | ethereum | n/a | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ✅ Audited |
| AaveGenesisExecutor | unknown | ethereum | n/a | [`0x797ae6...686b53`](./contracts/ethereum-1/0x797ae69562588dd893567ba22dfcf8e842686b53/) | ✅ Audited |
| AaveMigrationCollector | unknown | avalanche | n/a | [`0x467b92...ba8a36`](./contracts/avalanche-43114/0x467b92af281d14cb6809913ad016a607b5ba8a36/) | ✅ Audited |
| AaveOracle | unknown | polygon | n/a | [`0x0229f7...db6f2d`](./contracts/polygon-137/0x0229f777b0fab107f9591a41d5f02e4e98db6f2d/) | ✅ Audited |
| AaveProtocolDataProvider | unknown | ethereum | n/a | [`0x057835...78fc6d`](./contracts/ethereum-1/0x057835ad21a177dbdd3090bb1cae03eacf78fc6d/) | ✅ Audited |
| AaveToken | unknown | ethereum | n/a | [`0x9c0435...74c8ba`](./contracts/ethereum-1/0x9c0435779f5e52cec404d957c9baa6f7d674c8ba/) | ✅ Audited |
| AaveTokenV3 | unknown | ethereum | n/a | [`0x7fc665...2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ✅ Audited |
| AToken | unknown | avalanche | n/a | [`0x0e6442...262112`](./contracts/avalanche-43114/0x0e6442d92365c65bfa24088bbe4fe83998262112/) | ✅ Audited |
| ConfigurableRightsPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41a086...f84f84`](./contracts/ethereum-1/0x41a08648c3766f9f9d85598ff102a08f4ef84f84/); ethereum `0xadc74a...a73782` | ✅ Audited |
| DefaultReserveInterestRateStrategy | unknown | avalanche | n/a | [`0x161c64...112a99`](./contracts/avalanche-43114/0x161c6460dead6241041cd629cbacd4a699112a99/) | ✅ Audited |
| DelegationAwareAToken | unknown | ethereum | n/a | [`0x93b8cd...0ff126`](./contracts/ethereum-1/0x93b8cdac045c47d3eb4ef1ab02e0fcee850ff126/) | ✅ Audited |
| GenericLogic | unknown | ethereum | n/a | [`0xe648ab...3c0c20`](./contracts/ethereum-1/0xe648ab660954fa4637a50802a1703ead843c0c20/) | ✅ Audited |
| GhoToken | unknown | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ✅ Audited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x1012cf...c17e25`](./contracts/ethereum-1/0x1012cff81a1582ddd0616517efb97d02c5c17e25/) | ✅ Audited |
| LendingPool | unknown | avalanche | n/a | [`0x01ae7d...91f342`](./contracts/avalanche-43114/0x01ae7dda024ea9712344d9332c94d3168a91f342/) | ✅ Audited |
| LendingPoolAddressesProvider | unknown | avalanche | n/a | [`0x5b7d5f...88bbac`](./contracts/avalanche-43114/0x5b7d5f59e3defbe12a9f31a5ba6247d6b788bbac/) | ✅ Audited |
| LendingPoolAddressesProviderRegistry | unknown | avalanche | n/a | [`0x06f311...b0feb0`](./contracts/avalanche-43114/0x06f311395ba08ffb9e5b31b666f318e417b0feb0/) | ✅ Audited |
| LendingPoolCollateralManager | unknown | avalanche | n/a | [`0x105c55...42c4e3`](./contracts/avalanche-43114/0x105c557444ed2f5ed34ee9548a0529e8c142c4e3/) | ✅ Audited |
| LendingPoolConfigurator | unknown | ethereum | n/a | [`0x3a95ee...4d7521`](./contracts/ethereum-1/0x3a95ee42f080ff7289c8b4a14eb483a8644d7521/) | ✅ Audited |
| LendingRateOracle | unknown | polygon | n/a | [`0x17f73a...960dfb`](./contracts/polygon-137/0x17f73aead876cc4059089ff815eda37052960dfb/) | ✅ Audited |
| LendToAaveMigrator | unknown | ethereum | n/a | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ✅ Audited |
| ParaSwapLiquiditySwapAdapter | unknown | avalanche | n/a | [`0xf7fc20...dd327f`](./contracts/avalanche-43114/0xf7fc20d9d1d8dfe55f5f2c3180272a5747dd327f/) | ✅ Audited |
| ReserveLogic | unknown | ethereum | n/a | [`0x2f892d...615b39`](./contracts/ethereum-1/0x2f892d0905dd20e79595fabdeae9c45234615b39/) | ✅ Audited |
| StableDebtToken | unknown | avalanche | n/a | [`0x6ff122...d6dfc6`](./contracts/avalanche-43114/0x6ff122fc51825eebeb8640592a30e1818ed6dfc6/) | ✅ Audited |
| StakedAaveV3 | unknown | ethereum | n/a | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ✅ Audited |
| StakedTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1438f4...f09e67`](./contracts/ethereum-1/0x1438f4f4e8ffd2d08f373af7fc84be0164f09e67/); ethereum `0x523ea3...7789c6` | ✅ Audited |
| StakedTokenV3 | unknown | ethereum | n/a | [`0xa11169...95fb47`](./contracts/ethereum-1/0xa1116930326d21fb917d5a27f1e9943a9595fb47/) | ✅ Audited |
| UiPoolDataProvider | unknown | avalanche | n/a | [`0x51c4ec...41d36d`](./contracts/avalanche-43114/0x51c4ec68ebdbe196394c4e10bc73fc132941d36d/) | ✅ Audited |
| ValidationLogic | unknown | ethereum | n/a | [`0x1967a3...126110`](./contracts/ethereum-1/0x1967a31c31d4344f7a4f158bcf72838a25126110/) | ✅ Audited |
| VariableDebtToken | unknown | ethereum | n/a | [`0x1104c2...221c63`](./contracts/ethereum-1/0x1104c2f267861aad82a3bad48ec4bf78ef221c63/) | ✅ Audited |
| WalletBalanceProvider | unknown | polygon | n/a | [`0x34aa03...63d43e`](./contracts/polygon-137/0x34aa032bc416cf2cdc45c0c8f065b1f19463d43e/) | ✅ Audited |
| WETHGateway | unknown | avalanche | n/a | [`0x8a47f7...1d27c8`](./contracts/avalanche-43114/0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveCollector | unknown | avalanche | n/a | [`0xfc9f44...0a091c`](./contracts/avalanche-43114/0xfc9f4403d28d338f3a2814df9febf7e7f20a091c/) | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | ethereum | n/a | [`0x36ec8f...a62e94`](./contracts/ethereum-1/0x36ec8f61d077909b2166f78c488f2525bca62e94/) | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | ethereum | n/a | [`0x238fcb...d6f76d`](./contracts/ethereum-1/0x238fcb066a2e4662078836237a62b59664d6f76d/) | ⚠️ Unaudited |
| AavePropositionPower | unknown | ethereum | n/a | [`0x72bbcf...746631`](./contracts/ethereum-1/0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631/) | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | ethereum | n/a | [`0xda8ad4...168a9d`](./contracts/ethereum-1/0xda8ad436e1dfe962091d86a341e957c6a5168a9d/) | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | ethereum | n/a | [`0xa5e83c...e3a391`](./contracts/ethereum-1/0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391/) | ⚠️ Unaudited |
| AIP9 | unknown | ethereum | n/a | [`0xd08e12...50709b`](./contracts/ethereum-1/0xd08e12367a7d68caa8ff080d3a56b2dc6650709b/) | ⚠️ Unaudited |
| AssetListingProposalGenericExecutor | unknown | ethereum | n/a | [`0x62121b...549d97`](./contracts/ethereum-1/0x62121b60a826b496f05bdd45dfe40c51fb549d97/) | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | ethereum | n/a | [`0x5ac493...5574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | avalanche | n/a | [`0x286393...4c42fa`](./contracts/avalanche-43114/0x286393ea182c9a20a8fedbe6f18533cbf14c42fa/) | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | avalanche | n/a | [`0x195bd5...f68669`](./contracts/avalanche-43114/0x195bd5faf93e0a04a8c00c680911d6e249f68669/) | ⚠️ Unaudited |
| CRPFactory | unknown | ethereum | n/a | [`0x1156c3...52f10c`](./contracts/ethereum-1/0x1156c30b08dbf16281c803eae0d52eee7652f10c/) | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | ethereum | n/a | [`0xf3b2c2...443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | ⚠️ Unaudited |
| HubInstance | unknown | ethereum | n/a | [`0x06002e...1e536a`](./contracts/ethereum-1/0x06002e9c4412cb7814a791ea3666d905871e536a/) | ⚠️ Unaudited |
| LendingPoolCore | unknown | ethereum | n/a | [`0x3dfd23...a076d3`](./contracts/ethereum-1/0x3dfd23a6c5e8bbcfc9581d2e864a68feb6a076d3/) | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | ethereum | n/a | [`0x0671ca...b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | ⚠️ Unaudited |
| OracleAnchor | unknown | ethereum | n/a | [`0x594543...d28261`](./contracts/ethereum-1/0x59454304baefa37f299ffe6237e5467223d28261/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x3de0ff...f80f49`](./contracts/ethereum-1/0x3de0ff76e8b528c092d47b9dac775931cef80f49/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | avalanche | n/a | [`0x06c9d0...6478b2`](./contracts/avalanche-43114/0x06c9d00cd51656791e2c2b435bee9dc1576478b2/) | ⚠️ Unaudited |
| StakedAave | unknown | ethereum | n/a | [`0x481484...0d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | ⚠️ Unaudited |
| StakeUIHelper | unknown | ethereum | n/a | [`0x06abcc...76ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | unknown | avalanche | n/a | [`0xa7da24...3c9182`](./contracts/avalanche-43114/0xa7da242e099136a71ff975b8d78b79aa543c9182/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (112)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0b7551...54fef7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1050e9...cc08e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x123fba...206fdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24abfa...61f4ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52d306...bcd413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7adedf...462f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e8dad...cff922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97f450...c296cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x987115...3a3186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb53c1a...15c8c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb94a5...b61d6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd4765...d5ec7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6845a...425baf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaa50a...aec09d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcd334...c73488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce33d...3251f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd6f15...5baf0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe03520...683fa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe47590...5a8ffe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58575...ccc6ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe775a3...f24473` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeae736...4ab790` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf20870...04aa7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5543c...9cbbd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf952a8...f643d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d22ae...345f24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ac4e9...da9c19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cb4ca...43c54d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x553b64...ad12f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6a8730...726ac7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6aced1...c32a4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x716fa3...460e04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a053...b5735e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7551b5...71d46d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77b6b5...48a428` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c330d...8a86c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x993903...3fb47e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa39599...dc555b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae9b3e...9290b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe889f...6fe355` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeadf4...a7dc97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc7df1...56a9b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcdac94...e88f44` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd05e3e...684744` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd10e8a...d23505` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7a516...6b9f33` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf70a4d...ad9492` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a2380...6a77d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x119798...d647bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16dea0...e505c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f127e...538e10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25a33e...10bdc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2db63c...22a7aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2de4f0...1ff468` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x35639e...658e3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x35fc00...2c393b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4235e2...1265c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ac959...ac8842` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ce202...be5914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x565621...5dbd30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c1c25...93f5eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cba34...38ceeb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6118d4...53e1d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62894d...7381d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64140f...7c5775` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65285e...945451` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x671791...e6c7b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6724e9...9c2647` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x67f92f...60ff9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6a2120...571b68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x72a7d2...cb252f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73e489...e01fc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d9d97...7cb901` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8874c9...097170` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88926b...44c468` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88be7e...788cef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x896768...82aa4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a0277...103123` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a7430...32c625` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9924d6...97d9fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d528a...1b094b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9dacde...4e431d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e544d...c1a8fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9c1bb...768771` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaec3eb...2804e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb0bdcc...d80f63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb407e1...3bbed3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5752d...d2fb33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6a860...2a318f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf2305...e114f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc34254...9c7c80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc70f5f...e678e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7938a...6b8fcf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9a7cd...803fd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd196da...5c24e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2fcb9...f3471e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5050b...9855cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd85218...1aeb41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd96b68...569d30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9f1e5...3a0186` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc336c...0ceb89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe42d0d...240124` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeddb6c...c176a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefa021...ff59c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xefa02e...596d14` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf2a5ba...1dbf01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf33a9e...694bd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf51f46...7d12c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf9cf52...acff97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfadd20...58019e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfaf795...e810a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdd7bc...83ddd7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Collaborative Audit ReportMay 14 2026 (also discovered via alternate URL)](https://github.com/sherlock-protocol/sherlock-reports/blob/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2026.05.14%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201778767107.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [Security AuditFeb 19 2026 (also discovered via alternate URL)](https://github.com/aave/aave-v4/blob/e2fb6320d28ed9c6bba66d47f70fed59aef2f64c/audits/2026-01-28_Aave-V4_ChainSecurity.pdf) | ChainSecurity | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [Security Audit - Tokenization SpokeFeb 10 2026 (also discovered via alternate URL)](https://github.com/aave/aave-v4/blob/main/audits/2026-02-10_TokenizationSpoke_ChainSecurity.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Security ReviewFeb 10 2026 (also discovered via alternate URL)](https://github.com/aave/aave-v4/blob/e2fb6320d28ed9c6bba66d47f70fed59aef2f64c/audits/2025-11-06_Aave-V4_TrailOfBits.pdf) | Trail of Bits | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Collaborative Audit ReportFeb 05 2026 (also discovered via alternate URL)](https://github.com/sherlock-protocol/sherlock-reports/blob/e80cb8551d5ab212d4eb0b6f04bff813d11dab03/audits/2026.02.05%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201770295450.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Security ReviewOct 20 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);} (also discovered via alternate URL)](https://github.com/aave/aave-v4/blob/main/audits/2025-10-20_Aave-V4_Blackthorn.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Security ReviewMar 31 2026 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-31_Enigma_Aave-v3.7.pdf) | Enigma Ventures | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Supervised Security ReviewMar 30 2026savant (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-30_Savant_Aave-v3.7.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [Security Assessment & Formal Verification ReportMar 29 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-29_Certora_Aave-v3.7.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Security ReviewMar 27 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-27_Pashov_Aave-v3.7.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 6 | high |
| [Security Audit ReportMar 26 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-26_MixBytes_Aave-v3.7.pdf) | MixBytes | Audit | 2026-03 | fresh | Direct | contract_name | 6 | high |
| [Audit Contest ReportMar 26 2026](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2026-03-26_Sherlock_Aave-v3.7.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Security ReviewNov 29 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-11-29_Pashov_Aave-v3.6.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 6 | high |
| [Security Assessment & Formal Verification ReportNov 18 2025](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_Certora_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [Security Audit ReportNov 18 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_MixBytes_Aave-v3.6.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [Supervised Security ReviewNov 18 2025savant](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-18_Savant_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [Security ReviewNov 16 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}](https://github.com/aave-dao/aave-v3-origin/blob/9f69c714350635787439608b52fb6064ce991bba/audits/2025-11-16_Blackthorn_Aave-v3.6.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [Security Audit ReportJul 18 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-18_MixBytes_AaveV3.5.pdf) | MixBytes | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |
| [Security ReviewJul 17 2025stermi](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_StErMi_Aave-v3.5.md) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |
| [Smart Contract AuditJul 17 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_ABDK_Aave-v3.5.pdf) | ABDK | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |
| [Security AssessmentJul 14 2025](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-14_Certora_AaveV3.5.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [Security ReviewJun 12 2025.st0{clip-path:url(#SVGID_00000012464508073868947960000011070647625777785502_);}](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-12_Blackthorn-v3.4_Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | 7 | high |
| [Security AssessmentJun 11 2025](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-11_Certora_Aave-v3.4_Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | 6 | high |
| [Smart Contract Security Audit ReportJun 11 2025stermi](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-06-11_Stermi_Aave-v3.4_Report.md) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | 6 | medium |
| [Security ReviewMay 13 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/74412e2b6e0b1973fac6837b6a488f8eaaeac4b1/audits/2025-05-13_Enigma_Aave-v3.4.pdf) | Enigma Ventures | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [Security Audit Report - V3.1-V3.3Aug 8 2025ottersec](https://github.com/aave/aptos-aave-v3/blob/main/audits/Ottersec%20Aave%20Aptos%20V3.1-V3.3%20Report.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Security Audit Report - Core V3.0.2Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Core%20V3.0.2%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Core%20V3.1-V3.3%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit](https://github.com/aave/aptos-aave-v3/blob/main/audits/Spearbit%20Aave%20Aptos%20Periphery%20V3.0.2%20Report.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Core%20V3.0.2%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Core%20V3.1-V3.3%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025](https://github.com/aave/aptos-aave-v3/blob/main/audits/Certora%20Aave%20Aptos%20Periphery%20V3.0.2%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Smart Contract Security Audit ReportMay 19 2025](https://github.com/aave-dao/aave-umbrella/blob/main/audits/MixBytes/Aave%20Umbrella%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Smart Contract Security Audit ReportMay 19 2025ackee](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Ackee/ackee-blockchain-aave-umbrella-report.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Smart Contract Security Audit ReportMar 2025stermi](https://github.com/aave-dao/aave-umbrella/tree/main/audits/Stermi) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit Contest ReportJan 22 2025 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/v3.3.0/audits/2025-01-22_Sherlock_Aave-v3.3.0.pdf) | Sherlock | Contest | 2025-01 | aging | Direct | contract_name | 3 | high |
| [Security ReviewSep 30 2024 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-30_Enigma_Aave-v3.2.pdf) | Enigma Ventures | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Security Assessment & Formal Verification Report - Liquid eModesSep 19 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [Security ReviewSep 15 2024 (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-15_Pashov_Aave-v3.2.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [Security Audit Report - Liquid eModesSep 12 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-12_Oxorio_Aav3-v3.2.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf) | yAudit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [GHO Stability Module Contract ReviewOct 23 2023](https://github.com/aave/gho-core/blob/main/audits/2023-10-23_GSM_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [GHO Smart Contract Security Assessment ReportJul 06 2023](https://github.com/aave/gho-core/blob/main/audits/2023-07-06_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-07 | stale | Direct | contract_name | 1 | high |
| [GHO Steward Contract ReviewJun 13 2023](https://github.com/aave/gho-core/blob/main/audits/2023-06-13_GhoSteward_SigmaPrime.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [GHO Steward Security Assessment & Formal Verification ReportMar 14 2023](https://github.com/aave/gho-core/blob/main/audits/2024-03-14_GhoStewardV2_Certora.pdf) | Certora | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [GHO Smart Contract AuditMar 01 2023](https://github.com/aave/gho-core/blob/main/audits/2023-03-01_ABDK.pdf) | ABDK | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [GHO Audit V2Nov 10 2022](https://github.com/aave/gho-core/blob/main/audits/2022-11-10_Openzeppelin-v2.pdf) | OpenZeppelin | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [GHO AuditAug 12 2022](https://github.com/aave/gho-core/blob/main/audits/2022-08-12_Openzeppelin-v1.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [Formal Verification of Aave V3 upgrade to V3.0.1Nov 17 2022 - Dec 15 2022](https://github.com/aave/aave-v3-core/blob/master/certora/Aave_V3.0.1_Formal_Verification_Report_Dec2022.pdf) | Certora | Audit | 2022-12 | stale | Direct | contract_name | 3 | high |
| [Formal Verification of Aave Protocol V3Nov 12 2021 - Jan 24 2022](https://github.com/aave/aave-v3-core/blob/master/certora/Aave_V3_Formal_Verification_Report_Jan2022.pdf) | Certora | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [Light Deployment Smart Contract Audit ReportMar 16 2021](https://github.com/aave/protocol-v2/blob/feat/light-deployments/audits/Peckshield-aave-v2-light-16-03-2021.pdf) | PeckShield | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [Smart Contract Security AssessmentJan 2021 (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/SigmaPrime-aave-v2-01-2021.pdf) | Sigma Prime | Audit | 2021-01 | stale | Direct | contract_name|n/a | 17 | high |
| [Smart Contract Audit ReportSep 2020](https://diligence.security/audits/2020/09/aave-protocol-v2) | ConsenSys Diligence | Audit | 2020-10 | stale | Direct | contract_name | 27 | high |
| [Smart Contract Security AssessmentSep 2020 (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/Certik-aave-v2-03-12-2020.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name|n/a | 15 | high |
| [Smart Contract Audit ReportSep 2020 (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/Peckshield-aave-v2-03-12-2020-EN.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name|n/a | 14 | high |
| [Smart Contract Audit ReportSep 2020 (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/Mixbytes-aave-v2-03-12-2020.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name|n/a | 15 | high |
| [2026-02-24_Aave-V4_Blackthorn.pdf](https://github.com/aave/aave-v4/blob/main/audits/2026-02-24_Aave-V4_Blackthorn.pdf) | Blackthorn | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [2021-11-01_OpenZeppelin_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2021-11-01_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | 2021-11 | stale | Direct | contract_name | 7 | high |
| [2022-01-07_TrailOfBits_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-07_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2022-01 | stale | Direct | contract_name | 10 | high |
| [2022-01-14_PeckShield_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-14_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [2022-01-24_Certora_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-24_Certora_AaveV3.pdf) | Certora | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [2022-01-27_ABDK_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-27_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | 9 | high |
| [2022-01-27_SigmaPrime_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-01-27_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2022-01 | stale | Direct | contract_name | 6 | high |
| [2022-12-09_PeckShield_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-12-09_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2022-12-23_SigmaPrime_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-12-23_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2022-12-25_Certora_AaveV3.0.1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2022-12-25_Certora_AaveV3.0.1.pdf) | Certora | Audit | 2022-12 | stale | Direct | contract_name | 3 | high |
| [2023-03_Certora_AaveV3-0-2.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2023-03_Certora_AaveV3-0-2.pdf) | Certora | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [2023-04-19_SigmaPrime_AaveV3-0-2.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2023-04-19_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2024-04-30_Certora_AaveV3.1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-04-30_Certora_AaveV3.1.pdf) | Certora | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-05-02_MixBytes_AaveV3.1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-05-02_MixBytes_AaveV3.1.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | 6 | high |
| [2024-06-02_Cantina-contest-AaveV3.1.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-06-02_Cantina-contest-AaveV3.1.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | medium |
| [2024-09-11_Certora_StataTokenV2.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-11_Certora_StataTokenV2.pdf) | Certora | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2024-10-22_StErMi_Aave-v3.3.md (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-10-22_StErMi_Aave-v3.3.md) | StErMi | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [2024-10-22_StErMi_Aave-v3.3.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-10-22_StErMi_Aave-v3.3.pdf) | StErMi | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |
| [2024-11-07_Certora_Aave-v3.3.0.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-11-07_Certora_Aave-v3.3.0.pdf) | Certora | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf) | yAudit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-01-20_Certora_CollectorRev6.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-20_Certora_CollectorRev6.pdf) | Certora | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-01-29_Oxorio_Aave-v3.3.0.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-29_Oxorio_Aave-v3.3.0.pdf) | Oxorio | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf) | Certora | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [2025-06-11_Certora_Aave-v3.4_Report.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Certora_Aave-v3.4_Report.pdf) | Certora | Audit | 2025-06 | aging | Direct | contract_name | 6 | high |
| [2025-06-11_Stermi_Aave-v3.4_AIP_Report.md (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Stermi_Aave-v3.4_AIP_Report.md) | StErMi | Audit | 2025-06 | aging | Direct | contract_name | 2 | medium |
| [2025-06-11_Stermi_Aave-v3.4_Report.md](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-11_Stermi_Aave-v3.4_Report.md) | StErMi | Audit | 2025-06 | aging | Direct | contract_name | 6 | medium |
| [2025-06-12_Blackthorn-v3.4_Report.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-06-12_Blackthorn-v3.4_Report.pdf) | Blackthorn | Audit | 2025-06 | aging | Direct | contract_name | 7 | high |
| [2025-07-17_StErMi_Aave-v3.5.pdf (also discovered via alternate URL)](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-07-17_StErMi_Aave-v3.5.pdf) | StErMi | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |
| [2025-11-16_Blackthorn_Aave-v3.6.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-11-16_Blackthorn_Aave-v3.6.pdf) | Blackthorn | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [2025-11-18_Certora_Aave-v3.6.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-11-18_Certora_Aave-v3.6.pdf) | Certora | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [2025-11-18_Savant_Aave-v3.6.pdf](https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-11-18_Savant_Aave-v3.6.pdf) | Savant | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [RewardsController.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/RewardsController.pdf) | Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [StakeToken.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/StakeToken.pdf) | Certora | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Umbrella.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/Umbrella.pdf) | Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [UmbrellaBatchHelper.pdf](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Certora/UmbrellaBatchHelper.pdf) | Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [REPORT Aave RewardsController.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20RewardsController.md) | Stermi | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [REPORT Aave StakeToken.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20StakeToken.md) | Stermi | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REPORT Aave Umbrella.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20Umbrella.md) | Stermi | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [REPORT Aave UmbrellaBatchHelper.md](https://github.com/aave-dao/aave-umbrella/blob/main/audits/Stermi/REPORT%20Aave%20UmbrellaBatchHelper.md) | Stermi | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-09-20_GSM_Stermi.pdf](https://github.com/aave/gho-core/blob/main/audits/2023-09-20_GSM_Stermi.pdf) | Stermi | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [2024-06-11_UpgradeableGHO_Certora.pdf](https://github.com/aave/gho-core/blob/main/audits/2024-06-11_UpgradeableGHO_Certora.pdf) | Certora | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-09-15_ModularGhoStewards_Certora.pdf](https://github.com/aave/gho-core/blob/main/audits/2024-09-15_ModularGhoStewards_Certora.pdf) | Certora | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Aave_V3.0.2_PR_820_Report_Mar2023.pdf](https://github.com/aave/aave-v3-core/blob/master/certora/Aave_V3.0.2_PR_820_Report_Mar2023.pdf) | Certora | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Certora-FV-aave-v2-03-12-2020.pdf (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/Certora-FV-aave-v2-03-12-2020.pdf) | Certora | Audit | 2020-10 | stale | Direct | contract_name|n/a | 7 | high |
| [PeckShield-aave-v2-03-12-2020-CN.pdf (also discovered via alternate URL)](https://github.com/aave/protocol-v2/blob/master/audits/PeckShield-aave-v2-03-12-2020-CN.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name|n/a | 13 | high |
| [01-11-2021_OpenZeppelin_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 7 | high |
| [07-01-2022_TrailOfBits_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | contract_name | 10 | high |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [14-01-2022_PeckShield_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | 9 | high |
| [27-01-2022_SigmaPrime_AaveV3.pdf (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | 6 | high |
| [02-05-2024_MixBytes_AaveV3.1.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/02-05-2024_MixBytes_AaveV3.1.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | 6 | high |
| [02-06-2024-Cantina-contest-AaveV3.1.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/02-06-2024-Cantina-contest-AaveV3.1.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | medium |
| [03-2023_2023_Certora_AaveV3-0-2.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/03-2023_2023_Certora_AaveV3-0-2.pdf) | Certora | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [11-09-2024_Certora_StataTokenV2.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/11-09-2024_Certora_StataTokenV2.pdf) | Certora | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf) | Certora | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2024-09-12_Oxorio_Aav3-v3.2.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2024-09-12_Oxorio_Aav3-v3.2.pdf) | Oxorio | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2025-05-30_Certora_Aave_Horizon-v3.3.0.pdf) | Certora | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf) | StErMi | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [30-04-2024_Certora_AaveV3.1.pdf](https://github.com/aave/aave-v3-horizon/blob/main/audits/30-04-2024_Certora_AaveV3.1.pdf) | Certora | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/techpaper/Aave_V3_Technical_Paper.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Bug BountyReport responsibly and get rewarded.](https://audits.sherlock.xyz/bug-bounties/300) | Sherlock | Contest | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf) | Certora | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [2024-09-12_Oxorio_Aav3-v3.2.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2024-09-12_Oxorio_Aav3-v3.2.pdf) | Oxorio | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2024-09-19_Certora_Aave-v3.2_Liquid_eModes.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [2025-06-11_Certora_Aave-v3.4_Report.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-06-11_Certora_Aave-v3.4_Report.pdf) | Certora | Audit | 2025-06 | aging | Direct | contract_name | 6 | high |
| [2025-06-11_Stermi_Aave-v3.4_Report.md](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-06-11_Stermi_Aave-v3.4_Report.md) | StErMi | Audit | 2025-06 | aging | Direct | contract_name | 6 | medium |
| [2025-06-12_Blackthorn-v3.4_Report.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-06-12_Blackthorn-v3.4_Report.pdf) | Blackthorn | Audit | 2025-06 | aging | Direct | contract_name | 7 | high |
| [2025-07-14_Certora_AaveV3.5.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-07-14_Certora_AaveV3.5.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [2025-07-17_StErMi_Aave-v3.5.md](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-07-17_StErMi_Aave-v3.5.md) | StErMi | Audit | 2025-07 | aging | Direct | contract_name | 6 | high |
| [2025-11-16_Blackthorn_Aave-v3.6.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-11-16_Blackthorn_Aave-v3.6.pdf) | Blackthorn | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [2025-11-18_Certora_Aave-v3.6.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-11-18_Certora_Aave-v3.6.pdf) | Certora | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |
| [2025-11-18_Savant_Aave-v3.6.pdf](https://github.com/bgd-labs/aave-v3-origin/blob/main/audits/2025-11-18_Savant_Aave-v3.6.pdf) | Savant | Audit | 2025-11 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xfc9f44...0a091c`](./contracts/avalanche-43114/0xfc9f4403d28d338f3a2814df9febf7e7f20a091c/) | AaveCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36ec8f...a62e94`](./contracts/ethereum-1/0x36ec8f61d077909b2166f78c488f2525bca62e94/) | AaveGenesisProposalPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x238fcb...d6f76d`](./contracts/ethereum-1/0x238fcb066a2e4662078836237a62b59664d6f76d/) | AaveIncentivesVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72bbcf...746631`](./contracts/ethereum-1/0x72bbcfc20d355fc3e8ac4ce8fcaf63874f746631/) | AavePropositionPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda8ad4...168a9d`](./contracts/ethereum-1/0xda8ad436e1dfe962091d86a341e957c6a5168a9d/) | AaveProtoGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5e83c...e3a391`](./contracts/ethereum-1/0xa5e83c1a6e56f27f7764e5c5d99a9b8786e3a391/) | AaveVoteStrategyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd08e12...50709b`](./contracts/ethereum-1/0xd08e12367a7d68caa8ff080d3a56b2dc6650709b/) | AIP9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62121b...549d97`](./contracts/ethereum-1/0x62121b60a826b496f05bdd45dfe40c51fb549d97/) | AssetListingProposalGenericExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ac493...5574aa`](./contracts/ethereum-1/0x5ac493b8c2cef1f02f117b9ba2797e7da95574aa/) | AssetVotingWeightProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x286393...4c42fa`](./contracts/avalanche-43114/0x286393ea182c9a20a8fedbe6f18533cbf14c42fa/) | ATokensAndRatesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1156c3...52f10c`](./contracts/ethereum-1/0x1156c30b08dbf16281c803eae0d52eee7652f10c/) | CRPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3b2c2...443a06`](./contracts/ethereum-1/0xf3b2c28c7245c49ea5e6c6db98026f180b443a06/) | GovernanceParamsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06002e...1e536a`](./contracts/ethereum-1/0x06002e9c4412cb7814a791ea3666d905871e536a/) | HubInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dfd23...a076d3`](./contracts/ethereum-1/0x3dfd23a6c5e8bbcfc9581d2e864a68feb6a076d3/) | LendingPoolCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0671ca...b3ffdf`](./contracts/ethereum-1/0x0671ca7e039af2cf2d2c5e7f1aa261ae78b3ffdf/) | LendVoteStrategyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x594543...d28261`](./contracts/ethereum-1/0x59454304baefa37f299ffe6237e5467223d28261/) | OracleAnchor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06c9d0...6478b2`](./contracts/avalanche-43114/0x06c9d00cd51656791e2c2b435bee9dc1576478b2/) | StableAndVariableTokensHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481484...0d03a1`](./contracts/ethereum-1/0x481484ee9be4819842268487aeeb1f43810d03a1/) | StakedAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06abcc...76ae68`](./contracts/ethereum-1/0x06abcc3b98b7310f50197f0f9cec6cf6e176ae68/) | StakeUIHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa7da24...3c9182`](./contracts/avalanche-43114/0xa7da242e099136a71ff975b8d78b79aa543c9182/) | UiPoolDataProviderV2V3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 50
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=76, medium=6
- Match method counts: extraction_exact=584

Zero-match audit list:

- [16943] Security Audit - Tokenization SpokeFeb 10 2026
- [16944] Security ReviewFeb 10 2026
- [16949] Security Assessment & Formal Verification ReportMar 29 2026
- [16952] Audit Contest ReportMar 26 2026
- [16967] Security Audit Report - V3.1-V3.3Aug 8 2025ottersec
- [16968] Security Audit Report - Core V3.0.2Jun 18 2025spearbit
- [16969] Security Audit Report - Core V3.1-V3.3Jun 18 2025spearbit
- [16970] Security Audit Report - Periphery V3.0.2Jun 18 2025spearbit
- [16971] Security Assessment & Formal Verification Report - Core V3.0.2Apr 2025
- [16972] Security Assessment & Formal Verification Report - Core V3.1-V3.3Apr 2025
- [16973] Security Assessment & Formal Verification Report - Periphery V3.0.2Apr 2025
- [16974] Smart Contract Security Audit ReportMay 19 2025
- [16975] Smart Contract Security Audit ReportMay 19 2025ackee
- [16976] Smart Contract Security Audit ReportMar 2025stermi
- [16978] Security ReviewSep 30 2024
- [16982] Security Assessment & Formal Verification Report - Stable Rate RemovalSep 10 2024
- [16983] GHO Stability Module Contract ReviewOct 23 2023
- [16985] GHO Steward Contract ReviewJun 13 2023
- [16986] GHO Steward Security Assessment & Formal Verification ReportMar 14 2023
- [16988] GHO Audit V2Nov 10 2022
- [16992] Light Deployment Smart Contract Audit ReportMar 16 2021
- [17007] 2022-12-09_PeckShield_AaveV3-0-1.pdf
- [17008] 2022-12-23_SigmaPrime_AaveV3-0-1.pdf
- [17011] 2023-04-19_SigmaPrime_AaveV3-0-2.pdf
- [17012] 2024-04-30_Certora_AaveV3.1.pdf
- [17015] 2024-09-11_Certora_StataTokenV2.pdf
- [17019] 2024-12-05_MixBytes_AaveStataToken(watoken)SecurityAuditReport.pdf
- [17020] 2025-01-20_Certora_CollectorRev6.pdf
- [17024] 2025-06-11_Certora_Aave-v3.4_AIP_Report.pdf
- [17034] RewardsController.pdf
- [17035] StakeToken.pdf
- [17036] Umbrella.pdf
- [17037] UmbrellaBatchHelper.pdf
- [17038] REPORT Aave RewardsController.md
- [17039] REPORT Aave StakeToken.md
- [17040] REPORT Aave Umbrella.md
- [17041] REPORT Aave UmbrellaBatchHelper.md
- [17042] 2023-09-20_GSM_Stermi.pdf
- [17043] 2024-06-11_UpgradeableGHO_Certora.pdf
- [17044] 2024-09-15_ModularGhoStewards_Certora.pdf
- [17050] 09-12-2022_PeckShield_AaveV3-0-1.pdf
- [17052] 19-04-2023_SigmaPrime_AaveV3-0-2.pdf
- [17053] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf
- [17062] 11-09-2024_Certora_StataTokenV2.pdf
- [17065] 2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf
- [17078] 2025-06-25_StErMi_Aave_Horizon-v3.3.0.pdf
- [17082] 30-04-2024_Certora_AaveV3.1.pdf
- [17083] Rendered PDF capture
- [17084] Bug BountyReport responsibly and get rewarded.
- [17107] 2024-09-10_Certora_Aave-v3.2_Stable_Rate_Removal.pdf

Fork inheritance lineage and inherited audits are included when available.
