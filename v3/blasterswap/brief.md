# Agentic Audit Brief: Blasterswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 22.8% over 90 days

## Project Overview

- Project: Blasterswap (`blasterswap`)
- Website: [https://blasterswap.com/](https://blasterswap.com/)
- Lifecycle: declining (Tier 0, 98.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 23 unique implementations (28 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $288,534.00
- On-chain TVL (included contracts): $2,361.66
- TVL by chain: Blast $2,361.66

## Project Description

This brief describes the observed EVM deployment and audit surface for Blasterswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across blast. Structural roles: 13 core, 3 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (13), supporting (3)
- Contract kinds: contract (14), unclassified (2)
- Detected standards: multicall (4), erc20 (3), erc20permit (3), erc165 (2), erc721 (2)
- Frameworks: openzeppelin (12), uniswap-v3 (4), uniswap-v2 (3), uniswap (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0fd12a...db8d15`, chain 81457)
- UnnamedContract (`0x1a8027...e89d78`, chain 81457)
- UnnamedContract (`0x1c63c0...ae009b`, chain 81457)
- UnnamedContract (`0x1e60c4...0e7966`, chain 81457)
- UnnamedContract (`0x302883...e382a1`, chain 81457)
- UnnamedContract (`0x35cffd...bd61a2`, chain 81457)
- UnnamedContract (`0x6d4290...7659e7`, chain 81457)
- UnnamedContract (`0x779e43...e96a50`, chain 81457)
- UnnamedContract (`0x9083eb...7a9e34`, chain 81457)
- UnnamedContract (`0x9201ae...19a414`, chain 81457)
- UnnamedContract (`0x9c3840...a979c9`, chain 81457)
- UnnamedContract (`0x9cc159...709ffd`, chain 81457)
- UnnamedContract (`0xc460a8...76fdda`, chain 81457)
- UnnamedContract (`0xc972fa...133e60`, chain 81457)
- UnnamedContract (`0xd9c031...c412ac`, chain 81457)
- UnnamedContract (`0xf8b1ee...fda05d`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 23 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 23
- Raw deployments: 28
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 3 deployments: blast `0x013249...a84260`; blast `0x0464a3...6f6e3f`; blast `0xc52fb7...58c91d` | ⚠️ Unaudited |
| Andy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x0ecd76...e9d505`; blast `0xd43d8a...752cf8` | ⚠️ Unaudited |
| Pacmoon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x5ffd9e...a29c06`; blast `0xde32f9...76c830` | ⚠️ Unaudited |
| PacmoonAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x02ca0e...ae4af4`; blast `0x38834c...20638a` | ⚠️ Unaudited |
| PacmoonAirdrop2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x937237...85f24d` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380673 | `0x0fd12a...db8d15` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380674 | `0x1a8027...e89d78` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380675 | `0x1c63c0...ae009b` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380676 | `0x1e60c4...0e7966` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380677 | `0x302883...e382a1` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380678 | `0x35cffd...bd61a2` | ⚠️ Unaudited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | blast | unit-380680 | `0x6d4290...7659e7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380681 | `0x779e43...e96a50` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380682 | `0x9083eb...7a9e34` | ⚠️ Unaudited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | blast | unit-380683 | `0x9201ae...19a414` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380684 | `0x9c3840...a979c9` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380685 | `0x9cc159...709ffd` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | blast | unit-380686 | `0xc460a8...76fdda` | ⚠️ Unaudited |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | blast | unit-380687 | `0xc972fa...133e60` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380689 | `0xd9c031...c412ac` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | blast | unit-380690 | `0xf8b1ee...fda05d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-380679 | `0x3b5d3f...713add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x44fa62...23ea6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AstraSec-AuditReport-BlasterSwap.pdf](https://github.com/blasterswap/blasterswap-core-v2/blob/main/AstraSec-AuditReport-BlasterSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12792] AstraSec-AuditReport-BlasterSwap.pdf — no match: Scope section lists source code repository but no explicit file list. Contract names extracted from findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AstraSec-AuditReport-BlasterSwap.pdf | BlasterswapV2Factory | unmatched — not counted | — | mentioned in findings I-1 and I-2 | no |
| AstraSec-AuditReport-BlasterSwap.pdf | BlasterswapV2Pair | unmatched — not counted | — | mentioned in finding I-1 as a contract where the same suggestion applies | no |
| AstraSec-AuditReport-BlasterSwap.pdf | BlasterswapV2Router02 | unmatched — not counted | — | mentioned in finding I-1 as a contract where the same suggestion applies | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12792] AstraSec-AuditReport-BlasterSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
