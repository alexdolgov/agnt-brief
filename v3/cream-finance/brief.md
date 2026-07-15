# Agentic Audit Brief: CREAM Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon
- Contract surface: 167 unique implementations (541 raw deployments)
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

- Logic-topography rows: 212; live-surface rows included: 212 (177 live, 35 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 42/164 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/44 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 215
- Confirmed-live implementations: 53 of 167 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/131
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 167
- Raw deployments: 541
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

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20CREAM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f7347...120326` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0d3303...9b619f`; ethereum `0x1232b1...8cbda6`; ethereum `0x136d6f...a6ddec`; ethereum `0x209a69...5c3c53`; ethereum `0xf8062e...ab4e54` | ⚠️ Unaudited |
| BNBReserveReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16a4e...eb1d4d` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae3...464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e...cf18ea` | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | project_anchor | own_supporting | 10 | bsc | unit-383576 (10 proxies) | 10 deployments: bsc `0x04c61e...ee69fb`; bsc `0x19b08f...477a41`; bsc `0x26a490...6a7110`; bsc `0x36cdf5...c065d9`; bsc `0x5ea2dd...9b2a0e`; bsc `0x5fa61a...0440b7`; bsc `0x7fd568...ab1c5f`; bsc `0x98b787...f872d0`; bsc `0x9972dd...f7ca85`; bsc `0xe39b9e...8b14e0` | ⚠️ Unaudited |
| CCakeLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3d9927...e17034` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x018a82...9ff5ab`; ethereum `0xbddeb5...e5b6c6` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x1a9e50...edb509`; ethereum `0x218e5b...ff6117`; ethereum `0x2939f9...ccff07`; ethereum `0xb72cf0...c3aaa5`; ethereum `0xe9ea58...f0ceb6`; bsc `0x225a75...750d65`; bsc `0xb316f4...255f53` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1bcafa...8d1eb5`; ethereum `0xa87e8e...5f4d01`; ethereum `0xf7c531...9b8531` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383534 | 2 deployments: ethereum `0x22b243...2b2e9e`; ethereum `0x852dc3...68aaf3` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x460ea7...715adc`; ethereum `0xcc4457...9b2afc`; ethereum `0xf047d4...295922` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383581 | 2 deployments: bsc `0x15cc70...93bc67`; bsc `0x54ece7...f45043` | ⚠️ Unaudited |
| CCapableWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b82a...3b22eb` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd0...2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20CheckRepayDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383541 | `0x2db6c8...5066d6` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 23 | ethereum | n/a | 23 deployments: ethereum `0x00e5c0...c84bf3`; ethereum `0x12a9cc...93d12c`; ethereum `0x1b3e95...bd12d5`; ethereum `0x215f34...e264b1`; ethereum `0x226f37...46102f`; ethereum `0x30190a...f22340`; ethereum `0x3c9f53...080101`; ethereum `0x48759f...e4166a`; ethereum `0x672473...0bf40b`; ethereum `0x76eb2f...b2a37c`; ethereum `0x7736ff...732992`; ethereum `0x86bbd9...7548aa`; ethereum `0x8e5954...2ec68f`; ethereum `0x8fc8bf...92b431`; ethereum `0x9e8e20...69c1a9`; ethereum `0xa7c405...5c9806`; ethereum `0xa8caea...a73e4f`; ethereum `0xb8c5af...6109f9`; ethereum `0xca55f9...17fd54`; ethereum `0xe7bff2...03aa16`; ethereum `0xecab2c...a97ecf`; ethereum `0xfa3472...7621b9`; ethereum `0xfeeb92...7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 63 | ethereum | unit-383520 (63 proxies) | 63 deployments: ethereum `0x054b7e...4096ed`; ethereum `0x081fe6...190a21`; ethereum `0x10a3da...2923a8`; ethereum `0x10fdbd...e649db`; ethereum `0x17107f...ebd4be`; ethereum `0x197070...80d4fc`; ethereum `0x19d166...1a8e46`; ethereum `0x1d0986...7c7e35`; ethereum `0x1ff8cd...bc998e`; ethereum `0x21011b...8f49fc`; ethereum `0x250fb3...b7f74a`; ethereum `0x255559...e82b55`; ethereum `0x28526b...c5402e`; ethereum `0x299e25...ea3a3b`; ethereum `0x2a537f...29366d`; ethereum `0x2a867f...07ea6d`; ethereum `0x3225e3...5e31bc`; ethereum `0x338286...f5d206`; ethereum `0x362338...d31f58`; ethereum `0x3c6c55...36d296`; ethereum `0x4112a7...73387f`; ethereum `0x44fbeb...53b322`; ethereum `0x51f48b...0c07af`; ethereum `0x523eff...5e8e9e`; ethereum `0x58da9c...f3d2ef`; ethereum `0x590892...e03cb3`; ethereum `0x658839...f76a90`; ethereum `0x697256...6a5fd9`; ethereum `0x71cefc...441847`; ethereum `0x797aab...3d2157`; ethereum `0x7aaa32...0f1fea`; ethereum `0x7c3297...203112`; ethereum `0x7ea9c6...907db3`; ethereum `0x81e346...ff13c6`; ethereum `0x8379ba...18ae41`; ethereum `0x857599...793d9b`; ethereum `0x89e429...3d5828`; ethereum `0x8b3ff1...3685a5`; ethereum `0x8c3b7a...4e6f91`; ethereum `0x903560...89fc5d`; ethereum `0x92b767...7a1d9f`; ethereum `0x98e329...94b77c`; ethereum `0xab1058...abf8f7`; ethereum `0xb092b4...26a4d5`; ethereum `0xc25eae...732e14`; ethereum `0xc36080...b82b17`; ethereum `0xc68251...ac651b`; ethereum `0xc7fd8d...c77480`; ethereum `0xcbae0a...dc6b76`; ethereum `0xce4fe9...9d2eb3`; ethereum `0xd5103a...1b2a8b`; ethereum `0xd692ac...e85d2c`; ethereum `0xd73944...66314b`; ethereum `0xdbb5e3...78fecf`; ethereum `0xdfff11...990393`; ethereum `0xe585c7...996e73`; ethereum `0xe89a6d...a363c7`; ethereum `0xef58b2...9bc025`; ethereum `0xeff039...77532c`; ethereum `0xf04ce2...97fb4e`; ethereum `0xf55bbe...dbe924`; ethereum `0xf8445c...016e20`; ethereum `0xfd609a...a924e2` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x09bdcc...b6572d`; ethereum `0x27260e...a929bb`; ethereum `0x297d4d...7e453a`; ethereum `0x9925f2...e777bb`; ethereum `0x9d029c...135bb2`; ethereum `0xa0e5a1...76b083` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 3 | ethereum | unit-383554 (3 proxies) | 4 deployments: ethereum `0x1241b1...cff999`; ethereum `0x892b14...cf6ac0`; ethereum `0x8b950f...bf3096`; ethereum `0xf330c1...8ac470` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383536 | 2 deployments: ethereum `0x1a1223...c2bbd0`; ethereum `0x8dc840...fa0789` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x41c84c...c6b393` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x766175...8d8fff`; ethereum `0xd37295...ae6705` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbe86e8...470c5c` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-383574 | 2 deployments: bsc `0x09e470...2fe7ec`; bsc `0x426d6d...145b62` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | project_anchor | own_supporting | 32 | bsc | unit-383586 (32 proxies) | 32 deployments: bsc `0x0e9d90...a09baa`; bsc `0x11883c...8ce069`; bsc `0x19ee64...2ec907`; bsc `0x1af8c1...04fd16`; bsc `0x264bc4...87fcbc`; bsc `0x2bc4eb...289b7c`; bsc `0x2d3bfa...98aa06`; bsc `0x394293...dd9b22`; bsc `0x3b0be4...469d68`; bsc `0x4cb7f1...74fec4`; bsc `0x4ebdef...28a48f`; bsc `0x53d88d...a8515f`; bsc `0x738f38...92c43b`; bsc `0x7f746a...6de418`; bsc `0x81c15d...25fc55`; bsc `0x84902b...043beb`; bsc `0x8cc7e2...5e09b2`; bsc `0x9095e8...7a1b22`; bsc `0x9b53e7...7bcee5`; bsc `0xa8d75a...019c96`; bsc `0xaa46e2...66e20c`; bsc `0xb31f5d...3e2bcd`; bsc `0xbe7e1d...0fce6b`; bsc `0xbf9b95...e1ff82`; bsc `0xc17c8c...51488c`; bsc `0xcb87ce...6f90b1`; bsc `0xd83c88...f5f727`; bsc `0xdcf60e...86ed1c`; bsc `0xe69271...52de8e`; bsc `0xea466c...8fb0a5`; bsc `0xef6d45...4975de`; bsc `0xf77df3...bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x45a6c0...b8fea7`; bsc `0xcec434...661730` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x7e545c...9ccac2`; bsc `0x816697...5a06cf` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 15 | polygon | unit-383558 (15 proxies) | 16 deployments: polygon `0x20d5d3...d6ad0a`; polygon `0x2ee806...5cd7cc`; polygon `0x448683...46a271`; polygon `0x468a7b...9af5ab`; polygon `0x4ecedd...d6c00e`; polygon `0x5dc3a3...17072a`; polygon `0x73cf8c...ab6cbd`; polygon `0x7ea717...75d381`; polygon `0x7ef18d...27f716`; polygon `0x98182b...d0eb7a`; polygon `0x9b21eb...8cb971`; polygon `0xc29c28...b5a837`; polygon `0xd4409b...9b9ffa`; polygon `0xe82225...f07e78`; polygon `0xf976c9...bc5c8a`; polygon `0xfbbfa5...bd328d` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: ethereum `0x29791b...805305`; ethereum `0x6ada0e...fda83c`; ethereum `0xfd42f5...d4c304`; bsc `0x272613...d0ae50`; bsc `0xaac5b4...fb1cc5`; polygon `0x544109...1a0c97`; polygon `0x5b4058...9e32a1`; arbitrum `0x20d5d3...d6ad0a` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-383569 (2 proxies) | 3 deployments: arbitrum `0x5eb35d...cae9ce`; arbitrum `0xc29c28...b5a837`; arbitrum `0xd5794e...ffbd86` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041...41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f0800...909b9e`; ethereum `0xfbfb92...3f0aa9` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x4f12c9...64d045`; ethereum `0x950027...2b6c09`; ethereum `0xbb4b06...728e36`; ethereum `0xe3d7a3...287a27` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 7 | ethereum | unit-383547 (7 proxies) | 8 deployments: ethereum `0x011a01...230afa`; ethereum `0x01da76...015c2d`; ethereum `0x228619...dafbb2`; ethereum `0x4ee15f...8954c6`; ethereum `0x4fe11b...daad85`; ethereum `0xc9d8a3...77f3c9`; ethereum `0xcd22c4...faafa0`; ethereum `0xe6c312...373963` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x04be8e...984766`; ethereum `0x0a7d7c...61b20f`; ethereum `0x14e451...268a96`; ethereum `0x39d466...5064bb`; ethereum `0x6d419c...5c5b40`; ethereum `0x81a1ff...b9cd5e`; ethereum `0x8341f1...42b56f`; ethereum `0x8ec370...74c4db`; ethereum `0x9d8a05...38fd4d`; ethereum `0xa27827...01b875`; ethereum `0xb5c7aa...29be3c`; ethereum `0xbdf447...783f72`; ethereum `0xc2dc50...13721b`; ethereum `0xc4b2f8...0efa1b`; ethereum `0xe9e0ad...d52689`; bsc `0x12c28c...4eccd4`; bsc `0xa80690...ba0d2f`; polygon `0xd52869...e54696` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09db98...c7b472` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x19940f...781fc3` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 4 | ethereum | unit-383515 (4 proxies) | 5 deployments: ethereum `0x1c8645...577331`; ethereum `0x1f9b47...2cb284`; ethereum `0x4202d9...dd81d4`; ethereum `0x45406b...b107f6`; ethereum `0x6d1b9e...ff1c20` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383518 | 2 deployments: ethereum `0x2f4ad3...accadb`; ethereum `0x4baa77...579dd4` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4e3a36...b3c0b8` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x51297a...d5ff8c` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x7589c9...0207fc`; ethereum `0x9b4048...2e4a06`; ethereum `0xe407e9...df882d` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383552 | 2 deployments: ethereum `0x8b86e0...33d0d6`; ethereum `0xf25fb0...61249f` | ⚠️ Unaudited |
| CErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383539 | 2 deployments: ethereum `0x951759...dd9bf9`; ethereum `0x9baf8a...d0bb87` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11a362...6fc474`; bsc `0x687484...fb94df` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0e821d...11c2cb`; ethereum `0x371fb6...a331df`; ethereum `0x43bf8d...34846f`; ethereum `0x4f624d...3a3cea`; ethereum `0x6d2ba9...68e513`; ethereum `0x6ea8ea...68505b`; ethereum `0x7ec779...746817`; ethereum `0x90b280...2feb59`; ethereum `0xa34c4f...ccd612`; ethereum `0xb2ec68...74f6fd`; ethereum `0xd64f8d...3de086`; ethereum `0xd6d9e4...44938b`; ethereum `0xe8e202...a96c43` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383286 | `0xd06527...2860ee` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-383338 | `0x1ffe17...90ff3a` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383243 | `0x2ba592...7cb200` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | bsc | unit-383482 | `0xd4cb32...f3e888` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383532 | 2 deployments: ethereum `0x3d5bc3...ae9258`; ethereum `0x7aa375...9f53ba` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5ef4c9...1205b4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xab1c34...144cbb` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 37 deployments: ethereum `0x44a420...dff193`; ethereum `0x4b1479...e5a083`; ethereum `0x5d6202...2117c8`; ethereum `0x76b34a...063828`; ethereum `0x78962e...892963`; ethereum `0x793027...cb16bd`; ethereum `0x79757e...5a86c7`; ethereum `0x7d506f...ef9902`; ethereum `0x823498...239367`; ethereum `0x86c2bb...2e4fe9`; ethereum `0x8a2707...e4e088`; ethereum `0x9ac75f...7b64a7`; ethereum `0xa05e35...a7e88d`; ethereum `0xa7d4f8...34708b`; ethereum `0xb03614...64df27`; ethereum `0xb4cf50...38f957`; ethereum `0xc4ff0a...d0c4e9`; ethereum `0xc855b3...dd2dde`; ethereum `0xcbb626...e4111c`; ethereum `0xcdca61...8d5aa3`; ethereum `0xd96c52...76367d`; ethereum `0xe293a9...f76e63`; ethereum `0xe376ed...d11bb9`; ethereum `0xf1cd00...f494f4`; bsc `0x0549a7...99d618`; bsc `0x105a2a...67560b`; bsc `0x127bae...272390`; bsc `0x3952a5...4155a0`; bsc `0x3b36ad...a208b2`; bsc `0x643f20...44157d`; bsc `0x82cd95...f05125`; bsc `0xcaef46...4e20ae`; bsc `0xf851a6...406a81`; bsc `0xffd757...2cca85`; polygon `0x3ab0e4...7e01d2`; polygon `0x520b78...01db80`; polygon `0x9bf875...3b3b6e` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2450fd...39a519`; bsc `0x4db74b...82d4fd` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | bsc | unit-383380 | `0x49a08f...988fb4` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | bsc | unit-383583 | 2 deployments: bsc `0x589de0...4cc0ba`; bsc `0x8075f0...8ba6b9` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | polygon | unit-383556 | 2 deployments: polygon `0x20ca53...114c24`; polygon `0x8b9a81...e92ac2` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383571 | 2 deployments: arbitrum `0xbadac5...9813ee`; arbitrum `0xd96877...26543f` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383304 | `0xcc3e89...53f6fd` | ⚠️ Unaudited |
| CreamEth2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383250 | `0x49d72e...9fdb64` | ⚠️ Unaudited |
| CreamETH2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742f5e...7ed0d6` | ⚠️ Unaudited |
| CreamETH2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383276 | `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8584b7...40ca64`; ethereum `0xd7de27...5bfcd9` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383259 | `0x780f75...7a8b45` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383274 | `0xbdc337...ce7595` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383290 | `0xd5586c...e20a6c` | ⚠️ Unaudited |
| CreamLock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383294 | `0xe618c2...2f5945` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb146bf...20d0f9`; ethereum `0xc08f48...6762ff` | ⚠️ Unaudited |
| CreamY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0914...bdc10c` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b4722...151ffb`; ethereum `0x54704b...ef0dde` | ⚠️ Unaudited |
| CSLPDelegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-383543 (6 proxies) | 7 deployments: ethereum `0x38f27c...0be4ad`; ethereum `0x5c291b...b6aee9`; ethereum `0x5ecad8...1eea92`; ethereum `0x6ba0c6...38d375`; ethereum `0x73f6cb...0e81fc`; ethereum `0xc489f7...fc4b1f`; ethereum `0xd53294...873abf` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xa67b44...2a038d`; bsc `0x0dfd3b...138ba7`; arbitrum `0x5b4058...9e32a1`; arbitrum `0xf976c9...bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x01e2b7...7ca922`; polygon `0x1cc6cf...94e1c7`; polygon `0x543e7d...88506b`; arbitrum `0x468a7b...9af5ab` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-383563 | 2 deployments: polygon `0x3fae5e...336ee8`; polygon `0xd96877...26543f` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-383567 | 2 deployments: arbitrum `0x544109...1a0c97`; arbitrum `0x8b9a81...e92ac2` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a...224790` | ⚠️ Unaudited |
| FlashloanLender | unknown | project_anchor | own_supporting | 0 | bsc | unit-383459 | `0xb71328...414b5a` | ⚠️ Unaudited |
| FlashloanLender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0xb3c68d...3edf56`; arbitrum `0x1cc6cf...94e1c7`; arbitrum `0x4ecedd...d6c00e` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc76a...bfe334` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x30f254...37f812`; ethereum `0xa8e2ab...23f9b9`; ethereum `0xb9910c...54d8f0`; ethereum `0xcddba4...03b1c8` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50b...46b3ff` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecc2d...25736f` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x014872...d2e1a6`; ethereum `0x1eee7e...7b5539`; ethereum `0x523854...576816`; ethereum `0x64caa0...c64961`; ethereum `0x66fb6c...31fed8`; ethereum `0x9079dc...1c9ac0`; ethereum `0x990f82...7e8047`; ethereum `0xa0d811...790d3a`; ethereum `0xa9d052...7b86d4`; ethereum `0xaaedaf...ba6992`; ethereum `0xb84ad7...cebaac`; ethereum `0xbd95e9...179905`; ethereum `0xc15a2b...42b17e`; ethereum `0xd34137...7b3eb5`; ethereum `0xe6c2d3...38772e`; bsc `0x0a4f9a...2c5710`; bsc `0x410ece...a5d0b0`; bsc `0x4e4c96...63e7db`; bsc `0x66d801...8aeb6d`; bsc `0x681ab0...f32b75`; bsc `0xed06cb...d0835f`; bsc `0xedbed7...e83003` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x004d28...d524fa`; bsc `0xb4eaf7...20fe8c` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd45498...ba5a9d`; bsc `0xd465c5...9e83d2` | ⚠️ Unaudited |
| LiquidityMiningLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x56d21e...077d08`; bsc `0x723c4a...1f9092` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x060917...e5aa2f`; bsc `0x803bb4...9b6245` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x4f85a4...d12ed0`; bsc `0x4237b8...44e37e`; bsc `0xf56350...35366b` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734279...c6d3e9` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5...fa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f...167f53` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37...cab2b1` | ⚠️ Unaudited |
| PriceOracle | unknown | project_anchor | own_supporting | 0 | bsc | unit-383391 | `0x541876...d14847` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x3abce8...525cf7`; ethereum `0x4250a6...576cd2`; ethereum `0x9a975f...659ad2`; bsc `0x78af64...141b4b`; polygon `0x0a4acc...8bf2f5` | ⚠️ Unaudited |
| PriceOracleFUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4bc1...e39caa` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1d8e38...61ae3c`; ethereum `0x3a4b89...eeafa1`; ethereum `0x4b7dba...e0188a`; ethereum `0x647a53...091488`; ethereum `0x653f72...823cae`; ethereum `0x6b96c4...8704cb`; ethereum `0x72dbf5...db74a5`; ethereum `0x88e79e...36370d`; ethereum `0x9a5135...b2fed0`; ethereum `0xc78cad...50da23`; ethereum `0xe4c1e5...284e97`; ethereum `0xecb0b5...dc1886`; ethereum `0xf74f97...b6cd94`; bsc `0xdce8c9...1b0ca4` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-383451 | `0xa82958...819477` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x64e1c4...356041`; bsc `0x6eedcf...51cd6a`; bsc `0x913b6e...2a3d7c`; bsc `0xa7ae01...8a1c7d`; bsc `0xab548f...48c408`; bsc `0xaf2b0a...5eced4`; bsc `0xc2e7fc...1177dd` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5...297266` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: polygon `0x812c0b...db2190`; arbitrum `0x062887...56b626`; arbitrum `0x73cf8c...ab6cbd` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383306 | `0xe82225...f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-383302 | `0x20ca53...114c24` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0c5bf1...1beaed`; ethereum `0x1533ba...0b2bcb`; ethereum `0x8c37ed...4306f4`; ethereum `0xa741bc...0190eb`; ethereum `0xbdfe60...45d41a`; ethereum `0xd073e9...5808a1`; ethereum `0xdde831...f8fe53` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xe649d8...489e30`; bsc `0x028337...aa48b3` | ⚠️ Unaudited |
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
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8fcb0c...cda3f3`; ethereum `0xadf2b5...b5501a`; ethereum `0xc29e89...d766f5` | ⚠️ Unaudited |
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
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: ethereum `0x1b0c25...747556`; ethereum `0x26c325...868710`; ethereum `0x4aa560...2970a5`; ethereum `0x61e9a6...995fad`; ethereum `0xd369e8...aa7891`; ethereum `0xd6c04c...c0ac6f`; ethereum `0xe2d39a...4bbd2e`; bsc `0x023ca9...6d1ff9`; bsc `0x5f18b4...1c7ef4`; bsc `0x8122e8...90b899`; bsc `0xd68f6c...291bff`; bsc `0xeb6890...12ca63`; polygon `0x062887...56b626`; polygon `0x379555...deef31`; polygon `0x79ea17...a5dfa1`; polygon `0x98d6af...86d583`; polygon `0xb1fd64...10bc83`; arbitrum `0x3fae5e...336ee8`; arbitrum `0x5dc3a3...17072a`; arbitrum `0x7ef18d...27f716` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbadac5...9813ee` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ca0f0...6f6ace`; ethereum `0x398642...5c0043` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x521a06...59e88d`; ethereum `0xa1fb18...f341ac`; bsc `0x1d0914...bdc10c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383228 | `0x000000...7705fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d919a...b9b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e45b...69ccd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25bd5c...2c630e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383254 | `0x69f2b8...d9423f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703390...e69112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383261 | `0x84858f...07900c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x867072...f40f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b7f98...9e56c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7768...d2664d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383265 | `0xa5462b...c11deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383267 | `0xa8682c...0b73d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424be...33e95f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383288 | `0xd400e2...587659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7aecf...9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-383329 | `0x1a014f...86ea4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x241292...4e8629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x284bb6...47749b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32a237...42d28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb9e4...c0f039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6af473...28822d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6de04a...dd3b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ea00a...90ae70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84d6fe...807604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc977c6...0ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd44029...b60055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe630c7...21786e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe85d39...275afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383297 | `0x139dd8...040a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5eb35d...cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383300 | `0x139dd8...040a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x520b78...01db80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66e9c7...386fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x812c0b...db2190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd52869...e54696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee0c0a...788328` | ❓ Unverified |

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
| bsc | `0x09e470...2fe7ec` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0e9d90...a09baa` | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x20d5d3...d6ad0a` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5eb35d...cae9ce` | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011a01...230afa` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c8645...577331` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f4ad3...accadb` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b86e0...33d0d6` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951759...dd9bf9` | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| native | 129 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 36 |

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
