# Agentic Audit Brief: Neku

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

- Project: Neku (`neku`)
- Website: [https://nekufinance.gitbook.io/neku-finance/](https://nekufinance.gitbook.io/neku-finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: 0/34 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Neku. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 34 contract row(s) across arbitrum. Structural roles: 34 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 34
- Structural roles: core (34)
- Contract kinds: contract (34)
- Detected standards: erc20 (34), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CErc20Delegator (`0x19714e...50ab5f`, chain 42161)
- CErc20Delegator (`0x2907c3...a9b43b`, chain 42161)
- CErc20Delegator (`0x3631de...e93ea8`, chain 42161)
- CErc20Delegator (`0x3823d2...31f28b`, chain 42161)
- CErc20Delegator (`0x38a069...83cd1c`, chain 42161)
- CErc20Delegator (`0x3ae83a...0ed251`, chain 42161)
- CErc20Delegator (`0x655773...c01912`, chain 42161)
- CErc20Delegator (`0x660474...44396f`, chain 42161)
- CErc20Delegator (`0x679818...bbe205`, chain 42161)
- CErc20Delegator (`0x70d279...c814a3`, chain 42161)
- CErc20Delegator (`0x70faf3...6af0db`, chain 42161)
- CErc20Delegator (`0x71ad16...32e920`, chain 42161)
- CErc20Delegator (`0x7fd875...f52163`, chain 42161)
- CErc20Delegator (`0x815330...5a4c4a`, chain 42161)
- CErc20Delegator (`0x82015c...33eb20`, chain 42161)
- CErc20Delegator (`0x874a86...d41554`, chain 42161)
- CErc20Delegator (`0x8e9027...151b07`, chain 42161)
- CErc20Delegator (`0x9ac8f7...f50caf`, chain 42161)
- CErc20Delegator (`0xa9958d...cae784`, chain 42161)
- CErc20Delegator (`0xb5dc00...9bfeea`, chain 42161)
- CErc20Delegator (`0xba7dab...30e6b3`, chain 42161)
- CErc20Delegator (`0xbd1bf6...8f3296`, chain 42161)
- CErc20Delegator (`0xbd65ae...c96915`, chain 42161)
- CErc20Delegator (`0xc7dec2...7494ea`, chain 42161)
- CErc20Delegator (`0xcb2b0b...daf95a`, chain 42161)
- CErc20Delegator (`0xccb8da...98aa15`, chain 42161)
- CErc20Delegator (`0xd73ed2...37bdd1`, chain 42161)
- CErc20Delegator (`0xdbfd9c...c11a26`, chain 42161)
- CErc20Delegator (`0xdf19d7...e17bae`, chain 42161)
- CErc20Delegator (`0xee2a89...f6e07f`, chain 42161)
- CErc20Delegator (`0xfd4224...2f0553`, chain 42161)
- CEther (`0xbc4a19...eccb8b`, chain 42161)
- Comp (`0x3bf088...4be840`, chain 42161)
- WrappedToken (`0xa4cc4a...997ce3`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/34 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 34 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248773 | `0x19714e...50ab5f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248774 | `0x2907c3...a9b43b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248775 | `0x3631de...e93ea8` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248776 | `0x3823d2...31f28b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248777 | `0x38a069...83cd1c` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248778 | `0x3ae83a...0ed251` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248780 | `0x655773...c01912` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248781 | `0x660474...44396f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248782 | `0x679818...bbe205` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248783 | `0x70d279...c814a3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248784 | `0x70faf3...6af0db` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248785 | `0x71ad16...32e920` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248786 | `0x7fd875...f52163` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248787 | `0x815330...5a4c4a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248788 | `0x82015c...33eb20` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248789 | `0x874a86...d41554` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248790 | `0x8e9027...151b07` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248791 | `0x9ac8f7...f50caf` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248793 | `0xa9958d...cae784` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248794 | `0xb5dc00...9bfeea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248795 | `0xba7dab...30e6b3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248797 | `0xbd1bf6...8f3296` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248798 | `0xbd65ae...c96915` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248799 | `0xc7dec2...7494ea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248800 | `0xcb2b0b...daf95a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248801 | `0xccb8da...98aa15` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248802 | `0xd73ed2...37bdd1` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248803 | `0xdbfd9c...c11a26` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248805 | `0xdf19d7...e17bae` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248807 | `0xee2a89...f6e07f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248809 | `0xfd4224...2f0553` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248796 | `0xbc4a19...eccb8b` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248779 | `0x3bf088...4be840` | ⚠️ Unaudited |
| WrappedToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-248792 | `0xa4cc4a...997ce3` | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/nekufinance](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3021] skynet.certik.com/projects/nekufinance — no match: Only two contract files explicitly listed in audited files; other 18 files not named in provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/nekufinance | CarefulMath | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/nekufinance | Exponential | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x19714e...50ab5f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2907c3...a9b43b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3631de...e93ea8` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3823d2...31f28b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38a069...83cd1c` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ae83a...0ed251` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x655773...c01912` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x660474...44396f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x679818...bbe205` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70d279...c814a3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70faf3...6af0db` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x71ad16...32e920` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7fd875...f52163` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x815330...5a4c4a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x82015c...33eb20` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x874a86...d41554` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8e9027...151b07` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9ac8f7...f50caf` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa9958d...cae784` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb5dc00...9bfeea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xba7dab...30e6b3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd1bf6...8f3296` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd65ae...c96915` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7dec2...7494ea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcb2b0b...daf95a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xccb8da...98aa15` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd73ed2...37bdd1` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdbfd9c...c11a26` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf19d7...e17bae` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xee2a89...f6e07f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd4224...2f0553` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc4a19...eccb8b` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bf088...4be840` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa4cc4a...997ce3` | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3021] skynet.certik.com/projects/nekufinance

Fork inheritance lineage and inherited audits are included when available.
