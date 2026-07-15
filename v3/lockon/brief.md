# Agentic Audit Brief: LOCKON

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: LOCKON (`lockon`)
- Website: [https://lockon.finance](https://lockon.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, polygon
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $879,886.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LOCKON. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 6 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

**SetToken** (`0xadb6d6...437252`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xbe9a09...e30f63`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SetToken** (`0xd32dfe...80662f`, chain 137)
Origin: beta-finance (`0x1494ca...ba3c2b`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24b803...596c8a`, chain 42161)
- UnnamedContract (`0x9e877c...0ec079`, chain 42161)
- UnnamedContract (`0xdd4850...ff3fac`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245152 | `0xadb6d6...437252` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245153 | `0xbe9a09...e30f63` | ⚠️ Unaudited |
| SetToken | token | project_anchor | own_supporting | 0 | polygon | unit-245154 | `0xd32dfe...80662f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245155 | `0x24b803...596c8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245156 | `0x9e877c...0ec079` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245157 | `0xdd4850...ff3fac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [gitlab.com/lockon-finance/core-contracts/-/tree/main/audits](https://gitlab.com/lockon-finance/core-contracts/-/tree/main/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [blaize.tech/clients/smart-contract-security-audit-for-lockon-finance](https://blaize.tech/clients/smart-contract-security-audit-for-lockon-finance) | Blaize Security | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [final_report_LOCKON_Mar_27_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Mar_27_2024.pdf) | Bunzz | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-(Adjuster)-audit-report-%5B15-Nov-2024%5D.pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Lockon-audit-report-[7-July-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/l/lockon-finance/Lockon-audit-report-%5B7-July-2023%5D.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [final_report_LOCKON_Oct_25_2024.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit/final_report_LOCKON_Oct_25_2024.pdf) | Bunzz | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [LOCKON-Smart-Contract-Audit-Report.pdf](https://github.com/lockon-finance/lock-contracts/blob/main/audits/hashlock/LOCKON-Smart-Contract-Audit-Report.pdf) | Hashlock | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [bunzz-audit (GitHub directory)](https://github.com/lockon-finance/lock-contracts/blob/main/audits/bunzz-audit) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits — no match: The provided text is a fragment of a GitLab page header, not an audit report. No contract names or audit date could be extracted.
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance — no match: Only one contract name explicitly mentioned in scope; no file paths or detailed scope table provided.
- [3230] final_report_LOCKON_Mar_27_2024.pdf — no match: No reason recorded
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf — no match: No reason recorded
- [3232] Lockon-audit-report-[7-July-2023].pdf — no match: No reason recorded
- [3233] final_report_LOCKON_Oct_25_2024.pdf — no match: Only one contract in scope: LockonReferral from lockon-finance/lock-contracts repository.
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf — no match: No reason recorded
- [15448] bunzz-audit (GitHub directory) — no match: The provided text is a GitHub directory listing with no actual audit report content. No contract names or audit details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blaize.tech/clients/smart-contract-security-audit-for-lockon-finance | ExchangeIssuanceZeroEx | unmatched — not counted | — | mentioned as a notable addition in the scope description | no |
| final_report_LOCKON_Mar_27_2024.pdf | Airdrop | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | IndexStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockStaking | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockToken | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | LockonVesting | unmatched — not counted | — | — | no |
| final_report_LOCKON_Mar_27_2024.pdf | MerkleAirdrop | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | Position | unmatched — not counted | — | — | no |
| Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf | PositionUnitAdjusterModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | BasicIssuanceModule | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExchangeIssuanceZeroEx | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | ExtendModuleBase | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Operator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | Pausable | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | SetTokenCreator | unmatched — not counted | — | — | no |
| Lockon-audit-report-[7-July-2023].pdf | TradeModule | unmatched — not counted | — | — | no |
| final_report_LOCKON_Oct_25_2024.pdf | LockonReferral | unmatched — not counted | — | listed in scope and findings location | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | Airdrop.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | IndexStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockStaking.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockToken.sol | unmatched — not counted | — | — | no |
| LOCKON-Smart-Contract-Audit-Report.pdf | LockonVesting.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xadb6d6...437252` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbe9a09...e30f63` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd32dfe...80662f` | SetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=3
- Match method counts: n/a

Zero-match audit list:

- [3228] gitlab.com/lockon-finance/core-contracts/-/tree/main/audits
- [3229] blaize.tech/clients/smart-contract-security-audit-for-lockon-finance
- [3230] final_report_LOCKON_Mar_27_2024.pdf
- [3231] Lockon-(Adjuster)-audit-report-[15-Nov-2024].pdf
- [3232] Lockon-audit-report-[7-July-2023].pdf
- [3233] final_report_LOCKON_Oct_25_2024.pdf
- [3234] LOCKON-Smart-Contract-Audit-Report.pdf
- [15448] bunzz-audit (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
