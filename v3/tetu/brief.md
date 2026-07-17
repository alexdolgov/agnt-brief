# Agentic Audit Brief: Tetu

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tetu (`tetu`)
- Website: [http://tetu.io](http://tetu.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, fantom, polygon, polygon-zkevm, sonic
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

- UnnamedContract (`0x42702c28415aa436dbbd200e3e49215d75232ff1`, chain 137)
- UnnamedContract (`0x6fb29dd17fa6e27bd112bc3a2d0b8dae597aeda4`, chain 137)
- UnnamedContract (`0x7c1b24c139a3eda18ab77c8fa04a0f816c23e6d4`, chain 1101)
- AnyswapV5ERC20 (`0x1f681b1c4065057e07b95a1e5e504fb2c85f4625`, chain 56)
- FxERC20 (`0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f`, chain 137)
- OptimismMintableERC20 (`0x5e42c17caeab64527d9d80d506a3fe01179afa02`, chain 8453)
- RewardToken (`0x255707b70bf90aa112006e1b07b9aea6de021424`, chain 137)
- TetuTokenMainnet (`0x0f72964fa4b766521d84107991e837c30d0ef2b1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (5 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 251 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 50
- Confirmed-live implementations: 8 of 260 unique; 252 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/257
- Verified + Unaudited implementations: 256
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
| unknown | Tier 2 | 1 | 0.4% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RewardToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-258568 | `0x255707b70bf90aa112006e1b07b9aea6de021424` | ✅ Audited |

### ⚠️ Verified + Unaudited (256)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Announcer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0630d8ce3aec9acead3b78fece1aff67a11a7195` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258572 | `0x1f681b1c4065057e07b95a1e5e504fb2c85f4625` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-258566 | `0x4f851750a3e6f80f1e1f89c67b56960bfc29a934` | ⚠️ Unaudited |
| ApprovalsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b81010d43c7a82de9b7273e323d3e160346dcbe` | ⚠️ Unaudited |
| ArbitragePoolSolidly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4243a3f941e96e270aabe5ee257c32c3a5feb37e` | ⚠️ Unaudited |
| ArbitrageVaultSolidly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8` | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e734e30270292993dbe71c421ad2b128b6dae11` | ⚠️ Unaudited |
| AutoRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c40c3237289c4d521534111d378ae5c9d420f62` | ⚠️ Unaudited |
| BABTAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43f04360894aef83d02d7a5cdd91ad64144969f9` | ⚠️ Unaudited |
| BalanceOfExcluded | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5c5fc773883289778092e864afe015979a10eb9` | ⚠️ Unaudited |
| BalancerStablePoolSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa4320b575e86cfa06379b8ed8c76d9149a30f948` | ⚠️ Unaudited |
| BalDepositorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0fde9432bae1f8cfb2e697dc496e61323aa8ddd8` | ⚠️ Unaudited |
| BalLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc56fa7734da21ac88f6a816af10c5b898596ce` | ⚠️ Unaudited |
| BalVaultPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1dc8acdc552133fdaca94640560863f8d127caa5` | ⚠️ Unaudited |
| BatchReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46d7560d09e4ee13154e9922cfff7cb4d41f0331` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9d79d8741510dd0fb2df7b741c899334b28db1c` | ⚠️ Unaudited |
| BorrowLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc801956f5da6d6d08a3b543acf4a98b34289c26a` | ⚠️ Unaudited |
| BribeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5947868a6842e69cacad068abf6481e1f522063e` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5405f6de2a0d7ea0daa2b8f7e018868f9c3c2a02` | ⚠️ Unaudited |
| BribeLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1011a0289b2ba6f0d29bcaacb56cf780eb7c19c4` | ⚠️ Unaudited |
| CompanyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d4ce7cd22f2c1dff56444b9d64282f10a3985c2` | ⚠️ Unaudited |
| Cone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13d862a01d0ab241509a2e47e31d0db04e9b9f49` | ⚠️ Unaudited |
| ConeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0efc2d2d054383462f2cd72ea2526ef7687e1016` | ⚠️ Unaudited |
| ConeMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308a756b4f9aa3148cad7ccf8e72c18c758b2ef2` | ⚠️ Unaudited |
| ConeRouter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf1fc29668e5f5eaa819948599c9ac1b1e03e75f` | ⚠️ Unaudited |
| ConeStacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x574d055c0d6064f417766a39d6a1c2c13a267f53` | ⚠️ Unaudited |
| ConeVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3b5d80e4c094b17603ea8bb15d2d31ff5954aae` | ⚠️ Unaudited |
| ContractReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00dfaaec6b9bcf4da6d48b6019e6260917c20218` | ⚠️ Unaudited |
| ContractReaderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x087b137545dbe79594d76f9122a12bdf5cf12ad4` | ⚠️ Unaudited |
| ContractUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d1fa5e3d4a59b65e737a6cf5ee010b106f2e66d` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f17fc1eb1a58afdda707a5dde4344c124f7f8f` | ⚠️ Unaudited |
| ControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x128a0b5812828137a5098af532199cd5e56c2691` | ⚠️ Unaudited |
| ConverterStrategyBaseLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e427a2bd4da38234c6ebad7a64d7d0007d02382` | ⚠️ Unaudited |
| ConverterStrategyBaseLib2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4089b52f777850ebb8e8252055707b7b36817358` | ⚠️ Unaudited |
| DataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xefbc16b8c973deca383aaabab07153d2eb676556` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c606e0da0a10d2445be1f32ba8d08f8364b08ff` | ⚠️ Unaudited |
| DungeonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19443ba4b21c65a6cf75049332e5515235d1abb8` | ⚠️ Unaudited |
| DungeonFactoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c550024df438312efd1804231d924ca59b60ca6` | ⚠️ Unaudited |
| DungeonLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b26e562c2c39da6a43ce4598ee50a01e16388e3` | ⚠️ Unaudited |
| Dyst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39ab6574c289c3ae4d88500eec792ab5b947a5eb` | ⚠️ Unaudited |
| DystFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d21db6cde1b18c7e47b0f7f42f4b3f68b9beec9` | ⚠️ Unaudited |
| DystMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab9c265a56980955aa46bbab214b2657daff18a7` | ⚠️ Unaudited |
| DystopiaSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15de78e04ea152482ffb731ba96ad5c99e88933f` | ⚠️ Unaudited |
| DystRouter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bd6979fe0345a9c02bf5fa714003c428627f353` | ⚠️ Unaudited |
| DystVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x649bdf58b09a0cd4ac848b42c4b5e1390a72a49a` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d2405f43adab0a921a129eacae9051e3fc94c3` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16e4aa530d050b07ba98be418d2b732c011cdda` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1545473701f011a5c977e48ac43e1404cdf96f11` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x543b2a89e759696fd3dc46743da5de2439fa259e` | ⚠️ Unaudited |
| EventLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1159ba7378e8b3b4d00be27dfb2d3346e987461f` | ⚠️ Unaudited |
| ExtraReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b86747e4d5d664d5bc40bf317e66e1898697392` | ⚠️ Unaudited |
| FacadeStoryControllerExLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c4fc1ce07462ca3cff43e0e3697c7b23519a53f` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff9c94f5f5a3e3d65d2375215188140e23d604e3` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3` | ⚠️ Unaudited |
| FeeRewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11765038a27d21a399e2f240d2a2a506da7324b0` | ⚠️ Unaudited |
| ForwarderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03ee6dca512b1365ad534921d4a60eb401b57628` | ⚠️ Unaudited |
| ForwarderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01669b47b523eae503b3fe24e96b7518eefca3e5` | ⚠️ Unaudited |
| FxERC20 | unknown | project_anchor | own_supporting | 0 | polygon | unit-258571 | `0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f` | ⚠️ Unaudited |
| GameObjectController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0129c37b474fe5f5bd72185441ba79a2b6516f43` | ⚠️ Unaudited |
| GameToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x129225ad03306f837ffaf0c3556a8e1d008907a2` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08bfe3d50f5b55a0fc15d8eaf970b8171803613c` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4be13bf2b983c31414b358c634bbb61230c332a7` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xcc16d636dd05b52ff1d8b9ce09b09bc62b11412b` | ⚠️ Unaudited |
| GOCLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x012d1be0ab3e7e9b3d5dd1acc30b54dd29b1f43a` | ⚠️ Unaudited |
| GovernanceTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd51042d3a9ef62d4d93013315ae96a0c1760d7e` | ⚠️ Unaudited |
| GuildController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03ee6dca512b1365ad534921d4a60eb401b57628` | ⚠️ Unaudited |
| GuildLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14f99ad446e947d62408d49d1d9adb19b2966332` | ⚠️ Unaudited |
| HardWorkResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bd8a47b5a1c4dcc8cb1c2d5eaa09d12a0eb1300` | ⚠️ Unaudited |
| HeroBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03e510ecd83bef0e890eeb10e3243e98dd4cf8d0` | ⚠️ Unaudited |
| HeroController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f32365872e5e64e3474020cc30b9891d2e9909b` | ⚠️ Unaudited |
| HeroControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1115ba8c6acbeed9d8164ddce037bef892cc35f4` | ⚠️ Unaudited |
| HeroLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0efa6a9a0cee642aff8826d33e3f88e09fbbab3b` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29c0c69c028c5be41a487814aa29ff43f5de4e1a` | ⚠️ Unaudited |
| InvestFundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13465e0ca7049509904e275cb44bf82f4c9def32` | ⚠️ Unaudited |
| ItemBoxController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0427d1350c1e3b2968aa6d0e19332b8f56ec7134` | ⚠️ Unaudited |
| ItemController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b4213c3ef6bf61b60f5a30f69f7ea12f638f8dc` | ⚠️ Unaudited |
| ItemControllerHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x017bffac28212ca748595f063925a12eb6743f77` | ⚠️ Unaudited |
| ItemLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x015bdf55ecc3814b555fdc110ba8d82486d005eb` | ⚠️ Unaudited |
| ItemStatsLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e8d45f0cbc360eff1f1353b337bf5cd3ed1d924` | ⚠️ Unaudited |
| IterationPlanLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b8dea6cbe9cc5d70384ba223839e8a5dd8ae7c1` | ⚠️ Unaudited |
| LiquidityMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21fd280d35cdbf61e04b892164bda1b4c0b570d7` | ⚠️ Unaudited |
| MaiCamPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x123ede74acf65774a8fba3d753011c89b6421001` | ⚠️ Unaudited |
| MaiStablecoinPipe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x017bffac28212ca748595f063925a12eb6743f77` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b265480f314c8672ac9325ade066793c20a11b7` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8018ba5e6c05c51e5433123e392334b63a0b6d02` | ⚠️ Unaudited |
| MintHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a3df2a428eb74b241cf1d3374fb07983c7059f3` | ⚠️ Unaudited |
| MonsterLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3729c3eb4562db8fe43bd644e6f26466bc521d8a` | ⚠️ Unaudited |
| MonthlyBounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ed9675b109e725067bdcbb2c5a1fd069e18642` | ⚠️ Unaudited |
| MultiBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0b62ad43837a69ad60289eeea7c6e907e759f6e8` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ae75d0a2afe092b1ac417c5c43515e54ee12e51` | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0550082c40c6a04096b62116f227d110a699967b` | ⚠️ Unaudited |
| MultiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d` | ⚠️ Unaudited |
| MultiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ef2a66aa4feb5f2ebc51183e36148513762402a` | ⚠️ Unaudited |
| NFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c19b304afc2cd7ff8606ac212418d55d07b0879` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ae108669ceb86e9e98e8fe9e40d98b867855fd` | ⚠️ Unaudited |
| NoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dcc06fa43fcb5f775759652ef3bf7584f30af73` | ⚠️ Unaudited |
| NotifyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x099c314f792e1f91f53765fc64aadccf4dcf1538` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-258573 | `0x5e42c17caeab64527d9d80d506a3fe01179afa02` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0904cbbec0494b427388541046e882e0a0a300f6` | ⚠️ Unaudited |
| OtherItemLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04d7b857a5099d635c7ef966c7f748979755f948` | ⚠️ Unaudited |
| PairBasedStrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x713df40f222d36d557e1a66f6f79fdbc0a78457d` | ⚠️ Unaudited |
| PairBasedStrategyLogicLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d3e8ca53878d6aa8b1c48bd8f3e52a3bcec005` | ⚠️ Unaudited |
| PairBasedStrategyReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x566f51b19651b5eecf1d60ad8f08c936015c0dc1` | ⚠️ Unaudited |
| PawnShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9d5917a0cb82450cd687af31ecaac967d7f121c` | ⚠️ Unaudited |
| PawnShopRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c6868831c504fb0bb61a54fefc6464804380508` | ⚠️ Unaudited |
| PaymentsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x119a1c5f6b15b6edcae6614a914d59b13504deca` | ⚠️ Unaudited |
| PerfFeeTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5256b9276974b12501e3cae24f877357cebdddd2` | ⚠️ Unaudited |
| PlatformVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2840d27a9761b70daaf9ef86db3ebffa637328` | ⚠️ Unaudited |
| PolygonBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bf2a8dd8c9d892ec76fbbeea0189ae05a342ef9` | ⚠️ Unaudited |
| PremiumHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31c459baead0be6951c1e9697af07c25113730fd` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0004fc5b1742abc768d048ce7906eef2e8916ef2` | ⚠️ Unaudited |
| PriceCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x331a0041bd9a66592b85a4866c7ac51218f60a20` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x885c60a8f6596f1f07eabeb7e6b70e079b6ba987` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ebf3e893e1e56964757f2ab92eefa2049fd9b` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0089539becb82ab51bc5c76f93aa61281540ff33` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x04402ab9faf2a79b0ab2b1a0c55b645cb29547ce` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x09655b50ada39ee0b38124f8ef13b0f9bc57573a` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0bcbe4653e96ae39bde24312882faa0eddf03256` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1355506d333b01fe3dec2d46ae29b7cd6c52dd1c` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1fce21231cd7d8a75162216789d8c9859dfe8757` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x0004fc5b1742abc768d048ce7906eef2e8916ef2` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0051d87779dec7f9efee7635275449baac7fe505` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x00ae29e31748898b8b404b4dcf076738f68439d4` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x01d0b17ac7b72cd4b051840e27a2134f25c53265` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x32b02579ecb469b68e4a58e31f46b4087f9a2e9a` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x432dfe55e314f5f7c944e759b401be8e59df83e8` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x444e5eb1c33a38fcb184cc95ef8b42a26d616eaa` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x03fd3ae2758ab37e8692e1844e0692e9b058c735` | ⚠️ Unaudited |
| ProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x57205cc741f8787a5195b2126607ac505e11b650` | ⚠️ Unaudited |
| PvpAttackLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x07c793626d1a570a347b8d68955e195d7e3f0a9e` | ⚠️ Unaudited |
| PvpController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43edb98d43da2545e7faeac701e5c3b91a0c578e` | ⚠️ Unaudited |
| PvpFightLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0caef1783c939632f8c890efb8a8d43935366584` | ⚠️ Unaudited |
| RebalanceDebtConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c0d22325a1a198c892d3b366bc65ff380fd031a` | ⚠️ Unaudited |
| RebalanceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbf743e4f4cde4ff116a00a443a97f6ff54b423cd` | ⚠️ Unaudited |
| ReinforcementController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05e0463d04dcecabf8d1b2cca88b2844a71b7606` | ⚠️ Unaudited |
| RewardCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47b127ef02009d1b17bfa01cb8523d878202c18b` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x103f7d014f46c6bcb9f86217c36368a08abe426e` | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18c792978ccf5f81a2c1dfb44737fc14597d752e` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x411f3e09c66b30e7facfec45cd823b2e19dfad2d` | ⚠️ Unaudited |
| RewardPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03e72e3f327a731af63a931cc06c84e2627b24f3` | ⚠️ Unaudited |
| RewardShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13ee726d95742d437ebb664bf0d3feff8dbe2a26` | ⚠️ Unaudited |
| RewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b62ad43837a69ad60289eeea7c6e907e759f6e8` | ⚠️ Unaudited |
| RewardsRedirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57577b27814f4166e2340580c49c9726549677e0` | ⚠️ Unaudited |
| RouterConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aa6262af21b85cbe396caf68d59aad8db3079fa` | ⚠️ Unaudited |
| SacraGem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc0dd337b92baa949bc5d25fd9a99cb3b6873204` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc68802de8345b288ce156034c89cb9ec953dad28` | ⚠️ Unaudited |
| ScoreLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3fa0cdd337cab5a50a4fd0b13313203f9b768e73` | ⚠️ Unaudited |
| ShelterController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1981c357b278843f6a0a09175cb49ea157161f81` | ⚠️ Unaudited |
| SolidlyLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf1e638871c59859db851674c7f94efcb0f40954` | ⚠️ Unaudited |
| SplitterRebalanceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb4899743a0a9666aa08754f49a45fe28a2a1ae1d` | ⚠️ Unaudited |
| SponsoredHero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6a2ef41f9e0794c6fa3c9b15c41ff070ce2ae8c` | ⚠️ Unaudited |
| StatController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26f7529819f75e18a08c22c260896bc339d1622b` | ⚠️ Unaudited |
| StatControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x206a6314133a997c604de3cf1ceb84cd7573bbaa` | ⚠️ Unaudited |
| StatReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4638c64d2d12a7c42933f5f70c63079445476790` | ⚠️ Unaudited |
| StoryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1eefaf9d93362e218f52bbe97612dfe2c81a815e` | ⚠️ Unaudited |
| StorySetupLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c30aea00cefefc12c25c2f1c130856927c6bd3e` | ⚠️ Unaudited |
| StrategyAura | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c8f4e0b739090de64d0c33c89950cec791ac7af` | ⚠️ Unaudited |
| StrategyBalancerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4243a3f941e96e270aabe5ee257c32c3a5feb37e` | ⚠️ Unaudited |
| StrategyBalBridgedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x534240c8c4614d5c8ba6dee1ad4e8f2c2d7180b1` | ⚠️ Unaudited |
| StrategyBalStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ae63d81be4e3bfc29c67cb3cea321b33488698` | ⚠️ Unaudited |
| StrategyCafeSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52e34f0a0a2b26800b7a3d5240d2ccadb444dd32` | ⚠️ Unaudited |
| StrategyCone | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x018986b86bd574889e22aab9c00bfd237958fe4a` | ⚠️ Unaudited |
| StrategyCosmicSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e14c69b97518e4b36316c92aadd19ef407bae4b` | ⚠️ Unaudited |
| StrategyDForceFold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x151b33c30131cf4b7f1cf0b9801997137c54c0c3` | ⚠️ Unaudited |
| StrategyDinoPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94df96cacb2a4a92f1d11231339595fbcb71ed21` | ⚠️ Unaudited |
| StrategyDinoSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x893bf5485cd7a568424482071378d10f98252ff4` | ⚠️ Unaudited |
| StrategyDinoSwapV2LpAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0154b5c0b69b6ce4c968fcc1b16d2e3ffdee9586` | ⚠️ Unaudited |
| StrategyHermesSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13c69098f256126f680b89a867914502f77f669e` | ⚠️ Unaudited |
| StrategyIronFold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x101ecc7dfc63716f1c0a923c7314a954d6072b12` | ⚠️ Unaudited |
| StrategyIronSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6697d7c8ba6b6fcf7b7584ee4a5a8d95be8a50a5` | ⚠️ Unaudited |
| StrategyIronUniPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2322eddef0be1ebb9cbc4d2dbdc140c4cafd31e5` | ⚠️ Unaudited |
| StrategyKlimaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ada2a6d79887cf20ef7805d888b473f6fab9e64` | ⚠️ Unaudited |
| StrategyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1400dd1250538c7b35756654c7c8c74b4d7df079` | ⚠️ Unaudited |
| StrategyLib2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb42df1e6b2a79471c18ed626c53f2b8eace10b87` | ⚠️ Unaudited |
| StrategyMeshStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0904985dc41b87db6200600550c6fc14d5fe8c44` | ⚠️ Unaudited |
| StrategyPenroseTetuQi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d6324da2cabf454bd5142f62ff802e6e4811ea4` | ⚠️ Unaudited |
| StrategyPenroseTetuUsdPlus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12b1063634ec6ddc874c1c5efb4e2d616639de33` | ⚠️ Unaudited |
| StrategyProfitHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e75231c1cc0e6d30d03346b3b87b92bb3a1f856` | ⚠️ Unaudited |
| StrategyQiStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05166dca3a7de293052cb88da0f1e4be4870cab6` | ⚠️ Unaudited |
| StrategyQuickSwapLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x043c9d9fd347462bce1daf53d94416be9180a552` | ⚠️ Unaudited |
| StrategyQuickSwapLpAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0085bb209c54b0f90cd20257b930c51fc7b8630a` | ⚠️ Unaudited |
| StrategyQuickSwapLpDualAC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11253ff148902a837a6f5c7cd113d46b58a5cea5` | ⚠️ Unaudited |
| StrategyQuickSwapLpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c35d10ab376c013c5853266ab5f35b8cad551cc` | ⚠️ Unaudited |
| StrategySplitterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07f8adc453544ca280f14f0d85af572049d2479f` | ⚠️ Unaudited |
| StrategyTetuSelfFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067fe0b44387f03977c67b245ffa9784afd46fdc` | ⚠️ Unaudited |
| StrategyTetuSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01309787bc147a2ad56ac2f49d8497e40d263ca6` | ⚠️ Unaudited |
| StrategyVenusSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1616589f2acc9ae962879a29daa62b49346bafd3` | ⚠️ Unaudited |
| StrategyVesqStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91bcbdd5933a9dd604b90f5fb8b49aae02c65b4e` | ⚠️ Unaudited |
| StrategyWaultLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x166df927779ed5086b716beb4180e289496879f7` | ⚠️ Unaudited |
| StrategyWaultLpWithAc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a482112da84c8d2af3b8779a1d9dfcb54c2fdc7` | ⚠️ Unaudited |
| StrategyWaultSingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b7b097b23e0dab93e881a6471cf8b511f14e1f4` | ⚠️ Unaudited |
| StringLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd87288d4827a1b59c0e1b3b9000f80b8e763aca8` | ⚠️ Unaudited |
| SwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01d0b17ac7b72cd4b051840e27a2134f25c53265` | ⚠️ Unaudited |
| TetuBalExtender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9daaf475d6773e08aa6bd9d3c10372c3a6ed426f` | ⚠️ Unaudited |
| TetuLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0587c1e628b69ec687ca4f2bd2827758ad842e34` | ⚠️ Unaudited |
| TetuPawnShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c9fa52d7ed12a6316d3738c80931ecbc6c49907` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x002fe8b38f7c261dddd2125875413a6ebd7e40d3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00ba2b78b3af349a0959defd1a29f54936874e5b` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0a0846c978a56d6ea9d2602eeb8f977b21f3207f` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0a8356516df3b0772e469ed6eed705a4190aea15` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0b86cf1167d19fdf71a6d7ce605ff57d65ee19a3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x0fa7c71a07af3784b0784d058ad104a1471afa36` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1ca723b9dc7cba8fbd15b92cf93c61a297db6cd9` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x237114ef61b27fdf57132e6c8c4244eeea8323d3` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x26030c3e3790ff4e1236585f2650ae7da56a752c` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3231c694c8d67b90465274dd9b424c6702ca4ad8` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4ab6242b727c3bd0b4cd1f90c51ed6316583d5e9` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7ad5935ea295c4e743e4f2f5b4cda951f41223c2` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x8ffba974efa7c262c97b9521449fd2b3c69be4e6` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa0032bc58723c5c2e6559a7ed202729b5760748e` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc443f1e51f4596b81b4ec4223206f47292608a10` | ⚠️ Unaudited |
| TetuProxyControlled | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xf4e5dafa487ba89153b9d3d0bcd49d6c77db388d` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2793fa8d570b99eb9ba7f5d3e2480f6ab06cbe9c` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dad9fc2235cf00a3d9e142122a26c839a7adc6e` | ⚠️ Unaudited |
| TetuProxyGov | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x48ad115540a0f9e128ee62df5ce519451ba5f6e0` | ⚠️ Unaudited |
| TetuQiVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda67dbab383a7ce922320a48d515f0fd567aac08` | ⚠️ Unaudited |
| TetuRewardRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e427a2bd4da38234c6ebad7a64d7d0007d02382` | ⚠️ Unaudited |
| TetuSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f822e6c535a39cb7799200018d943133abba07c` | ⚠️ Unaudited |
| TetuSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x115b599c173ef6743c149fc5fc40230d932c95b3` | ⚠️ Unaudited |
| TetuTokenMainnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258565 | `0x0f72964fa4b766521d84107991e837c30d0ef2b1` | ⚠️ Unaudited |
| TetuUnpacking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x413b91138077c7105656dbb03185ce18c12bad14` | ⚠️ Unaudited |
| TetuVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bdbd2ed1a214ca4ba4421ddd7236cca3ef088b6` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21a908478c0307742aa535bf5754d43dcb5ad29b` | ⚠️ Unaudited |
| TokenPriceConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64` | ⚠️ Unaudited |
| TokenRetranslatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04ae9473abd9a74aeb03cd5eace42d186a376cf9` | ⚠️ Unaudited |
| TradeBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x833d22f5c1b01ad2ad34611bd391c246712b9707` | ⚠️ Unaudited |
| TradeBot1Inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91f29f7be847a050a1554462ea48ac622b150dd2` | ⚠️ Unaudited |
| TradeBotDystopia | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26e4a4fde42779e1060fc649460e537b4a8d477f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x060bad68e5d9b0c0dbcef7963925eca257d76f69` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x83151af121458611530b49ba1e78f5f27e3d1b81` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13d862a01d0ab241509a2e47e31d0db04e9b9f49` | ⚠️ Unaudited |
| Uni3Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x00379dd90b2a337c4652e286e4fbceadef940a21` | ⚠️ Unaudited |
| UniswapV3ConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x32f7c3a5319a612c1992f021aa70510bc9f16161` | ⚠️ Unaudited |
| UserController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a187ac6e96493f6e8c3a9f37b4f9cc3d3de0862` | ⚠️ Unaudited |
| ValueRouterImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x522cb8f25896691bdc5f69aabfccd50647a14aa0` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099c314f792e1f91f53765fc64aadccf4dcf1538` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7da32c32e1c05e6572321275925301fdf916fcf5` | ⚠️ Unaudited |
| VaultInsurance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x078b7c9304eba754e916016e8a8939527076f991` | ⚠️ Unaudited |
| VaultLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00bc12bdea08d2d57dfe0ff322d40aa6d6f579f6` | ⚠️ Unaudited |
| Ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x060fa7ad32c510f12550c7a967999810dafc5697` | ⚠️ Unaudited |
| ve_query | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443299d9b347ae68c42d4909efa1892caa35e9ca` | ⚠️ Unaudited |
| VeDist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3efb1b284a3eba3955c53b728a2cc4182a07e92f` | ⚠️ Unaudited |
| VeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c4599a079d029f0304b284f4696d009c0281806` | ⚠️ Unaudited |
| VeDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x166df927779ed5086b716beb4180e289496879f7` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6` | ⚠️ Unaudited |
| VEShareNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55f8d898760240e6eff3c2cc23974ae8c8fceefd` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12a2cd7d359cc69f02215d0b72d39bce66299b2e` | ⚠️ Unaudited |
| VeTetu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02404ad1c40410508b6405928ffd3f6ddb19077d` | ⚠️ Unaudited |
| VeTetuLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x476e7652a081f749856caec1e2abf563b52aeeea` | ⚠️ Unaudited |
| VeTetuLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10c7bdfbd3db8288252aec0f10121ad958eab0bf` | ⚠️ Unaudited |
| VeTETUVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x601ac43c21eb4862014e1e71ac5ec1708dc4209e` | ⚠️ Unaudited |
| VotemarketClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56087784f94705148329bfcf77a0aa0d22e0ea0c` | ⚠️ Unaudited |
| ZapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0534ce56642492d51b0b6d3b6f41e1f55a4276d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258569 | `0x42702c28415aa436dbbd200e3e49215d75232ff1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-258570 | `0x6fb29dd17fa6e27bd112bc3a2d0b8dae597aeda4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-258567 | `0x7c1b24c139a3eda18ab77c8fa04a0f816c23e6d4` | ❓ Unverified |

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
| Rendered PDF capture | VeTetu | own contract | 0x6fb29d… (selected) `0x6fb29dd17fa6e27bd112bc3a2d0b8dae597aeda4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Rendered PDF capture | RewardToken | own contract | RewardToken (selected) `0x255707b70bf90aa112006e1b07b9aea6de021424` — deployed 2021-07-31 17:35:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SNXStrategyFullBuyback | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SmartVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | WaultStrategyFullBuyback | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | TetuPawnShop | unmatched — not counted | — | Listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xe74b3e6232e6b02ece8ede707a3a32ae3525b44f` | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e42c17caeab64527d9d80d506a3fe01179afa02` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f72964fa4b766521d84107991e837c30d0ef2b1` | TetuTokenMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
