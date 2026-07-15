# Agentic Audit Brief: Wing Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $25,592,668.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wing Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum, kaia. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x085552...f21989`, chain 1)
- UnnamedContract (`0x2f9fa6...6f12c9`, chain 1)
- UnnamedContract (`0x750b98...486bde`, chain 1)
- UnnamedContract (`0x49620e...e60a69`, chain 56)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (0 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 4 of 6 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20Template | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-262113 | `0xdb0f18...a86a1a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b) | proxy | project_anchor | own_supporting | 1 | bsc | unit-262119 | `0x49620e...e60a69` | ❓ Unverified |
| Proxy (impl: 0x3db35c654bbf0f777fc3b4b35a80ade783936552) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262116 | `0x750b98...486bde` | ❓ Unverified |
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | project_anchor | own_supporting | 1 | ethereum | unit-262117 | `0x2f9fa6...6f12c9` | ❓ Unverified |
| Proxy (impl: 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262118 | `0x085552...f21989` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-262114 | `0x3cb737...f1f969` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [lianantech.com](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [peckshield.com/en](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart contract security audit report—WING.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MJP_Z6dq1ohzr1zOvcp%2F-MLelX8p2K88vPZoMqdW%2F-MLenAyhREQ5-daJvZSY%2FSmart%20contract%20security%20audit%20report%E2%80%94WING.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Wing Flash Pool (EVM) Audit Report.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FaDE6vquvjLtsAAhMuP5k%2FWing%20Flash%20Pool%20(EVM)%20Audit%20Report.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [WING token (OKX) Audit Report.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FGRr8IG0K57uUZtAdqYLZ%2FWING%20token%20(OKX)%20Audit%20Report.pdf) | CERTIK | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Wing NFT Pool Audit.pdf](https://3730995086-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MJP_Z6dq1ohzr1zOvcp%2Fuploads%2FQJ1x61eFyqKSqJx4VXLI%2FWing%20NFT%20Pool%20Audit.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11717] lianantech.com — no match: The provided text only contains the auditor name 'Lianantech - 成都链安' and no other content. No contracts, files, or dates are identifiable.
- [11718] peckshield.com/en — no match: The provided text is a placeholder page requiring JavaScript, containing no audit report content.
- [28401] Smart contract security audit report—WING.pdf — no match: Single contract wing.py audited. CompletionDate is 2020.09.13.
- [28403] Wing Flash Pool (EVM) Audit Report.pdf — no match: No explicit scope table; contracts extracted from findings targets and mentions in report.
- [28404] WING token (OKX) Audit Report.pdf — no match: Only one contract in scope: WingToken.sol
- [28405] Wing NFT Pool Audit.pdf — no match: Extracted contract names from findings lines and project description. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Smart contract security audit report—WING.pdf | wing | unmatched — not counted | — | SmartContractName: wing.py | no |
| Wing Flash Pool (EVM) Audit Report.pdf | CToken | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-005, PVE-007, PVE-008 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | Comptroller | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-006, PVE-008, PVE-009, PVE-010 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | KComptroller | unmatched — not counted | — | Target in finding PVE-004 | no |
| Wing Flash Pool (EVM) Audit Report.pdf | IToken | unmatched — not counted | — | Target in findings PVE-004, PVE-007, PVE-008 | no |
| WING token (OKX) Audit Report.pdf | WingToken | unmatched — not counted | — | listed in scope table | no |
| Wing NFT Pool Audit.pdf | InsurancePool | unmatched — not counted | — | mentioned in findings wing-nft-pool-1 and wing-nft-pool-6 | no |
| Wing NFT Pool Audit.pdf | PunkGateway | unmatched — not counted | — | mentioned in finding wing-nft-pool-2 | no |
| Wing NFT Pool Audit.pdf | LiquidateLogic | unmatched — not counted | — | mentioned in findings wing-nft-pool-3, wing-nft-pool-5, and wing-nft-pool-12 | no |
| Wing NFT Pool Audit.pdf | BendProtocolIncentivesController | unmatched — not counted | — | mentioned in finding wing-nft-pool-4 | no |
| Wing NFT Pool Audit.pdf | WETHGateway | unmatched — not counted | — | mentioned in finding wing-nft-pool-7 | no |
| Wing NFT Pool Audit.pdf | ReserveOracle | unmatched — not counted | — | mentioned in finding wing-nft-pool-8 | no |
| Wing NFT Pool Audit.pdf | BToken | unmatched — not counted | — | mentioned in finding wing-nft-pool-9 | no |
| Wing NFT Pool Audit.pdf | FutureBondAVAX | unmatched — not counted | — | mentioned in finding wing-nft-pool-10 | no |
| Wing NFT Pool Audit.pdf | ReserveLogic | unmatched — not counted | — | mentioned in finding wing-nft-pool-11 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [11717] lianantech.com
- [11718] peckshield.com/en
- [28401] Smart contract security audit report—WING.pdf
- [28403] Wing Flash Pool (EVM) Audit Report.pdf
- [28404] WING token (OKX) Audit Report.pdf
- [28405] Wing NFT Pool Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
