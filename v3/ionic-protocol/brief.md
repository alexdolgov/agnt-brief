# Agentic Audit Brief: Ionic Protocol

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

- Project: Ionic Protocol (`ionic-protocol`)
- Website: [https://ionic.money/](https://ionic.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bob, fraxtal, lisk, mode, optimism
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,042,238.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ionic Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base, bob, fraxtal, lisk, mode, optimism. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Main Pool (`0xafb4a2...7b166b`, chain 10)
- Main Pool (`0xb51414...590658`, chain 252)
- Main Pool (`0xf448a3...7bdf60`, chain 1135)
- Main Pool (`0x05c9c6...f73d13`, chain 8453)
- Main Pool (`0xfb3323...685556`, chain 34443)
- Main Pool (`0x9cfee8...6df715`, chain 60808)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 6 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Main Pool | unknown | project_anchor | own_supporting | 0 | optimism | unit-387724 | `0xafb4a2...7b166b` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-387726 | `0xb51414...590658` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | base | unit-387730 | `0x05c9c6...f73d13` | ⚠️ Unaudited |
| Main Pool | unknown | project_anchor | own_supporting | 0 | mode | unit-387728 | `0xfb3323...685556` | ⚠️ Unaudited |

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
| Main Pool | unknown | project_anchor | own_supporting | 0 | lisk | unit-387725 | `0xf448a3...7bdf60` | ❓ Unverified |
| Main Pool | unknown | project_anchor | own_supporting | 0 | bob | unit-387729 | `0x9cfee8...6df715` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-387727 | `0x9a9072...bcac0a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf](https://1954749119-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4L4EczL4rCp3jyJhAxHG%2Fuploads%2Ffkk0363x576TeYPz9Dww%2FIonic_Protocol_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf — no match: Extracted 23 contract names from the scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseFeeDistributor | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolDirectory | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLens | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FusePoolLensSecondary | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | FuseSafeLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | ChainlinkPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenPriceOracleNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MasterPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BlockVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | MerklePatriciaVerifier | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapOracle | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UQ112x112 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | CurveLpTokenLiquidatorNoRegistry | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | JarvisSynthereumLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | XBombLiquidator | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AlpacaERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | AutofarmERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BeefyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | BombERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | EllipsisERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | Rlp | unmatched — not counted | — | listed in scope | no |
| spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf | UniswapTwapPriceOracleV2Root | unmatched — not counted | — | mentioned in finding 3.1 as target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2937] spaces/4L4EczL4rCp3jyJhAxHG/uploads/fkk0363x576TeYPz9Dww/Ionic_Protocol_-_Zellic_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
