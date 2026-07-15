# Agentic Audit Brief: CREAM Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 69 unique implementations (202 raw deployments)
- Coverage basis: 0/44 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,253,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CREAM Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 212 contract row(s) across arbitrum, bsc, ethereum, polygon. Structural roles: 153 unclassified, 57 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 212
- Structural roles: unclassified (153), core (57), supporting (2)
- Contract kinds: contract (212)
- Detected standards: erc20 (51), ownable (5), erc1967proxy (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 2

## Fork Analysis

1 of 157 contracts are derived from known codebases. 156 contracts have no detected origin.

### Forked Contracts

**Comptroller** (`0x49a08f...988fb4`, chain 56)
Origin: shoebill-finance (`0x81a679...197761`)
Containment: 86.7% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- _setCompSpeeds(address[],uint256[])
- getCompAddress()

Removals (removed from original):
- _setRewardDistributor(address)
- isDeprecated(CToken)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...7705fa`, chain 1)
- UnnamedContract (`0x69f2b8...d9423f`, chain 1)
- UnnamedContract (`0x84858f...07900c`, chain 1)
- UnnamedContract (`0xa5462b...c11deb`, chain 1)
- UnnamedContract (`0xa8682c...0b73d5`, chain 1)
- UnnamedContract (`0xd400e2...587659`, chain 1)
- UnnamedContract (`0x1a014f...86ea4a`, chain 56)
- UnnamedContract (`0x139dd8...040a42`, chain 137)
- UnnamedContract (`0x139dd8...040a42`, chain 42161)
- AdminUpgradeabilityProxy (`0xc581b7...ede491`, chain 1)
- CErc20Delegator (`0x011a01...230afa`, chain 1)
- CErc20Delegator (`0x01da76...015c2d`, chain 1)
- CErc20Delegator (`0x054b7e...4096ed`, chain 1)
- CErc20Delegator (`0x081fe6...190a21`, chain 1)
- CErc20Delegator (`0x10a3da...2923a8`, chain 1)
- CErc20Delegator (`0x10fdbd...e649db`, chain 1)
- CErc20Delegator (`0x1241b1...cff999`, chain 1)
- CErc20Delegator (`0x17107f...ebd4be`, chain 1)
- CErc20Delegator (`0x197070...80d4fc`, chain 1)
- CErc20Delegator (`0x19d166...1a8e46`, chain 1)
- CErc20Delegator (`0x1a1223...c2bbd0`, chain 1)
- CErc20Delegator (`0x1d0986...7c7e35`, chain 1)
- CErc20Delegator (`0x1f9b47...2cb284`, chain 1)
- CErc20Delegator (`0x1ff8cd...bc998e`, chain 1)
- CErc20Delegator (`0x21011b...8f49fc`, chain 1)
- CErc20Delegator (`0x228619...dafbb2`, chain 1)
- CErc20Delegator (`0x22b243...2b2e9e`, chain 1)
- CErc20Delegator (`0x250fb3...b7f74a`, chain 1)
- CErc20Delegator (`0x255559...e82b55`, chain 1)
- CErc20Delegator (`0x28526b...c5402e`, chain 1)
- CErc20Delegator (`0x299e25...ea3a3b`, chain 1)
- CErc20Delegator (`0x2a537f...29366d`, chain 1)
- CErc20Delegator (`0x2a867f...07ea6d`, chain 1)
- CErc20Delegator (`0x2db6c8...5066d6`, chain 1)
- CErc20Delegator (`0x3225e3...5e31bc`, chain 1)
- CErc20Delegator (`0x338286...f5d206`, chain 1)
- CErc20Delegator (`0x362338...d31f58`, chain 1)
- CErc20Delegator (`0x38f27c...0be4ad`, chain 1)
- CErc20Delegator (`0x3c6c55...36d296`, chain 1)
- CErc20Delegator (`0x4112a7...73387f`, chain 1)
- CErc20Delegator (`0x4202d9...dd81d4`, chain 1)
- CErc20Delegator (`0x44fbeb...53b322`, chain 1)
- CErc20Delegator (`0x45406b...b107f6`, chain 1)
- CErc20Delegator (`0x4baa77...579dd4`, chain 1)
- CErc20Delegator (`0x4ee15f...8954c6`, chain 1)
- CErc20Delegator (`0x4fe11b...daad85`, chain 1)
- CErc20Delegator (`0x51f48b...0c07af`, chain 1)
- CErc20Delegator (`0x523eff...5e8e9e`, chain 1)
- CErc20Delegator (`0x58da9c...f3d2ef`, chain 1)
- CErc20Delegator (`0x590892...e03cb3`, chain 1)
- CErc20Delegator (`0x5c291b...b6aee9`, chain 1)
- CErc20Delegator (`0x5ecad8...1eea92`, chain 1)
- CErc20Delegator (`0x658839...f76a90`, chain 1)
- CErc20Delegator (`0x697256...6a5fd9`, chain 1)
- CErc20Delegator (`0x6ba0c6...38d375`, chain 1)
- CErc20Delegator (`0x6d1b9e...ff1c20`, chain 1)
- CErc20Delegator (`0x71cefc...441847`, chain 1)
- CErc20Delegator (`0x73f6cb...0e81fc`, chain 1)
- CErc20Delegator (`0x797aab...3d2157`, chain 1)
- CErc20Delegator (`0x7aaa32...0f1fea`, chain 1)
- CErc20Delegator (`0x7c3297...203112`, chain 1)
- CErc20Delegator (`0x7ea9c6...907db3`, chain 1)
- CErc20Delegator (`0x81e346...ff13c6`, chain 1)
- CErc20Delegator (`0x8379ba...18ae41`, chain 1)
- CErc20Delegator (`0x857599...793d9b`, chain 1)
- CErc20Delegator (`0x892b14...cf6ac0`, chain 1)
- CErc20Delegator (`0x89e429...3d5828`, chain 1)
- CErc20Delegator (`0x8b3ff1...3685a5`, chain 1)
- CErc20Delegator (`0x8b86e0...33d0d6`, chain 1)
- CErc20Delegator (`0x8b950f...bf3096`, chain 1)
- CErc20Delegator (`0x8c3b7a...4e6f91`, chain 1)
- CErc20Delegator (`0x903560...89fc5d`, chain 1)
- CErc20Delegator (`0x92b767...7a1d9f`, chain 1)
- CErc20Delegator (`0x98e329...94b77c`, chain 1)
- CErc20Delegator (`0x9baf8a...d0bb87`, chain 1)
- CErc20Delegator (`0xab1058...abf8f7`, chain 1)
- CErc20Delegator (`0xb092b4...26a4d5`, chain 1)
- CErc20Delegator (`0xc25eae...732e14`, chain 1)
- CErc20Delegator (`0xc36080...b82b17`, chain 1)
- CErc20Delegator (`0xc68251...ac651b`, chain 1)
- CErc20Delegator (`0xc7fd8d...c77480`, chain 1)
- CErc20Delegator (`0xcbae0a...dc6b76`, chain 1)
- CErc20Delegator (`0xcd22c4...faafa0`, chain 1)
- CErc20Delegator (`0xce4fe9...9d2eb3`, chain 1)
- CErc20Delegator (`0xd5103a...1b2a8b`, chain 1)
- CErc20Delegator (`0xd53294...873abf`, chain 1)
- CErc20Delegator (`0xd692ac...e85d2c`, chain 1)
- CErc20Delegator (`0xd73944...66314b`, chain 1)
- CErc20Delegator (`0xdbb5e3...78fecf`, chain 1)
- CErc20Delegator (`0xdfff11...990393`, chain 1)
- CErc20Delegator (`0xe585c7...996e73`, chain 1)
- CErc20Delegator (`0xe6c312...373963`, chain 1)
- CErc20Delegator (`0xe89a6d...a363c7`, chain 1)
- CErc20Delegator (`0xef58b2...9bc025`, chain 1)
- CErc20Delegator (`0xeff039...77532c`, chain 1)
- CErc20Delegator (`0xf04ce2...97fb4e`, chain 1)
- CErc20Delegator (`0xf55bbe...dbe924`, chain 1)
- CErc20Delegator (`0xf8445c...016e20`, chain 1)
- CErc20Delegator (`0xfd609a...a924e2`, chain 1)
- CErc20Delegator (`0x04c61e...ee69fb`, chain 56)
- CErc20Delegator (`0x0e9d90...a09baa`, chain 56)
- CErc20Delegator (`0x11883c...8ce069`, chain 56)
- CErc20Delegator (`0x19b08f...477a41`, chain 56)
- CErc20Delegator (`0x19ee64...2ec907`, chain 56)
- CErc20Delegator (`0x1af8c1...04fd16`, chain 56)
- CErc20Delegator (`0x264bc4...87fcbc`, chain 56)
- CErc20Delegator (`0x26a490...6a7110`, chain 56)
- CErc20Delegator (`0x2bc4eb...289b7c`, chain 56)
- CErc20Delegator (`0x2d3bfa...98aa06`, chain 56)
- CErc20Delegator (`0x36cdf5...c065d9`, chain 56)
- CErc20Delegator (`0x394293...dd9b22`, chain 56)
- CErc20Delegator (`0x3b0be4...469d68`, chain 56)
- CErc20Delegator (`0x426d6d...145b62`, chain 56)
- CErc20Delegator (`0x4cb7f1...74fec4`, chain 56)
- CErc20Delegator (`0x4ebdef...28a48f`, chain 56)
- CErc20Delegator (`0x53d88d...a8515f`, chain 56)
- CErc20Delegator (`0x5ea2dd...9b2a0e`, chain 56)
- CErc20Delegator (`0x5fa61a...0440b7`, chain 56)
- CErc20Delegator (`0x738f38...92c43b`, chain 56)
- CErc20Delegator (`0x7f746a...6de418`, chain 56)
- CErc20Delegator (`0x7fd568...ab1c5f`, chain 56)
- CErc20Delegator (`0x81c15d...25fc55`, chain 56)
- CErc20Delegator (`0x84902b...043beb`, chain 56)
- CErc20Delegator (`0x8cc7e2...5e09b2`, chain 56)
- CErc20Delegator (`0x9095e8...7a1b22`, chain 56)
- CErc20Delegator (`0x98b787...f872d0`, chain 56)
- CErc20Delegator (`0x9972dd...f7ca85`, chain 56)
- CErc20Delegator (`0x9b53e7...7bcee5`, chain 56)
- CErc20Delegator (`0xa8d75a...019c96`, chain 56)
- CErc20Delegator (`0xaa46e2...66e20c`, chain 56)
- CErc20Delegator (`0xb31f5d...3e2bcd`, chain 56)
- CErc20Delegator (`0xbe7e1d...0fce6b`, chain 56)
- CErc20Delegator (`0xbf9b95...e1ff82`, chain 56)
- CErc20Delegator (`0xc17c8c...51488c`, chain 56)
- CErc20Delegator (`0xcb87ce...6f90b1`, chain 56)
- CErc20Delegator (`0xd83c88...f5f727`, chain 56)
- CErc20Delegator (`0xdcf60e...86ed1c`, chain 56)
- CErc20Delegator (`0xe39b9e...8b14e0`, chain 56)
- CErc20Delegator (`0xe69271...52de8e`, chain 56)
- CErc20Delegator (`0xea466c...8fb0a5`, chain 56)
- CErc20Delegator (`0xef6d45...4975de`, chain 56)
- CErc20Delegator (`0xf77df3...bcf0b1`, chain 56)
- CEther (`0xd06527...2860ee`, chain 1)
- CEther (`0x1ffe17...90ff3a`, chain 56)
- ClonableBeaconProxy (`0xf4d48c...4d7234`, chain 42161)
- Comp (`0x2ba592...7cb200`, chain 1)
- Comp (`0xd4cb32...f3e888`, chain 56)
- CreamEth2 (`0x49d72e...9fdb64`, chain 1)
- CreamETH2 (`0xcbc106...ab89fd`, chain 1)
- CreamLock (`0x780f75...7a8b45`, chain 1)
- CreamLock (`0xbdc337...ce7595`, chain 1)
- CreamLock (`0xd5586c...e20a6c`, chain 1)
- CreamLock (`0xe618c2...2f5945`, chain 1)
- PriceOracleV1 (`0x20ca53...114c24`, chain 42161)
- StakingRewardsLock (`0x268900...c227da`, chain 1)
- StakingRewardsLock (`0x9d2850...6898cb`, chain 1)

## Contract Surface Quality

- Indexed contracts: 212; live-surface contracts included: 212 (177 live, 35 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 53/164 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/44 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 158
- Deployed-live implementations: 53 of 69 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 69
- Raw deployments: 202
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCakeLPDelegate | unknown | project_anchor | own_supporting | 10 | bsc | unit-383576 (10 proxies) | 10 deployments: bsc `0x04c61e...ee69fb`; bsc `0x19b08f...477a41`; bsc `0x26a490...6a7110`; bsc `0x36cdf5...c065d9`; bsc `0x5ea2dd...9b2a0e`; bsc `0x5fa61a...0440b7`; bsc `0x7fd568...ab1c5f`; bsc `0x98b787...f872d0`; bsc `0x9972dd...f7ca85`; bsc `0xe39b9e...8b14e0` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383534 | `0x22b243...2b2e9e` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383581 | `0x15cc70...93bc67` | ⚠️ Unaudited |
| CCollateralCapErc20CheckRepayDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383541 | `0x2db6c8...5066d6` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 63 | ethereum | unit-383520 (63 proxies) | 63 deployments: ethereum `0x054b7e...4096ed`; ethereum `0x081fe6...190a21`; ethereum `0x10a3da...2923a8`; ethereum `0x10fdbd...e649db`; ethereum `0x17107f...ebd4be`; ethereum `0x197070...80d4fc`; ethereum `0x19d166...1a8e46`; ethereum `0x1d0986...7c7e35`; ethereum `0x1ff8cd...bc998e`; ethereum `0x21011b...8f49fc`; ethereum `0x250fb3...b7f74a`; ethereum `0x255559...e82b55`; ethereum `0x28526b...c5402e`; ethereum `0x299e25...ea3a3b`; ethereum `0x2a537f...29366d`; ethereum `0x2a867f...07ea6d`; ethereum `0x3225e3...5e31bc`; ethereum `0x338286...f5d206`; ethereum `0x362338...d31f58`; ethereum `0x3c6c55...36d296`; ethereum `0x4112a7...73387f`; ethereum `0x44fbeb...53b322`; ethereum `0x51f48b...0c07af`; ethereum `0x523eff...5e8e9e`; ethereum `0x58da9c...f3d2ef`; ethereum `0x590892...e03cb3`; ethereum `0x658839...f76a90`; ethereum `0x697256...6a5fd9`; ethereum `0x71cefc...441847`; ethereum `0x797aab...3d2157`; ethereum `0x7aaa32...0f1fea`; ethereum `0x7c3297...203112`; ethereum `0x7ea9c6...907db3`; ethereum `0x81e346...ff13c6`; ethereum `0x8379ba...18ae41`; ethereum `0x857599...793d9b`; ethereum `0x89e429...3d5828`; ethereum `0x8b3ff1...3685a5`; ethereum `0x8c3b7a...4e6f91`; ethereum `0x903560...89fc5d`; ethereum `0x92b767...7a1d9f`; ethereum `0x98e329...94b77c`; ethereum `0xab1058...abf8f7`; ethereum `0xb092b4...26a4d5`; ethereum `0xc25eae...732e14`; ethereum `0xc36080...b82b17`; ethereum `0xc68251...ac651b`; ethereum `0xc7fd8d...c77480`; ethereum `0xcbae0a...dc6b76`; ethereum `0xce4fe9...9d2eb3`; ethereum `0xd5103a...1b2a8b`; ethereum `0xd692ac...e85d2c`; ethereum `0xd73944...66314b`; ethereum `0xdbb5e3...78fecf`; ethereum `0xdfff11...990393`; ethereum `0xe585c7...996e73`; ethereum `0xe89a6d...a363c7`; ethereum `0xef58b2...9bc025`; ethereum `0xeff039...77532c`; ethereum `0xf04ce2...97fb4e`; ethereum `0xf55bbe...dbe924`; ethereum `0xf8445c...016e20`; ethereum `0xfd609a...a924e2` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 3 | ethereum | unit-383554 (3 proxies) | 3 deployments: ethereum `0x1241b1...cff999`; ethereum `0x892b14...cf6ac0`; ethereum `0x8b950f...bf3096` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383536 | `0x1a1223...c2bbd0` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | project_anchor | own_supporting | 32 | bsc | unit-383586 (32 proxies) | 32 deployments: bsc `0x0e9d90...a09baa`; bsc `0x11883c...8ce069`; bsc `0x19ee64...2ec907`; bsc `0x1af8c1...04fd16`; bsc `0x264bc4...87fcbc`; bsc `0x2bc4eb...289b7c`; bsc `0x2d3bfa...98aa06`; bsc `0x394293...dd9b22`; bsc `0x3b0be4...469d68`; bsc `0x4cb7f1...74fec4`; bsc `0x4ebdef...28a48f`; bsc `0x53d88d...a8515f`; bsc `0x738f38...92c43b`; bsc `0x7f746a...6de418`; bsc `0x81c15d...25fc55`; bsc `0x84902b...043beb`; bsc `0x8cc7e2...5e09b2`; bsc `0x9095e8...7a1b22`; bsc `0x9b53e7...7bcee5`; bsc `0xa8d75a...019c96`; bsc `0xaa46e2...66e20c`; bsc `0xb31f5d...3e2bcd`; bsc `0xbe7e1d...0fce6b`; bsc `0xbf9b95...e1ff82`; bsc `0xc17c8c...51488c`; bsc `0xcb87ce...6f90b1`; bsc `0xd83c88...f5f727`; bsc `0xdcf60e...86ed1c`; bsc `0xe69271...52de8e`; bsc `0xea466c...8fb0a5`; bsc `0xef6d45...4975de`; bsc `0xf77df3...bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383574 | `0x426d6d...145b62` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 15 | polygon | unit-383558 (15 proxies) | 15 deployments: polygon `0x20d5d3...d6ad0a`; polygon `0x2ee806...5cd7cc`; polygon `0x448683...46a271`; polygon `0x468a7b...9af5ab`; polygon `0x4ecedd...d6c00e`; polygon `0x5dc3a3...17072a`; polygon `0x73cf8c...ab6cbd`; polygon `0x7ea717...75d381`; polygon `0x7ef18d...27f716`; polygon `0x98182b...d0eb7a`; polygon `0x9b21eb...8cb971`; polygon `0xd4409b...9b9ffa`; polygon `0xe82225...f07e78`; polygon `0xf976c9...bc5c8a`; polygon `0xfbbfa5...bd328d` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-383569 (2 proxies) | 2 deployments: arbitrum `0x5eb35d...cae9ce`; arbitrum `0xd5794e...ffbd86` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 7 | ethereum | unit-383547 (7 proxies) | 7 deployments: ethereum `0x011a01...230afa`; ethereum `0x01da76...015c2d`; ethereum `0x228619...dafbb2`; ethereum `0x4ee15f...8954c6`; ethereum `0x4fe11b...daad85`; ethereum `0xcd22c4...faafa0`; ethereum `0xe6c312...373963` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 4 | ethereum | unit-383515 (4 proxies) | 4 deployments: ethereum `0x1f9b47...2cb284`; ethereum `0x4202d9...dd81d4`; ethereum `0x45406b...b107f6`; ethereum `0x6d1b9e...ff1c20` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383518 | `0x4baa77...579dd4` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383552 | `0x8b86e0...33d0d6` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383539 | `0x9baf8a...d0bb87` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383286 | `0xd06527...2860ee` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-383338 | `0x1ffe17...90ff3a` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383243 | `0x2ba592...7cb200` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | bsc | unit-383482 | `0xd4cb32...f3e888` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383532 | `0x3d5bc3...ae9258` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | bsc | unit-383380 | `0x49a08f...988fb4` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | bsc | unit-383583 | `0x589de0...4cc0ba` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | polygon | unit-383556 | `0x20ca53...114c24` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383571 | `0xbadac5...9813ee` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383304 | `0xcc3e89...53f6fd` | ⚠️ Unaudited |
| CreamEth2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383250 | `0x49d72e...9fdb64` | ⚠️ Unaudited |
| CreamETH2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383276 | `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383259 | `0x780f75...7a8b45` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383274 | `0xbdc337...ce7595` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383290 | `0xd5586c...e20a6c` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383294 | `0xe618c2...2f5945` | ⚠️ Unaudited |
| CSLPDelegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-383543 (6 proxies) | 6 deployments: ethereum `0x38f27c...0be4ad`; ethereum `0x5c291b...b6aee9`; ethereum `0x5ecad8...1eea92`; ethereum `0x6ba0c6...38d375`; ethereum `0x73f6cb...0e81fc`; ethereum `0xd53294...873abf` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-383563 | `0x3fae5e...336ee8` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383567 | `0x544109...1a0c97` | ⚠️ Unaudited |
| FlashloanLender | unknown | project_anchor | own_supporting | 0 | bsc | unit-383459 | `0xb71328...414b5a` | ⚠️ Unaudited |
| PriceOracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-383391 | `0x541876...d14847` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-383451 | `0xa82958...819477` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383306 | `0xe82225...f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-383302 | `0x20ca53...114c24` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383230 | `0x0b471a...85e150` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383232 | `0x1676fc...a5981c` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383234 | `0x1e5fe7...1c3349` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383236 | `0x224061...037462` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383239 | `0x268900...c227da` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383241 | `0x2ab765...a04d61` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383245 | `0x3ba3c0...a2129e` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383248 | `0x43a8ec...9bceff` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383252 | `0x65bc20...043b36` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383256 | `0x71a808...9922d0` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383263 | `0x9d2850...6898cb` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383269 | `0xae76e0...061cea` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383271 | `0xb8c3a2...c1bfe1` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383278 | `0xcc5f8c...91f863` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383280 | `0xccd5cb...5c4da0` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383282 | `0xcf679b...84c6e1` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383284 | `0xd032bf...ea541a` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-383292 | `0xe53941...274480` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-383565 | `0xf4d48c...4d7234` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-383550 | `0xc581b7...ede491` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383228 | `0x000000...7705fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383254 | `0x69f2b8...d9423f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383261 | `0x84858f...07900c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383265 | `0xa5462b...c11deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383267 | `0xa8682c...0b73d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383288 | `0xd400e2...587659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383329 | `0x1a014f...86ea4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383297 | `0x139dd8...040a42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383300 | `0x139dd8...040a42` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [CREAMSummary.pdf](https://3057495129-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MKJWcUfnKdJ1BjWKoMM-3555916521%2Fuploads%2Fgit-blob-1dd4323e898465d6750e678f0000f254227453b9%2FCREAMSummary.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2998] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.
- [2999] trailofbits-CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits.
- [26660] CREAMSummary.pdf — no match: The report does not list specific contract names in scope; it only mentions the repository and commits. No contract names are explicitly identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x04c61e...ee69fb` | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22b243...2b2e9e` | CCapableErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x15cc70...93bc67` | CCapableWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2db6c8...5066d6` | CCollateralCapErc20CheckRepayDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x054b7e...4096ed` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1241b1...cff999` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a1223...c2bbd0` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e9d90...a09baa` | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x426d6d...145b62` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20d5d3...d6ad0a` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5eb35d...cae9ce` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011a01...230afa` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f9b47...2cb284` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4baa77...579dd4` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b86e0...33d0d6` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9baf8a...d0bb87` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd06527...2860ee` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1ffe17...90ff3a` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ba592...7cb200` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd4cb32...f3e888` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d5bc3...ae9258` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x49a08f...988fb4` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x589de0...4cc0ba` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20ca53...114c24` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbadac5...9813ee` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcc3e89...53f6fd` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49d72e...9fdb64` | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbc106...ab89fd` | CreamETH2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x780f75...7a8b45` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdc337...ce7595` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5586c...e20a6c` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe618c2...2f5945` | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x38f27c...0be4ad` | CSLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fae5e...336ee8` | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x544109...1a0c97` | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb71328...414b5a` | FlashloanLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x541876...d14847` | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa82958...819477` | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe82225...f07e78` | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20ca53...114c24` | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x268900...c227da` | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d2850...6898cb` | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf4d48c...4d7234` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc581b7...ede491` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=3
- Match method counts: n/a

Zero-match audit list:

- [2998] CREAMSummary.pdf
- [2999] trailofbits-CREAMSummary.pdf
- [26660] CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
