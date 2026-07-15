# Agentic Audit Brief: Moonwell

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Moonwell (`moonwell`)
- Website: [https://moonwell.fi](https://moonwell.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, moonbeam, moonriver, optimism
- Contract surface: 226 unique implementations (433 raw deployments)
- Coverage basis: 3/65 confirmed own live verified implementations (4.6%); conservative 4.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,910,394.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Moonwell. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 121 contract row(s) across base, ethereum, moonbeam, moonriver, optimism. Structural roles: 68 unclassified, 30 supporting, 23 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 121
- Structural roles: unclassified (68), supporting (30), core (23)
- Contract kinds: contract (119), abstract (2)
- Detected standards: erc20 (15), ownable (10), erc1967proxy (8), erc20permit (5), erc4626 (5), multicall (5), ownable2step (5), pausable (3)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (12), solmate (3), chainlink (1), permit2 (1)
- Upgradeable-pattern rows: 13

## Fork Analysis

2 of 101 contracts are derived from known codebases. 99 contracts have no detected origin.

### Forked Contracts

**GeneralAdapter1** (`0xb98c94...ae746a`, chain 8453)
Origin: singularv (`0x4a6c31...be0ae0`)
Containment: 80.8% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- morphoWrapperDepositFor(address,uint256)
- morphoWrapperWithdrawTo(address,uint256)
- stakeEth(uint256,uint256,address,address)
- unwrapStEth(uint256,address)
- wrapStEth(uint256,address)

**MoonwellGovernorArtemis** (`0xfc4dfb...57666d`, chain 1284)
Origin: moonwell (`0x2be2e2...6e7370`)
Containment: 90.5% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setQuorumVotes(uint256)

Removals (removed from original):
- getQuorum()
- setQuorumCaps(uint256,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x181ba7...58668e`, chain 10)
- UnnamedContract (`0x2f1490...746dcf`, chain 10)
- UnnamedContract (`0x79481c...f141f0`, chain 10)
- UnnamedContract (`0x866b83...2003fc`, chain 10)
- UnnamedContract (`0x90aa62...9451f8`, chain 10)
- UnnamedContract (`0xb80514...c3cfb3`, chain 10)
- UnnamedContract (`0xd6c668...c2cbfe`, chain 10)
- UnnamedContract (`0x1c5564...cf484c`, chain 1284)
- UnnamedContract (`0x22b1a4...4abe32`, chain 1284)
- UnnamedContract (`0x540244...9cdd17`, chain 1284)
- UnnamedContract (`0x744b17...1d615b`, chain 1284)
- UnnamedContract (`0x7793e0...167ba4`, chain 1284)
- UnnamedContract (`0x8568a6...3cfab1`, chain 1284)
- UnnamedContract (`0x8e00d5...86a180`, chain 1284)
- UnnamedContract (`0xaaa20c...74a9ce`, chain 1284)
- UnnamedContract (`0xb6c94b...f9aeac`, chain 1284)
- UnnamedContract (`0xb8a798...2d40e5`, chain 1284)
- UnnamedContract (`0xd22da9...8211c3`, chain 1284)
- UnnamedContract (`0xe76c8b...c73994`, chain 1284)
- UnnamedContract (`0x3bf937...09a5e5`, chain 8453)
- UnnamedContract (`0x628ff6...09d457`, chain 8453)
- UnnamedContract (`0x703843...065cc8`, chain 8453)
- UnnamedContract (`0x73b06d...462417`, chain 8453)
- UnnamedContract (`0xb682c8...a501a2`, chain 8453)
- UnnamedContract (`0xc72fcc...72b42b`, chain 8453)
- UnnamedContract (`0xe9005b...0ad9d2`, chain 8453)
- UnnamedContract (`0xec942b...a6a9d0`, chain 8453)
- UnnamedContract (`0xedc817...176c22`, chain 8453)
- UnnamedContract (`0xfbb21d...3ef26c`, chain 8453)
- BridgeToken (`0xff8ade...03493d`, chain 8453)
- Bundler3 (`0xfbcd3c...507c05`, chain 10)
- Bundler3 (`0x6bfd81...3920c4`, chain 8453)
- ChainlinkOracle (`0x599a01...94b654`, chain 1)
- ChainlinkOracle (`0xed301c...b665f9`, chain 1284)
- EcosystemReserve (`0x437113...0d04d5`, chain 1)
- EcosystemReserve (`0x3343b3...372af1`, chain 8453)
- EcosystemReserveController (`0xca889f...c511b9`, chain 1284)
- Factory4626 (`0xe770bd...4c938a`, chain 8453)
- Maximillion (`0xe5ef93...a380c3`, chain 1284)
- MErc20Delegator (`0x636080...aaee9f`, chain 1)
- MErc20Delegator (`0xb85ca1...9590c4`, chain 1)
- MErc20Delegator (`0xe65579...63e62e`, chain 1)
- MErc20Delegator (`0xeddc25...467011`, chain 1)
- MErc20Delegator (`0x3fe782...ead6b2`, chain 10)
- MErc20Delegator (`0x4c2e35...53d321`, chain 10)
- MErc20Delegator (`0x6e6ca5...f06fdb`, chain 10)
- MErc20Delegator (`0x8e0861...155525`, chain 10)
- MErc20Delegator (`0x95c84f...d78ba1`, chain 10)
- MErc20Delegator (`0x9fc345...f01847`, chain 10)
- MErc20Delegator (`0xa3a538...38bf84`, chain 10)
- MErc20Delegator (`0xb4104c...d59a33`, chain 10)
- MErc20Delegator (`0xbb3b1a...b83f9d`, chain 10)
- MErc20Delegator (`0xed37cd...8f8b33`, chain 10)
- MErc20Delegator (`0x42a96c...88f289`, chain 1284)
- MErc20Delegator (`0x10ff57...c5d2ee`, chain 8453)
- MErc20Delegator (`0x2f90bb...66da32`, chain 8453)
- MErc20Delegator (`0x627fe3...14304b`, chain 8453)
- MErc20Delegator (`0x630820...904f3e`, chain 8453)
- MErc20Delegator (`0x73902f...369ba6`, chain 8453)
- MErc20Delegator (`0x9a858e...84a218`, chain 8453)
- MErc20Delegator (`0xb4fb8f...07e86d`, chain 8453)
- MErc20Delegator (`0xb6419c...25a357`, chain 8453)
- MErc20Delegator (`0xb80514...c3cfb3`, chain 8453)
- MErc20Delegator (`0xcb1dac...d45f44`, chain 8453)
- MErc20Delegator (`0xd64bcb...7a9682`, chain 8453)
- MErc20Delegator (`0xdc7810...f71ed1`, chain 8453)
- MErc20Delegator (`0xde8df9...fffc64`, chain 8453)
- MErc20Delegator (`0xf877ac...ad5976`, chain 8453)
- MErc20Delegator (`0xfc41b4...72f4b5`, chain 8453)
- MetaMorpho (`0x543257...f5a796`, chain 8453)
- MetaMorpho (`0xa0e430...3d0ff1`, chain 8453)
- MetaMorpho (`0xc1256a...00a2ca`, chain 8453)
- MetaMorpho (`0xf24608...01a026`, chain 8453)
- MetaMorphoV1_1 (`0x3520e1...29642d`, chain 10)
- Mfam (`0xbb8d88...1a58f1`, chain 1285)
- MGlimmer (`0x091608...4c7955`, chain 1284)
- MoonwellViewsV1 (`0x2a55ba...5a280f`, chain 1285)
- MoonwellViewsV2 (`0x29ea8b...ae5b71`, chain 8453)
- Morpho (`0xbbbbbb...eeffcb`, chain 8453)
- SafeProxy (`0x5b7100...ea4026`, chain 1)
- StakedWell (`0x701551...b0f5af`, chain 1)
- StakedWell (`0x78feb7...266568`, chain 10)
- StakedWell (`0xe2747a...454b29`, chain 8453)
- TemporalGovernor (`0x17c9ba...7aff3d`, chain 10)
- TemporalGovernor (`0x908df7...ea4689`, chain 1284)
- TemporalGovernor (`0x8b6218...df7d51`, chain 8453)
- Timelock (`0x3a9249...2ec19b`, chain 1284)
- TransparentUpgradeableProxy (`0x734abb...a6dbb7`, chain 1)
- TransparentUpgradeableProxy (`0x8769b7...d75838`, chain 1)
- TransparentUpgradeableProxy (`0x3c9684...037738`, chain 10)
- TransparentUpgradeableProxy (`0x734abb...a6dbb7`, chain 10)
- TransparentUpgradeableProxy (`0x734abb...a6dbb7`, chain 8453)
- TransparentUpgradeableProxy (`0xe0278b...03e949`, chain 8453)
- Well (`0x511ab5...2411e3`, chain 1284)
- WETHRouter (`0xa218a4...93ca22`, chain 1)
- WETHRouter (`0xc4ab8c...0e11dc`, chain 10)
- WETHRouter (`0x70778c...75d0c9`, chain 8453)
- WethUnwrapper (`0x1382cf...9e4caf`, chain 8453)
- xWELLRouter (`0xb84543...666df4`, chain 1284)

## Contract Surface Quality

- Logic-topography rows: 121; live-surface rows included: 121 (100 live, 21 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 94/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/65 (4.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 94 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 85
- Confirmed-live implementations: 94 of 226 unique; 132 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/149
- Verified + Unaudited implementations: 146
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 226
- Raw deployments: 433
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 2.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MGlimmer | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389269 | `0x091608...4c7955` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389272 | `0x3a9249...2ec19b` | ✅ Audited |
| Well | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389273 | `0x511ab5...2411e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (146)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutomationDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a949a...ffde96` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389268 | `0xfbcd3c...507c05` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | base | unit-389302 | `0x6bfd81...3920c4` | ⚠️ Unaudited |
| ChainlinkBoundedCompositeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x31d099...59dade` | ⚠️ Unaudited |
| ChainlinkOEVMorphoWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 3 deployments: base `0x593355...2fd66c`; base `0xaeee63...61f5f5`; base `0xf4dcca...3dadb9` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-389250 | `0x599a01...94b654` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x2f5d37...85bc38`; moonbeam `0x61aa89...612561`; moonbeam `0xdeef6c...ecb9cd` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-389288 | `0xed301c...b665f9` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389294 | `0x892be7...3baf60` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x696daf...19e14d` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98b14f...8017de` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe69de7...978e7b` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389324 | 2 deployments: ethereum `0x6698e6...08f58b`; ethereum `0xdec80b...5b21be` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | optimism | unit-389335 | 2 deployments: optimism `0x8dfbb2...a30ce2`; optimism `0xca889f...c511b9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 4 deployments: moonbeam `0x08cdbe...7b43cd`; moonbeam `0x29c66a...c70ab6`; moonbeam `0xa962f2...2aef16`; moonbeam `0xd4d8de...61f96c` | ⚠️ Unaudited |
| Comptroller | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389345 | 2 deployments: moonriver `0x0b7a0e...a4905e`; moonriver `0x8529ea...2ff098` | ⚠️ Unaudited |
| ComptrollerRewardViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf2a970...1b1620` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fbfcb...570b0e` | ⚠️ Unaudited |
| CypherAutoLoad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3ca3...112ac6` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389322 | 2 deployments: ethereum `0x437113...0d04d5`; ethereum `0xabd650...00c47c` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-389330 | 2 deployments: optimism `0x0cada1...ba2a10`; optimism `0x966450...78ef4b` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0xc0ad7d...cf4a2e`; moonriver `0xcac071...a09fc5`; base `0xd1108d...e9cec4`; base `0xe007a0...bb5060` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | base | unit-389350 | 2 deployments: base `0x3343b3...372af1`; base `0x65a633...ab95b8` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7e1d5f...c3cf4c`; base `0xa4908a...417307` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbad37d...472e6c`; base `0xf65194...4e55e0` | ⚠️ Unaudited |
| EcosystemReserveController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0x98e708...d0157f`; optimism `0x1d776f...4dee1e`; moonriver `0x300fc6...fc9ad9`; moonriver `0xee793a...ee435c`; base `0x201116...2f90b3`; base `0x586569...19aa25`; base `0x938fd9...eed514` | ⚠️ Unaudited |
| EcosystemReserveController | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389284 | `0xca889f...c511b9` | ⚠️ Unaudited |
| EcosystemReserveController | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389296 | `0xd94f82...f21044` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonbeam `0xf88f94...4be756`; moonriver `0x7793e0...167ba4` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389342 | `0xba1758...88908b` | ⚠️ Unaudited |
| ERC4626EthRouter | unknown | project_anchor | own_supporting | 0 | base | unit-389311 | `0xc095cb...758d71` | ⚠️ Unaudited |
| ERC4626RateLimitedAllowance | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf08cef...312072` | ⚠️ Unaudited |
| Factory4626 | registry | project_anchor | own_supporting | 0 | base | unit-389315 | `0xe770bd...4c938a` | ⚠️ Unaudited |
| Factory4626Eth | unknown | project_anchor | own_supporting | 0 | base | unit-389300 | `0x6250e2...ec811e` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a8ae4...4c3cdb` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | project_anchor | own_supporting | 0 | base | unit-389309 | `0xb98c94...ae746a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389343 | `0x5ded9d...0bb8db` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 39 deployments: ethereum `0x6e13ed...76b2ed`; ethereum `0x9a714b...a39c58`; ethereum `0xb9ca0d...c1b945`; ethereum `0xe86b7b...dfc366`; optimism `0x04e632...160bd7`; optimism `0x2a55ba...5a280f`; optimism `0x612e73...6db9e9`; optimism `0x69ff8b...e0668e`; optimism `0x7b2fab...0c744e`; optimism `0x7c94e5...dfb4c1`; optimism `0xbd2fcf...0faae2`; optimism `0xdada7d...ae76d6`; optimism `0xea952a...e99b80`; optimism `0xeb7605...6c3b4a`; optimism `0xf5e4b6...21f12a`; moonbeam `0x0b5f12...c6acf5`; moonbeam `0x1ce7e4...e73755`; moonbeam `0x4c2e35...53d321`; moonbeam `0xdada7d...ae76d6`; moonriver `0xc862a3...6601bf`; base `0x01177f...ce9a7b`; base `0x048442...1b5bd8`; base `0x073848...0bd6ea`; base `0x100710...1cc193`; base `0x13820a...0452c2`; base `0x2a62ac...2d4da1`; base `0x310fbf...dbdb52`; base `0x36bd01...20b511`; base `0x55d58f...4dd0ce`; base `0x63f9f9...6f09b1`; base `0x6ac79d...2c0ed6`; base `0x6d8cb0...474c0c`; base `0x8b2988...e4e7ca`; base `0x8e834e...9efd76`; base `0x96e03a...48cb1c`; base `0xcb9557...d3463e`; base `0xcd72a1...88e8be`; base `0xcf1a33...dc87a1`; base `0xfea5a5...c7e58f` | ⚠️ Unaudited |
| MamoStrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecd80f...9bc766` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 7 deployments: moonbeam `0x405e3c...41bb3a`; moonbeam `0x7befee...996e1a`; moonbeam `0x8abfd2...adc05e`; base `0x405e3c...41bb3a`; base `0x6a85d8...8acdbc`; base `0x7befee...996e1a`; base `0x8abfd2...adc05e` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x35f59b...e86869`; moonbeam `0x9fc345...f01847`; moonbeam `0xf5e4b6...21f12a` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389286 | `0xe5ef93...a380c3` | ⚠️ Unaudited |
| Maximillion | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389291 | `0x1650c0...a80ccc` | ⚠️ Unaudited |
| MErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x21d851...735eaf` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 8 | optimism | unit-389336 (8 proxies) | 9 deployments: optimism `0x3fe782...ead6b2`; optimism `0x4c2e35...53d321`; optimism `0x6e6ca5...f06fdb`; optimism `0x8e0861...155525`; optimism `0x95c84f...d78ba1`; optimism `0x9fc345...f01847`; optimism `0xa3a538...38bf84`; optimism `0xa9ce0a...b09dcc`; optimism `0xbb3b1a...b83f9d` | ⚠️ Unaudited |
| MErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0x298f2e...17dec8` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389340 | `0x42a96c...88f289` | ⚠️ Unaudited |
| MErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: ethereum `0xe1eeaf...ce7d8a`; moonbeam `0x73bbca...bb8e21` | ⚠️ Unaudited |
| MErc20Delegate | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 6 | moonriver | unit-389344 (6 proxies) | 7 deployments: moonriver `0x36918b...ffbf21`; moonriver `0x45d17f...6cf75d`; moonriver `0x6503d9...2e77ae`; moonriver `0x6e7453...614d90`; moonriver `0x93ef8b...ba0e9d`; moonriver `0xa0d116...688e0f`; moonriver `0xd0670a...78bfa8` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 14 | base | unit-389347 (14 proxies) | 14 deployments: base `0x10ff57...c5d2ee`; base `0x2f90bb...66da32`; base `0x627fe3...14304b`; base `0x630820...904f3e`; base `0x73902f...369ba6`; base `0x9a858e...84a218`; base `0xb4fb8f...07e86d`; base `0xb6419c...25a357`; base `0xb80514...c3cfb3`; base `0xcb1dac...d45f44`; base `0xdc7810...f71ed1`; base `0xde8df9...fffc64`; base `0xf877ac...ad5976`; base `0xfc41b4...72f4b5` | ⚠️ Unaudited |
| MErc20DelegateFixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47dffe...347914` | ⚠️ Unaudited |
| MErc20DelegateMadFixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf19b9e...98b4fc` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389251 | `0x636080...aaee9f` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389253 | `0xb85ca1...9590c4` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389254 | `0xe65579...63e62e` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389255 | `0xeddc25...467011` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | optimism | unit-389267 | `0xed37cd...8f8b33` | ⚠️ Unaudited |
| MErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 19 deployments: moonbeam `0x04e632...160bd7`; moonbeam `0x1c478c...eb3eb2`; moonbeam `0x21d851...735eaf`; moonbeam `0x2be2e2...6e7370`; moonbeam `0x314d8b...bbb5de`; moonbeam `0x3fe782...ead6b2`; moonbeam `0x64a815...ff199e`; moonbeam `0x69ff8b...e0668e`; moonbeam `0x7a1bf5...9b1d1b`; moonbeam `0x8618f8...2f9f36`; moonbeam `0x9f3d5a...7bb49b`; moonbeam `0x9f785f...a67ede`; moonbeam `0xa27aba...121b2d`; moonbeam `0xcc56c3...32964f`; moonbeam `0xfbb7fe...a1fb38`; moonriver `0x159814...832840`; base `0x866b83...2003fc`; base `0xbb801e...39aaf2`; base `0xcb7565...0fc8a3` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | base | unit-389314 | `0xd64bcb...7a9682` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389299 | `0x543257...f5a796` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389307 | `0xa0e430...3d0ff1` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389312 | `0xc1256a...00a2ca` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389319 | `0xf24608...01a026` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389259 | `0x3520e1...29642d` | ⚠️ Unaudited |
| Mfam | adapter | project_anchor | own_supporting | 0 | moonriver | unit-389295 | `0xbb8d88...1a58f1` | ⚠️ Unaudited |
| MGlimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x23d718...5145f2`; moonbeam `0x7b2fab...0c744e`; moonbeam `0xa3a538...38bf84` | ⚠️ Unaudited |
| MGlimmer | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389293 | `0x6a1a77...1cd07f` | ⚠️ Unaudited |
| MoonwellGovernorApollo | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389292 | `0x2be2e2...6e7370` | ⚠️ Unaudited |
| MoonwellGovernorArtemis | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389289 | `0xfc4dfb...57666d` | ⚠️ Unaudited |
| MoonwellStakingViews | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcb4413...0a0e15`; ethereum `0xf5f2ae...ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0xf0a4a9...668d1a`; moonbeam `0xf5f2ae...ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-389341 | 2 deployments: moonriver `0x2a55ba...5a280f`; moonriver `0xb4104c...d59a33` | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x54ff1a...43310f` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389349 | 2 deployments: base `0x29ea8b...ae5b71`; base `0x683477...79d459` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x511ab5...2411e3`; base `0xac7b31...aa2e91` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76871d...938f51` | ⚠️ Unaudited |
| MoonwellViewsV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389329 | 2 deployments: ethereum `0x2d85b9...f7786e`; ethereum `0xde5187...1c9ad7` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | base | unit-389310 | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoVaultV2Views | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8d1899...99cce0` | ⚠️ Unaudited |
| MorphoViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7fc0db...d1ed31` | ⚠️ Unaudited |
| MultichainGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0ea816...4209ab`; moonbeam `0x65299e...a707ab`; moonbeam `0xc9ac40...236b5d` | ⚠️ Unaudited |
| MultichainGovernor | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389339 | `0x9a8464...0f1af4` | ⚠️ Unaudited |
| MultichainGovernorV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-389326 | `0x8769b7...d75838` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-389334 | `0x3c9684...037738` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389352 | `0xe0278b...03e949` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389323 | 2 deployments: ethereum `0x54ff1a...43310f`; ethereum `0x60142b...71851c` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | optimism | unit-389338 | 2 deployments: optimism `0xf9524b...7574aa`; optimism `0xff0731...cde121` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2eed2b...223d2b`; optimism `0xc92ab4...0c309c` | ⚠️ Unaudited |
| MWethDelegate | unknown | project_anchor | own_supporting | 1 | optimism | unit-389332 | 2 deployments: optimism `0x66fb79...23227b`; optimism `0xb4104c...d59a33` | ⚠️ Unaudited |
| MWethDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x9b1eea...1021fe`; base `0x599d4a...d7c41a` | ⚠️ Unaudited |
| MWethOwnerWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x179672...57c08e`; base `0x82e5e0...8f6250` | ⚠️ Unaudited |
| OEVProtocolFeeRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0xb41ab9...1007f5`; optimism `0x2ad2f2...830845`; optimism `0xad3315...ff170b`; optimism `0xcb9557...d3463e`; optimism `0xee3f2c...948cf9`; base `0x75eba7...393c39`; base `0xab05f7...bfecf3`; base `0xb25b49...ff331d`; base `0xcd6e19...9cd6dd` | ⚠️ Unaudited |
| ProposalView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xded4de...2d5c30` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 21 deployments: ethereum `0xb8a798...2d40e5`; ethereum `0xd5294c...991a7c`; ethereum `0xf6e7c2...9aca7f`; optimism `0x8568a6...3cfab1`; moonbeam `0x0c2b0f...b57b33`; moonbeam `0x2700d9...ea9ff6`; moonbeam `0x5b50c3...ac0955`; moonbeam `0x8649a5...d1a4a8`; moonbeam `0xa017a0...a497dd`; moonbeam `0xab9aad...386d4e`; moonbeam `0xb0ee65...1d9f5b`; moonriver `0x6658ed...2821a0`; moonriver `0x6e6ca5...f06fdb`; moonriver `0xce7602...a9ceb5`; base `0x243cd4...93247a`; base `0x3fca08...074dec`; base `0x7465c2...1d1486`; base `0x9837b1...9e0bc3`; base `0xc7867f...8adb2c`; base `0xf4cf0f...90099f`; base `0xff0731...cde121` | ⚠️ Unaudited |
| RateLimitCommonLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbec9ea...627057` | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: moonbeam `0x56ed99...103c4d`; moonbeam `0xbae1c9...113e22`; moonbeam `0xc6cda5...8822da`; base `0x56ed99...103c4d`; base `0xbae1c9...113e22`; base `0xc6cda5...8822da` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389321 | `0x5b7100...ea4026` | ⚠️ Unaudited |
| StakedMfam | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x740d4c...da8bde`; moonriver `0xb0ee65...1d9f5b` | ⚠️ Unaudited |
| StakedMfam | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389346 | `0xcd76e6...9fda3a` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389325 | 2 deployments: ethereum `0x701551...b0f5af`; ethereum `0xb3a9e0...dd4357` | ⚠️ Unaudited |
| StakedWell | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xeb56c5...66012a`; ethereum `0xf03499...1dae7e` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | optimism | unit-389333 | 2 deployments: optimism `0x78feb7...266568`; optimism `0xfb26a4...7438c5` | ⚠️ Unaudited |
| StakedWell | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: optimism `0xabd650...00c47c`; moonbeam `0x3a21d8...ff106a`; moonbeam `0xbec923...56f72e`; moonbeam `0xd7689c...c29d77`; base `0x443964...cf556c`; base `0xdbffbc...0f9e24` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | base | unit-389354 | 2 deployments: base `0xe2747a...454b29`; base `0xe66e3a...94dc17` | ⚠️ Unaudited |
| STIXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd1013...5d0d5e` | ⚠️ Unaudited |
| TemporalGovernor | unknown | project_anchor | own_supporting | 0 | optimism | unit-389256 | `0x17c9ba...7aff3d` | ⚠️ Unaudited |
| TemporalGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1e336f...7fb563` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389279 | `0x908df7...ea4689` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | base | unit-389306 | `0x8b6218...df7d51` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389290 | `0x04e632...160bd7` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonriver `0x66fb79...23227b`; moonriver `0xa4230d...483019`; moonriver `0xf27d72...785c67` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | base | unit-389351 | `0xff8ade...03493d` | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x17c9ba...7aff3d`; moonriver `0xac7b31...aa2e91` | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x293635...62b9cf`; moonriver `0x8568a6...3cfab1` | ⚠️ Unaudited |
| TokenSaleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonbeam `0xc7a3ba...605977`; moonbeam `0xefeade...3a7247`; moonriver `0xbec923...56f72e` | ⚠️ Unaudited |
| TokenSaleDistributorProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonbeam `0x472292...db627c`; moonbeam `0xe7e1ff...60af58`; moonriver `0x29ea8b...ae5b71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50837b...cead56` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 5 deployments: moonbeam `0x32b198...f40392`; moonbeam `0x70f607...baf1e3`; moonbeam `0xa81f7a...af3e12`; moonbeam `0xa9ce0a...b09dcc`; moonbeam `0xb8790a...4f1acb` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e336f...7fb563`; ethereum `0x908df7...ea4689` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbac3dd...771501`; optimism `0xf2af8f...75c2a1` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x701551...b0f5af`; base `0xb3a9e0...dd4357` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x420000...000006` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-389252 | `0xa218a4...93ca22` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-389265 | `0xc4ab8c...0e11dc` | ⚠️ Unaudited |
| WETHRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31ccfb...2124c4`; base `0x41f2b7...fbcdc9` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | base | unit-389304 | `0x70778c...75d0c9` | ⚠️ Unaudited |
| WethUnwrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4605da...1da2f6`; base `0x7414df...e381b7`; base `0x876fa6...99d6ca`; base `0xcd57f6...0441ac` | ⚠️ Unaudited |
| WethUnwrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-389263 | `0xa962f2...2aef16` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | base | unit-389297 | `0x1382cf...9e4caf` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-389327 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-389337 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0x48e70f...8c6412`; moonbeam `0xef68c8...20ce6b` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-389348 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8318f3...b37e84` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf9ebc3...670872` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24af32...299c58` | ⚠️ Unaudited |
| XERC20Lockbox | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0d4503...51b460`; moonbeam `0xd12a18...5128da`; moonbeam `0xd95c2d...fce7df` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3b1bdd...700a7f`; moonbeam `0x3b1bdd...700a7f`; base `0x3b1bdd...700a7f` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389328 | 2 deployments: ethereum `0xa88594...2296ae`; ethereum `0xb84543...666df4` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | optimism | unit-389331 | 2 deployments: optimism `0x3b1bdd...700a7f`; optimism `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2585d8...9a14e3`; base `0x87e097...e5dd69` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54720d...8e5873`; base `0xe5fa98...08d0c8` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | base | unit-389353 | 2 deployments: base `0xa88594...2296ae`; base `0xbe08a9...9e124a` | ⚠️ Unaudited |
| xWELLBridgeFeePayer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342ef3...a39827` | ⚠️ Unaudited |
| xWELLRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0c87f9...ac33fa`; moonbeam `0x78c504...2db169`; moonbeam `0xfb26a4...7438c5` | ⚠️ Unaudited |
| xWELLRouter | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-389282 | `0xb84543...666df4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389257 | `0x181ba7...58668e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389258 | `0x2f1490...746dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x701551...b0f5af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389260 | `0x79481c...f141f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389261 | `0x866b83...2003fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389262 | `0x90aa62...9451f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389264 | `0xb80514...c3cfb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389266 | `0xd6c668...c2cbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389270 | `0x1c5564...cf484c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389271 | `0x22b1a4...4abe32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389274 | `0x540244...9cdd17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389275 | `0x744b17...1d615b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389276 | `0x7793e0...167ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x826d8e...590c29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389277 | `0x8568a6...3cfab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389278 | `0x8e00d5...86a180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389280 | `0xaaa20c...74a9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389281 | `0xb6c94b...f9aeac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389283 | `0xb8a798...2d40e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389285 | `0xd22da9...8211c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389287 | `0xe76c8b...c73994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2f5d37...85bc38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x504bd1...f3fdc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x511ab5...2411e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9837b1...9e0bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdada7d...ae76d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03ca79...982aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11d223...44c197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x134263...c4622b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17c9ba...7aff3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x181ba7...58668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f1490...746dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3520e1...29642d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36918b...ffbf21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389298 | `0x3bf937...09a5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c9684...037738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fe782...ead6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2e35...53d321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x576276...5cfc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60142b...71851c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389301 | `0x628ff6...09d457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6503d9...2e77ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e6ca5...f06fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e7453...614d90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389303 | `0x703843...065cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389305 | `0x73b06d...462417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78c29a...02f706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79481c...f141f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e0861...155525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90aa62...9451f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92cf58...416dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93ef8b...ba0e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95c84f...d78ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x966450...78ef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fc345...f01847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0d116...688e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3a538...38bf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa962f2...2aef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9ce0a...b09dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4104c...d59a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389308 | `0xb682c8...a501a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb3b1a...b83f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc104a4...2c5896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4ab8c...0e11dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389313 | `0xc72fcc...72b42b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca889f...c511b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd76e6...9fda3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0670a...78bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6c668...c2cbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389316 | `0xe9005b...0ad9d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389317 | `0xec942b...a6a9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed37cd...8f8b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389318 | `0xedc817...176c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9524b...7574aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb26a4...7438c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389320 | `0xfbb21d...3ef26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbcd3c...507c05` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 11 | high |
| [Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13530] Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section lists repository and commit ID; contracts identified from file paths in findings and code locations.
- [13531] Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section lists 'Moonwell Finance Safety Module Contracts' with repository and commit ID, but no specific contract names. Contract names extracted from code locations in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | ChainlinkOracle | ambiguous — not counted | ChainlinkOracle (alternative) `0x599a01...94b654` — deployed 2026-05-27 21:33:11+03 — liveness: live (current_address_book_code)<br>ChainlinkOracle (alternative) `0xed301c...b665f9` — deployed 2022-06-21 23:54:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Comptroller | ambiguous — not counted | Unitroller (proxy) (alternative) `0xca889f...c511b9` — deployed 2024-07-11 04:29:23+03 — liveness: live (code_present_context)<br>Unitroller (proxy) (alternative) `0xdec80b...5b21be` — deployed 2026-05-27 21:23:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DAIInterestRateModel | unmatched — not counted | — | mentioned in findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DAIInterestRateModelV3 | unmatched — not counted | — | mentioned in findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20 | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20Delegator | ambiguous — not counted | MErc20Delegator (proxy) (alternative) `0x3fe782...ead6b2` — deployed 2024-07-11 04:32:29+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb80514...c3cfb3` — deployed 2024-08-06 22:57:31+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xa3a538...38bf84` — deployed 2024-07-11 04:32:01+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xed37cd...8f8b33` — deployed 2025-05-07 18:56:17+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x95c84f...d78ba1` — deployed 2024-07-11 04:34:25+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0x636080...aaee9f` — deployed 2026-05-27 21:32:23+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x630820...904f3e` — deployed 2025-04-01 15:18:57+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x627fe3...14304b` — deployed 2023-11-07 08:31:23+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x73902f...369ba6` — deployed 2024-04-29 22:45:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xcb1dac...d45f44` — deployed 2023-11-14 06:07:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb4fb8f...07e86d` — deployed 2025-06-13 17:01:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x9a858e...84a218` — deployed 2025-01-23 19:49:45+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xbb3b1a...b83f9d` — deployed 2024-07-11 04:33:55+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb6419c...25a357` — deployed 2025-01-23 19:36:29+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x2f90bb...66da32` — deployed 2025-10-10 21:10:21+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb4104c...d59a33` — deployed 2024-07-11 04:33:27+03 — liveness: live (code_present_context)<br>MErc20Delegator (proxy) (alternative) `0x42a96c...88f289` — deployed 2023-02-09 00:45:42+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x8e0861...155525` — deployed 2024-07-11 04:31:33+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x9fc345...f01847` — deployed 2024-07-11 04:35:51+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xf877ac...ad5976` — deployed 2024-09-05 23:26:15+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xeddc25...467011` — deployed 2026-05-27 21:30:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xdc7810...f71ed1` — deployed 2025-01-08 20:29:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xde8df9...fffc64` — deployed 2025-01-29 21:52:49+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xb85ca1...9590c4` — deployed 2026-05-27 21:28:23+03 — liveness: live (code_present_context)<br>MErc20Delegator (alternative) `0xe65579...63e62e` — deployed 2026-05-27 21:29:35+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x10ff57...c5d2ee` — deployed 2025-01-24 02:47:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xd64bcb...7a9682` — deployed 2026-03-19 01:15:01+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x4c2e35...53d321` — deployed 2024-07-11 04:34:53+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x6e6ca5...f06fdb` — deployed 2024-07-11 04:32:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xfc41b4...72f4b5` — deployed 2024-10-12 01:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20Immutable | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MGlimmer | own contract | MGlimmer (selected) `0x091608...4c7955` — deployed 2022-06-21 23:49:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MToken | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Reservoir | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Timelock | own contract | Timelock (selected) `0x3a9249...2ec19b` — deployed 2022-08-15 22:12:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Unitroller | ambiguous — not counted | Unitroller (proxy) (alternative) `0xca889f...c511b9` — deployed 2024-07-11 04:29:23+03 — liveness: live (code_present_context)<br>Unitroller (proxy) (alternative) `0xdec80b...5b21be` — deployed 2026-05-27 21:23:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Well | own contract | Well (selected) `0x511ab5...2411e3` — deployed 2022-05-12 00:11:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakedToken | unmatched — not counted | — | Code Location in findings | no |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | EcosystemReserve | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x966450...78ef4b` — deployed 2024-07-12 05:02:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a633...ab95b8` — deployed 2024-03-23 06:32:25+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xabd650...00c47c` — deployed 2026-01-28 20:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DistributionManager | unmatched — not counted | — | Code Location in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xfbcd3c...507c05` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6bfd81...3920c4` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6698e6...08f58b` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8dfbb2...a30ce2` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437113...0d04d5` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0cada1...ba2a10` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3343b3...372af1` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xca889f...c511b9` | EcosystemReserveController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc095cb...758d71` | ERC4626EthRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe770bd...4c938a` | Factory4626 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6250e2...ec811e` | Factory4626Eth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb98c94...ae746a` | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xe5ef93...a380c3` | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3fe782...ead6b2` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x42a96c...88f289` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x10ff57...c5d2ee` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x636080...aaee9f` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb85ca1...9590c4` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe65579...63e62e` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeddc25...467011` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xed37cd...8f8b33` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd64bcb...7a9682` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xbb8d88...1a58f1` | Mfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xfc4dfb...57666d` | MoonwellGovernorArtemis | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x2a55ba...5a280f` | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x29ea8b...ae5b71` | MoonwellViewsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d85b9...f7786e` | MoonwellViewsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54ff1a...43310f` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf9524b...7574aa` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x66fb79...23227b` | MWethDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x701551...b0f5af` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x78feb7...266568` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2747a...454b29` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x17c9ba...7aff3d` | TemporalGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x908df7...ea4689` | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8b6218...df7d51` | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xff8ade...03493d` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa218a4...93ca22` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc4ab8c...0e11dc` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x70778c...75d0c9` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa962f2...2aef16` | WethUnwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1382cf...9e4caf` | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x734abb...a6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x734abb...a6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x734abb...a6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa88594...2296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3b1bdd...700a7f` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa88594...2296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb84543...666df4` | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 21 |
| standard_library | 4 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 9 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Zero-match audit list:

- [13531] Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
