# Agentic Audit Brief: Beradrome

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 42.6% over 90 days

## Project Overview

- Project: Beradrome (`beradrome`)
- Website: [https://www.beradrome.com](https://www.beradrome.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: berachain
- Contract surface: 11 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,836,174.59
- On-chain TVL (included contracts): $3,276,244.79
- TVL by chain: Berachain $3,276,244.79

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Beradrome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across berachain. Structural roles: 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), erc20permit (3), pausable (3)
- Frameworks: openzeppelin (3), solady (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TOKEN | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7838ce...c74174` | ⚠️ Unaudited |
| TOKENFees | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x06030c...eba5d3` | ⚠️ Unaudited |
| BerachainPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xac5922...500171` | ⚠️ Unaudited |
| Bribe | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5dba62...659edd` | ⚠️ Unaudited |
| Gauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x229fdf...4dcc38` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab53af...58e09c` | ⚠️ Unaudited |
| KodiakIslandWithRouter | adapter | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | berachain | unit-230135 | 3 deployments: berachain `0x63b0ed...8ce225`; berachain `0xbfbefc...742eb0`; berachain `0xe5a2ab...09aff9` | ⚠️ Unaudited |
| RewardVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x63233e...fc09f0` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd7ea36...e4ad47` | ⚠️ Unaudited |
| VTOKEN | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7f0976...fa2b69` | ⚠️ Unaudited |
| VTOKENRewarder | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8a5547...94865e` | ⚠️ Unaudited |

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
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2F9amf3oq6oU9WdNOvESyc%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FBU79KHmtxM1caLQzs1CE%2FZokyoAudit.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf](https://3573018453-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FzEE4RoSkf1KPe6qHUHZb%2Fuploads%2FUFxBvo4XJlvkU9Fzh8nH%2FAstraSec-AuditReport-Beradrome.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12594] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf — no match: The audit report clearly identifies LilToken as the target, and multiple contracts (TOKEN, Voter, Minter, etc.) are referenced in findings. The date is explicitly stated on the cover page and in the report header.
- [12595] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf — no match: Contracts listed in scope section on page 3 of the audit report.
- [12596] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf — no match: Extracted contract names from source code listing and vulnerability details. Audit date from document header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | LilToken | unmatched — not counted | — | Target of audit, mentioned in introduction and throughout | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKEN | unmatched — not counted | — | Mentioned in findings PVE-002, PVE-003, and as a token contract | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | BASE | unmatched — not counted | — | Mentioned as backing token in TOKEN::buy() | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | oTOKEN | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-004 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Voter | unmatched — not counted | — | Mentioned in findings PVE-001, PVE-004, PVE-005 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | VTOKEN | unmatched — not counted | — | Mentioned in finding PVE-001 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Minter | unmatched — not counted | — | Mentioned in finding PVE-004 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Plugin | unmatched — not counted | — | Mentioned in introduction and finding PVE-001 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | TOKENFees | unmatched — not counted | — | Mentioned in finding PVE-001 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf | Gauge | unmatched — not counted | — | Mentioned in introduction and finding PVE-005 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | CantodexPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | FortePairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | VelocimeterPairPlugin | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | BribeFactory | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | GaugeFactory | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | Minter | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | oSOUL | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | SOUL | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | Voter | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf | vSOUL | unmatched — not counted | — | listed in scope | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | Voter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | TOKEN | unmatched — not counted | — | listed in scope and findings | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | HiveDistro | unmatched — not counted | — | mentioned in finding M-1 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | HiveDistroFactory | unmatched — not counted | — | mentioned in finding M-1 target | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | KodiakPlugin | unmatched — not counted | — | mentioned in finding M-3 | no |
| spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf | KodiakPluginFactory | unmatched — not counted | — | mentioned in finding M-3 target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [12594] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/9amf3oq6oU9WdNOvESyc/PeckShield-Audit-Report-LilToken-v1.0rc (1).pdf
- [12595] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/BU79KHmtxM1caLQzs1CE/ZokyoAudit.pdf
- [12596] spaces/zEE4RoSkf1KPe6qHUHZb/uploads/UFxBvo4XJlvkU9Fzh8nH/AstraSec-AuditReport-Beradrome.pdf

Fork inheritance lineage and inherited audits are included when available.
