# Agentic Audit Brief: Zunami Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zunami Protocol (`zunami-protocol`)
- Website: [https://www.zunami.io/](https://www.zunami.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 119 unique implementations (119 raw deployments)
- Coverage basis: 3/23 confirmed own live verified implementations (13.0%); conservative 13.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $475,794.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zunami Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across base, ethereum. Structural roles: 23 core, 2 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: core (23), infra (2)
- Contract kinds: contract (25)
- Detected standards: erc165 (21), accesscontrol (20), pausable (11), erc20 (7), erc20permit (2), ownable (2), ownable2step (2)
- Frameworks: openzeppelin (25)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 69 contracts are derived from known codebases. 69 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1315cd...07d449`, chain 1)
- UnnamedContract (`0x2457c9...addd43`, chain 1)
- UnnamedContract (`0x330861...846af5`, chain 1)
- UnnamedContract (`0x3432b6...c964d0`, chain 1)
- UnnamedContract (`0x365acc...65bb09`, chain 1)
- UnnamedContract (`0x45af4f...e795c3`, chain 1)
- UnnamedContract (`0x46acb3...c3ed65`, chain 1)
- UnnamedContract (`0x475983...4ac8af`, chain 1)
- UnnamedContract (`0x4e3fbd...5b9d2b`, chain 1)
- UnnamedContract (`0x4f1270...987953`, chain 1)
- UnnamedContract (`0x522103...695341`, chain 1)
- UnnamedContract (`0x533977...13a113`, chain 1)
- UnnamedContract (`0x5e8422...8caa1f`, chain 1)
- UnnamedContract (`0x5f0c26...0a1251`, chain 1)
- UnnamedContract (`0x616708...90e8b6`, chain 1)
- UnnamedContract (`0x66387a...6f2db3`, chain 1)
- UnnamedContract (`0x6d5a96...1b591f`, chain 1)
- UnnamedContract (`0x72a239...5e0719`, chain 1)
- UnnamedContract (`0x73968b...6cdb2f`, chain 1)
- UnnamedContract (`0x770f99...dc6cc9`, chain 1)
- UnnamedContract (`0x7f5ef1...a4ce12`, chain 1)
- UnnamedContract (`0x8bbef9...6f1656`, chain 1)
- UnnamedContract (`0x8c0d76...a1a0e6`, chain 1)
- UnnamedContract (`0x8d4d61...83e598`, chain 1)
- UnnamedContract (`0x92ccc6...421c5e`, chain 1)
- UnnamedContract (`0x948f65...a647f1`, chain 1)
- UnnamedContract (`0x950a50...4a7bf2`, chain 1)
- UnnamedContract (`0xa55d60...f3e415`, chain 1)
- UnnamedContract (`0xadfa8e...e699ab`, chain 1)
- UnnamedContract (`0xaea5f9...51fc41`, chain 1)
- UnnamedContract (`0xbae248...3a4011`, chain 1)
- UnnamedContract (`0xceeff1...954062`, chain 1)
- UnnamedContract (`0xd22276...43fe4f`, chain 1)
- UnnamedContract (`0xd533a9...34cd52`, chain 1)
- UnnamedContract (`0xd8132d...3da61f`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xe03d34...b48280`, chain 1)
- UnnamedContract (`0xe52708...357159`, chain 1)
- UnnamedContract (`0xee58bf...bdaccf`, chain 1)
- UnnamedContract (`0xf939e0...ac1b4e`, chain 1)
- UnnamedContract (`0xfd1b30...bce3ac`, chain 1)
- UnnamedContract (`0x145060...d76a69`, chain 8453)
- UnnamedContract (`0x83ed27...3dd071`, chain 8453)
- UnnamedContract (`0x940181...d98631`, chain 8453)
- UnnamedContract (`0xd45cb6...a40eec`, chain 8453)
- LlamalendCrvStakeDaoERC4626Strat (`0xf3558b...96ab73`, chain 1)
- LlamalendCrvUsdStakeDaoERC4626Strat (`0x8dfcd3...81ed47`, chain 1)
- LlamalendWeth2StakeDaoERC4626Strat (`0x531bba...42633d`, chain 1)
- RecapitalizationManager (`0xd5d1ac...1bd062`, chain 1)
- RewardDistributor (`0x1a6726...4a0496`, chain 1)
- scrvUsdERC4626Strat (`0x6d2d70...39236f`, chain 1)
- TimelockController (`0xd752bb...befca4`, chain 1)
- ZunamiGovernor (`0x0357f8...a03f98`, chain 1)
- ZunamiPoolApsZunBTC (`0x3c6e1f...828d82`, chain 1)
- ZunamiPoolApsZunETH (`0x5ab3aa...bd28e2`, chain 1)
- ZunamiPoolApsZunUSD (`0x28e487...082889`, chain 1)
- ZunamiPoolControllerApsZunUSD (`0xd9f559...fccfb5`, chain 1)
- ZunamiPoolControllerZunBTC (`0x8d6c5c...11eeb4`, chain 1)
- ZunamiPoolControllerZunETH (`0x4bd57f...6f9f32`, chain 1)
- ZunamiPoolControllerZunUSD (`0x2f858e...dc6f4e`, chain 1)
- ZunamiPoolZunBTC (`0x0fa308...5fc6db`, chain 1)
- ZunamiPoolZunETH (`0xc2e660...2f2222`, chain 1)
- ZunamiStableZap (`0x20c3a5...eec3a8`, chain 1)
- ZunamiToken (`0x6b5204...2f0f36`, chain 1)
- ZunDistributor (`0xeea950...967b3a`, chain 1)
- ZunETHApsVaultStrat (`0xcb17c2...9e5654`, chain 1)
- ZunETHVaultStrat (`0x5f8fc0...86b000`, chain 1)
- ZunUSDApsVaultStrat (`0xf859c6...ea0276`, chain 1)
- ZunUSDVaultStrat (`0x7aa84c...8851a0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (24 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 69/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/23 (13.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 68 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 48 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 69 of 119 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/73
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 119
- Raw deployments: 119
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 3 | 4.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LlamalendCrvUsdStakeDaoERC4626Strat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398324 | `0x8dfcd3...81ed47` | ✅ Audited |
| RecapitalizationManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398337 | `0xd5d1ac...1bd062` | ✅ Audited |
| ZunDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398345 | `0xeea950...967b3a` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchorStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x360f8d...4e73c3` | ⚠️ Unaudited |
| ClaimingNativeStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6756ef...e8f9ef` | ⚠️ Unaudited |
| ClaimingStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa655aa...e0a143` | ⚠️ Unaudited |
| ELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42873d...48091b` | ⚠️ Unaudited |
| FrxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594618...29a158` | ⚠️ Unaudited |
| FxnOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e08f5...8fd11e` | ⚠️ Unaudited |
| FxUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7988...f94327` | ⚠️ Unaudited |
| GenericOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4142bb...e18410` | ⚠️ Unaudited |
| LlamalendCrvStakeDaoERC4626Strat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398346 | `0xf3558b...96ab73` | ⚠️ Unaudited |
| LlamalendWeth2StakeDaoERC4626Strat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398303 | `0x531bba...42633d` | ⚠️ Unaudited |
| LlamalendWethStakeDaoERC4626Strat | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-398306 | `0x5de1bd...6998f1` | ⚠️ Unaudited |
| LlamaSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2346...dd1dc6` | ⚠️ Unaudited |
| PxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e276d...454666` | ⚠️ Unaudited |
| RebalancingStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcc3b...f907a6` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398287 | `0x1a6726...4a0496` | ⚠️ Unaudited |
| scrvUsdERC4626Strat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398313 | `0x6d2d70...39236f` | ⚠️ Unaudited |
| SellingRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc045...e696de` | ⚠️ Unaudited |
| sfrxETHERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342209...5d72f6` | ⚠️ Unaudited |
| SnapshotHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad930...26b147` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0236b7...a8a42e` | ⚠️ Unaudited |
| StakingRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x280d48...0810bd` | ⚠️ Unaudited |
| StakingRewardDistributorGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b465...7151ed` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398338 | `0xd752bb...befca4` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf48a59...b34bfc` | ⚠️ Unaudited |
| TransferGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124ab7...cf81df` | ⚠️ Unaudited |
| UZD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015b94...63541f` | ⚠️ Unaudited |
| VaultAPSStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0b52...f6d7dc` | ⚠️ Unaudited |
| VaultNativeStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5255e9...c4d3f9` | ⚠️ Unaudited |
| VaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d09fa...83c30b` | ⚠️ Unaudited |
| VotemarketGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c572b...49d920` | ⚠️ Unaudited |
| VotiumGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce6df...027be1` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fdd42...b112dc` | ⚠️ Unaudited |
| Withdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069ee6...fc1cfb` | ⚠️ Unaudited |
| zETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47f1c...a87b2b` | ⚠️ Unaudited |
| Zunami | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffcc6...4d14ce` | ⚠️ Unaudited |
| ZunamiAPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab491...2698bd` | ⚠️ Unaudited |
| ZunamiDepositEthZap2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd38c5...3c0ed6` | ⚠️ Unaudited |
| ZunamiDepositEthZap3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2160ad...696382` | ⚠️ Unaudited |
| ZunamiDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1162c7...f81574` | ⚠️ Unaudited |
| ZunamiDepositZap2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6042...1fcce1` | ⚠️ Unaudited |
| ZunamiDepositZap3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35fc7...77fef4` | ⚠️ Unaudited |
| ZunamiForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e392...50a0af` | ⚠️ Unaudited |
| ZunamiGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398283 | `0x0357f8...a03f98` | ⚠️ Unaudited |
| ZunamiLaunchZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18ac6...5b6699` | ⚠️ Unaudited |
| ZunamiNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9de839...c6eea7` | ⚠️ Unaudited |
| ZunamiNativeAPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b49d1...b29c82` | ⚠️ Unaudited |
| ZunamiPoolApsZunBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398295 | `0x3c6e1f...828d82` | ⚠️ Unaudited |
| ZunamiPoolApsZunETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398305 | `0x5ab3aa...bd28e2` | ⚠️ Unaudited |
| ZunamiPoolApsZunUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398290 | `0x28e487...082889` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179dc3...e99498` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0beb2b...16de60` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398340 | `0xd9f559...fccfb5` | ⚠️ Unaudited |
| ZunamiPoolControllerZunBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398323 | `0x8d6c5c...11eeb4` | ⚠️ Unaudited |
| ZunamiPoolControllerZunETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398299 | `0x4bd57f...6f9f32` | ⚠️ Unaudited |
| ZunamiPoolControllerZunUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398291 | `0x2f858e...dc6f4e` | ⚠️ Unaudited |
| ZunamiPoolZunBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398284 | `0x0fa308...5fc6db` | ⚠️ Unaudited |
| ZunamiPoolZunETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398332 | `0xc2e660...2f2222` | ⚠️ Unaudited |
| ZunamiPoolZunUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecc4a...d30b0a` | ⚠️ Unaudited |
| ZunamiRedistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9cc8b...dec334` | ⚠️ Unaudited |
| ZunamiRedistributorNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60278e...dbeb8a` | ⚠️ Unaudited |
| ZunamiStableZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398288 | `0x20c3a5...eec3a8` | ⚠️ Unaudited |
| ZunamiTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932370...d07197` | ⚠️ Unaudited |
| ZunamiToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-398312 | `0x6b5204...2f0f36` | ⚠️ Unaudited |
| ZunETHApsVaultStrat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398333 | `0xcb17c2...9e5654` | ⚠️ Unaudited |
| ZunEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64298a...64be4b` | ⚠️ Unaudited |
| ZunETHVaultStrat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398309 | `0x5f8fc0...86b000` | ⚠️ Unaudited |
| ZUNStakingRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bae8...b9e8ea` | ⚠️ Unaudited |
| ZunUSDApsVaultStrat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398347 | `0xf859c6...ea0276` | ⚠️ Unaudited |
| ZunUSDVaultStrat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398318 | `0x7aa84c...8851a0` | ⚠️ Unaudited |
| ZunVestingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190b01...73f931` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398285 | `0x1315cd...07d449` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-398286 | `0x15370f...d04ceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398289 | `0x2457c9...addd43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398292 | `0x330861...846af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398293 | `0x3432b6...c964d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398294 | `0x365acc...65bb09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398296 | `0x45af4f...e795c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398297 | `0x46acb3...c3ed65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398298 | `0x475983...4ac8af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398300 | `0x4e3fbd...5b9d2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398301 | `0x4f1270...987953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398302 | `0x522103...695341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398304 | `0x533977...13a113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398307 | `0x5e8422...8caa1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398308 | `0x5f0c26...0a1251` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398310 | `0x616708...90e8b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398311 | `0x66387a...6f2db3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398314 | `0x6d5a96...1b591f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398315 | `0x72a239...5e0719` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398316 | `0x73968b...6cdb2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398317 | `0x770f99...dc6cc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398319 | `0x7f5ef1...a4ce12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398320 | `0x8bbef9...6f1656` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398321 | `0x8c0d76...a1a0e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398322 | `0x8d4d61...83e598` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398325 | `0x92ccc6...421c5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398326 | `0x948f65...a647f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398327 | `0x950a50...4a7bf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398328 | `0xa55d60...f3e415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398329 | `0xadfa8e...e699ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398330 | `0xaea5f9...51fc41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398331 | `0xbae248...3a4011` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398334 | `0xceeff1...954062` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398335 | `0xd22276...43fe4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398336 | `0xd533a9...34cd52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398339 | `0xd8132d...3da61f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398341 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398342 | `0xe03d34...b48280` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398343 | `0xe52708...357159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398344 | `0xee58bf...bdaccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398348 | `0xf939e0...ac1b4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398349 | `0xfd1b30...bce3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398350 | `0x145060...d76a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398351 | `0x83ed27...3dd071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398352 | `0x940181...d98631` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398353 | `0xd45cb6...a40eec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield.](https://github.com/ZunamiProtocol/ZunamiProtocolV2/blob/main/audit/nomoi-zunami-v2-repor.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 41 | high |
| [**Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\](https://github.com/ZunamiProtocol/ZunamiProtocolV2/blob/main/audit/Oxorio-zunami-v2-final-report-4-reaudit.pdf) | Oxorio | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [**Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\](https://github.com/ZunamiProtocol/ZunamiProtocolV2/blob/main/audit/Oxorio-zunami-v2-reaudit-report-3-tokenomics.pdf) | Oxorio | Audit | 2024-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 24 | high |
| [**Oxorio** (6 February 2024) - Zunami V2, [report]()\](https://github.com/ZunamiProtocol/ZunamiProtocolV2/blob/main/audit/Oxorio-zunami-v2-final-report-2-protocol.pdf) | Oxorio | Audit | 2024-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [**PeckShield** (12 December 2023) - Zunami V2, [report]()\](https://github.com/ZunamiProtocol/ZunamiProtocolV2/blob/main/audit/PeckShield-Audit-Report-Zunami-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [**Hashex** (5 March 2023) - V1 coverage, [report]() \](https://hashex.org/audits/zunami-protocol) | Hashex | Audit | 2023-03 | stale | Direct | address | no match | 0 | 0 | 0 | 13 | high |
| [**Hashex** (26 February 2023) - UZD stablecoin, [report]() \](https://hashex.org/audits/zunami-protocol-uzd) | Hashex | Audit | 2023-02 | stale | Direct | address | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29939] Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. — matched: Extracted all contracts from the scope section of the audit report. The audit date is the report update date (Wednesday, November 8, 2023).
- [29940] **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ — matched: All contracts listed in the Audit Scope section (page 11) were extracted. The audit date is from the cover page: 'APRIL 30, 2024'.
- [29941] **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ — matched: Audit scope covers all smart contracts in the contracts folder. The report date is April 15, 2024 from the cover page.
- [29942] **Oxorio** (6 February 2024) - Zunami V2, [report]()\ — matched: Scope section states 'contracts folder except files at distributor and staking subfolders'. All contracts mentioned in findings are within scope. Date from cover page.
- [29943] **PeckShield** (12 December 2023) - Zunami V2, [report]()\ — no match: Contracts extracted from findings targets and examples; no explicit scope table provided.
- [29944] **Hashex** (5 March 2023) - V1 coverage, [report]() \ — no match: Extracted 13 contracts from the scope table. Audit completed on 5 Mar 2023.
- [29945] **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ — no match: Contracts Checked table lists 10 entries, but entries 4 and 5 are separate (ELT and PricableAsset). All addresses are the same, likely a placeholder. ZunamiRedistributor has no address listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPoolCompoundController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPoolControllerBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPoolThroughController | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooApsUZD | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooApsZETH | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooControllerApsUZD | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooControllerApsZETH | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooControllerUZD | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooControllerZETH | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooUZD | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPooZETH | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ICurvePool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ICurvePool2 | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ICurvePool2Native | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ICurvePoolPricable | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | INativeConverter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IPool | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IRewardManager | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IStableConverter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IStrategy | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IWETH | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | VaultStrat | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiPoolOwnable | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ZunamiStratBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | CurveStratBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ConvexCurveStratBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IConvexBooster | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IConvexMinter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IConvexRewards | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | StakeDaoCurveStratBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | CrvUsdStakeDaoCurveStratBase | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | UsdcCrvUsdStakeDaoCurve | own contract | 0x8d4d61… (selected) `0x8d4d61...83e598` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | UsdtCrvUsdStakeDaoCurve | own contract | 0xadfa8e… (selected) `0xadfa8e...e699ab` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IStakeDaoGauge | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | IStakeDaoVault | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | Constants | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | FraxEthNativeConverter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | StableConverter | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | SellingCurveRewardManager | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | SellingCurveRewardManagerFrxEth | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | AggregatorV2V3Interface | unmatched — not counted | — | listed in scope | no |
| Smart Contract Risk: the smart contracts of Zunami v2 immutable and underwent a comprehensive audit before deployment from [Nomoi](), Oxorio and PeckShield. | ICurveExchangePool | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | ZunamiStratBase | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | ERC4626StratBase | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | StakeDaoERC4626StratBase | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | CrvUsdStakeDaoERC4626StratBase | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | LlamalendCrvUsdStakeDaoERC4626Strat | own contract | LlamalendCrvUsdStakeDaoERC4626Strat (selected) `0x8dfcd3...81ed47` — deployed 2024-04-28 09:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | TokenConverter | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | SellingCurveRewardManager2 | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | SdtOracle | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (30 April 2024) - LlamaLend + other components, [report]()\ | ZunEthOracle | unmatched — not counted | — | listed in scope | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZUNStakingRewardDistributor | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | BaseStakingRewardDistributor | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | RecapitalizationManager | own contract | RecapitalizationManager (selected) `0xd5d1ac...1bd062` — deployed 2024-10-29 08:15:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | StaticCurveLPOracle | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiPool | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiPoolControllerBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiDepositZap | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiPoolCompoundController | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | CrvUsdOracle | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunUsdOracle | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | FraxEthNativeConverter | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | SellingCurveRewardManager | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | SellingCurveRewardManagerFrxEth | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | StableConverter | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | RewardTokenManager | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | CurveNStratBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | CurveStratBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ERC4626StratBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | VaultStrat | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiStratBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunDistributor | own contract | ZunDistributor (selected) `0xeea950...967b3a` — deployed 2024-06-06 11:15:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | RewardViewer | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | StakingRewardDistributor | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | CrvUsdApsConvexCurveStratBase | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ApproveGauge | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (15 April 2024) - Zunami V2 Re-audit + Tokenomics audit, [report]()\ | ZunamiPoolAccessControl | unmatched — not counted | — | listed in scope and findings | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | VaultStrat | unmatched — not counted | — | C-01 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | ConvexCurveStratBase | unmatched — not counted | — | C-02 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | ZunamiStratBase | unmatched — not counted | — | C-03 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | FrxETHOracle | unmatched — not counted | — | C-04 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | CrvUsdApsConvexCurveStratBase | unmatched — not counted | — | M-01 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | FraxApsConvexCurveStratBase | unmatched — not counted | — | M-01 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | ZunamiPool | unmatched — not counted | — | M-02 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | AccessControl2RolesValuation | unmatched — not counted | — | I-02 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | CurveStratBase | unmatched — not counted | — | I-04 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | StakeDaoCurveStratBase | unmatched — not counted | — | I-03 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | RecapitalizationManager | own contract | RecapitalizationManager (selected) `0xd5d1ac...1bd062` — deployed 2024-10-29 08:15:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | StakingRewardDistributor | unmatched — not counted | — | I-03 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | ZunDistributor | own contract | ZunDistributor (selected) `0xeea950...967b3a` — deployed 2024-06-06 11:15:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | GenericOracle | unmatched — not counted | — | I-03 finding location | no |
| **Oxorio** (6 February 2024) - Zunami V2, [report]()\ | ERC4626StratBase | unmatched — not counted | — | I-04 finding location | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | ERC4626StratBase | unmatched — not counted | — | Target in finding PVE-001 | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | EthERC4626StratBase | unmatched — not counted | — | Target in finding PVE-002 | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | StakingRewardDistributor | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-005 | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | SellingCurveRewardManagerFrxEth | unmatched — not counted | — | Target in finding PVE-006 | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | ZunamiPoolCompoundControllers | unmatched — not counted | — | Target in finding PVE-008 | no |
| **PeckShield** (12 December 2023) - Zunami V2, [report]()\ | ZunamiPool | unmatched — not counted | — | Example privileged operations in finding PVE-007 | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | StakingFraxCurveConvexStratBase | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | XAIStakingFraxCurveConvexStrategy | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | CurveStakeDaoStratBase | unmatched — not counted | — | listed in scope table with address | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | CurveStakeDaoExtraStratBase | unmatched — not counted | — | listed in scope table with address | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | CurveStakeDaoStrat2 | unmatched — not counted | — | listed in scope table with address | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | MIMCurveStakeDaoStrategy | unmatched — not counted | — | listed in scope table with address | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | SellingUniswapRewardManager | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | SellingCurveRewardManager | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | RebalancingStrat | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | StableConverter | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | ConstantsLibrary | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | ConstantsBSC | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (5 March 2023) - V1 coverage, [report]() \ | Zunami | unmatched — not counted | — | listed in scope table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ElasticERC20 | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ElasticERC20RigidExtension | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ElasticRigidVault | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ELT | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | PricableAsset | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | RigidAddressSet | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ZunamiElasticRigidVault | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | UZD | unmatched — not counted | — | listed in Contracts Checked table | no |
| **Hashex** (26 February 2023) - UZD stablecoin, [report]() \ | ZunamiRedistributor | unmatched — not counted | — | listed in Contracts Checked table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf3558b...96ab73` | LlamalendCrvStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x531bba...42633d` | LlamalendWeth2StakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a6726...4a0496` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6d2d70...39236f` | scrvUsdERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0357f8...a03f98` | ZunamiGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c6e1f...828d82` | ZunamiPoolApsZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ab3aa...bd28e2` | ZunamiPoolApsZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x28e487...082889` | ZunamiPoolApsZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9f559...fccfb5` | ZunamiPoolControllerApsZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d6c5c...11eeb4` | ZunamiPoolControllerZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bd57f...6f9f32` | ZunamiPoolControllerZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f858e...dc6f4e` | ZunamiPoolControllerZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fa308...5fc6db` | ZunamiPoolZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e660...2f2222` | ZunamiPoolZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20c3a5...eec3a8` | ZunamiStableZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb17c2...9e5654` | ZunETHApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f8fc0...86b000` | ZunETHVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf859c6...ea0276` | ZunUSDApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7aa84c...8851a0` | ZunUSDVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=7

Zero-match audit list:

- [29943] **PeckShield** (12 December 2023) - Zunami V2, [report]()\
- [29944] **Hashex** (5 March 2023) - V1 coverage, [report]() \
- [29945] **Hashex** (26 February 2023) - UZD stablecoin, [report]() \

Fork inheritance lineage and inherited audits are included when available.
