# Agentic Audit Brief: DFX Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: DFX Finance (`dfx-finance`)
- Website: [https://docs.dfx.finance/](https://docs.dfx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 148 unique implementations (148 raw deployments)
- Coverage basis: 0/40 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $106,814.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DFX Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, ethereum, polygon. Structural roles: 32 unclassified, 5 supporting, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (32), supporting (5), core (3)
- Contract kinds: contract (40)
- Detected standards: erc165 (3), erc20 (3)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

2 of 120 contracts are derived from known codebases. 118 contracts have no detected origin.

### Forked Contracts

**Curves** (`0xb39794...50961e`, chain 1)
Origin: dfx-finance (`0x0dc8c8...d07ed4`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Swaps** (`0x0dc8c8...d07ed4`, chain 1)
Origin: xave-finance (`0x20e1d8...1ef8b0`)
Containment: 76.5% - 13 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- deposit(uint256,uint256,uint256,uint256,uint256,uint256)
- setAssimilator(address,address,address,address)

Removals (removed from original):
- depositWithWhitelist(uint256,address,uint256,bytes32[],uint256,uint256)
- isWhitelisted(uint256,address,uint256,bytes32[])
- setCap(uint256)
- turnOffWhitelisting()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0a62a0...0b7bb7`, chain 1)
- UnnamedContract (`0x16eff9...759ed1`, chain 1)
- UnnamedContract (`0x18900e...6b162e`, chain 1)
- UnnamedContract (`0x1e07d4...942a60`, chain 1)
- UnnamedContract (`0x32b373...48f7f7`, chain 1)
- UnnamedContract (`0x38f818...7f0bd1`, chain 1)
- UnnamedContract (`0x45c38b...1bf063`, chain 1)
- UnnamedContract (`0x49afb3...e8c720`, chain 1)
- UnnamedContract (`0x4b0d75...9f7d27`, chain 1)
- UnnamedContract (`0x512c1d...4cd20d`, chain 1)
- UnnamedContract (`0x520b02...c676a5`, chain 1)
- UnnamedContract (`0x58a8e0...389222`, chain 1)
- UnnamedContract (`0x5a8a83...bcf160`, chain 1)
- UnnamedContract (`0x644233...da80b7`, chain 1)
- UnnamedContract (`0x7401b8...86b80a`, chain 1)
- UnnamedContract (`0x7611f6...d2b4a7`, chain 1)
- UnnamedContract (`0x778bd1...219017`, chain 1)
- UnnamedContract (`0x7c5702...6f70ac`, chain 1)
- UnnamedContract (`0x7d1ba2...3c9eec`, chain 1)
- UnnamedContract (`0x814a90...59ceb1`, chain 1)
- UnnamedContract (`0x85e969...165157`, chain 1)
- UnnamedContract (`0x8cd86f...132c48`, chain 1)
- UnnamedContract (`0x978e49...ee8aa4`, chain 1)
- UnnamedContract (`0x9adeac...72c9cd`, chain 1)
- UnnamedContract (`0x9afd65...c32517`, chain 1)
- UnnamedContract (`0xa2bc55...255572`, chain 1)
- UnnamedContract (`0xab44c9...a91c3f`, chain 1)
- UnnamedContract (`0xacc5dc...8a4b9c`, chain 1)
- UnnamedContract (`0xb0de18...87c7eb`, chain 1)
- UnnamedContract (`0xb1acc3...82e715`, chain 1)
- UnnamedContract (`0xb63398...d89d67`, chain 1)
- UnnamedContract (`0xb7db2f...4cd2f2`, chain 1)
- UnnamedContract (`0xbe5869...2d9e1b`, chain 1)
- UnnamedContract (`0xbfa98e...64fe7f`, chain 1)
- UnnamedContract (`0xc147ce...b86073`, chain 1)
- UnnamedContract (`0xc4c879...23809e`, chain 1)
- UnnamedContract (`0xce2b8e...297835`, chain 1)
- UnnamedContract (`0xda9dcc...4edaed`, chain 1)
- UnnamedContract (`0xe15d47...7e0045`, chain 1)
- UnnamedContract (`0xe25507...ec750a`, chain 1)
- UnnamedContract (`0xe3358f...bedb6a`, chain 1)
- UnnamedContract (`0xe70068...6155e1`, chain 1)
- UnnamedContract (`0xe96917...21dac0`, chain 1)
- UnnamedContract (`0xee309d...9503e4`, chain 1)
- UnnamedContract (`0xee499d...a4e799`, chain 1)
- UnnamedContract (`0xf10d0e...7c114b`, chain 1)
- UnnamedContract (`0xf4470c...857292`, chain 1)
- UnnamedContract (`0xf8053a...60d1a3`, chain 1)
- UnnamedContract (`0xf866ac...ee2b48`, chain 1)
- UnnamedContract (`0xfa96a8...a55c38`, chain 1)
- UnnamedContract (`0x09bc21...5e334e`, chain 137)
- UnnamedContract (`0x0bfa2f...bf36cc`, chain 137)
- UnnamedContract (`0x10c47b...a6ffa9`, chain 137)
- UnnamedContract (`0x112cd0...1f0243`, chain 137)
- UnnamedContract (`0x210b64...8328f4`, chain 137)
- UnnamedContract (`0x2385d7...8531da`, chain 137)
- UnnamedContract (`0x2b2e46...f099f8`, chain 137)
- UnnamedContract (`0x359104...43fd53`, chain 137)
- UnnamedContract (`0x45e95e...3c90dc`, chain 137)
- UnnamedContract (`0x4b3679...b05d0e`, chain 137)
- UnnamedContract (`0x5c277f...379f24`, chain 137)
- UnnamedContract (`0x6691fa...fde966`, chain 137)
- UnnamedContract (`0x6b6cf3...3c4199`, chain 137)
- UnnamedContract (`0x73ce2a...a382a9`, chain 137)
- UnnamedContract (`0x7b95c6...704d1a`, chain 137)
- UnnamedContract (`0x87cb80...949222`, chain 137)
- UnnamedContract (`0x901b18...e902a2`, chain 137)
- UnnamedContract (`0x9cf4e0...9cf37f`, chain 137)
- UnnamedContract (`0xa97a67...05355e`, chain 137)
- UnnamedContract (`0xaab708...7b2b13`, chain 137)
- UnnamedContract (`0xab5044...713d77`, chain 137)
- UnnamedContract (`0xb53901...bf9003`, chain 137)
- UnnamedContract (`0xbc408d...069b15`, chain 137)
- UnnamedContract (`0xca2cc6...6e32ec`, chain 137)
- UnnamedContract (`0xd3cfe9...09d09b`, chain 137)
- UnnamedContract (`0xd3d3d6...13df7d`, chain 137)
- UnnamedContract (`0xd4c87d...2cc215`, chain 137)
- UnnamedContract (`0xd82ced...d870a0`, chain 137)
- UnnamedContract (`0xe5ce84...6854dd`, chain 137)
- UnnamedContract (`0xf626ac...225fe4`, chain 137)
- UnnamedContract (`0xfe1128...a416dc`, chain 137)
- UnnamedContract (`0x0c84e1...14d0af`, chain 42161)
- UnnamedContract (`0x2a22a5...6e6a5e`, chain 42161)
- UnnamedContract (`0x2b28e8...1e6f70`, chain 42161)
- UnnamedContract (`0x3c3bad...8b11e8`, chain 42161)
- UnnamedContract (`0x3c48b9...78faba`, chain 42161)
- UnnamedContract (`0x4c8411...a7728a`, chain 42161)
- UnnamedContract (`0x52257e...382a74`, chain 42161)
- UnnamedContract (`0x78b8d9...f462f5`, chain 42161)
- UnnamedContract (`0x7e5739...a5f35c`, chain 42161)
- UnnamedContract (`0x8dc156...3f8ce8`, chain 42161)
- UnnamedContract (`0x8f9775...83f77b`, chain 42161)
- UnnamedContract (`0x954499...b7c856`, chain 42161)
- UnnamedContract (`0xb3151a...f9837c`, chain 42161)
- UnnamedContract (`0xb48ccf...092ad1`, chain 42161)
- UnnamedContract (`0xb8af0e...0addf8`, chain 42161)
- UnnamedContract (`0xbfa98e...64fe7f`, chain 42161)
- UnnamedContract (`0xc63c6b...659e55`, chain 42161)
- UnnamedContract (`0xc72d59...f93bdf`, chain 42161)
- UnnamedContract (`0xccf12d...878129`, chain 42161)
- UnnamedContract (`0xcd8a5e...2cb565`, chain 42161)
- UnnamedContract (`0xde9c71...9c8fde`, chain 42161)
- UnnamedContract (`0xe15d47...7e0045`, chain 42161)
- UnnamedContract (`0xe6c74a...647ad3`, chain 42161)
- UnnamedContract (`0xe8ccd4...d38bd5`, chain 42161)
- UnnamedContract (`0xe96917...21dac0`, chain 42161)
- UnnamedContract (`0xf6a177...d4532d`, chain 42161)
- UnnamedContract (`0xfbdf83...3a094e`, chain 42161)
- Router (`0x0bf905...08bb09`, chain 1)
- Router (`0x9bba68...25428e`, chain 1)
- Router (`0x575f1e...246f51`, chain 137)
- Router (`0x5cf6d4...baa168`, chain 137)
- Router (`0xbc3011...624406`, chain 42161)
- StakingRewardsMulti (`0x6e87a3...e04e7b`, chain 137)
- StakingRewardsMulti (`0x6f1b9b...65169c`, chain 137)
- StakingRewardsMulti (`0xa1fcb2...d259fd`, chain 137)
- StakingRewardsMulti (`0xba6f70...54e2d5`, chain 137)
- Swaps (`0x5a0b0b...e2db61`, chain 137)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 148/148 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/40 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 148 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 148 of 148 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 148
- Raw deployments: 148
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383860 | `0x650713...93757a` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383891 | `0xde9c71...9c8fde` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-383916 | `0x3a3f59...d903ff` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-383954 | `0xff6ab3...64818e` | ⚠️ Unaudited |
| AssimilatorFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383958 | `0x1134da...d9354b` | ⚠️ Unaudited |
| Curves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383880 | `0xb39794...50961e` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383846 | `0x1190da...372254` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383883 | `0xbc875f...d8222e` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | polygon | unit-383910 | `0x11654b...56921f` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | polygon | unit-383924 | `0x6b5deb...3f2bf4` | ⚠️ Unaudited |
| Orchestrator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383957 | `0x1020e0...24c8a7` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383842 | `0x0a7e79...7f6fb0` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383867 | `0x809423...6182f3` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383915 | `0x3a2f9e...082379` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383930 | `0x85fa8b...151dbd` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383969 | `0x85e969...165157` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-383843 | `0x0bf905...08bb09` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-383874 | `0x9bba68...25428e` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | polygon | unit-383919 | `0x575f1e...246f51` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | polygon | unit-383922 | `0x5cf6d4...baa168` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-383976 | `0xbc3011...624406` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383926 | `0x6e87a3...e04e7b` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383927 | `0x6f1b9b...65169c` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383935 | `0xa1fcb2...d259fd` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | project_anchor | own_supporting | 0 | polygon | unit-383942 | `0xba6f70...54e2d5` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383844 | `0x0dc8c8...d07ed4` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383862 | `0x74982d...04d3a6` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | polygon | unit-383920 | `0x5a0b0b...e2db61` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | polygon | unit-383936 | `0xa49bf7...8e5ecd` | ⚠️ Unaudited |
| Swaps | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383959 | `0x1190da...372254` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383845 | `0x1134da...d9354b` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383903 | `0xf82596...4190b2` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383947 | `0xd3f216...845cbc` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | polygon | unit-383949 | `0xd6af8d...b3e6f0` | ⚠️ Unaudited |
| ViewLiquidity | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383955 | `0x0a7e79...7f6fb0` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383887 | `0xc470d3...2e5ec7` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383900 | `0xf3cc07...9b545d` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | polygon | unit-383934 | `0xa070fb...e2214c` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | polygon | unit-383941 | `0xb6c42f...bf482b` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383964 | `0x3e1941...1bf083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383841 | `0x0a62a0...0b7bb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383847 | `0x16eff9...759ed1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383848 | `0x18900e...6b162e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383849 | `0x1e07d4...942a60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383850 | `0x32b373...48f7f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383851 | `0x38f818...7f0bd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383852 | `0x45c38b...1bf063` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383853 | `0x49afb3...e8c720` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383854 | `0x4b0d75...9f7d27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383855 | `0x512c1d...4cd20d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383856 | `0x520b02...c676a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383857 | `0x58a8e0...389222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383858 | `0x5a8a83...bcf160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383859 | `0x644233...da80b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383861 | `0x7401b8...86b80a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383863 | `0x7611f6...d2b4a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383864 | `0x778bd1...219017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383865 | `0x7c5702...6f70ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383866 | `0x7d1ba2...3c9eec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383868 | `0x814a90...59ceb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383869 | `0x85e969...165157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383870 | `0x8cd86f...132c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383871 | `0x978e49...ee8aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383872 | `0x9adeac...72c9cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383873 | `0x9afd65...c32517` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383875 | `0xa2bc55...255572` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383876 | `0xab44c9...a91c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383877 | `0xacc5dc...8a4b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383878 | `0xb0de18...87c7eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383879 | `0xb1acc3...82e715` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383881 | `0xb63398...d89d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383882 | `0xb7db2f...4cd2f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383884 | `0xbe5869...2d9e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383885 | `0xbfa98e...64fe7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383886 | `0xc147ce...b86073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383888 | `0xc4c879...23809e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383889 | `0xce2b8e...297835` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383890 | `0xda9dcc...4edaed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383892 | `0xe15d47...7e0045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383893 | `0xe25507...ec750a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383894 | `0xe3358f...bedb6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383895 | `0xe70068...6155e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383896 | `0xe96917...21dac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383897 | `0xee309d...9503e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383898 | `0xee499d...a4e799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383899 | `0xf10d0e...7c114b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383901 | `0xf4470c...857292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383902 | `0xf8053a...60d1a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383904 | `0xf866ac...ee2b48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383905 | `0xfa96a8...a55c38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383906 | `0x09bc21...5e334e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383907 | `0x0bfa2f...bf36cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383908 | `0x10c47b...a6ffa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383909 | `0x112cd0...1f0243` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383911 | `0x210b64...8328f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383912 | `0x2385d7...8531da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383913 | `0x2b2e46...f099f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383914 | `0x359104...43fd53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383917 | `0x45e95e...3c90dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383918 | `0x4b3679...b05d0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383921 | `0x5c277f...379f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383923 | `0x6691fa...fde966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383925 | `0x6b6cf3...3c4199` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383928 | `0x73ce2a...a382a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383929 | `0x7b95c6...704d1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383931 | `0x87cb80...949222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383932 | `0x901b18...e902a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383933 | `0x9cf4e0...9cf37f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383937 | `0xa97a67...05355e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383938 | `0xaab708...7b2b13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383939 | `0xab5044...713d77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383940 | `0xb53901...bf9003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383943 | `0xbc408d...069b15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383944 | `0xca2cc6...6e32ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383945 | `0xd3cfe9...09d09b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383946 | `0xd3d3d6...13df7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383948 | `0xd4c87d...2cc215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383950 | `0xd82ced...d870a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383951 | `0xe5ce84...6854dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383952 | `0xf626ac...225fe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-383953 | `0xfe1128...a416dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383956 | `0x0c84e1...14d0af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383960 | `0x2a22a5...6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383961 | `0x2b28e8...1e6f70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383962 | `0x3c3bad...8b11e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383963 | `0x3c48b9...78faba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383965 | `0x4c8411...a7728a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383966 | `0x52257e...382a74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383967 | `0x78b8d9...f462f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383968 | `0x7e5739...a5f35c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383970 | `0x8dc156...3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383971 | `0x8f9775...83f77b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383972 | `0x954499...b7c856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383973 | `0xb3151a...f9837c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383974 | `0xb48ccf...092ad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383975 | `0xb8af0e...0addf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383977 | `0xbfa98e...64fe7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383978 | `0xc63c6b...659e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383979 | `0xc72d59...f93bdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383980 | `0xccf12d...878129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383981 | `0xcd8a5e...2cb565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383982 | `0xde9c71...9c8fde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383983 | `0xe15d47...7e0045` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383984 | `0xe6c74a...647ad3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383985 | `0xe8ccd4...d38bd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383986 | `0xe96917...21dac0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383987 | `0xf6a177...d4532d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-383988 | `0xfbdf83...3a094e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13028] 2021-05-03-Trail_of_Bits.pdf — no match: Extracted from the executive summary and findings sections. The audit date is from the cover page: 'May 3, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-05-03-Trail_of_Bits.pdf | Curve | ambiguous — not counted | 0x8dc156… (alternative) `0x8dc156...3f8ce8` — liveness: live (current_address_book_code)<br>0xccf12d… (alternative) `0xccf12d...878129` — liveness: live (current_address_book_code)<br>0x85e969… (alternative) `0x85e969...165157` — liveness: live (current_address_book_code)<br>0x10c47b… (alternative) `0x10c47b...a6ffa9` — liveness: live (current_address_book_code)<br>Curves (alternative) `0xb39794...50961e` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>0x87cb80… (alternative) `0x87cb80...949222` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2021-05-03-Trail_of_Bits.pdf | Router | ambiguous — not counted | Router (alternative) `0x575f1e...246f51` — deployed 2023-02-11 22:32:07+03 — liveness: live (current_address_book_code)<br>0x78b8d9… (alternative) `0x78b8d9...f462f5` — liveness: live (current_address_book_code)<br>Router (alternative) `0x0bf905...08bb09` — deployed 2023-11-14 04:52:23+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0xbc3011...624406` — deployed 2023-11-10 13:25:24+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0x9bba68...25428e` — deployed 2023-02-12 00:04:35+03 — liveness: live (current_address_book_code)<br>Router (alternative) `0x5cf6d4...baa168` — deployed 2023-11-08 19:03:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | Orchestrator | ambiguous — not counted | Orchestrator (alternative) `0x6b5deb...3f2bf4` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x1190da...372254` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x1020e0...24c8a7` — deployed 2023-11-10 13:24:17+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0xbc875f...d8222e` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>Orchestrator (alternative) `0x11654b...56921f` — deployed 2023-11-08 19:01:41+03 — liveness: live (current_address_book_code)<br>0xf6a177… (alternative) `0xf6a177...d4532d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | Assimilators | unmatched — not counted | — | listed in scope and findings | no |
| 2021-05-03-Trail_of_Bits.pdf | Swaps | ambiguous — not counted | Swaps (alternative) `0xa49bf7...8e5ecd` — deployed 2023-11-08 19:02:09+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x5a0b0b...e2db61` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x0dc8c8...d07ed4` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x74982d...04d3a6` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code)<br>Swaps (alternative) `0x1190da...372254` — deployed 2023-11-10 13:24:33+03 — liveness: live (current_address_book_code)<br>0x7e5739… (alternative) `0x7e5739...a5f35c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveMath | unmatched — not counted | — | referenced in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | ProportionalLiquidity | ambiguous — not counted | ProportionalLiquidity (alternative) `0x809423...6182f3` — deployed 2023-02-11 23:16:59+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x85e969...165157` — deployed 2023-11-10 13:24:25+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x85fa8b...151dbd` — deployed 2023-02-11 22:27:57+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x3a2f9e...082379` — deployed 2023-11-08 19:01:41+03 — liveness: live (current_address_book_code)<br>ProportionalLiquidity (alternative) `0x0a7e79...7f6fb0` — deployed 2023-11-14 04:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-05-03-Trail_of_Bits.pdf | CurveStorage | unmatched — not counted | — | referenced in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | CadcToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | XsgdToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | EursToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | UsdcToUsdAssimilator | unmatched — not counted | — | listed in findings | no |
| 2021-05-03-Trail_of_Bits.pdf | IOracle | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x650713...93757a` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde9c71...9c8fde` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3a3f59...d903ff` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xff6ab3...64818e` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1134da...d9354b` | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1190da...372254` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc875f...d8222e` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x11654b...56921f` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6b5deb...3f2bf4` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1020e0...24c8a7` | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a7e79...7f6fb0` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x809423...6182f3` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3a2f9e...082379` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x85fa8b...151dbd` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x85e969...165157` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0bf905...08bb09` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bba68...25428e` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x575f1e...246f51` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5cf6d4...baa168` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc3011...624406` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6e87a3...e04e7b` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6f1b9b...65169c` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa1fcb2...d259fd` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xba6f70...54e2d5` | StakingRewardsMulti | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0dc8c8...d07ed4` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74982d...04d3a6` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5a0b0b...e2db61` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa49bf7...8e5ecd` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1190da...372254` | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1134da...d9354b` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf82596...4190b2` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd3f216...845cbc` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd6af8d...b3e6f0` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0a7e79...7f6fb0` | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc470d3...2e5ec7` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3cc07...9b545d` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa070fb...e2214c` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb6c42f...bf482b` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e1941...1bf083` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [13028] 2021-05-03-Trail_of_Bits.pdf

Fork inheritance lineage and inherited audits are included when available.
