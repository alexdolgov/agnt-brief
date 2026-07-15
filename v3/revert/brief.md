# Agentic Audit Brief: Revert

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 12 (2 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Revert (`revert`)
- Website: [https://revert.finance/#/ref/w6vno3](https://revert.finance/#/ref/w6vno3)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 104 unique implementations (104 raw deployments)
- Coverage basis: 4/48 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,691,225.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Revert. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 71 contract row(s) across arbitrum, base, blast, bsc, ethereum, optimism, polygon, unichain. Structural roles: 37 core, 24 supporting, 10 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 71
- Structural roles: core (37), supporting (24), unclassified (10)
- Contract kinds: contract (70), abstract (1)
- Detected standards: ownable (53), ownable2step (32), multicall (14), erc20 (3), erc4626 (3)
- Frameworks: openzeppelin (60), uniswap-v3 (56), permit2 (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 59 contracts are derived from known codebases. 56 contracts have no detected origin.

### Forked Contracts

**V3Vault** (`0xa27545...d15667`, chain 1)
Origin: revert (`0x7f48e6...e5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**V3Vault** (`0x36aeae...be7599`, chain 8453)
Origin: revert (`0x7f48e6...e5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**V3Vault** (`0x74e6af...e07825`, chain 42161)
Origin: revert (`0x7f48e6...e5fde0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd5c605...ecf4d8`, chain 10)
- UnnamedContract (`0x4ec6f2...52108f`, chain 137)
- UnnamedContract (`0x1ef7c1...0f17c0`, chain 8453)
- UnnamedContract (`0x2309a5...b55b0a`, chain 8453)
- UnnamedContract (`0x827223...9b0952`, chain 8453)
- UnnamedContract (`0x9e29b7...5e0564`, chain 8453)
- UnnamedContract (`0xc171f8...8113f2`, chain 8453)
- UnnamedContract (`0xc35e20...588203`, chain 8453)
- UnnamedContract (`0xeb6127...c213dd`, chain 8453)
- UnnamedContract (`0xf4fcba...7137ec`, chain 8453)
- UnnamedContract (`0x18616c...e58997`, chain 42161)
- UnnamedContract (`0x9f703b...83d506`, chain 42161)
- UnnamedContract (`0xcfd55a...b30980`, chain 42161)
- UnnamedContract (`0x4a8c2b...a57ee4`, chain 81457)
- AutoCompound (`0x7c8124...a53abd`, chain 1)
- AutoCompound (`0xbe9317...52c568`, chain 10)
- AutoCompound (`0x3b1767...2bd875`, chain 56)
- AutoCompound (`0x843fe4...09b72b`, chain 56)
- AutoCompound (`0xf887e5...5e9783`, chain 137)
- AutoCompound (`0x0bf485...3f7bec`, chain 8453)
- AutoCompound (`0x9d97c7...d5b6db`, chain 42161)
- AutoExit (`0xef4868...29edf7`, chain 1)
- AutoExit (`0x32d03c...b223c7`, chain 10)
- AutoExit (`0xa16cf1...b66a58`, chain 56)
- AutoExit (`0xc2c77d...f696b3`, chain 56)
- AutoExit (`0x1d0d74...5ebcad`, chain 137)
- AutoExit (`0x16e0b9...596a93`, chain 8453)
- AutoExit (`0xd01863...297dda`, chain 42161)
- AutoRange (`0x88481e...a72d9e`, chain 1)
- AutoRange (`0x87f442...7fdca5`, chain 10)
- AutoRange (`0xa0dc48...c10ad5`, chain 56)
- AutoRange (`0xa8b9fc...96a493`, chain 56)
- AutoRange (`0x5e5422...374a5b`, chain 137)
- AutoRange (`0xa85494...f9dc1d`, chain 8453)
- AutoRange (`0x5ff219...f158de`, chain 42161)
- Compoundor (`0x4a8c2b...a57ee4`, chain 8453)
- FlashloanLiquidator (`0xa44080...2cc79d`, chain 1)
- FlashloanLiquidator (`0x6bcb1a...eeac5b`, chain 8453)
- FlashloanLiquidator (`0x5b94d4...bfefc2`, chain 42161)
- InterestRateModel (`0xb50daf...1f063b`, chain 1)
- InterestRateModel (`0xd0524a...ac7927`, chain 8453)
- LeverageTransformer (`0xbaea7f...227b1e`, chain 1)
- LeverageTransformer (`0x5e97a4...3d9b23`, chain 8453)
- LeverageTransformer (`0xe5047b...bb25e8`, chain 42161)
- SelfCompoundor (`0xb50a39...d3b48f`, chain 1)
- SelfCompoundor (`0x3c0fd0...2847ef`, chain 10)
- SelfCompoundor (`0x48331a...dd747c`, chain 56)
- SelfCompoundor (`0x69437b...dd8da6`, chain 56)
- SelfCompoundor (`0xad58d1...f739ea`, chain 137)
- SelfCompoundor (`0xc5d8fa...f1551a`, chain 8453)
- SelfCompoundor (`0xb43a61...d9f0a1`, chain 42161)
- V3Oracle (`0xe0151d...36072f`, chain 1)
- V3Oracle (`0x31c8ae...f4731f`, chain 8453)
- V3Utils (`0x5b2f7c...b86be5`, chain 8453)
- V4Utils (`0xe162e0...18436d`, chain 1)
- V4Utils (`0x84b41a...0efe65`, chain 130)

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 71 (48 live, 23 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/106 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/48 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 62 of 104 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/48
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 104
- Raw deployments: 104
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 8.3% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Compoundor | unknown | project_anchor | own_supporting | 0 | base | unit-253134 | `0x4a8c2b...a57ee4` | ✅ Audited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-253088 | `0x5b94d4...bfefc2` | ✅ Audited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253100 | `0xe5047b...bb25e8` | ✅ Audited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-253090 | `0x74e6af...e07825` | ✅ Audited |

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoCompound | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253048 | `0x7c8124...a53abd` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | optimism | unit-253072 | `0xbe9317...52c568` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | bsc | unit-253105 | `0x3b1767...2bd875` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | bsc | unit-253113 | `0x843fe4...09b72b` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | polygon | unit-253085 | `0xf887e5...5e9783` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | base | unit-253127 | `0x0bf485...3f7bec` | ⚠️ Unaudited |
| AutoCompound | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253091 | `0x9d97c7...d5b6db` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253046 | `0x37c25b...ee4e90` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253061 | `0xef4868...29edf7` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253062 | `0xfcc46d...ca4299` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-253063 | `0x32d03c...b223c7` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253106 | `0x3cac4a...974d93` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253108 | `0x4bb7c9...6003ba` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253110 | `0x68bb8d...fe3cb9` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-253117 | `0xa16cf1...b66a58` | ⚠️ Unaudited |
| AutoExit | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253119 | `0xae19eb...829bb1` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-253121 | `0xc2c77d...f696b3` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-253076 | `0x1d0d74...5ebcad` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253128 | `0x16e0b9...596a93` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253136 | `0x5b3b61...53d046` | ⚠️ Unaudited |
| AutoExit | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253147 | `0xde3dee...345d6a` | ⚠️ Unaudited |
| AutoExit | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-253098 | `0xd01863...297dda` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253049 | `0x88481e...a72d9e` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253050 | `0x9576fc...ce0b1a` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253051 | `0x9b74e5...87cca9` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | optimism | unit-253069 | `0x87f442...7fdca5` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253102 | `0x1af7cf...9c54b1` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253109 | `0x52c200...ac3e68` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253115 | `0x9a515f...92fb3b` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | bsc | unit-253116 | `0xa0dc48...c10ad5` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | bsc | unit-253118 | `0xa8b9fc...96a493` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253123 | `0xd8dcdb...27d7e4` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | polygon | unit-253081 | `0x5e5422...374a5b` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | base | unit-253141 | `0xa85494...f9dc1d` | ⚠️ Unaudited |
| AutoRange | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253145 | `0xca7134...88b906` | ⚠️ Unaudited |
| AutoRange | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253089 | `0x5ff219...f158de` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253047 | `0x541189...0f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253066 | `0x541189...0f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253078 | `0x541189...0f94a1` | ⚠️ Unaudited |
| Compoundor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253087 | `0x541189...0f94a1` | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253053 | `0xa44080...2cc79d` | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253138 | `0x6bcb1a...eeac5b` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253056 | `0xb50daf...1f063b` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253146 | `0xd0524a...ac7927` | ⚠️ Unaudited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253057 | `0xbaea7f...227b1e` | ⚠️ Unaudited |
| LeverageTransformer | unknown | project_anchor | own_supporting | 0 | base | unit-253137 | `0x5e97a4...3d9b23` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253055 | `0xb50a39...d3b48f` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | optimism | unit-253065 | `0x3c0fd0...2847ef` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | bsc | unit-253107 | `0x48331a...dd747c` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | bsc | unit-253111 | `0x69437b...dd8da6` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | polygon | unit-253083 | `0xad58d1...f739ea` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | base | unit-253144 | `0xc5d8fa...f1551a` | ⚠️ Unaudited |
| SelfCompoundor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253096 | `0xb43a61...d9f0a1` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-253059 | `0xe0151d...36072f` | ⚠️ Unaudited |
| V3Oracle | operational_periphery | project_anchor | own_supporting | 0 | base | unit-253131 | `0x31c8ae...f4731f` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253045 | `0x371a33...423e8c` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-253054 | `0xae8999...ead578` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | bsc | unit-253103 | `0x2b1971...84d773` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | bsc | unit-253112 | `0x818354...c53392` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253120 | `0xae8999...ead578` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253122 | `0xd81a68...aad97d` | ⚠️ Unaudited |
| V3Utils | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253133 | `0x3eb0ff...44b078` | ⚠️ Unaudited |
| V3Utils | unknown | project_anchor | own_supporting | 0 | base | unit-253135 | `0x5b2f7c...b86be5` | ⚠️ Unaudited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-253052 | `0xa27545...d15667` | ⚠️ Unaudited |
| V3Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-253132 | `0x36aeae...be7599` | ⚠️ Unaudited |
| V4Utils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253060 | `0xe162e0...18436d` | ⚠️ Unaudited |
| V4Utils | unknown | project_anchor | own_supporting | 0 | unichain | unit-253074 | `0x84b41a...0efe65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253064 | `0x3322ac...4742b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253067 | `0x6d55aa...17d3da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253068 | `0x6ee802...861e71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253070 | `0x9377ff...32ccab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-253071 | `0xae8999...ead578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-253073 | `0xd5c605...ecf4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253104 | `0x317202...d505d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-253114 | `0x98ec49...2ec790` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253075 | `0x08ad36...e37533` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-253077 | `0x4ec6f2...52108f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253079 | `0x54ebb4...e2864e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253080 | `0x55d588...edfbf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253082 | `0x9210a1...aea00e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-253084 | `0xae8999...ead578` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-253126 | `0x043e2f...784c69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253129 | `0x1ef7c1...0f17c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253130 | `0x2309a5...b55b0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253139 | `0x827223...9b0952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253140 | `0x9e29b7...5e0564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253142 | `0xc171f8...8113f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253143 | `0xc35e20...588203` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253148 | `0xeb6127...c213dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253149 | `0xf4fcba...7137ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253086 | `0x18616c...e58997` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253092 | `0x9f703b...83d506` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253093 | `0xa44b95...32645a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253094 | `0xab6998...0e7f1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253095 | `0xae8999...ead578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253097 | `0xcfd55a...b30980` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253099 | `0xd82e0b...00ab06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-253101 | `0xee1e94...4165c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-253124 | `0x4a8c2b...a57ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-253125 | `0x6a5023...e1dfb3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Revert-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [HYDN - Revert Finance autoExit_autoRange Audit Report.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Exit%20Auto%20%26%20Range%20Auto/HYDN%20-%20Revert%20Finance%20autoExit_autoRange%20Audit%20Report.pdf) | Hydn Security | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Exit%20Auto%20%20%26%20Move%20Range/Revert_Finance_Audit_Report_%20Auto-Exit_Auto-Move_Range.pdf) | Hydn Security | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [HYDN - Revert Finance Lend Audit Report.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Lend/HYDN%20-%20Revert%20Finance%20Lend%20Audit%20Report.pdf) | Hydn Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [code4rena.com/audits/2024-03-revert-lend](https://code4rena.com/audits/2024-03-revert-lend) | Code4rena | Contest | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-Revert-Lend-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-Lend-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | n/a | matched | 3 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf) | PeckShield | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf](https://github.com/revert-finance/lend/blob/aerodrome-slipstream/report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [HYDN - Revert Finance Lend - aero - Audit.pdf](https://github.com/hydnsec/audits/blob/main/Revert%20Finance%20-%20Lend/HYDN%20-%20Revert%20Finance%20Lend%20-%20aero%20-%20Audit.pdf) | HYDN | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2043] PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf — matched: No reason recorded
- [2044] PeckShield-Audit-Report-Revert-v1.0.pdf — no match: No reason recorded
- [11995] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf — no match: The report focuses on the V3Utils contract of Revert Finance. No explicit scope table, but the contract is consistently referenced as the target.
- [11996] PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf — no match: Only SelfCompoundor contract is in scope; no file paths provided.
- [11997] HYDN - Revert Finance autoExit_autoRange Audit Report.pdf — no match: Scope URL points to src/automators directory; findings reference AutoRange.sol and AutoExit.sol.
- [11998] Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf — no match: Scope is the src/automators directory; contracts identified: AutoRange, AutoExit, Automator.
- [11999] HYDN - Revert Finance Lend Audit Report.pdf — no match: Contracts extracted from detailed findings sections; scope section references repository URL but no explicit file list; contracts are inferred from code extracts.
- [12000] code4rena.com/audits/2024-03-revert-lend — no match: The provided text is a leaderboard of participants and their rewards, not the actual audit report. No contracts in scope or audit date could be extracted from this content.
- [12001] PeckShield-Audit-Report-Revert-Lend-v1.0.pdf — matched: No reason recorded
- [12002] PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf — no match: The audit report explicitly states the scope is the V4Utils contract. Swapper is mentioned as a target in one finding. No file paths provided.
- [12003] report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings and PoC code. The date is from the title 'Revert Finance Competition June 4, 2026'.
- [12004] HYDN - Revert Finance Lend - aero - Audit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Revert-Compoundor-v1.0.pdf | Compoundor | own contract | Compoundor (selected) `0x4a8c2b...a57ee4` — deployed 2023-08-09 17:31:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-v1.0.pdf | UniswapV3Staker | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf | V3Utils | ambiguous — not counted | V3Utils (alternative) `0x5b2f7c...b86be5` — deployed 2024-05-28 21:10:09+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x371a33...423e8c` — deployed 2024-05-28 23:51:47+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x2b1971...84d773` — deployed 2024-05-28 21:51:39+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x818354...c53392` — deployed 2024-05-28 21:13:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf | SelfCompoundor | ambiguous — not counted | SelfCompoundor (alternative) `0x48331a...dd747c` — deployed 2023-09-02 02:27:45+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xad58d1...f739ea` — deployed 2023-05-26 18:54:05+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xb50a39...d3b48f` — deployed 2023-05-26 19:51:59+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xb43a61...d9f0a1` — deployed 2023-05-26 19:03:14+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0xc5d8fa...f1551a` — deployed 2023-08-09 19:37:51+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0x3c0fd0...2847ef` — deployed 2023-05-26 18:58:46+03 — liveness: live (current_address_book_code)<br>SelfCompoundor (alternative) `0x69437b...dd8da6` — deployed 2023-05-26 19:06:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance autoExit_autoRange Audit Report.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e...a72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e5422...374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f442...7fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff219...f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc...96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48...c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa85494...f9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance autoExit_autoRange Audit Report.pdf | AutoExit | ambiguous — not counted | AutoExit (alternative) `0xef4868...29edf7` — deployed 2024-05-28 23:59:11+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x16e0b9...596a93` — deployed 2024-05-28 19:36:25+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x1d0d74...5ebcad` — deployed 2024-05-28 19:27:45+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xc2c77d...f696b3` — deployed 2024-05-28 19:55:41+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xd01863...297dda` — deployed 2024-05-28 01:21:20+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x32d03c...b223c7` — deployed 2024-05-28 19:16:55+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xa16cf1...b66a58` — deployed 2024-05-28 21:50:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e...a72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e5422...374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f442...7fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff219...f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc...96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48...c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa85494...f9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | AutoExit | ambiguous — not counted | AutoExit (alternative) `0xef4868...29edf7` — deployed 2024-05-28 23:59:11+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x16e0b9...596a93` — deployed 2024-05-28 19:36:25+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x1d0d74...5ebcad` — deployed 2024-05-28 19:27:45+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xc2c77d...f696b3` — deployed 2024-05-28 19:55:41+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xd01863...297dda` — deployed 2024-05-28 01:21:20+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0x32d03c...b223c7` — deployed 2024-05-28 19:16:55+03 — liveness: live (current_address_book_code)<br>AutoExit (alternative) `0xa16cf1...b66a58` — deployed 2024-05-28 21:50:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf | Automator | unmatched — not counted | — | mentioned in findings and scope | no |
| HYDN - Revert Finance Lend Audit Report.pdf | AutoCompound | ambiguous — not counted | AutoCompound (alternative) `0x7c8124...a53abd` — deployed 2024-05-28 20:44:47+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x9d97c7...d5b6db` — deployed 2024-05-28 01:26:48+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0xbe9317...52c568` — deployed 2024-05-28 19:17:23+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0xf887e5...5e9783` — deployed 2024-05-28 19:28:29+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x843fe4...09b72b` — deployed 2024-05-28 19:56:59+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x0bf485...3f7bec` — deployed 2024-05-28 19:36:51+03 — liveness: live (current_address_book_code)<br>AutoCompound (alternative) `0x3b1767...2bd875` — deployed 2024-05-28 21:50:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | AutoRange | ambiguous — not counted | AutoRange (alternative) `0x88481e...a72d9e` — deployed 2024-05-29 00:05:23+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5e5422...374a5b` — deployed 2024-05-28 19:26:29+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x87f442...7fdca5` — deployed 2024-05-28 19:16:03+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0x5ff219...f158de` — deployed 2024-05-28 01:20:30+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa8b9fc...96a493` — deployed 2024-05-28 19:53:05+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa0dc48...c10ad5` — deployed 2024-05-28 21:49:12+03 — liveness: live (current_address_book_code)<br>AutoRange (alternative) `0xa85494...f9dc1d` — deployed 2024-05-28 19:35:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | V3Utils | ambiguous — not counted | V3Utils (alternative) `0x5b2f7c...b86be5` — deployed 2024-05-28 21:10:09+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x371a33...423e8c` — deployed 2024-05-28 23:51:47+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x2b1971...84d773` — deployed 2024-05-28 21:51:39+03 — liveness: live (current_address_book_code)<br>V3Utils (alternative) `0x818354...c53392` — deployed 2024-05-28 21:13:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | V3Vault | ambiguous — not counted | V3Vault (alternative) `0x74e6af...e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae...be7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa27545...d15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | LeverageTransformer | ambiguous — not counted | LeverageTransformer (alternative) `0xe5047b...bb25e8` — deployed 2024-08-08 01:20:02+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0x5e97a4...3d9b23` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0xbaea7f...227b1e` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| HYDN - Revert Finance Lend Audit Report.pdf | Automator | unmatched — not counted | — | mentioned in findings | no |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | FlashloanLiquidator | own contract | FlashloanLiquidator (alternative) `0x6bcb1a...eeac5b` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>FlashloanLiquidator (alternative) `0xa44080...2cc79d` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code)<br>FlashloanLiquidator (selected) `0x5b94d4...bfefc2` — deployed 2024-08-08 01:19:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | LeverageTransformer | own contract | LeverageTransformer (selected) `0xe5047b...bb25e8` — deployed 2024-08-08 01:20:02+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0x5e97a4...3d9b23` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>LeverageTransformer (alternative) `0xbaea7f...227b1e` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-Lend-v1.0.pdf | V3Vault | own contract | V3Vault (selected) `0x74e6af...e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae...be7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa27545...d15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-08 was 7d from audit; next candidate 322d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf | V4Utils | ambiguous — not counted | V4Utils (alternative) `0x84b41a...0efe65` — deployed 2025-11-18 07:35:58+03 — liveness: live (current_address_book_code)<br>V4Utils (alternative) `0xe162e0...18436d` — deployed 2025-11-18 07:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf | Swapper | unmatched — not counted | — | Mentioned as target in finding PVE-001: 'Target: Swapper, V4Utils' | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | V3Vault | ambiguous — not counted | V3Vault (alternative) `0x74e6af...e07825` — deployed 2024-08-08 01:15:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0x36aeae...be7599` — deployed 2025-06-19 20:22:21+03 — liveness: live (current_address_book_code)<br>V3Vault (alternative) `0xa27545...d15667` — deployed 2025-06-19 01:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | V3Oracle | ambiguous — not counted | V3Oracle (alternative) `0xe0151d...36072f` — deployed 2025-06-19 01:50:23+03 — liveness: live (code_present_context)<br>V3Oracle (alternative) `0x31c8ae...f4731f` — deployed 2025-06-19 20:22:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | InterestRateModel | ambiguous — not counted | InterestRateModel (alternative) `0xb50daf...1f063b` — deployed 2025-06-19 01:50:23+03 — liveness: live (code_present_context)<br>InterestRateModel (alternative) `0xd0524a...ac7927` — deployed 2025-06-19 20:22:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf | GaugeManager | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| HYDN - Revert Finance Lend - aero - Audit.pdf | GaugeManager | unmatched — not counted | — | — | no |
| HYDN - Revert Finance Lend - aero - Audit.pdf | Vault | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7c8124...a53abd` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbe9317...52c568` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3b1767...2bd875` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x843fe4...09b72b` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf887e5...5e9783` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0bf485...3f7bec` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9d97c7...d5b6db` | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef4868...29edf7` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x32d03c...b223c7` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa16cf1...b66a58` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc2c77d...f696b3` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1d0d74...5ebcad` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16e0b9...596a93` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd01863...297dda` | AutoExit | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88481e...a72d9e` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x87f442...7fdca5` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa0dc48...c10ad5` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa8b9fc...96a493` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5e5422...374a5b` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa85494...f9dc1d` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ff219...f158de` | AutoRange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa44080...2cc79d` | FlashloanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6bcb1a...eeac5b` | FlashloanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50daf...1f063b` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd0524a...ac7927` | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbaea7f...227b1e` | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e97a4...3d9b23` | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb50a39...d3b48f` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3c0fd0...2847ef` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x48331a...dd747c` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x69437b...dd8da6` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xad58d1...f739ea` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc5d8fa...f1551a` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb43a61...d9f0a1` | SelfCompoundor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0151d...36072f` | V3Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x31c8ae...f4731f` | V3Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x371a33...423e8c` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2b1971...84d773` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x818354...c53392` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b2f7c...b86be5` | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa27545...d15667` | V3Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x36aeae...be7599` | V3Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe162e0...18436d` | V4Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x84b41a...0efe65` | V4Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 5 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 15 ambiguous, 7 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=1
- Match method counts: temporal_name=3, unique_name=1

Zero-match audit list:

- [2044] PeckShield-Audit-Report-Revert-v1.0.pdf
- [11995] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf
- [11996] PeckShield-Audit-Report-RevertFinance-SelfCompoundor-v1.0.pdf
- [11997] HYDN - Revert Finance autoExit_autoRange Audit Report.pdf
- [11998] Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf
- [11999] HYDN - Revert Finance Lend Audit Report.pdf
- [12000] code4rena.com/audits/2024-03-revert-lend
- [12002] PeckShield-Audit-Report-Revert-v4Utils-v1.0.pdf
- [12003] report_cli_cantina_efb6f308_f13b_4110_aff8_0d67181608dd_revert_finance.pdf
- [12004] HYDN - Revert Finance Lend - aero - Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
