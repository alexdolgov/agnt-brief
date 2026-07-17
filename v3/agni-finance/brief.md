# Agentic Audit Brief: Agni Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Agni Finance (`agni-finance`)
- Website: [https://agni.finance/](https://agni.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 16 unique implementations (16 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,189,631.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Agni Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb0bcbe0d2b197b7a8fb7e66d6a0dd6a91cb985d6`, chain 5000)
- UnnamedContract (`0xbe592efcf174b3e0e4208dc8c1658822d017568f`, chain 5000)
- AgniFactory (`0x25780dc8fc3cfbd75f33bfdab65e969b603b2035`, chain 5000)
- AgniPoolDeployer (`0xe9827b4ebeb9ae41fc57efdddd79edddc2ea4d03`, chain 5000)
- MixedRouteQuoterV1 (`0xcdbd1c6cfc89af8a518e23b0c71996b90a12befc`, chain 5000)
- Multicall3 (`0x05f3105fc9fc531712b2570f1c6e11dd4bcf7b3c`, chain 5000)
- NFTDescriptor (`0x70153a35c3005385b45c47cdcfc7197c1a22477a`, chain 5000)
- NonfungiblePositionManager (`0x218bf598d1453383e2f4aa7b14ffb9bfb102d637`, chain 5000)
- OutputCodeHash (`0x5cfa0f1c4067c90a50b973e5f98cd265de5df724`, chain 5000)
- Quoter (`0x9488c05a7b75a6fefdcae4f11a33467bcba60177`, chain 5000)
- QuoterV2 (`0xc4aadc921e1cdb66c5300bc158a313292923c0cb`, chain 5000)
- SmartRouter (`0xb52b1f5e08c04a8c33f4c7363fa2de23b9bc169f`, chain 5000)
- SwapRouter (`0x319b69888b0d11cec22caa5034e25fffbdc88421`, chain 5000)
- TickLens (`0xecdba665aa209247cd334d0d037b913528a7bf67`, chain 5000)
- TransparentUpgradeableProxy (`0xcb814b767d41b4bd94da6abb860d25b607ad5764`, chain 5000)
- WMANTLE (`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 16 of 16 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgniFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-378710 | `0x25780dc8fc3cfbd75f33bfdab65e969b603b2035` | ⚠️ Unaudited |
| AgniPoolDeployer | unknown | project_anchor | own_supporting | 0 | mantle | unit-378721 | `0xe9827b4ebeb9ae41fc57efdddd79edddc2ea4d03` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378720 | `0xcdbd1c6cfc89af8a518e23b0c71996b90a12befc` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378709 | `0x05f3105fc9fc531712b2570f1c6e11dd4bcf7b3c` | ⚠️ Unaudited |
| NFTDescriptor | unknown | project_anchor | own_supporting | 0 | mantle | unit-378713 | `0x70153a35c3005385b45c47cdcfc7197c1a22477a` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-378723 | `0x218bf598d1453383e2f4aa7b14ffb9bfb102d637` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | mantle | unit-378724 | `0xcb814b767d41b4bd94da6abb860d25b607ad5764` | ⚠️ Unaudited |
| OutputCodeHash | unknown | project_anchor | own_supporting | 0 | mantle | unit-378712 | `0x5cfa0f1c4067c90a50b973e5f98cd265de5df724` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378715 | `0x9488c05a7b75a6fefdcae4f11a33467bcba60177` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-378719 | `0xc4aadc921e1cdb66c5300bc158a313292923c0cb` | ⚠️ Unaudited |
| SmartRouter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378717 | `0xb52b1f5e08c04a8c33f4c7363fa2de23b9bc169f` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | mantle | unit-378711 | `0x319b69888b0d11cec22caa5034e25fffbdc88421` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | mantle | unit-378722 | `0xecdba665aa209247cd334d0d037b913528a7bf67` | ⚠️ Unaudited |
| WMANTLE | unknown | project_anchor | own_supporting | 0 | mantle | unit-378714 | `0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-378716 | `0xb0bcbe0d2b197b7a8fb7e66d6a0dd6a91cb985d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-378718 | `0xbe592efcf174b3e0e4208dc8c1658822d017568f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
