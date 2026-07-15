# Agentic Audit Brief: 0x0.ai

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 0x0.ai (`0x0.ai`)
- Website: [https://0x0.ai](https://0x0.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $164,446.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for 0x0.ai. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- OxO (`0x5a3e6a...811ad5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 7 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AltBn128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b597...0463c6` | ⚠️ Unaudited |
| LSAG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09489b...c614fc` | ⚠️ Unaudited |
| OxO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266804 | `0x5a3e6a...811ad5` | ⚠️ Unaudited |
| OxODashboardClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b15c...8a2169` | ⚠️ Unaudited |
| OxOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bb77...4bec3f` | ⚠️ Unaudited |
| OxOMixerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3279...9c70a4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=d3103372-54c8-40d5-a14a-dc31686c607d) | SolidProof | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=164b43b6-6ded-43db-8482-753b545c5b53) | SolidProof | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [app.solidproof.io/projects/0x0factory](https://app.solidproof.io/projects/0x0factory?audit=02631741-dccf-495f-8e18-4ce28edd03cb) | SolidProof | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20761] app.solidproof.io/projects/0x0factory — no match: Only one contract file explicitly listed in scope: OxODexFactory.sol. No audit date found in the provided text.
- [20762] app.solidproof.io/projects/0x0factory — no match: Only one contract file explicitly listed in scope: OxODexFactory.sol. No audit date found in the provided text.
- [20763] app.solidproof.io/projects/0x0factory — no match: Only one contract file mentioned in scope: OxOMixerFactory.sol. No explicit audit date found.
- [20764] app.solidproof.io/projects/0x0factory — no match: Only one contract file (OxOFactory.sol) is explicitly listed in the scope section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| app.solidproof.io/projects/0x0factory | OxODexFactory | unmatched — not counted | — | listed in scope section with SHA-1 hash | no |
| app.solidproof.io/projects/0x0factory | OxODexFactory | unmatched — not counted | — | listed in scope section with SHA-1 hash | no |
| app.solidproof.io/projects/0x0factory | OxOMixerFactory | unmatched — not counted | — | listed in scope | no |
| app.solidproof.io/projects/0x0factory | OxOFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5a3e6a...811ad5` | OxO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20761] app.solidproof.io/projects/0x0factory
- [20762] app.solidproof.io/projects/0x0factory
- [20763] app.solidproof.io/projects/0x0factory
- [20764] app.solidproof.io/projects/0x0factory

Fork inheritance lineage and inherited audits are included when available.
