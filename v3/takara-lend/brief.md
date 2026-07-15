# Agentic Audit Brief: Takara Lend

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Takara Lend (`takara-lend`)
- Website: [https://app.takaralend.com/](https://app.takaralend.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sei
- Contract surface: 13 unique implementations (17 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,559,123.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Takara Lend in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Comptroller (`0x56a171...b8d9bd`, chain 1329)
- JumpRateModel (`0x52196f...06a26b`, chain 1329)
- JumpRateModel (`0x692d0b...ff196b`, chain 1329)
- JumpRateModel (`0xa282a2...8d88fe`, chain 1329)
- JumpRateModel (`0xc6c068...291aa2`, chain 1329)
- JumpRateModel (`0xed908a...709e1e`, chain 1329)
- MarketState (`0x323917...e2af40`, chain 1329)
- MultiRewardDistributor (`0x059798...d9dc82`, chain 1329)
- ProxyAdmin (`0x8df126...a60288`, chain 1329)
- TErc20Delegator (`0x92e514...e8b3d6`, chain 1329)
- TErc20Delegator (`0xa26b9b...52c4e2`, chain 1329)
- TErc20Delegator (`0xc3c9e3...b86e87`, chain 1329)
- TErc20Delegator (`0xc68351...bd7479`, chain 1329)
- TErc20Delegator (`0xda642a...200429`, chain 1329)
- TransparentUpgradeableProxy (`0x68a92b...f9bc11`, chain 1329)
- TransparentUpgradeableProxy (`0xd6a275...cc0447`, chain 1329)
- Unitroller (`0x71034b...d8caee`, chain 1329)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CompositeOracle | unknown | project_anchor | own_supporting | 1 | sei | unit-393848 | `0xd6a275...cc0447` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 0 | sei | unit-393840 | `0x56a171...b8d9bd` | ⚠️ Unaudited |
| ComptrollerV2 | unknown | project_anchor | own_supporting | 1 | sei | unit-393850 | `0x71034b...d8caee` | ⚠️ Unaudited |
| JumpRateModel | unknown | project_anchor | own_supporting | 0 | sei | unit-393839 | `0x52196f...06a26b` | ⚠️ Unaudited |
| JumpRateModel | unknown | project_anchor | own_supporting | 0 | sei | unit-393841 | `0x692d0b...ff196b` | ⚠️ Unaudited |
| JumpRateModel | unknown | project_anchor | own_supporting | 0 | sei | unit-393844 | `0xa282a2...8d88fe` | ⚠️ Unaudited |
| JumpRateModel | unknown | project_anchor | own_supporting | 0 | sei | unit-393845 | `0xc6c068...291aa2` | ⚠️ Unaudited |
| JumpRateModel | unknown | project_anchor | own_supporting | 0 | sei | unit-393846 | `0xed908a...709e1e` | ⚠️ Unaudited |
| MarketState | unknown | project_anchor | own_supporting | 0 | sei | unit-393838 | `0x323917...e2af40` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | sei | unit-393847 | 2 deployments: sei `0x059798...d9dc82`; sei `0x68a92b...f9bc11` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | sei | unit-393842 | `0x8df126...a60288` | ⚠️ Unaudited |
| TErc20Delegate | unknown | project_anchor | own_supporting | 4 | sei | unit-393849 (4 proxies) | 4 deployments: sei `0xa26b9b...52c4e2`; sei `0xc3c9e3...b86e87`; sei `0xc68351...bd7479`; sei `0xda642a...200429` | ⚠️ Unaudited |
| TErc20Delegator | unknown | project_anchor | own_supporting | 0 | sei | unit-393843 | `0x92e514...e8b3d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| needs_review | 13 |

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
