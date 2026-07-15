# Agentic Audit Brief: Moonwell

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Moonwell (`moonwell`)
- Website: [https://moonwell.fi](https://moonwell.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, moonbeam, moonriver, optimism
- Contract surface: 138 unique implementations (164 raw deployments)
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

2 of 94 contracts are derived from known codebases. 92 contracts have no detected origin.

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
- Morpho (`0xbbbbbb...eeffcb`, chain 8453)
- SafeProxy (`0x5b7100...ea4026`, chain 1)
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

- Indexed contracts: 121; live-surface contracts included: 121 (86 live, 35 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 94/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/65 (4.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 94 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Deployed-live implementations: 94 of 138 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/65
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 138
- Raw deployments: 164
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
| Halborn | Tier 2 | 3 | 4.6% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MGlimmer | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389269 | `0x091608...4c7955` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389272 | `0x3a9249...2ec19b` | ✅ Audited |
| Well | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389273 | `0x511ab5...2411e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bundler3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389268 | `0xfbcd3c...507c05` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | base | unit-389302 | `0x6bfd81...3920c4` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-389250 | `0x599a01...94b654` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-389288 | `0xed301c...b665f9` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389294 | `0x892be7...3baf60` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389324 | `0xdec80b...5b21be` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | optimism | unit-389335 | `0xca889f...c511b9` | ⚠️ Unaudited |
| Comptroller | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389345 | `0x0b7a0e...a4905e` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389322 | `0xabd650...00c47c` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-389330 | `0x966450...78ef4b` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | base | unit-389350 | `0x65a633...ab95b8` | ⚠️ Unaudited |
| EcosystemReserveController | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389284 | `0xca889f...c511b9` | ⚠️ Unaudited |
| EcosystemReserveController | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389296 | `0xd94f82...f21044` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389342 | `0xba1758...88908b` | ⚠️ Unaudited |
| ERC4626EthRouter | unknown | project_anchor | own_supporting | 0 | base | unit-389311 | `0xc095cb...758d71` | ⚠️ Unaudited |
| Factory4626 | registry | project_anchor | own_supporting | 0 | base | unit-389315 | `0xe770bd...4c938a` | ⚠️ Unaudited |
| Factory4626Eth | unknown | project_anchor | own_supporting | 0 | base | unit-389300 | `0x6250e2...ec811e` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | project_anchor | own_supporting | 0 | base | unit-389309 | `0xb98c94...ae746a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389343 | `0x5ded9d...0bb8db` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389286 | `0xe5ef93...a380c3` | ⚠️ Unaudited |
| Maximillion | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389291 | `0x1650c0...a80ccc` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 8 | optimism | unit-389336 (8 proxies) | 9 deployments: optimism `0x3fe782...ead6b2`; optimism `0x4c2e35...53d321`; optimism `0x6e6ca5...f06fdb`; optimism `0x8e0861...155525`; optimism `0x95c84f...d78ba1`; optimism `0x9fc345...f01847`; optimism `0xa3a538...38bf84`; optimism `0xa9ce0a...b09dcc`; optimism `0xbb3b1a...b83f9d` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389340 | `0x42a96c...88f289` | ⚠️ Unaudited |
| MErc20Delegate | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 6 | moonriver | unit-389344 (6 proxies) | 6 deployments: moonriver `0x36918b...ffbf21`; moonriver `0x6503d9...2e77ae`; moonriver `0x6e7453...614d90`; moonriver `0x93ef8b...ba0e9d`; moonriver `0xa0d116...688e0f`; moonriver `0xd0670a...78bfa8` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 14 | base | unit-389347 (14 proxies) | 14 deployments: base `0x10ff57...c5d2ee`; base `0x2f90bb...66da32`; base `0x627fe3...14304b`; base `0x630820...904f3e`; base `0x73902f...369ba6`; base `0x9a858e...84a218`; base `0xb4fb8f...07e86d`; base `0xb6419c...25a357`; base `0xb80514...c3cfb3`; base `0xcb1dac...d45f44`; base `0xdc7810...f71ed1`; base `0xde8df9...fffc64`; base `0xf877ac...ad5976`; base `0xfc41b4...72f4b5` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389251 | `0x636080...aaee9f` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389253 | `0xb85ca1...9590c4` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389254 | `0xe65579...63e62e` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389255 | `0xeddc25...467011` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | optimism | unit-389267 | `0xed37cd...8f8b33` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | base | unit-389314 | `0xd64bcb...7a9682` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389299 | `0x543257...f5a796` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389307 | `0xa0e430...3d0ff1` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389312 | `0xc1256a...00a2ca` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389319 | `0xf24608...01a026` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389259 | `0x3520e1...29642d` | ⚠️ Unaudited |
| Mfam | adapter | project_anchor | own_supporting | 0 | moonriver | unit-389295 | `0xbb8d88...1a58f1` | ⚠️ Unaudited |
| MGlimmer | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389293 | `0x6a1a77...1cd07f` | ⚠️ Unaudited |
| MoonwellGovernorApollo | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389292 | `0x2be2e2...6e7370` | ⚠️ Unaudited |
| MoonwellGovernorArtemis | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389289 | `0xfc4dfb...57666d` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-389341 | `0xb4104c...d59a33` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389349 | `0x683477...79d459` | ⚠️ Unaudited |
| MoonwellViewsV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389329 | `0x2d85b9...f7786e` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | base | unit-389310 | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MultichainGovernor | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389339 | `0x9a8464...0f1af4` | ⚠️ Unaudited |
| MultichainGovernorV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-389326 | `0x8769b7...d75838` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-389334 | `0x3c9684...037738` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389352 | `0xe0278b...03e949` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389323 | `0x60142b...71851c` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | optimism | unit-389338 | `0xf9524b...7574aa` | ⚠️ Unaudited |
| MWethDelegate | unknown | project_anchor | own_supporting | 1 | optimism | unit-389332 | `0xb4104c...d59a33` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389321 | `0x5b7100...ea4026` | ⚠️ Unaudited |
| StakedMfam | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389346 | `0xcd76e6...9fda3a` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389325 | `0xb3a9e0...dd4357` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | optimism | unit-389333 | `0xfb26a4...7438c5` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | base | unit-389354 | `0xe66e3a...94dc17` | ⚠️ Unaudited |
| TemporalGovernor | unknown | project_anchor | own_supporting | 0 | optimism | unit-389256 | `0x17c9ba...7aff3d` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389279 | `0x908df7...ea4689` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | base | unit-389306 | `0x8b6218...df7d51` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389290 | `0x04e632...160bd7` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | base | unit-389351 | `0xff8ade...03493d` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-389252 | `0xa218a4...93ca22` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-389265 | `0xc4ab8c...0e11dc` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | base | unit-389304 | `0x70778c...75d0c9` | ⚠️ Unaudited |
| WethUnwrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-389263 | `0xa962f2...2aef16` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | base | unit-389297 | `0x1382cf...9e4caf` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-389327 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-389337 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-389348 | `0x734abb...a6dbb7` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389328 | `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | optimism | unit-389331 | `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | base | unit-389353 | `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELLRouter | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-389282 | `0xb84543...666df4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389257 | `0x181ba7...58668e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389258 | `0x2f1490...746dcf` | ❓ Unverified |
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389277 | `0x8568a6...3cfab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389278 | `0x8e00d5...86a180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389280 | `0xaaa20c...74a9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389281 | `0xb6c94b...f9aeac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389283 | `0xb8a798...2d40e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389285 | `0xd22da9...8211c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389287 | `0xe76c8b...c73994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17c9ba...7aff3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x181ba7...58668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f1490...746dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3520e1...29642d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36918b...ffbf21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389298 | `0x3bf937...09a5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fe782...ead6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2e35...53d321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60142b...71851c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389301 | `0x628ff6...09d457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6503d9...2e77ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e6ca5...f06fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e7453...614d90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389303 | `0x703843...065cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389305 | `0x73b06d...462417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79481c...f141f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e0861...155525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90aa62...9451f8` | ❓ Unverified |
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
| ethereum | `0xdec80b...5b21be` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xca889f...c511b9` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xabd650...00c47c` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x966450...78ef4b` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x65a633...ab95b8` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| moonriver | `0xb4104c...d59a33` | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x683477...79d459` | MoonwellViewsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d85b9...f7786e` | MoonwellViewsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60142b...71851c` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf9524b...7574aa` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb4104c...d59a33` | MWethDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb3a9e0...dd4357` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfb26a4...7438c5` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe66e3a...94dc17` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| optimism | `0xa88594...2296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa88594...2296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb84543...666df4` | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 13 |
| standard_library | 2 |
| needs_review | 62 |

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
