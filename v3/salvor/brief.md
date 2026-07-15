# Agentic Audit Brief: Salvor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,237.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Salvor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche. Structural roles: 1 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), infra (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05c181...0ac966`, chain 43114)
- UnnamedContract (`0x0d15f9...c27e00`, chain 43114)
- UnnamedContract (`0x1425d8...d634d4`, chain 43114)
- UnnamedContract (`0x2266e5...db58ca`, chain 43114)
- UnnamedContract (`0x3deb76...932b7d`, chain 43114)
- UnnamedContract (`0x4085fb...11d6ae`, chain 43114)
- UnnamedContract (`0x44c961...26feb9`, chain 43114)
- UnnamedContract (`0x607b1d...49b632`, chain 43114)
- UnnamedContract (`0x8cfc37...005996`, chain 43114)
- UnnamedContract (`0xa5128f...772447`, chain 43114)
- UnnamedContract (`0xa9fb0a...fe90fa`, chain 43114)
- UnnamedContract (`0xaa7f72...dc732f`, chain 43114)
- UnnamedContract (`0xab4fe2...130c80`, chain 43114)
- UnnamedContract (`0xacb8ce...37d69a`, chain 43114)
- UnnamedContract (`0xd09966...74dd3f`, chain 43114)
- UnnamedContract (`0xd106ec...183dc3`, chain 43114)
- UnnamedContract (`0xd86456...bb9865`, chain 43114)
- UnnamedContract (`0xddde9d...6c82f0`, chain 43114)
- UnnamedContract (`0xf65e92...85ebd9`, chain 43114)
- SalvorGovernanceToken (`0xf99516...70a90e`, chain 43114)
- TransparentUpgradeableProxy (`0x72b73f...02ebaa`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SCAudit | Tier 2 | 2 | 100.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SalvorGovernanceToken | token | project_anchor | own_supporting | 0 | avalanche | unit-392070 | `0xf99516...70a90e` | ✅ Audited |
| VeArt | unknown | project_anchor | own_supporting | 1 | avalanche | unit-392071 | `0x72b73f...02ebaa` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392051 | `0x05c181...0ac966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392052 | `0x0d15f9...c27e00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392053 | `0x1425d8...d634d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392054 | `0x2266e5...db58ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392055 | `0x3deb76...932b7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392056 | `0x4085fb...11d6ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392057 | `0x44c961...26feb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392058 | `0x607b1d...49b632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392059 | `0x8cfc37...005996` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392060 | `0xa5128f...772447` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392061 | `0xa9fb0a...fe90fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392062 | `0xaa7f72...dc732f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392063 | `0xab4fe2...130c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392064 | `0xacb8ce...37d69a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392065 | `0xd09966...74dd3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392066 | `0xd106ec...183dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392067 | `0xd86456...bb9865` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392068 | `0xddde9d...6c82f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392069 | `0xf65e92...85ebd9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | SCAudit | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | SCAudit | Audit | 2023-03 | stale | Direct | contract_name|n/a | matched | 1 | 1 | 0 | 0 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | SCAudit | Audit | 2023-01 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf — no match: Extracted 16 contracts from initial and second review scope sections. Audit date from cover page: September 28th, 2022.
- [13808] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf — matched: Only one contract (VeArt) is in scope. The report mentions ISalvorMini as an external dependency not in scope.
- [13809] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf — matched: Two contracts in scope: SalvorGovernanceToken and Vesting. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | AuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | BlindAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibBlindAuction | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | DutchAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibShareholder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Marketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | INFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | NFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IPaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | PaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Royalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | ERC721Dummy | unmatched — not counted | — | listed in scope (second review) | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf | VeArt | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x72b73f...02ebaa` — deployed 2023-03-09 18:52:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | SalvorGovernanceToken | own contract | SalvorGovernanceToken (selected) `0xf99516...70a90e` — deployed 2023-03-09 17:02:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | Vesting | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=4

Zero-match audit list:

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
