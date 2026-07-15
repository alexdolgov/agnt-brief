# Agentic Audit Brief: MM Finance

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

- Project: MM Finance (`mm-finance`)
- Website: [https://mmfinance.gitbook.io/docs](https://mmfinance.gitbook.io/docs)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: cronos, polygon
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,184,067.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MM Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across cronos, polygon. Structural roles: 9 core, 1 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (9), supporting (1), unclassified (1)
- Contract kinds: contract (11)
- Detected standards: erc20 (8), erc20permit (7), ownable (3)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

1 of 11 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

**MasterMeerkat** (`0xa2b417...834764`, chain 137)
Origin: citadelswap (`0x75776c...f85237`)
Containment: 86.4% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- multiSet(uint256[],uint256[],bool)
- setProxy(address)
- setUnlockRate(uint16)

### Original Contracts (no fork detected - full audit scope)

- MeerkatPair (`0x1aec8f...614172`, chain 137)
- MeerkatPair (`0x384c1b...ddd724`, chain 137)
- MeerkatPair (`0x8ab477...236790`, chain 137)
- MeerkatPair (`0x8c2625...e8cd3c`, chain 137)
- MeerkatPair (`0xa78932...705b0f`, chain 137)
- MeerkatPair (`0xb965c1...87273b`, chain 137)
- MeerkatPair (`0xd15eb8...9cc86e`, chain 137)
- MeerkatRouter02 (`0x51aba4...eb1a17`, chain 137)
- MeerkatToken (`0x22a31b...3e9481`, chain 137)
- UnnamedContract (`0x97749c...ed7656`, chain 25)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterMeerkat | unknown | project_anchor | own_supporting | 0 | polygon | unit-247628 | `0xa2b417...834764` | ⚠️ Unaudited |
| MeerkatFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-247625 | `0x7cfb78...7d47a5` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247621 | `0x1aec8f...614172` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247623 | `0x384c1b...ddd724` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247626 | `0x8ab477...236790` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247627 | `0x8c2625...e8cd3c` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247629 | `0xa78932...705b0f` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247630 | `0xb965c1...87273b` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247631 | `0xd15eb8...9cc86e` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | project_anchor | own_supporting | 0 | polygon | unit-247624 | `0x51aba4...eb1a17` | ⚠️ Unaudited |
| MeerkatToken | token | project_anchor | own_supporting | 0 | polygon | unit-247622 | `0x22a31b...3e9481` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-247632 | `0x97749c...ed7656` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/mmfinance](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [paladinsec.co/projects/mmfinance](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3064] skynet.certik.com/projects/mmfinance — no match: Extracted from Audited Files section; only two files listed. Date from 'Last Audit was delivered on 12/22/2021'.
- [3065] paladinsec.co/projects/mmfinance — no match: Extracted from the audit report's 'Contracts Audited' section. The report date is ambiguous: 'Completed 30 Jan 2022' is used as the audit completion date. Note: The report also mentions 'Commissioned 27 Dec 2022' which seems inconsistent; likely a typo. The earlier date (2022) is used as it matches the completion date.
- [3066] security-audit-certificate.html — no match: The provided text is only a header/introduction and does not contain any contract names, scope section, or audit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/mmfinance | IERC20 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| skynet.certik.com/projects/mmfinance | ICrocERC20 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| paladinsec.co/projects/mmfinance | MeerkatRouter | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/mmfinance | MeerkatFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xa2b417...834764` | MasterMeerkat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7cfb78...7d47a5` | MeerkatFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1aec8f...614172` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x384c1b...ddd724` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8ab477...236790` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8c2625...e8cd3c` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa78932...705b0f` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb965c1...87273b` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd15eb8...9cc86e` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x51aba4...eb1a17` | MeerkatRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x22a31b...3e9481` | MeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [3064] skynet.certik.com/projects/mmfinance
- [3065] paladinsec.co/projects/mmfinance
- [3066] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
