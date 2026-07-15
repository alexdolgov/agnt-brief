# Agentic Audit Brief: Reservoir Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Reservoir Protocol (`reservoir-protocol`)
- Website: [https://app.reservoir.xyz](https://app.reservoir.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma
- Contract surface: 160 unique implementations (261 raw deployments)
- Coverage basis: 2/10 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $46,514,844.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Reservoir Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma. Structural roles: 12 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (12), supporting (9)
- Contract kinds: contract (21)
- Detected standards: accesscontrol (13), erc165 (13), erc20 (7), ownable (7), pausable (3), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (21), layerzero (7), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x31eae6...b04a61`, chain 1)
- AssetAdapter (`0xc5dea6...4a73c4`, chain 1)
- DamOft (`0xf9ca3f...ababf8`, chain 56)
- MorphoUnderlyingAdapter (`0x841db2...0cfcbc`, chain 1)
- MorphoUnderlyingAdapter (`0x99a95a...632b10`, chain 1)
- MorphoUnderlyingAdapter (`0xb595ba...8870a2`, chain 1)
- RusdOft (`0x866d66...f35e78`, chain 999)
- RusdOftAdapter (`0xf0e9f6...f4b4da`, chain 1)
- SrusdOftAdapter (`0x316cd3...f64514`, chain 1)
- WsrusdOft (`0x62344b...6900b1`, chain 8453)
- WsrusdOftAdapter (`0xbb431a...91258a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (10 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/10 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 11 of 160 unique; 149 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/104
- Verified + Unaudited implementations: 102
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 160
- Raw deployments: 261
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 1.0% | 2024-05 |
| unknown | Tier 2 | 1 | 1.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252929 | `0xc5dea6...4a73c4` | ✅ Audited |
| DamOft | unknown | project_anchor | own_supporting | 0 | bsc | unit-252933 | `0xf9ca3f...ababf8` | ✅ Audited |

### ⚠️ Verified + Unaudited (102)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a6092...587ae0`; ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0391...69d9d5` | ⚠️ Unaudited |
| AssetAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2adf03...04b98d`; ethereum `0x65078c...1db0dd`; ethereum `0x86ac8e...4f9be0`; ethereum `0xa100a9...92fe64`; ethereum `0xb82749...42cc93` | ⚠️ Unaudited |
| AssetRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x4097bc...7110e8`; ethereum `0x6427cc...c2a133`; ethereum `0x6f117e...f4a91f`; ethereum `0xa8c373...26bc29`; ethereum `0xb5d23b...ddc2f3`; ethereum `0xd08129...9f3288`; ethereum `0xf3519a...3d5be7` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0c0d01...8eab1e`; ethereum `0x7c0477...460f4f` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe31901...7a77eb` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 2 deployments: mantle `0x7053ba...585b69`; mantle `0x8917d4...13b127` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 2 | plasma | n/a | 2 deployments: plasma `0x5d72a9...30a948`; plasma `0x751940...caf43a` | ⚠️ Unaudited |
| BYUSDOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x688e72...d6ac82` | ⚠️ Unaudited |
| CollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x551fb0...4a552e` | ⚠️ Unaudited |
| ComposableStablePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xde04c4...6fa8c8` | ⚠️ Unaudited |
| CreditEnforcer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252906 | `0x04716d...d07720` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438630...95dc99` | ⚠️ Unaudited |
| DAM | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252909 | `0x0fedba...e5a43b` | ⚠️ Unaudited |
| DamOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: hyperliquid `0xc6eab5...0e4ff4`; base `0x713567...a75a72` | ⚠️ Unaudited |
| DamOftAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a341...ea237a` | ⚠️ Unaudited |
| DolomiteMargin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003ca2...c2b97d` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x66be42...aed21d`; plasma `0xe818ad...14dec4` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x6dfc8a...4f60fb`; ethereum `0x797dd8...7d48a9`; ethereum `0x9bd52f...8c2cbb`; ethereum `0xab2726...bf2f30`; ethereum `0xaf5372...8f9bb2`; ethereum `0xba98fc...4783b5`; ethereum `0xe0a80d...c42bce` | ⚠️ Unaudited |
| fToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: plasma `0x1dd4b1...2ed27b`; plasma `0xd8f824...f2d570`; arbitrum `0x1a996c...db6096` | ⚠️ Unaudited |
| GhoBucketSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x2ce400...d3831b`; plasma `0x2ce400...d3831b` | ⚠️ Unaudited |
| GhoCcipSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x20fd5f...efa6b6`; plasma `0x20fd5f...efa6b6` | ⚠️ Unaudited |
| GhoOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x360d8a...bf4d12`; plasma `0xb0e1c7...daf1d1` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16f...ae6c2f` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x1fb6c1...88d4b5`; berachain `0x7fd165...7400e6` | ⚠️ Unaudited |
| LPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x17bbc9...b358f7`; ethereum `0x5daaee...f99d31`; optimism `0x8d66ff...349ca8`; arbitrum `0x6ea313...fd2225`; arbitrum `0x8d66ff...349ca8` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371c...e4999c` | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffed5...8c84ee` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 6 deployments: ethereum `0x777791...c67777`; optimism `0xc30ce6...1c5c59`; base `0xbeefe9...cb83b2`; arbitrum `0x5c0c30...1563ba`; arbitrum `0x7e97fa...201e65`; berachain `0x30bba9...545bc1` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad391d...7c77d2` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb770...5cf69b` | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349c2d...fc4e52` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x10e235...1080fb`; ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249...130e5e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b77b...33d6f3` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55b40c...2349c6`; ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3...241852` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a56c...e913a1` | ⚠️ Unaudited |
| MockUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x331ae8...ec5954`; ethereum `0xe7b9d1...820cef` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252923 | `0x841db2...0cfcbc` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252926 | `0x99a95a...632b10` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99e890...1549bc` | ⚠️ Unaudited |
| MorphoUnderlyingAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252927 | `0xb595ba...8870a2` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf...d060b9` | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x12570b...acfc68` | ⚠️ Unaudited |
| MultiSign | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x1073d5...6ede78`; ethereum `0x2147bd...bbc5fd`; ethereum `0x2591c2...461d8c`; ethereum `0x315bab...0b6f25`; ethereum `0x3ecbf8...a3d566`; ethereum `0x46f057...4eaa53`; ethereum `0x492184...58ea19`; ethereum `0x5c1e4c...18608b`; ethereum `0x66fc2d...ac6a0e`; ethereum `0x6e36e3...9fe3e6`; ethereum `0x7272b2...9f2cec`; ethereum `0x7f9922...c6de44`; ethereum `0x83f7f1...541fa9`; ethereum `0x860a80...ff898e`; ethereum `0x863c87...55ce6c`; ethereum `0x866eb2...96918c`; ethereum `0x97e9d0...428591`; ethereum `0x9ab2ce...6f8165`; ethereum `0x9b8a83...847a34`; ethereum `0xa2eea1...d9c367`; ethereum `0xb60fa2...6aca2a`; ethereum `0xb723d5...d155ea`; ethereum `0xd4707b...0385d1`; ethereum `0xd48ede...fedd68`; ethereum `0xd9334d...272761`; ethereum `0xe23090...9df5ae`; ethereum `0xf1dcb5...30056f`; ethereum `0xf26b8b...72a71f`; ethereum `0xf7db20...945b3a`; ethereum `0xfbca8b...600bb6`; ethereum `0xff72e1...209ecb` | ⚠️ Unaudited |
| OpportunityOVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0aa752...e96036`; ethereum `0x239b05...1d1cd5`; ethereum `0x25df14...cf7017`; ethereum `0x4c921b...b0a140`; ethereum `0x657a24...e7d766`; ethereum `0xa3958f...59b00d`; ethereum `0xc2b578...88cafc`; ethereum `0xe9a655...d72727`; ethereum `0xf3dea8...e12c0e`; ethereum `0xf993d2...6fd87b` | ⚠️ Unaudited |
| PegStabilityModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252914 | `0x480901...96d75d` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aecdf...6f4802` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1dd188...18dc18` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2adfb8...efa2a2` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x440040...e3498e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x553f9c...8ee089` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5eff78...2e7887` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66b857...8d9005` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x690f30...fb7687` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x74e0a5...130888` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84568b...24b6b9` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x849f28...691fc4` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e3fd8...076f4e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac6f22...d340be` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87fce...a12470` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2ad97...fe48ba` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf526ed...3c0e9d` | ⚠️ Unaudited |
| PendlePrincipalToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1135b2...b6af9d`; ethereum `0x62c6e8...4038b7`; ethereum `0x8a47b4...a97eaa`; ethereum `0xb7de5d...0d9308`; ethereum `0xbc6736...fae10a`; ethereum `0xe00bd3...947b81` | ⚠️ Unaudited |
| PlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc197ad...c7043f` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252922 | `0x813b08...74232e` | ⚠️ Unaudited |
| PSM | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252931 | `0xeae91b...a549b9` | ⚠️ Unaudited |
| PYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6c3ea9...23a0e8` | ⚠️ Unaudited |
| Rebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0ccb9a...5dc829`; ethereum `0x95326f...11cfe7`; ethereum `0xf3fce6...5871c3` | ⚠️ Unaudited |
| RollingBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x236987...38f096`; ethereum `0x6ba949...43c19f`; ethereum `0xfd3689...45da4f` | ⚠️ Unaudited |
| RsEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52ba0...baab2a` | ⚠️ Unaudited |
| RusdMintBridge | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252920 | `0x6360f4...3154b3` | ⚠️ Unaudited |
| RusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x09d421...8f2b34`; base `0x09d421...8f2b34` | ⚠️ Unaudited |
| RusdOft | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252937 | `0x866d66...f35e78` | ⚠️ Unaudited |
| RusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252932 | `0xf0e9f6...f4b4da` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252921 | `0x738d11...e23a31` | ⚠️ Unaudited |
| Savingcoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252930 | `0xd3fd63...be3094` | ⚠️ Unaudited |
| SavingModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252918 | `0x547561...e947d7` | ⚠️ Unaudited |
| SrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252912 | `0x316cd3...f64514` | ⚠️ Unaudited |
| Stablecoin | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252907 | `0x09d421...8f2b34` | ⚠️ Unaudited |
| StablecoinUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfd748...f7f2ec` | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8292bb...6317ed` | ⚠️ Unaudited |
| StakedCap | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x88887b...1d8888` | ⚠️ Unaudited |
| StakeToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1a88df...c1885d` | ⚠️ Unaudited |
| StakingWithUnbonding | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252915 | `0x4be8be...2f5876` | ⚠️ Unaudited |
| SyrupAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xad298d...ac8493`; ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cb...198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37...5bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4...9ccdf4` | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438359...47df0a` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652...750ebf` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3322c...2288f2` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x050ce3...ad56f0`; base `0xbeef0e...6873c9`; arbitrum `0xbeeff1...1da518`; arbitrum `0xbeeff7...f2492f`; arbitrum `0xbeefff...31a894` | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c3f5f...1fcb69`; ethereum `0xb79301...534bcc` | ⚠️ Unaudited |
| WsrusdOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: bsc `0x480901...96d75d`; hyperliquid `0x04716d...d07720` | ⚠️ Unaudited |
| WsrusdOft | unknown | project_anchor | own_supporting | 0 | base | unit-252935 | `0x62344b...6900b1` | ⚠️ Unaudited |
| WsrusdOftAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-252928 | `0xbb431a...91258a` | ⚠️ Unaudited |
| WstEthAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74f99...dbb9d7` | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea8d...7d8606` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d09a1...f45b04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7e43...951cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f65f3...cb562d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f59f...f24c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128d86...f6ccf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252910 | `0x12c69d...771c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e31c...bec0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189f2b...ff00ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262353...72ea3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b930c...bdcfe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252913 | `0x31eae6...b04a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ade4d...a8815a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6f8c...5afc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b6c3...54cf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aab19...08a12f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252916 | `0x4e6840...6bc4d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252917 | `0x5130fb...d70b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d699f...275dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62344b...6900b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c19e2...f2c8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8...f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad369...b63769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a14ea...e816d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f1964...8c6f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996173...505b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8259...4eb554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb2c3...69ef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e6db0...072bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd2f4...cddfca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98b4a...c22a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0714...49cb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22ad8...74c42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb385d2...b21b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f89c...b699c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95289...9934ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a261...fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ed1d...595c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf...2c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556...7202fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71d9b...dad093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf556e4...880024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c9f5...d621d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5...e69b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac98f...8b1674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfee08d...c317b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb0e1c7...daf1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb77e87...b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde6539...487d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfc421a...799e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x480901...96d75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x360d8a...bf4d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb77e87...b4bbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xde6539...487d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc421a...799e73` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.halborn.com/audits/fortunafi/reservoir-updated) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.google.com/viewerng/viewer](https://docs.google.com/viewerng/viewer?url=https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%252FuV2CWL0AZicnZxx3SgUP%252Fuploads%252FDMjHMORByqrQnWTCL5Rs%252FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt%3Dmedia%26token%3Dbb69023c-f54b-45c7-a44b-5e151002777e) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Rebalancer.pdf](https://3705872066-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2F3I0OR2H1J7tydJOHsXKk%2FRebalancer.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FDMjHMORByqrQnWTCL5Rs%2FFortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf?alt=media) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view](https://drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view?usp=drive_link) | unknown | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FLNmg84HNDNlNKagf9jLo%2FReservoir%20Protocol%20-%20lz-bridge%20_%20SSC.pdf?alt=media) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuV2CWL0AZicnZxx3SgUP%2Fuploads%2FM3Ws9qAexzuISpwSTgFS%2FReservoir%20Protocol%20-%20srusd%20%2B%20Rebalance%20_%20SSC.pdf?alt=media) | unknown | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18059] DL audit link — no match: The provided text is a website navigation/marketing page, not an audit report. No contracts, scope, or audit date are present.
- [18060] docs.google.com/viewerng/viewer — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is the end of the engagement period (May 31, 2024).
- [18061] Rebalancer.pdf — no match: Only one contract in scope: Rebalance (src/Rebalance.sol). Audit date from engagement date: August 6th, 2025.
- [18062] spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 10 contracts with file paths. Audit date is end of engagement period (May 31, 2024).
- [18063] drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view — matched: Scope section lists four Solidity files. Audit date is the end date of engagement: September 26, 2024.
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf — no match: Only one contract name found in findings; scope section not explicitly provided.
- [18065] spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf — matched: Four contracts in scope: Migration, Savingcoin, Rebalance, Dam. Audit date is end of engagement (April 2, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.google.com/viewerng/viewer | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea6...4a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| docs.google.com/viewerng/viewer | TermCalculator | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | AccountManager | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | SavingModule | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Savingcoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Stablecoin | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | Term | unmatched — not counted | — | listed in scope | no |
| docs.google.com/viewerng/viewer | TermIssuer | unmatched — not counted | — | listed in scope | no |
| Rebalancer.pdf | Rebalance | unmatched — not counted | — | listed in scope section: Items in scope: src/Rebalance.sol | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AssetAdapter | own contract | AssetAdapter (selected) `0xc5dea6...4a73c4` — deployed 2025-11-19 19:04:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermCalculator | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AccountManager | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CreditEnforcer | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SavingModule | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Stablecoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Term | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/DMjHMORByqrQnWTCL5Rs/FortunaFi_Reservoir_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TermIssuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | VaultSharesOracleV2 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | MorphoRUSDAdapter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | LiquidTerm | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JaIcwJRn169PGhnF_0nRd6E6bYvxmlNv/view | DAM | own contract | DamOft (selected) `0xf9ca3f...ababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf | rusdmintbridge | unmatched — not counted | — | mentioned in finding title 'Lack of msg.value validation in rusdmintbridge' | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Migration | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Savingcoin | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Rebalance | unmatched — not counted | — | listed in scope | no |
| spaces/uV2CWL0AZicnZxx3SgUP/uploads/M3Ws9qAexzuISpwSTgFS/Reservoir Protocol - srusd + Rebalance _ SSC.pdf | Dam | own contract | DamOft (selected) `0xf9ca3f...ababf8` — deployed 2025-08-06 22:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x841db2...0cfcbc` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99a95a...632b10` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb595ba...8870a2` | MorphoUnderlyingAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x866d66...f35e78` | RusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0e9f6...f4b4da` | RusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x316cd3...f64514` | SrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x62344b...6900b1` | WsrusdOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb431a...91258a` | WsrusdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 85 |
| upstream | 19 |
| standard_library | 0 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [18059] DL audit link
- [18061] Rebalancer.pdf
- [18064] spaces/uV2CWL0AZicnZxx3SgUP/uploads/LNmg84HNDNlNKagf9jLo/Reservoir Protocol - lz-bridge _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
