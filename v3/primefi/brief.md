# Agentic Audit Brief: PrimeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: PrimeFi (`primefi`)
- Website: [https://primefi.xyz/](https://primefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, hyperliquid
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $174,869.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PrimeFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, hyperliquid. Structural roles: 13 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (13), core (1)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x009a18...fa748a`, chain 999)
- UnnamedContract (`0x11f746...46d373`, chain 999)
- UnnamedContract (`0x1952dd...1490e5`, chain 999)
- UnnamedContract (`0x386f40...21095b`, chain 999)
- UnnamedContract (`0x5fc173...31cab9`, chain 999)
- UnnamedContract (`0x98b705...89d2d6`, chain 999)
- UnnamedContract (`0xd00fe5...6e5365`, chain 999)
- UnnamedContract (`0xd218a5...e3114c`, chain 999)
- UnnamedContract (`0x3a577f...158a37`, chain 8453)
- UnnamedContract (`0xd9ba32...7bbfe8`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x07cb5a...905690`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x182cfb...b9a9fa`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6e811a...447a6e`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x71f719...1e8817`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9601c4...2b2d5c`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0xcf4642...7348ba`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1ff5e0...a30401`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2a50be...fa954e`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x47c4d7...46e0a4`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x834695...ca4375`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaae0d3...95d656`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9a14b...68741c`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc12bdd...2a9066`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdbed51...42d406`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
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
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251787 | `0x07cb5a...905690` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251789 | `0x182cfb...b9a9fa` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251793 | `0x6e811a...447a6e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251794 | `0x71f719...1e8817` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251795 | `0x9601c4...2b2d5c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251797 | `0xcf4642...7348ba` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251777 | `0x1ff5e0...a30401` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | base | unit-251800 | `0x2a50be...fa954e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251779 | `0x47c4d7...46e0a4` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251780 | `0x834695...ca4375` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251781 | `0xaae0d3...95d656` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251782 | `0xb9a14b...68741c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251783 | `0xc12bdd...2a9066` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251785 | `0xdbed51...42d406` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251786 | `0x009a18...fa748a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251788 | `0x11f746...46d373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251790 | `0x1952dd...1490e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251791 | `0x386f40...21095b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251792 | `0x5fc173...31cab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251796 | `0x98b705...89d2d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251798 | `0xd00fe5...6e5365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251799 | `0xd218a5...e3114c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251778 | `0x3a577f...158a37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251784 | `0xd9ba32...7bbfe8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view — no match: No explicit scope table; contracts extracted from findings targets and references.
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3 — no match: No contract names or scope section found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | RewardDistributionController | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-004 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | MultiFeeDistribution | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-005 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | EligibilityDataProvider | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPool | unmatched — not counted | — | Listed as target in finding PVE-006 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | ChefIncentivesController | unmatched — not counted | — | Referenced in finding PVE-007 (example setters) | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPoolAddressesProvider | unmatched — not counted | — | Mentioned in finding PVE-007 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3

Fork inheritance lineage and inherited audits are included when available.
