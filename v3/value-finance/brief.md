# Agentic Audit Brief: Value Finance

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

- Project: Value Finance (`value-finance`)
- Website: [https://valuedefi.io](https://valuedefi.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 130 unique implementations (130 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $500,008.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Value Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 129 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 130
- Raw deployments: 130
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
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
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1a8cb...af7f14` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x91df0f...f55876` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2f7c66...88dfb6` | ⚠️ Unaudited |
| BActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60132f...8eca36` | ⚠️ Unaudited |
| BalancerLpPairConverter_EthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25030...c94ae6` | ⚠️ Unaudited |
| BalancerLpPairConverter_EthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5118e3...9a5448` | ⚠️ Unaudited |
| BarnBridgeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8716f2...37d13f` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc446...62675b` | ⚠️ Unaudited |
| BondMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a356...fcdcf2` | ⚠️ Unaudited |
| BPoolCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bab5...abe950` | ⚠️ Unaudited |
| CompositeVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713a5f...2767e1` | ⚠️ Unaudited |
| CompositeVaultBBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30993b...d1069c` | ⚠️ Unaudited |
| CompositeVaultBptEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030c8e...3a7de3` | ⚠️ Unaudited |
| CompositeVaultBptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a62cc...692772` | ⚠️ Unaudited |
| CompositeVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e67c2...641dbb` | ⚠️ Unaudited |
| CompositeVaultController_BBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25ec3...53131a` | ⚠️ Unaudited |
| CompositeVaultController_BptEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e50f...2b8126` | ⚠️ Unaudited |
| CompositeVaultController_BptEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87abb9...439707` | ⚠️ Unaudited |
| CompositeVaultController_SlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6acaa8...ecd8aa` | ⚠️ Unaudited |
| CompositeVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8ac3...affc89` | ⚠️ Unaudited |
| CompositeVaultSlpEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061434...8a0e00` | ⚠️ Unaudited |
| CompositeVaultSlpEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ffd99...4c9932` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3479b0...40f6cc` | ⚠️ Unaudited |
| ERC20BridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcfab4...0ffcb6` | ⚠️ Unaudited |
| ExchangeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054928...c0fa21` | ⚠️ Unaudited |
| FaaSPoolCreatorLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c4d7...6f771a` | ⚠️ Unaudited |
| FaasPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210f34...d426e7` | ⚠️ Unaudited |
| FaaSRewardFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240f42...c835ff` | ⚠️ Unaudited |
| FaasYtruClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4871e...b35408` | ⚠️ Unaudited |
| GovVaultRewardAutoCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0127...b90c92` | ⚠️ Unaudited |
| gvVALUE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0610c2...50ad15` | ⚠️ Unaudited |
| gvVALUEGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dfb07...d54480` | ⚠️ Unaudited |
| LegacyPoolDrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3a0f...7fea90` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fbd65...b2bdd8` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70508d...569a03` | ⚠️ Unaudited |
| MerkleDistributorMultiple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd10ab8...6a0910` | ⚠️ Unaudited |
| MultiStablesClaimReturn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2c1d...c0c5db` | ⚠️ Unaudited |
| MultiStablesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55bf83...f86d26` | ⚠️ Unaudited |
| MultiStablesVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5d28...1adee7` | ⚠️ Unaudited |
| OracleMultiPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d385...27a297` | ⚠️ Unaudited |
| ProfitSharingRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5344f4...1a5db4` | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58bd64...eb66d5` | ⚠️ Unaudited |
| ReserveFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aed0a...370fb2` | ⚠️ Unaudited |
| ReserveFundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf664...afe4fb` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f5274...8e05b8` | ⚠️ Unaudited |
| ShareConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57cda1...d15bf2` | ⚠️ Unaudited |
| StableSwap3PoolConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2f33...54338d` | ⚠️ Unaudited |
| StableSwapBusdConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0e55...2fc2b0` | ⚠️ Unaudited |
| StableSwapCompoundConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f988...2281e0` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae63a2...717718` | ⚠️ Unaudited |
| StableSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc437b8...1965e1` | ⚠️ Unaudited |
| StakePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14abdb...4b7678` | ⚠️ Unaudited |
| StakePoolCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959ecb...30257d` | ⚠️ Unaudited |
| StakePoolEpochRewardCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be1aa...46e508` | ⚠️ Unaudited |
| StakePoolHasOperatorCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2fb63...0625d8` | ⚠️ Unaudited |
| StrategyAutoCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcce5b1...0721f1` | ⚠️ Unaudited |
| StrategyBalancerEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7c68a...2b27e6` | ⚠️ Unaudited |
| StrategyBalancerEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2ef5...45c9a9` | ⚠️ Unaudited |
| StrategyBarnBridgeUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bf3e...255e1b` | ⚠️ Unaudited |
| StrategyBEarnVSwapWeightLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa27ce2...13eabd` | ⚠️ Unaudited |
| StrategyCurve3Crv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467e9f...07bf3e` | ⚠️ Unaudited |
| StrategyCurveBCrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb43f07...a63926` | ⚠️ Unaudited |
| StrategyCurveCCrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x985956...6e92b5` | ⚠️ Unaudited |
| StrategyPickle3Crv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3061cf...72ff44` | ⚠️ Unaudited |
| StrategySushiEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbec7de...6b3fdb` | ⚠️ Unaudited |
| StrategySushiEthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129a8d...08bcad` | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93112...83803f` | ⚠️ Unaudited |
| SushiswapLpPairConverter_EthWbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda223...942f9e` | ⚠️ Unaudited |
| SwapCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c032f...f14960` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02818a...ca2c39` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105e62...be080d` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605187...db76de` | ⚠️ Unaudited |
| UniswapRouterSupportingFeeOnTransferTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc60a1...ba460c` | ⚠️ Unaudited |
| Univ2ETHUSDCMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde268a...e5ee2a` | ⚠️ Unaudited |
| UNIv2ETHUSDCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b8c8...88d82e` | ⚠️ Unaudited |
| Univ2ETHWBTCMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e409...429fc9` | ⚠️ Unaudited |
| UNIv2ETHWBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf57f...99c370` | ⚠️ Unaudited |
| ValueGovernanceVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-260133 | `0x78d46e...98e51b` | ⚠️ Unaudited |
| ValueIOUClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de515...a4eb7e` | ⚠️ Unaudited |
| ValueIOURebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a53b6...b3f9f1` | ⚠️ Unaudited |
| ValueLiquidFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b8e12...74c14c` | ⚠️ Unaudited |
| ValueLiquidFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45f24b...2bcdfa` | ⚠️ Unaudited |
| ValueLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e833...218e5c` | ⚠️ Unaudited |
| ValueLiquidMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4572b9...65e560` | ⚠️ Unaudited |
| ValueLiquidProfitCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d5318...5b775e` | ⚠️ Unaudited |
| ValueLiquidProfitCollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee30af...090a13` | ⚠️ Unaudited |
| ValueLiquidProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7f82...774b36` | ⚠️ Unaudited |
| ValueLiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f75e...9a0a03` | ⚠️ Unaudited |
| ValueLiquidZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x015a1d...918124` | ⚠️ Unaudited |
| ValueMasterPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e71c7...aee046` | ⚠️ Unaudited |
| ValueMinorPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5116...cfbd2f` | ⚠️ Unaudited |
| ValueMultiVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8764f2...60f7ff` | ⚠️ Unaudited |
| ValueMultiVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea48b3...29f0e3` | ⚠️ Unaudited |
| ValueVaultBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95beae...a386ec` | ⚠️ Unaudited |
| ValueVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa8ecc...004b28` | ⚠️ Unaudited |
| ValueVaultProfitSharer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1c31...d1e862` | ⚠️ Unaudited |
| ValueVaultProfitSharerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fae60...fa2ac8` | ⚠️ Unaudited |
| vBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05d707...f2fef7` | ⚠️ Unaudited |
| vBONDGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85f988...2281e0` | ⚠️ Unaudited |
| vBSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0ed5...361600` | ⚠️ Unaudited |
| vETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a034...70f16e` | ⚠️ Unaudited |
| VSafeVaultCAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15bcac...eebe32` | ⚠️ Unaudited |
| VSafeVaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c7879...229cde` | ⚠️ Unaudited |
| VSafeVaultMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7376fc...864a7d` | ⚠️ Unaudited |
| VSafeVaultVSwapGvValueBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58d3e7...262637` | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x925d67...38baea` | ⚠️ Unaudited |
| VSafeVaultVSwapVbswapBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9265dc...45085a` | ⚠️ Unaudited |
| vUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e12...74c14c` | ⚠️ Unaudited |
| WETHMultiPoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126082...df1abf` | ⚠️ Unaudited |
| WETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f72aa...64ceee` | ⚠️ Unaudited |
| xvBSWAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ca880...4bd8b5` | ⚠️ Unaudited |
| YFV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f24b...2bcdfa` | ⚠️ Unaudited |
| YFVDevRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ffcc...fae07e` | ⚠️ Unaudited |
| YFVGovernanceVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07eb8c...808ca2` | ⚠️ Unaudited |
| YFVReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3422ac...78bbdb` | ⚠️ Unaudited |
| YFVRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d308...1c8cfe` | ⚠️ Unaudited |
| YFVRewardsBALPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62a9fe...2ba22e` | ⚠️ Unaudited |
| YFVRewardsBATPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c990f...5c31a1` | ⚠️ Unaudited |
| YFVRewardsBTCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbde07...b5e063` | ⚠️ Unaudited |
| YFVRewardsETHPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ffb6...6a42bb` | ⚠️ Unaudited |
| YFVRewardsKNCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b7477...433092` | ⚠️ Unaudited |
| YFVRewardsLINKPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196cf7...7810cd` | ⚠️ Unaudited |
| YFVRewardsRENPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752037...0174b0` | ⚠️ Unaudited |
| YFVRewardsYCrvUNIv2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931da4...c47cfd` | ⚠️ Unaudited |
| YFVRewardsYFIPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b83a...c9a117` | ⚠️ Unaudited |
| YFVStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6ffd...ad4a30` | ⚠️ Unaudited |
| YFVStakeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd120f2...70277a` | ⚠️ Unaudited |
| YFVVIPVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba70f...6280e6` | ⚠️ Unaudited |
| YFVVIPVoteV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc58a4...22775b` | ⚠️ Unaudited |
| YFVVoteV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03cf...1cc997` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FaaSPool.pdf](https://valuedefi.io/files/faaspool.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Peckshield_Audit_Report.pdf](https://valuedefi.io/files/peckshield_audit_report.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [ValueGov2 Audit.pdf](https://valuedefi.io/files/valuegov2audit.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Value Token Contract Audit.pdf](https://valuedefi.io/files/value_token_contract_audit.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Arcadia Vault AuditPublic.pdf](https://valuedefi.io/files/arcadia_vault_auditpublic.pdf) | Arcadia | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Security Analysis by Pessimistic.pdf](https://valuedefi.io/files/security_analysis_by_pessimistic.pdf) | Pessimistic | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1. Letter from Arcadia for YFV Staking Pool v2.pdf](https://valuedefi.io/files/letter_from_arcadia_for_yfv_staking_pool_v2.pdf) | Arcadia | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2. YFV Staking Pool v2 - Audit Summary.pdf](https://valuedefi.io/files/yfv_staking_pool_v2_-_audit_summary.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2. YFV Protocol Audit Summary.pdf](https://valuedefi.io/files/yfv_protocol_audit_summary.pdf) | unknown | Audit | 2020-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18465] FaaSPool.pdf — no match: Only one contract, FaaSPool.sol, is explicitly listed in scope.
- [18466] Peckshield_Audit_Report.pdf — no match: Scope section explicitly lists four contracts: ValueVaultMaster, ValueVaultBank, ValueVaultV2, and WETHMultiPoolStrategy. Audit date is November 28, 2020 from cover page.
- [18467] ValueGov2 Audit.pdf — no match: Only one contract in scope: ValueGovernanceVault.sol. Also mentions ValueLiquidityToken in findings but not in scope.
- [18468] Value Token Contract Audit.pdf — no match: Only one contract in scope: ValueLiquidityToken.sol. Audit date from cover page.
- [18469] Arcadia Vault AuditPublic.pdf — no match: Two contracts in scope: YFVGovernanceVault.sol and YFVController.sol. Audit date from title.
- [18470] Security Analysis by Pessimistic.pdf — no match: Only one contract, YFV_Stake_v2.sol, is explicitly mentioned as the audited target.
- [18471] 1. Letter from Arcadia for YFV Staking Pool v2.pdf — no match: Contract name extracted from file path in the report text.
- [18472] 2. YFV Staking Pool v2 - Audit Summary.pdf — no match: Only one contract name explicitly mentioned in scope; no formal scope section.
- [18473] 2. YFV Protocol Audit Summary.pdf — no match: Contracts extracted from findings sections; no explicit scope table but contracts are clearly identified as audited targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FaaSPool.pdf | FaaSPool | unmatched — not counted | — | Listed in scope section: 'FaaSPool.sol' | no |
| Peckshield_Audit_Report.pdf | ValueVaultMaster | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | ValueVaultBank | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | ValueVaultV2 | unmatched — not counted | — | listed in scope section | no |
| Peckshield_Audit_Report.pdf | WETHMultiPoolStrategy | unmatched — not counted | — | listed in scope section | no |
| ValueGov2 Audit.pdf | ValueGovernanceVault | unmatched — not counted | — | listed in scope and findings target | no |
| Value Token Contract Audit.pdf | ValueLiquidityToken | unmatched — not counted | — | Listed in scope and targeted in findings. | no |
| Arcadia Vault AuditPublic.pdf | YFVGovernanceVault | unmatched — not counted | — | listed in scope and findings | no |
| Arcadia Vault AuditPublic.pdf | YFVController | unmatched — not counted | — | listed in scope and findings | no |
| Security Analysis by Pessimistic.pdf | YFV_Stake_v2 | unmatched — not counted | — | listed in scope as the audited smart contract | no |
| 1. Letter from Arcadia for YFV Staking Pool v2.pdf | YFV Stake | unmatched — not counted | — | listed in scope | no |
| 2. YFV Staking Pool v2 - Audit Summary.pdf | YFV Stake V2 | unmatched — not counted | — | mentioned as 'YFValue Smart Contract YFV Stake V2.sol' in executive summary | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewards | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewards.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool1BAL | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool1BAL.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool2YFI | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool2YFI.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool3BAT | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool3BAT.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool4REN | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool4REN.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool5KNC | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool5KNC.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool6BTC | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool6BTC.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool7ETH | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool7ETH.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool8LINK | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool8LINK.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVRewardsPool9YCrvUNIv2 | unmatched — not counted | — | Listed in findings section: Contracts: YFVRewardsPool9YCrvUNIv2.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVStake | unmatched — not counted | — | Listed in findings section: Contract: YFVStake.sol | no |
| 2. YFV Protocol Audit Summary.pdf | YFVVote | unmatched — not counted | — | Listed in findings section: Contract: YFVVote.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=1
- Match method counts: n/a

Zero-match audit list:

- [18465] FaaSPool.pdf
- [18466] Peckshield_Audit_Report.pdf
- [18467] ValueGov2 Audit.pdf
- [18468] Value Token Contract Audit.pdf
- [18469] Arcadia Vault AuditPublic.pdf
- [18470] Security Analysis by Pessimistic.pdf
- [18471] 1. Letter from Arcadia for YFV Staking Pool v2.pdf
- [18472] 2. YFV Staking Pool v2 - Audit Summary.pdf
- [18473] 2. YFV Protocol Audit Summary.pdf

Fork inheritance lineage and inherited audits are included when available.
