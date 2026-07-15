# Agentic Audit Brief: Accumulated Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.7% over 90 days

## Project Overview

- Project: Accumulated Finance (`accumulated-finance`)
- Website: [https://accumulated.finance](https://accumulated.finance)
- Lifecycle: unknown (Tier 0, 84.2% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, manta-pacific
- Contract surface: 6 unique implementations (7 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $978,025.00
- On-chain TVL (included contracts): $12,187.76
- TVL by chain: Ethereum $12,187.76

## Project Description

This brief describes the observed EVM deployment and audit surface for Accumulated Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc, ethereum, manta-pacific. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), ownable (6), pausable (6), erc20permit (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Manta (`0x95cef1...c544e5`, chain 169)
- rstETH (`0x684d7f...92dfa9`, chain 1)
- StakedACME (`0x7ac168...b3c547`, chain 1)
- stVLX (`0xcba2ae...49681a`, chain 56)
- stZETA (`0xf38fee...bb0cfc`, chain 1)
- stZETA (`0xcf123d...e01a6b`, chain 56)
- WrappedToken (`0xdf4ef6...c01170`, chain 1)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,187.76
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $12,187.76 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WrappedToken | token | project_anchor | own_supporting | 0 | ethereum | unit-225531 | `0xdf4ef6...c01170` | ⚠️ Unaudited |
| Manta | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-225533 | `0x95cef1...c544e5` | ⚠️ Unaudited |
| rstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-225529 | `0x684d7f...92dfa9` | ⚠️ Unaudited |
| StakedACME | token | project_anchor | own_supporting | 0 | ethereum | unit-225530 | `0x7ac168...b3c547` | ⚠️ Unaudited |
| stVLX | unknown | project_anchor | own_supporting | 0 | bsc | unit-225535 | `0xcba2ae...49681a` | ⚠️ Unaudited |
| stZETA | unknown | project_anchor | own_supporting | 0 | bsc | unit-225536 | 2 deployments: ethereum `0xf38fee...bb0cfc`; bsc `0xcf123d...e01a6b` | ⚠️ Unaudited |

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
| [HatsFinance-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/HatsFinance-Audit.md) | HatsFinance | Contest | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Nethermind-AuditAgent-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/Nethermind-AuditAgent-Audit.md) | Nethermind | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [audit-metatrust-2024-06-29.pdf](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/audit-metatrust-2024-06-29.pdf) | MetaTrust | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14545] HatsFinance-Audit.md — no match: Scope explicitly lists Minter.sol and stROSEMinter.sol. No audit date found in the report.
- [14546] Nethermind-AuditAgent-Audit.md — no match: The report does not have a dedicated scope section; contract names were extracted from the introduction and findings. No audit date found.
- [14547] audit-metatrust-2024-06-29.pdf — no match: The report explicitly lists Minter as audited contract and mentions stToken and wstToken as other contracts in Accumulated Finance. Multiple derived contracts (BaseMinter, NativeMinter, etc.) are referenced in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HatsFinance-Audit.md | Minter | unmatched — not counted | — | listed in scope | no |
| HatsFinance-Audit.md | stROSEMinter | unmatched — not counted | — | listed in scope | no |
| Nethermind-AuditAgent-Audit.md | NativeLending | unmatched — not counted | — | mentioned as contract implementation for borrowing native tokens | no |
| Nethermind-AuditAgent-Audit.md | ERC20Lending | unmatched — not counted | — | mentioned as contract implementation for borrowing ERC20 tokens | no |
| Nethermind-AuditAgent-Audit.md | BaseLending | unmatched — not counted | — | mentioned as abstract contract providing core lending functionality | no |
| audit-metatrust-2024-06-29.pdf | Minter | unmatched — not counted | — | listed in scope and findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | NativeMinter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | ERC20Minter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinterRedeem | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | NativeMinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | ERC20MinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | stToken | unmatched — not counted | — | explicitly listed as contract in scope | no |
| audit-metatrust-2024-06-29.pdf | wstToken | unmatched — not counted | — | explicitly listed as contract in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdf4ef6...c01170` | WrappedToken | token | $12,187.76 | Verified native implementation with $12,187.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x684d7f...92dfa9` | rstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ac168...b3c547` | StakedACME | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcba2ae...49681a` | stVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcf123d...e01a6b` | stZETA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [14545] HatsFinance-Audit.md
- [14546] Nethermind-AuditAgent-Audit.md
- [14547] audit-metatrust-2024-06-29.pdf

Fork inheritance lineage and inherited audits are included when available.
