# Agentic Audit Brief: Balmy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Balmy (`balmy`)
- Website: [https://balmy.xyz](https://balmy.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 152 unique implementations (152 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $163,588.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Balmy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 133 discovered implementations excluded (19 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 152
- Raw deployments: 152
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AavePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1821c1...259c98` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00815e...0e5561` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0833cf...2d7648` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1fa69a...cd98c7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59fa43...13fce6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7fd9da...c47ada` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x835482...d5c77e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9c0cae...fc1043` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c869...80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9...98d817` | ⚠️ Unaudited |
| BlockNumber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06d538...c2173e` | ⚠️ Unaudited |
| BondingCurve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693604...562341` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x577187...eeb15f` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00ce8e...8ae5b8` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037107...3e2cde` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x258592...4b3c1b` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec5...af9876` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f24e...4b99d3` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0602a...d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058c34...b2112d` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae...4d5b57` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| CompoundPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0d83...6af3f4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a78a9...4543fe` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4a43...85d108` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9a...ed5c30` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02beff...342ad4` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c534...5e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d169...48fe60` | ⚠️ Unaudited |
| DCAHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x059d30...536bd5` | ⚠️ Unaudited |
| DCAHubCompanion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ba4b1...dcf687` | ⚠️ Unaudited |
| DCAPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59acef...e025cd` | ⚠️ Unaudited |
| DCAPermissionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4edfb...e5ae11` | ⚠️ Unaudited |
| DCATokenDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70ee0a...bc914f` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164...8a16b1` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d...2e9bba` | ⚠️ Unaudited |
| ERC20Handler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ea1f6...e649d6` | ⚠️ Unaudited |
| ERC20PresetMinterPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x083c56...3399c9` | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x904371...d6bd0d` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0dce4...603b58` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3b53a...f764df` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158...463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48...807cc5` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce13...707583` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959db...375311` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa...75e650` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633...992b43` | ⚠️ Unaudited |
| GenericHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x205fa8...23c85a` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecd...9c3249` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f6058...358b39` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6141d9...a92514` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce55...b47415` | ⚠️ Unaudited |
| InterimRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc441...9d6e47` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075538...12c1d7` | ⚠️ Unaudited |
| L2CustomERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1da650...08a062` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00f932...4f4b42` | ⚠️ Unaudited |
| LinearVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ce813...149f2a` | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x350a79...ffa7f6` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224d8f...277f03` | ⚠️ Unaudited |
| LPStakingTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4dea9e...412cd2` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188711...4a764d` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e7ee...a2ad9f` | ⚠️ Unaudited |
| MintableBurnableSyntheticTokenPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e3dec...33fb4c` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x081937...68c912` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe31...d5fa0e` | ⚠️ Unaudited |
| OracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83d0e7...f10db1` | ⚠️ Unaudited |
| PreCommit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6ad9...19e6e0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038e3f...886298` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x298b9b...169f1d` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753...33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d7...5239ea` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369855...f4e262` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ddef...42c6e8` | ⚠️ Unaudited |
| RariFundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17728f...96aa4d` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54745f...3596d9` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5888e7...66840c` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7...80aaed` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf5191...ba2cd6` | ⚠️ Unaudited |
| RouterETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb49c4e...8d5f8b` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd80431...d06c07` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf22...5e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f6...b4ed9c` | ⚠️ Unaudited |
| StakingProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17beeb...362e50` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2413e4...c35121` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d8...537e1c` | ⚠️ Unaudited |
| StakingRewardsGas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2acdaa...e5cfae` | ⚠️ Unaudited |
| StakingRewardsStandalone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f7a17...6907f7` | ⚠️ Unaudited |
| StakingRewardsStandaloneMul | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x336581...b1380b` | ⚠️ Unaudited |
| StakingRewardsTiny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf38971...29da02` | ⚠️ Unaudited |
| StargateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x296f55...cb3f97` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df922...1cd511` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x014b22...78f436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6c806e...739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6dc585...836eec` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2afc...a87b73` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e...b5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | unit-228719 | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f42c...86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480bae...4fe79f` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1860b...24ebdb` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29490a...77d29b` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed20...1ff9f1` | ⚠️ Unaudited |
| UnlockValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc4bc...ad3337` | ⚠️ Unaudited |
| USDV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3fb6...293dbe` | ⚠️ Unaudited |
| Vader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0595af...0c08f8` | ⚠️ Unaudited |
| VaderBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b96d8...b63684` | ⚠️ Unaudited |
| VaderMinterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33fe4...d955aa` | ⚠️ Unaudited |
| VaderMinterUpgradeableV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00aadc...216b98` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d2...9cfbc8` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43d276...88f05b` | ⚠️ Unaudited |
| WidgetSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x164190...9e3a4e` | ⚠️ Unaudited |
| WithdrawalDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30421c...77e803` | ⚠️ Unaudited |
| WMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4...71c517` | ⚠️ Unaudited |
| XVader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a5f5f...a87a2c` | ⚠️ Unaudited |
| ZapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781b28...293323` | ⚠️ Unaudited |
| ZapEthToPreCommit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93621...85a90a` | ⚠️ Unaudited |
| ZERO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb67176...adfd4b` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4...1d5f1a` | ⚠️ Unaudited |
| ZEROFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fd98c...d5443b` | ⚠️ Unaudited |
| ZeroRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9894b0...5f8027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x20bdae...bc9923` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x49c590...1c31f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5ad2fe...baf9c0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6810e7...386b96` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6c6154...d13659` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x749fc5...0e1bbf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7d1afa...cfebb0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9ba4b1...dcf687` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa5adc5...83c345` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb4edfb...e5ae11` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdf0dbc...be27ee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x0b2c63...97ff85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x7f5c76...c31607` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x3c499c...5c3359` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xff970a...db5cc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/PeckShield.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Pessimistic.pdf (also discovered via alternate URL)](https://github.com/Mean-Finance/dca-v2-core/blob/main/audits/Pessimistic.pdf) | Pessimistic | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high|medium |
| [Introduction](https://omniscia.io/reports/mean-finance-swappers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-oracle-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-transformers-module) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-permit2-adapter-64ad40c224448c00148ee2f9) | Omniscia | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Introduction](https://omniscia.io/reports/mean-finance-nft-permission-system-65536361239be600181362f3) | Omniscia | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16784] PeckShield.pdf — no match: No explicit scope section; contracts extracted from findings targets and code snippets.
- [16785] Pessimistic.pdf — no match: No explicit scope section; contracts extracted from findings and notes. Audit date from report footer.
- [16788] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16789] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16790] Introduction — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope'.
- [16791] Introduction — no match: Extracted 6 contract names from the 'Contracts Assessed' scope table. Audit date is July 24th 2023 from the revision table.
- [16792] Introduction — no match: The report mentions 'NFT Permission System' as the module under audit but does not list specific contract names or file paths. The date is taken from the latest revision date (November 23rd 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield.pdf | DCAPermissionsManager | unmatched — not counted | — | Target of finding PVE-001 | no |
| PeckShield.pdf | ChainlinkOracle | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | UniswapV3Oracle | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | OracleAggregator | unmatched — not counted | — | Target of finding PVE-002 | no |
| PeckShield.pdf | DCAHubConfigHandler | unmatched — not counted | — | Target of finding PVE-003 | no |
| Pessimistic.pdf | PermissionMath | unmatched — not counted | — | mentioned in Bug finding | no |
| Pessimistic.pdf | ChainlinkOracle | unmatched — not counted | — | mentioned in Use of deprecated function, Tests issue, Notes | no |
| Pessimistic.pdf | DCAHubConfigHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Pessimistic.pdf | DCAHubSwapHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Pessimistic.pdf | DCAHubPositionHandler | unmatched — not counted | — | mentioned in Code quality finding | no |
| Introduction | CollectableWithGovernor | unmatched — not counted | — | listed in scope table | no |
| Introduction | Governable | unmatched — not counted | — | listed in scope table | no |
| Introduction | GetBalances | unmatched — not counted | — | listed in scope table | no |
| Introduction | RunSwap | unmatched — not counted | — | listed in scope table | no |
| Introduction | RevokableWithGovernor | unmatched — not counted | — | listed in scope table | no |
| Introduction | Shared | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapProxy | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapAdapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapperRegistry | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeAndRunSwap | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeRunSwapAndTransfer | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeRunSwapsAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeManyRunSwapAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | TakeManyRunSwapsAndTransferMany | unmatched — not counted | — | listed in scope table | no |
| Introduction | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | IdentityOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | OracleAggregator | unmatched — not counted | — | listed in scope table | no |
| Introduction | SimpleOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | StatefulChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | TokenSorting | unmatched — not counted | — | listed in scope table | no |
| Introduction | TransformerOracle | unmatched — not counted | — | listed in scope table | no |
| Introduction | UniswapV3Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | BaseTransformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | CollectableDust | unmatched — not counted | — | listed in scope table | no |
| Introduction | ERC4626Transformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | Governable | unmatched — not counted | — | listed in scope table | no |
| Introduction | Multicall | unmatched — not counted | — | listed in scope table | no |
| Introduction | ProtocolTokenWrapperTransformer | unmatched — not counted | — | listed in scope table | no |
| Introduction | TransformerRegistry | unmatched — not counted | — | listed in scope table | no |
| Introduction | ArbitraryExecutionPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | BasePermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | Permit2Transfers | unmatched — not counted | — | listed in scope table | no |
| Introduction | SwapPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | Token | unmatched — not counted | — | listed in scope table | no |
| Introduction | UniversalPermit2Adapter | unmatched — not counted | — | listed in scope table | no |
| Introduction | NFT Permission System | unmatched — not counted | — | mentioned as the module being audited in the overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 110 |
| upstream | 13 |
| standard_library | 11 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=2
- Match method counts: n/a

Zero-match audit list:

- [16784] PeckShield.pdf
- [16785] Pessimistic.pdf
- [16788] Introduction
- [16789] Introduction
- [16790] Introduction
- [16791] Introduction
- [16792] Introduction

Fork inheritance lineage and inherited audits are included when available.
