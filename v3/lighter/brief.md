# Agentic Audit Brief: Lighter

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lighter (`lighter`)
- Website: [https://lighter.xyz/](https://lighter.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $511,583,797.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lighter. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 1 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), infra (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Lighter (`0x232ce3bd40fcd6f80f3d55a522d03f25df784ee2`, chain 1)
- ZkLighterContract (`0x3b4d794a66304f130a4db8f2551b0070dfcf5ca7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 11 unique; 9 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13022f85d87d18c8e2b50de6c7c809698dce5182` | ⚠️ Unaudited |
| Lighter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388507 | `0x232ce3bd40fcd6f80f3d55a522d03f25df784ee2` | ⚠️ Unaudited |
| LinkedListLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43ccc6d2a517a9a0955fba24c73f2202da5af8b3` | ⚠️ Unaudited |
| MaxLinkedListLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f39497a76f33efebb88c903bd3d5a175499ea3c` | ⚠️ Unaudited |
| MinLinkedListLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dd0635fef368ee7caa7d8f2d6de4792f5962c60` | ⚠️ Unaudited |
| OrderBookDeployerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7882f88895666781e472f8e1b6cd8b84440b1877` | ⚠️ Unaudited |
| OrderBookHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1e78740217910ba0bb65eeee875cfcf8bffee97` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x033c00fd922af40b6683fe5371380831a5b81d57` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b24894c03391e95846e74abca605231ee3e7a1c` | ⚠️ Unaudited |
| ZkLighterContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388508 | `0x3b4d794a66304f130a4db8f2551b0070dfcf5ca7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388510 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/lighter](https://skynet.certik.com/projects/lighter) | CertiK | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20768] skynet.certik.com/projects/lighter — no match: Extracted from CertiK Skynet page for Lighter. Audit names 'Lighter-periphery-V2' and 'Lighter-core-V2' are likely audit scopes, but individual contract files listed are PeripheryErrors.sol and Quoter.sol. Only two files shown; others may exist but not listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/lighter | Lighter-periphery-V2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/lighter | Lighter-core-V2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/lighter | PeripheryErrors | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/lighter | Quoter | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x232ce3bd40fcd6f80f3d55a522d03f25df784ee2` | Lighter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [20768] skynet.certik.com/projects/lighter

Fork inheritance lineage and inherited audits are included when available.
