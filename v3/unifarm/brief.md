# Agentic Audit Brief: UniFarm

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: UniFarm (`unifarm`)
- Website: [https://unifarm.co/](https://unifarm.co/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 295 unique implementations (295 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $158,086.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for UniFarm. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, polygon. Structural roles: 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x40986a...51af88`, chain 1)
- UnnamedContract (`0xa7305a...d13dd6`, chain 137)
- TransparentUpgradeableProxy (`0x0a356f...908680`, chain 56)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 292 discovered implementations excluded (0 third-party/infra; 8 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Deployed-live implementations: 3 of 295 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 295
- Raw deployments: 295
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (295)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1536cc...82c64b` | ⚠️ Unaudited |
| AdvisorsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48c9d4...d69bb9` | ⚠️ Unaudited |
| AllMarkets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dcaa7...689ae6` | ⚠️ Unaudited |
| AllMarketsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ed79...10608f` | ⚠️ Unaudited |
| AlphaIDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b1520...f23191` | ⚠️ Unaudited |
| AmtCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa39e20...41eccf` | ⚠️ Unaudited |
| ARCONA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fc453...d5faab` | ⚠️ Unaudited |
| AuctionEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a753d...98f0d3` | ⚠️ Unaudited |
| BasicLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc1b32...ec6ef9` | ⚠️ Unaudited |
| BattleVerseCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bee0c...5bbd12` | ⚠️ Unaudited |
| BEP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab24ff...81b3aa` | ⚠️ Unaudited |
| BEP20FOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x658a10...5b0539` | ⚠️ Unaudited |
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cdeab...3876bf` | ⚠️ Unaudited |
| BetaIDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4eccf...0511ef` | ⚠️ Unaudited |
| BitcashPay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04770...7e83ac` | ⚠️ Unaudited |
| BLOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951c85...545d87` | ⚠️ Unaudited |
| Bollycoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd361...e4ea99` | ⚠️ Unaudited |
| BoostContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x136d48...1e3ddf` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d96d4...79bfc6` | ⚠️ Unaudited |
| BridgeAssist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a8ba0...da217f` | ⚠️ Unaudited |
| BridgeAssistant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5006e2...60840b` | ⚠️ Unaudited |
| BridgeAssistB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e68cb...4f1d7f` | ⚠️ Unaudited |
| BridgeMintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ef285...7e2ff9` | ⚠️ Unaudited |
| BridgeUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x04f3dd...d2d26b` | ⚠️ Unaudited |
| CBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x841ce4...d0738c` | ⚠️ Unaudited |
| CentaurFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6f16...407ff8` | ⚠️ Unaudited |
| CentaurFactoryTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2c9e...2e09cb` | ⚠️ Unaudited |
| CentaurLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c2c3...86e5aa` | ⚠️ Unaudited |
| CentaurMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ba35...c2012e` | ⚠️ Unaudited |
| CentaurPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed972...ac2f3a` | ⚠️ Unaudited |
| CentaurStakingV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512887...a81b47` | ⚠️ Unaudited |
| CentaurStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x436e36...81c352` | ⚠️ Unaudited |
| CentaurToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030424...9c064b` | ⚠️ Unaudited |
| Cfl365Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eead5...cc2660` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4...95e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd...d06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| CinemaDraftToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fee36...89d17c` | ⚠️ Unaudited |
| CirculatingSupplyCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa3cb...8cf163` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e3d8...222e83` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0deb1a...bfdaac` | ⚠️ Unaudited |
| CntrBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526065...bd1840` | ⚠️ Unaudited |
| Cohort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d1cec...fa6fc0` | ⚠️ Unaudited |
| CohortFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb558c3...6a3a80` | ⚠️ Unaudited |
| CollgToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x559314...b3376c` | ⚠️ Unaudited |
| CollToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4cb04...0b3493` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1eb754...34b26b` | ⚠️ Unaudited |
| COVToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f237d...9b01c3` | ⚠️ Unaudited |
| DaoStakeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa70f4...63af7f` | ⚠️ Unaudited |
| DarkPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e766f...10e6fb` | ⚠️ Unaudited |
| DEFX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4749...0f8eda` | ⚠️ Unaudited |
| DID | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe40927...249c14` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3434f9...afe587` | ⚠️ Unaudited |
| EcosystemVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ebd50...ca5f4d` | ⚠️ Unaudited |
| FabweltToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23e8b6...e703b9` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522a6e...06781d` | ⚠️ Unaudited |
| FeePoolUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x04f3dd...d2d26b` | ⚠️ Unaudited |
| Festaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e86e...b0578c` | ⚠️ Unaudited |
| FITToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e933e...d1889d` | ⚠️ Unaudited |
| FoundationVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb41e4f...8ad288` | ⚠️ Unaudited |
| FrontierToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c352...b7793f` | ⚠️ Unaudited |
| FrontierTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70d82...21e4d7` | ⚠️ Unaudited |
| GamyFi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40eb0a...d45b0c` | ⚠️ Unaudited |
| GlobalDAOBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20fb04...c5a1a5` | ⚠️ Unaudited |
| GlobalDAOBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b7f96...3852ce` | ⚠️ Unaudited |
| GlobalDAOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x757269...4f6b61` | ⚠️ Unaudited |
| GlobalDAOToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025b45...dcb533` | ⚠️ Unaudited |
| GlobalDAOTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47223d...47ac1f` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3fa9...b2626f` | ⚠️ Unaudited |
| GovernanceV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0e52...83bb83` | ⚠️ Unaudited |
| GVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x597662...679035` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| Hexagon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240f9e...3e175a` | ⚠️ Unaudited |
| ICWIDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1db9bd...fadc81` | ⚠️ Unaudited |
| IncentiveEventsReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12e45e...6975df` | ⚠️ Unaudited |
| IncentiveEventsRewardNew | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf2d36...94e390` | ⚠️ Unaudited |
| InfoBundlerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29cef8...a2e203` | ⚠️ Unaudited |
| InfoBundlerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301ff6...9aa9e8` | ⚠️ Unaudited |
| InitializableProductProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x664cdb...2c9d35` | ⚠️ Unaudited |
| IPO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9938...d955da` | ⚠️ Unaudited |
| IPORefunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc088...2802d4` | ⚠️ Unaudited |
| JPOW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8183d...8e4410` | ⚠️ Unaudited |
| KolectToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd084b8...cb3988` | ⚠️ Unaudited |
| KUN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc40c96...3e6cdb` | ⚠️ Unaudited |
| LeaderboardContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa59fb2...6b7d65` | ⚠️ Unaudited |
| LiquidityVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26f7b5...3bb86f` | ⚠️ Unaudited |
| LotteryLikePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2218...f50a91` | ⚠️ Unaudited |
| LotteryPricePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a8e9b...32ea02` | ⚠️ Unaudited |
| LpStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d92e5...ac642a` | ⚠️ Unaudited |
| MappingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x40986a...51af88` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25cf9d...133e67` | ⚠️ Unaudited |
| MarketCreationRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e376f...6155f7` | ⚠️ Unaudited |
| MarketMakerVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95adae...cf0f62` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x495d3a...8401f0` | ⚠️ Unaudited |
| MarketRegistryNew | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e56d3...0fae8c` | ⚠️ Unaudited |
| MarketUtility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8c01...73e847` | ⚠️ Unaudited |
| MarketUtilityV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42df2...a14ec5` | ⚠️ Unaudited |
| MarketUtilityV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67afd...7b9f77` | ⚠️ Unaudited |
| Master | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03c41c...427275` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7883ad...9a3248` | ⚠️ Unaudited |
| MasterChefInternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4065b6...58e0ff` | ⚠️ Unaudited |
| MemberRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef40f8...f07fca` | ⚠️ Unaudited |
| MembershipPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc80531...a64779` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d5de3...12a896` | ⚠️ Unaudited |
| MessageBusOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92ffad...d80828` | ⚠️ Unaudited |
| MilkyWaySmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a5a34...adc5a5` | ⚠️ Unaudited |
| MilkyWayToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9adad...ce803e` | ⚠️ Unaudited |
| MinterVested | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a9af0...69b80a` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06fda0...074ec0` | ⚠️ Unaudited |
| MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09236a...31c51e` | ⚠️ Unaudited |
| Multisend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f7547...5df52d` | ⚠️ Unaudited |
| MultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f643d...c17913` | ⚠️ Unaudited |
| MultisigMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x518496...998413` | ⚠️ Unaudited |
| MyneToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd254dc...cce29c` | ⚠️ Unaudited |
| NativeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ca648...dc13c1` | ⚠️ Unaudited |
| NativeWhirl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b71d0...367122` | ⚠️ Unaudited |
| NetVrkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc0d6c...b7157a` | ⚠️ Unaudited |
| NFT4PlayLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x384f78...854f02` | ⚠️ Unaudited |
| NFT4PlayStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10e16c...26490e` | ⚠️ Unaudited |
| NFTMedal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d9a6...58680e` | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aa19c...641ea1` | ⚠️ Unaudited |
| NordToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9730...05a0de` | ⚠️ Unaudited |
| OMGrantsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8899d...a1e1d7` | ⚠️ Unaudited |
| OMPrivateEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649402...90817b` | ⚠️ Unaudited |
| OMReferralsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206fdb...bc970d` | ⚠️ Unaudited |
| OMReservesEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84701...63859a` | ⚠️ Unaudited |
| OMStakingRewardsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a47a5...ac2c69` | ⚠️ Unaudited |
| OMTeamEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba028d...f8e34b` | ⚠️ Unaudited |
| OMTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3593d1...60c95d` | ⚠️ Unaudited |
| OMV1ToV2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ff95...e4b723` | ⚠️ Unaudited |
| OriginalTokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78bc5e...ed02dc` | ⚠️ Unaudited |
| OriginalTokenVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11a0c9...44a980` | ⚠️ Unaudited |
| OroPocket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32d72d...480fe4` | ⚠️ Unaudited |
| OROToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0acd92...65d390` | ⚠️ Unaudited |
| OROWBTCFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a3ef5...3b9214` | ⚠️ Unaudited |
| OROWETHFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c14eb...081346` | ⚠️ Unaudited |
| OWL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9085b4...d76f19` | ⚠️ Unaudited |
| PaidToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x45b05c...045fda` | ⚠️ Unaudited |
| PaidTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e6e9...25991c` | ⚠️ Unaudited |
| ParticularVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b66c8...5bdda2` | ⚠️ Unaudited |
| PartnershipsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030afa...a2f480` | ⚠️ Unaudited |
| PathFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab5983...b6c2e6` | ⚠️ Unaudited |
| PaycerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6083a...233612` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd443fe...97580e` | ⚠️ Unaudited |
| PeggedTokenBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c76f...1e1e4b` | ⚠️ Unaudited |
| PixelRaceGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae4b0f...237c23` | ⚠️ Unaudited |
| PlayerContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5e778...9b0716` | ⚠️ Unaudited |
| PlayToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf787e1...ba098d` | ⚠️ Unaudited |
| PLEToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387396...de4931` | ⚠️ Unaudited |
| PlotXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72f020...0c66bb` | ⚠️ Unaudited |
| Polkally | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76db67...a175df` | ⚠️ Unaudited |
| PolytradeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaac2fe...d0afbd` | ⚠️ Unaudited |
| PontoonStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07fed...1ecaa4` | ⚠️ Unaudited |
| Predator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29d13c...a36817` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d3939...dbf8d2` | ⚠️ Unaudited |
| PresaleBonder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaafc06...fb3f98` | ⚠️ Unaudited |
| PresaleNew | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc301b7...488347` | ⚠️ Unaudited |
| PresaleNewCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46fd36...cfbf19` | ⚠️ Unaudited |
| PrivateSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639dba...29288e` | ⚠️ Unaudited |
| PrivateSaleVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81af90...542cd2` | ⚠️ Unaudited |
| ProposalCategory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70cf0...8e3084` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11b794...6c856e` | ⚠️ Unaudited |
| PublicSaleContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd66cd...2cb8f8` | ⚠️ Unaudited |
| PublicSaleWaitlistContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x927ae8...5c6a18` | ⚠️ Unaudited |
| RaceContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd20b8...e20d7f` | ⚠️ Unaudited |
| RandomWinner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388950...ba457a` | ⚠️ Unaudited |
| Razor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50de68...07d2cd` | ⚠️ Unaudited |
| ReceiverWhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x869499...98e328` | ⚠️ Unaudited |
| RedeemHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf4b8...9c3020` | ⚠️ Unaudited |
| ReefLiquidityBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3713a4...394d56` | ⚠️ Unaudited |
| ReefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3e6a...735acf` | ⚠️ Unaudited |
| RefTreeStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63de7c...0d4bdb` | ⚠️ Unaudited |
| Reinvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2df0b...3d5bc7` | ⚠️ Unaudited |
| ReserveVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaae4e...842471` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70509b...712fd8` | ⚠️ Unaudited |
| RomaPosrednik | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5e787...672cd5` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04aca9...1a35a9` | ⚠️ Unaudited |
| Route | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16eccf...753db4` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x637315...11f21c` | ⚠️ Unaudited |
| RoyaleLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdc4ca...71172c` | ⚠️ Unaudited |
| RoyaleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eaf9c...4548db` | ⚠️ Unaudited |
| RoyaUserToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x448cb1...c8e77e` | ⚠️ Unaudited |
| sGlobalDAOToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a3e9d...7dc0ae` | ⚠️ Unaudited |
| ShadowStakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd77d4...d04d75` | ⚠️ Unaudited |
| ShakeSmartToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba8a6e...91d8d0` | ⚠️ Unaudited |
| SHO1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25c77d...97041a` | ⚠️ Unaudited |
| SHO2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0571ad...64b4ec` | ⚠️ Unaudited |
| SHO2UPD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d5fb4...b7f19a` | ⚠️ Unaudited |
| SHUB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4e039...3f6b4a` | ⚠️ Unaudited |
| SingleBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66acea...56f64f` | ⚠️ Unaudited |
| SingleRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23f101...8366b5` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92ab46...dea19b` | ⚠️ Unaudited |
| SporesStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c57e...64eb1a` | ⚠️ Unaudited |
| StackToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6855f7...ee5cf3` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068e1d...ffa4dd` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a8e2...13191f` | ⚠️ Unaudited |
| StakingNext | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32d5bf...0fa448` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e15ad...feba93` | ⚠️ Unaudited |
| StakingPoolsMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d387...383a5b` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a4bab...a9ba54` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x197857...88de76` | ⚠️ Unaudited |
| StrategicSaleVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aae17...7a1209` | ⚠️ Unaudited |
| StratSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x711b40...0a65be` | ⚠️ Unaudited |
| StratWSBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb95873...e13bca` | ⚠️ Unaudited |
| SwapReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62cac8...fc2eaf` | ⚠️ Unaudited |
| TeamVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x884ddf...3d26ff` | ⚠️ Unaudited |
| TeraBlockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaf7d8...7c15ae` | ⚠️ Unaudited |
| TheDestroyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7020b2...ebe7f7` | ⚠️ Unaudited |
| Ticket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe252f4...b9e8ff` | ⚠️ Unaudited |
| TicketsCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x570ebc...674457` | ⚠️ Unaudited |
| TicketsCounter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x424077...768c89` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c29c5...531e1d` | ⚠️ Unaudited |
| TimelockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x207c67...45887c` | ⚠️ Unaudited |
| TMCK2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f7435...c8cadc` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16fe93...37a3b0` | ⚠️ Unaudited |
| TokenAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d7c0f...098030` | ⚠️ Unaudited |
| TokenBNBERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb66e...b034f9` | ⚠️ Unaudited |
| TokenController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc07a4c...e47613` | ⚠️ Unaudited |
| TokenControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34216a...71c320` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x053a51...f65ba2` | ⚠️ Unaudited |
| TokenDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x664ad6...1839e7` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x846c5d...0abeda` | ⚠️ Unaudited |
| TokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c970c...98c57d` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-395270 | `0x0a356f...908680` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1e2c03...d42c55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x363e15...2931e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x56403d...84e4d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x622b1b...f8cbcc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa2306b...a52cab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x007f48...ea32f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x051f66...1dd926` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x1ce767...8646c6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x35d186...7c7bbd` | ⚠️ Unaudited |
| TryMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46f932...91a0f3` | ⚠️ Unaudited |
| U1ProxyUpgradablity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0862ed...11a0a0` | ⚠️ Unaudited |
| U2ProxyUpgradablity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152a8d...43bdc2` | ⚠️ Unaudited |
| U2ReProxyUpgradablity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652862...46ce78` | ⚠️ Unaudited |
| U3ProxyUpgradablity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae5ce...e6bd78` | ⚠️ Unaudited |
| U3ReProxyUpgradablity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04dde...ce26a5` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97...5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UFARMBeneficiaryBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5f119...6c67f5` | ⚠️ Unaudited |
| UFARMStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd70c4...322ab7` | ⚠️ Unaudited |
| UFARMUSDCFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d72d...480fe4` | ⚠️ Unaudited |
| UFARMWBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3db8...e52711` | ⚠️ Unaudited |
| UFARMWMATICFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x775e0d...b727ee` | ⚠️ Unaudited |
| Unifarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd42603...12257d` | ⚠️ Unaudited |
| UnifarmCTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedf01...1b7a56` | ⚠️ Unaudited |
| UnifarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f285...3e9bc7` | ⚠️ Unaudited |
| UnifarmV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fd329...661568` | ⚠️ Unaudited |
| UnifarmV13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee32c3...daf71b` | ⚠️ Unaudited |
| UnifarmV14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69b63a...92f670` | ⚠️ Unaudited |
| UnifarmV18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fd0bb...771dd6` | ⚠️ Unaudited |
| unifarmV1Fixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8369c...f41f27` | ⚠️ Unaudited |
| UnifarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x207c67...45887c` | ⚠️ Unaudited |
| UnifarmV20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d1686...ac3603` | ⚠️ Unaudited |
| UnifarmV21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96537b...c1362f` | ⚠️ Unaudited |
| UnifarmV22 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17cf1f...121f2b` | ⚠️ Unaudited |
| UnifarmV24 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4f079...6199e5` | ⚠️ Unaudited |
| UnifarmV26 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9442cf...a7794b` | ⚠️ Unaudited |
| UnifarmV2Fixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb6cf8...5cc8d9` | ⚠️ Unaudited |
| Unifarmv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349d55...a4ccb1` | ⚠️ Unaudited |
| UnifarmV31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x659f5a...63f105` | ⚠️ Unaudited |
| UnifarmV32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1720bb...4ea811` | ⚠️ Unaudited |
| UnifarmV34 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7058b...56baf5` | ⚠️ Unaudited |
| UnifarmV35 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bd819...20b04a` | ⚠️ Unaudited |
| UnifarmV36 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeae5ce...e6bd78` | ⚠️ Unaudited |
| UnifarmV37 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c57d...bb3d46` | ⚠️ Unaudited |
| UnifarmV3Fixed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559cd5...2b7064` | ⚠️ Unaudited |
| UnifarmV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee32c3...daf71b` | ⚠️ Unaudited |
| UniStakingSyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91fe14...e1a23f` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-395268 | `0x40986a...51af88` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | polygon | unit-395269 | `0xa7305a...d13dd6` | ⚠️ Unaudited |
| UnoRe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474021...a01a77` | ⚠️ Unaudited |
| VaultDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x172a20...0b4425` | ⚠️ Unaudited |
| VaultLocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c0ff3...2a157c` | ⚠️ Unaudited |
| VaultLockedManual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea901...95fe0b` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf33045...73d4c5` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36f5e3...83aaa5` | ⚠️ Unaudited |
| VestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x157647...eda3d6` | ⚠️ Unaudited |
| WELTFarmRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08c931...077406` | ⚠️ Unaudited |
| WELTStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5138c3...6b3e18` | ⚠️ Unaudited |
| WheyBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb313fa...48a068` | ⚠️ Unaudited |
| WheyFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f99c3...63d00a` | ⚠️ Unaudited |
| WheyTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072cfb...5c49e6` | ⚠️ Unaudited |
| WHIRL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f6cba...b70e69` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060a5d...b9a7dc` | ⚠️ Unaudited |
| WithdrawInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0ff98...7bf854` | ⚠️ Unaudited |
| WorkquestStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce9f9...bca196` | ⚠️ Unaudited |
| WSB_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x221688...eeb288` | ⚠️ Unaudited |
| ZELWIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dd1e3...a50387` | ⚠️ Unaudited |
| ZeroSwapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2edf09...0dd4c5` | ⚠️ Unaudited |
| ZeroSwapTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efc19...25f3c6` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 280 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
