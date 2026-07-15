# Agentic Audit Brief: Tetu

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Tetu (`tetu`)
- Website: [http://tetu.io](http://tetu.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, polygon, polygon-zkevm, sonic
- Contract surface: 260 unique implementations (260 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $411,747.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tetu. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across base, bsc, ethereum, polygon, polygon-zkevm, sonic. Structural roles: 6 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: erc20 (5), erc20permit (3), erc165 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x42702c...232ff1`, chain 137)
- UnnamedContract (`0x6fb29d...7aeda4`, chain 137)
- UnnamedContract (`0x7c1b24...23e6d4`, chain 1101)
- AnyswapV5ERC20 (`0x1f681b...5f4625`, chain 56)
- FxERC20 (`0xe74b3e...25b44f`, chain 137)
- OptimismMintableERC20 (`0x5e42c1...9afa02`, chain 8453)
- RewardToken (`0x255707...021424`, chain 137)
- TetuTokenMainnet (`0x0f7296...0ef2b1`, chain 1)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 251 discovered implementations excluded (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 50
- Deployed-live implementations: 8 of 260 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 260
- Raw deployments: 260
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/tetu/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 20.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RewardToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-258568 | `0x255707...021424` | ✅ Audited |

### ⚠️ Verified + Unaudited (256)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Announcer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0630d8...1a7195` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae4ff8...54179e` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258572 | `0x1f681b...5f4625` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258566 | `0x4f8517...29a934` | ⚠️ Unaudited |
| ApprovalsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b8101...46dcbe` | ⚠️ Unaudited |
| ArbitragePoolSolidly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4243a3...feb37e` | ⚠️ Unaudited |
| ArbitrageVaultSolidly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fde94...a8ddd8` | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e734e...6dae11` | ⚠️ Unaudited |
| AutoRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c40c3...420f62` | ⚠️ Unaudited |
| BABTAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f043...4969f9` | ⚠️ Unaudited |
| BalanceOfExcluded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5c5fc...a10eb9` | ⚠️ Unaudited |
| BalancerStablePoolSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa4320b...30f948` | ⚠️ Unaudited |
| BalDepositorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0fde94...a8ddd8` | ⚠️ Unaudited |
| BalLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc56f...8596ce` | ⚠️ Unaudited |
| BalVaultPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1dc8ac...27caa5` | ⚠️ Unaudited |
| BatchReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46d756...1f0331` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9d79d...28db1c` | ⚠️ Unaudited |
| BorrowLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc80195...89c26a` | ⚠️ Unaudited |
| BribeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x594786...22063e` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5405f6...3c2a02` | ⚠️ Unaudited |
| BribeLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1011a0...7c19c4` | ⚠️ Unaudited |
| CompanyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d4ce7...3985c2` | ⚠️ Unaudited |
| Cone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13d862...9b9f49` | ⚠️ Unaudited |
| ConeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0efc2d...7e1016` | ⚠️ Unaudited |
| ConeMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308a75...8b2ef2` | ⚠️ Unaudited |
| ConeRouter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf1fc2...03e75f` | ⚠️ Unaudited |
| ConeStacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x574d05...267f53` | ⚠️ Unaudited |
| ConeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3b5d8...954aae` | ⚠️ Unaudited |
| ContractReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00dfaa...c20218` | ⚠️ Unaudited |
| ContractReaderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x087b13...f12ad4` | ⚠️ Unaudited |
| ContractUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d1fa5...f2e66d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f17f...4f7f8f` | ⚠️ Unaudited |
| ControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x128a0b...6c2691` | ⚠️ Unaudited |
| ConverterStrategyBaseLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e427a...d02382` | ⚠️ Unaudited |
| ConverterStrategyBaseLib2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4089b5...817358` | ⚠️ Unaudited |
| DataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xefbc16...676556` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c606e...4b08ff` | ⚠️ Unaudited |
| DungeonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19443b...d1abb8` | ⚠️ Unaudited |
| DungeonFactoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c5500...b60ca6` | ⚠️ Unaudited |
| DungeonLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b26e5...6388e3` | ⚠️ Unaudited |
| Dyst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39ab65...47a5eb` | ⚠️ Unaudited |
| DystFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d21db...9beec9` | ⚠️ Unaudited |
| DystMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab9c26...ff18a7` | ⚠️ Unaudited |
| DystopiaSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15de78...88933f` | ⚠️ Unaudited |
| DystRouter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bd697...27f353` | ⚠️ Unaudited |
| DystVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x649bdf...72a49a` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d240...fc94c3` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31e9c5...fc9c8d` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16e4a...11cdda` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154547...f96f11` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x543b2a...fa259e` | ⚠️ Unaudited |
| EventLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1159ba...87461f` | ⚠️ Unaudited |
| ExtraReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8674...697392` | ⚠️ Unaudited |
| FacadeStoryControllerExLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c4fc1...19a53f` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff9c94...d604e3` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd3fe...5e08d3` | ⚠️ Unaudited |
| FeeRewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x117650...7324b0` | ⚠️ Unaudited |
| ForwarderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03ee6d...b57628` | ⚠️ Unaudited |
| ForwarderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01669b...fca3e5` | ⚠️ Unaudited |
| FxERC20 | unknown | project_anchor | own_supporting | 0 | polygon | unit-258571 | `0xe74b3e...25b44f` | ⚠️ Unaudited |
| GameObjectController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0129c3...516f43` | ⚠️ Unaudited |
| GameToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ad593...1223c2` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x129225...8907a2` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08bfe3...03613c` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4be13b...c332a7` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xcc16d6...11412b` | ⚠️ Unaudited |
| GOCLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x012d1b...b1f43a` | ⚠️ Unaudited |
| GovernanceTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd5104...760d7e` | ⚠️ Unaudited |
| GuildController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03ee6d...b57628` | ⚠️ Unaudited |
| GuildLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14f99a...966332` | ⚠️ Unaudited |
| HardWorkResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bd8a4...eb1300` | ⚠️ Unaudited |
| HeroBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03e510...4cf8d0` | ⚠️ Unaudited |
| HeroController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f3236...e9909b` | ⚠️ Unaudited |
| HeroControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1115ba...cc35f4` | ⚠️ Unaudited |
| HeroLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0efa6a...bbab3b` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29c0c6...de4e1a` | ⚠️ Unaudited |
| InvestFundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13465e...9def32` | ⚠️ Unaudited |
| ItemBoxController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0427d1...ec7134` | ⚠️ Unaudited |
| ItemController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b4213...38f8dc` | ⚠️ Unaudited |
| ItemControllerHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x017bff...743f77` | ⚠️ Unaudited |
| ItemLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x015bdf...d005eb` | ⚠️ Unaudited |
| ItemStatsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e8d45...d1d924` | ⚠️ Unaudited |
| IterationPlanLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b8dea...8ae7c1` | ⚠️ Unaudited |
| LiquidityMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21fd28...b570d7` | ⚠️ Unaudited |
| MaiCamPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x123ede...421001` | ⚠️ Unaudited |
| MaiStablecoinPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x017bff...743f77` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b2654...0a11b7` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8018ba...0b6d02` | ⚠️ Unaudited |
| MintHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a3df2...7059f3` | ⚠️ Unaudited |
| MonsterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3729c3...521d8a` | ⚠️ Unaudited |
| MonthlyBounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ed96...e18642` | ⚠️ Unaudited |
| MultiBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0b62ad...59f6e8` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ae75d...e12e51` | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x055008...99967b` | ⚠️ Unaudited |
| MultiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e064e...a50d3d` | ⚠️ Unaudited |
| MultiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ef2a6...62402a` | ⚠️ Unaudited |
| NFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c19b3...7b0879` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ae10...7855fd` | ⚠️ Unaudited |
| NoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dcc06...30af73` | ⚠️ Unaudited |
| NotifyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x099c31...cf1538` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-258573 | `0x5e42c1...9afa02` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0904cb...a300f6` | ⚠️ Unaudited |
| OtherItemLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04d7b8...55f948` | ⚠️ Unaudited |
| PairBasedStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x713df4...78457d` | ⚠️ Unaudited |
| PairBasedStrategyLogicLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d3e8...cec005` | ⚠️ Unaudited |
| PairBasedStrategyReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x566f51...5c0dc1` | ⚠️ Unaudited |
| PawnShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9d591...7f121c` | ⚠️ Unaudited |
| PawnShopRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c6868...380508` | ⚠️ Unaudited |
| PaymentsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x119a1c...04deca` | ⚠️ Unaudited |
| PerfFeeTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5256b9...bdddd2` | ⚠️ Unaudited |
| PlatformVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2840...637328` | ⚠️ Unaudited |
| PolygonBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bf2a8...342ef9` | ⚠️ Unaudited |
| PremiumHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31c459...3730fd` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0004fc...916ef2` | ⚠️ Unaudited |
| PriceCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x331a00...f60a20` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x885c60...6ba987` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ebf...49fd9b` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x008953...40ff33` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x04402a...9547ce` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x09655b...57573a` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0bcbe4...f03256` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x135550...52dd1c` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1fce21...fe8757` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0004fc...916ef2` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0051d8...7fe505` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x00ae29...8439d4` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x01d0b1...c53265` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x32b025...9a2e9a` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x432dfe...df83e8` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x444e5e...616eaa` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x03fd3a...58c735` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x57205c...11b650` | ⚠️ Unaudited |
| PvpAttackLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07c793...3f0a9e` | ⚠️ Unaudited |
| PvpController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43edb9...0c578e` | ⚠️ Unaudited |
| PvpFightLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0caef1...366584` | ⚠️ Unaudited |
| RebalanceDebtConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c0d22...fd031a` | ⚠️ Unaudited |
| RebalanceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbf743e...b423cd` | ⚠️ Unaudited |
| ReinforcementController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05e046...1b7606` | ⚠️ Unaudited |
| RewardCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47b127...02c18b` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x103f7d...be426e` | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18c792...7d752e` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x411f3e...dfad2d` | ⚠️ Unaudited |
| RewardPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e72e...7b24f3` | ⚠️ Unaudited |
| RewardShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13ee72...be2a26` | ⚠️ Unaudited |
| RewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b62ad...59f6e8` | ⚠️ Unaudited |
| RewardsRedirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57577b...9677e0` | ⚠️ Unaudited |
| RouterConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aa626...3079fa` | ⚠️ Unaudited |
| SacraGem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc0dd3...873204` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc68802...3dad28` | ⚠️ Unaudited |
| ScoreLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3fa0cd...768e73` | ⚠️ Unaudited |
| ShelterController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1981c3...161f81` | ⚠️ Unaudited |
| SolidlyLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf1e63...f40954` | ⚠️ Unaudited |
| SplitterRebalanceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb48997...a1ae1d` | ⚠️ Unaudited |
| SponsoredHero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6a2ef...e2ae8c` | ⚠️ Unaudited |
| StatController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26f752...d1622b` | ⚠️ Unaudited |
| StatControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x206a63...73bbaa` | ⚠️ Unaudited |
| StatReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4638c6...476790` | ⚠️ Unaudited |
| StoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1eefaf...1a815e` | ⚠️ Unaudited |
| StorySetupLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c30ae...c6bd3e` | ⚠️ Unaudited |
| StrategyAura | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c8f4e...1ac7af` | ⚠️ Unaudited |
| StrategyBalancerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4243a3...feb37e` | ⚠️ Unaudited |
| StrategyBalBridgedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x534240...7180b1` | ⚠️ Unaudited |
| StrategyBalStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ae63...488698` | ⚠️ Unaudited |
| StrategyCafeSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52e34f...44dd32` | ⚠️ Unaudited |
| StrategyCone | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x018986...58fe4a` | ⚠️ Unaudited |
| StrategyCosmicSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e14c6...7bae4b` | ⚠️ Unaudited |
| StrategyDForceFold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x151b33...54c0c3` | ⚠️ Unaudited |
| StrategyDinoPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94df96...71ed21` | ⚠️ Unaudited |
| StrategyDinoSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x893bf5...252ff4` | ⚠️ Unaudited |
| StrategyDinoSwapV2LpAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0154b5...ee9586` | ⚠️ Unaudited |
| StrategyHermesSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13c690...7f669e` | ⚠️ Unaudited |
| StrategyIronFold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x101ecc...072b12` | ⚠️ Unaudited |
| StrategyIronSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6697d7...8a50a5` | ⚠️ Unaudited |
| StrategyIronUniPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2322ed...fd31e5` | ⚠️ Unaudited |
| StrategyKlimaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ada2a...ab9e64` | ⚠️ Unaudited |
| StrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1400dd...7df079` | ⚠️ Unaudited |
| StrategyLib2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42df1...e10b87` | ⚠️ Unaudited |
| StrategyMeshStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x090498...fe8c44` | ⚠️ Unaudited |
| StrategyPenroseTetuQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d6324...811ea4` | ⚠️ Unaudited |
| StrategyPenroseTetuUsdPlus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12b106...39de33` | ⚠️ Unaudited |
| StrategyProfitHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e7523...a1f856` | ⚠️ Unaudited |
| StrategyQiStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05166d...70cab6` | ⚠️ Unaudited |
| StrategyQuickSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x043c9d...80a552` | ⚠️ Unaudited |
| StrategyQuickSwapLpAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0085bb...b8630a` | ⚠️ Unaudited |
| StrategyQuickSwapLpDualAC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11253f...a5cea5` | ⚠️ Unaudited |
| StrategyQuickSwapLpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c35d1...d551cc` | ⚠️ Unaudited |
| StrategySplitterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07f8ad...d2479f` | ⚠️ Unaudited |
| StrategyTetuSelfFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067fe0...d46fdc` | ⚠️ Unaudited |
| StrategyTetuSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x013097...263ca6` | ⚠️ Unaudited |
| StrategyVenusSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x161658...6bafd3` | ⚠️ Unaudited |
| StrategyVesqStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91bcbd...c65b4e` | ⚠️ Unaudited |
| StrategyWaultLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x166df9...6879f7` | ⚠️ Unaudited |
| StrategyWaultLpWithAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a4821...c2fdc7` | ⚠️ Unaudited |
| StrategyWaultSingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b7b09...14e1f4` | ⚠️ Unaudited |
| StringLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd87288...63aca8` | ⚠️ Unaudited |
| SwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01d0b1...c53265` | ⚠️ Unaudited |
| TetuBalExtender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daaf4...ed426f` | ⚠️ Unaudited |
| TetuLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0587c1...842e34` | ⚠️ Unaudited |
| TetuPawnShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c9fa5...c49907` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x002fe8...7e40d3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00ba2b...874e5b` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0a0846...f3207f` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0a8356...0aea15` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0b86cf...ee19a3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0fa7c7...1afa36` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1ca723...db6cd9` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x237114...8323d3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x26030c...6a752c` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3231c6...ca4ad8` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4ab624...83d5e9` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7ad593...1223c2` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8ffba9...9be4e6` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa0032b...60748e` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc443f1...608a10` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf4e5da...db388d` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2793fa...6cbe9c` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dad9f...7adc6e` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x48ad11...a5f6e0` | ⚠️ Unaudited |
| TetuQiVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda67db...7aac08` | ⚠️ Unaudited |
| TetuRewardRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e427a...d02382` | ⚠️ Unaudited |
| TetuSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f822e...bba07c` | ⚠️ Unaudited |
| TetuSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x115b59...2c95b3` | ⚠️ Unaudited |
| TetuTokenMainnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258565 | `0x0f7296...0ef2b1` | ⚠️ Unaudited |
| TetuUnpacking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x413b91...2bad14` | ⚠️ Unaudited |
| TetuVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bdbd2...f088b6` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21a908...5ad29b` | ⚠️ Unaudited |
| TokenPriceConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f9778...7c3b64` | ⚠️ Unaudited |
| TokenRetranslatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04ae94...376cf9` | ⚠️ Unaudited |
| TradeBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x833d22...2b9707` | ⚠️ Unaudited |
| TradeBot1Inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91f29f...150dd2` | ⚠️ Unaudited |
| TradeBotDystopia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26e4a4...8d477f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x060bad...d76f69` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x83151a...3d1b81` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13d862...9b9f49` | ⚠️ Unaudited |
| Uni3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x00379d...940a21` | ⚠️ Unaudited |
| UniswapV3ConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x32f7c3...f16161` | ⚠️ Unaudited |
| UserController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a187a...de0862` | ⚠️ Unaudited |
| ValueRouterImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x522cb8...a14aa0` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099c31...cf1538` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7da32c...16fcf5` | ⚠️ Unaudited |
| VaultInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x078b7c...76f991` | ⚠️ Unaudited |
| VaultLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00bc12...f579f6` | ⚠️ Unaudited |
| Ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x060fa7...fc5697` | ⚠️ Unaudited |
| ve_query | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443299...35e9ca` | ⚠️ Unaudited |
| VeDist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3efb1b...07e92f` | ⚠️ Unaudited |
| VeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c4599...281806` | ⚠️ Unaudited |
| VeDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x166df9...6879f7` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26a3fc...4090b6` | ⚠️ Unaudited |
| VEShareNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55f8d8...fceefd` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12a2cd...299b2e` | ⚠️ Unaudited |
| VeTetu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02404a...19077d` | ⚠️ Unaudited |
| VeTetuLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x476e76...2aeeea` | ⚠️ Unaudited |
| VeTetuLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10c7bd...eab0bf` | ⚠️ Unaudited |
| VeTETUVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x601ac4...c4209e` | ⚠️ Unaudited |
| VotemarketClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560877...e0ea0c` | ⚠️ Unaudited |
| ZapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0534ce...4276d3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258569 | `0x42702c...232ff1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258570 | `0x6fb29d...7aeda4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-258567 | `0x7c1b24...23e6d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mk3PCbgu5qmhtNbzxcL%2F-Mk3QDm9D23sE9tIfpI3%2FPeckShield-Audit-Report-Tetu-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Me8Xn_pJtAjktHi3oBg%2Fuploads%2FMxXQOMXoIFZ6uFjz3G4c%2FPeckShield-Audit-Report-Tetuv2-v1.0.pdf) | PeckShield | Audit | 2023-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Rendered PDF capture](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mfimt8Ii5RUGI8n3xdQ%2F-MfitjlyTlbQXlA093Ni%2FSecurity_Audit_for_Tetu.io.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/tetu/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/tetu) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18401] Rendered PDF capture — no match: No explicit scope section; contracts extracted from 'Target' fields in findings.
- [18402] Rendered PDF capture — matched: Scope explicitly listed 8 contracts in the audit report. Date found on cover page and in metadata.
- [18403] Rendered PDF capture — matched: Eleven smart contracts explicitly listed in scope section on page 6. No audit date found in the report.
- [18404] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are listed; only the protocol name 'Tetu' is mentioned.
- [18405] {% embed url="<>" %} — no match: Only one contract name explicitly listed in the audited files section. The report is a Skynet project insight page, not a full audit report, but the audited files are shown.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | Bookkeeper | unmatched — not counted | — | Target in finding PVE-001 | no |
| Rendered PDF capture | MintHelper | unmatched — not counted | — | Target in finding PVE-002 | no |
| Rendered PDF capture | SmartVault | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-006 | no |
| Rendered PDF capture | Controller | unmatched — not counted | — | Target in finding PVE-005 | no |
| Rendered PDF capture | VeTetu | own contract | 0x6fb29d… (selected) `0x6fb29d...7aeda4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | ERC4626Upgradeable | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TetuVaultV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StrategySplitterV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ControllerV2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ControllableV3 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ProxyControlled | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | UpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Bookkeeper | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Controller | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | FeeRewardForwarder | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MCv2StrateguFullBuyback | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | MintHelper | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | NoopStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | NotifyHelper | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | RewardToken | own contract | RewardToken (selected) `0x255707...021424` — deployed 2021-07-31 17:35:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SNXStrategyFullBuyback | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SmartVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | WaultStrategyFullBuyback | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | TetuPawnShop | unmatched — not counted | — | Listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xe74b3e...25b44f` | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e42c1...9afa02` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f7296...0ef2b1` | TetuTokenMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 247 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [18401] Rendered PDF capture
- [18405] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
