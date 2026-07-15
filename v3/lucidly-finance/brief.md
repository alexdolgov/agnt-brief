# Agentic Audit Brief: Lucidly Finance

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

- Project: Lucidly Finance (`lucidly-finance`)
- Website: [https://app.lucidly.finance](https://app.lucidly.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $137,011.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lucidly Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 9 core, 1 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (9), infra (1)
- Contract kinds: contract (10)
- Detected standards: erc165 (2), accesscontrol (1), erc20permit (1), multicall (1)
- Frameworks: solmate (9), openzeppelin (8), boringcrypto (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 10 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

**LayerZeroTeller** (`0xaefc11...423825`, chain 1)
Origin: veda (`0x31a5a9...18f5b8`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AccountantWithRateProviders (`0x03d9a9...de8da6`, chain 1)
- ArcticArchitectureLens (`0x074f54...dd80d9`, chain 1)
- BoringOnChainQueue (`0xf632c1...a1040b`, chain 1)
- BoringSolver (`0x1d82e9...536805`, chain 1)
- BoringVault (`0x279cad...a2c589`, chain 1)
- ManagerWithMerkleVerification (`0x9b3e56...940ce8`, chain 1)
- Pauser (`0x31b923...fb0f2d`, chain 1)
- RolesAuthority (`0xf7f3ac...d36fdf`, chain 1)
- TimelockController (`0xf27ccf...13ab13`, chain 1)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountantWithRateProviders | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388586 | `0x03d9a9...de8da6` | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388587 | `0x074f54...dd80d9` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388594 | `0xf632c1...a1040b` | ⚠️ Unaudited |
| BoringSolver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388588 | `0x1d82e9...536805` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388589 | `0x279cad...a2c589` | ⚠️ Unaudited |
| LayerZeroTeller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388592 | `0xaefc11...423825` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388591 | `0x9b3e56...940ce8` | ⚠️ Unaudited |
| Pauser | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388590 | `0x31b923...fb0f2d` | ⚠️ Unaudited |
| RolesAuthority | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388595 | `0xf7f3ac...d36fdf` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388593 | `0xf27ccf...13ab13` | ⚠️ Unaudited |

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
| [First Review](https://github.com/pashov/audits/blob/master/team/pdf/Lucidly-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Second Review](https://github.com/pashov/audits/blob/master/team/pdf/Lucidly-security-review.pdf) | Pashov Audit Group | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [27202] First Review — no match: Scope section explicitly lists Pool, PoolToken, Staking. Audit date is the end date of the engagement period.
- [27203] Second Review — no match: Scope section explicitly lists 'Pool' and 'Staking' as the smart contracts in scope. Audit date is the end date of the engagement: May 9th 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| First Review | Pool | unmatched — not counted | — | listed in scope section | no |
| First Review | PoolToken | unmatched — not counted | — | listed in scope section | no |
| First Review | Staking | unmatched — not counted | — | listed in scope section | no |
| Second Review | Pool | unmatched — not counted | — | listed in scope section: 'The following smart contracts were in scope of the audit: Pool Staking' | no |
| Second Review | Staking | unmatched — not counted | — | listed in scope section: 'The following smart contracts were in scope of the audit: Pool Staking' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x03d9a9...de8da6` | AccountantWithRateProviders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x074f54...dd80d9` | ArcticArchitectureLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf632c1...a1040b` | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d82e9...536805` | BoringSolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x279cad...a2c589` | BoringVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b3e56...940ce8` | ManagerWithMerkleVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31b923...fb0f2d` | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7f3ac...d36fdf` | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [27202] First Review
- [27203] Second Review

Fork inheritance lineage and inherited audits are included when available.
