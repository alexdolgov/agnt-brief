# Agentic Audit Brief: Metis Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Metis Bridge (`metis-bridge`)
- Website: [https://bridge.metis.io/home](https://bridge.metis.io/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $25,148,876.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Metis Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3980c9...e9c04b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 3 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e32b1...d6ed8e` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-389001 | `0x3980c9...e9c04b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389000 | `0x101500...2c3113` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view](https://drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMkexAWdCekeDPPCMOdGs%2Fuploads%2F9VWYLfEEmUHQSTuVyMnV%2FMetisDAO%20Foundation_08092022_SCAudit_Report%20(2).pdf?alt=media) | yAudit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20836] drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view — no match: The provided text is a Google Drive page with no actual audit report content. It only shows a loading indicator and a sign-in link.
- [20837] spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf — no match: Extracted all contracts from the scope sections (initial, second, third review) and the system overview. The audit date is December 5, 2022, as stated on the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1ERC20Bridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1StandardBridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ICanonicalTransactionChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IStateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL2ERC20Bridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ICrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_CrossDomainUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_OVMCodec | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_DefaultValues | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_AddressManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_AddressResolver | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_RLPReader | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_RLPWriter | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_MerkleTrie | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_SecureMerkleTrie | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Bytes32Utils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_BytesUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | iMVM_DiscountOracle | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | StateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | CanonicalTransactionChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | MVM_DiscountOracle | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_MerkleTree | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IBondManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | BondManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Buffer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Uint | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20836] drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view
- [20837] spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf

Fork inheritance lineage and inherited audits are included when available.
