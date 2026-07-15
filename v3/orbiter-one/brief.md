# Agentic Audit Brief: Orbiter One

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Orbiter One (`orbiter-one`)
- Website: [https://orbiter.one](https://orbiter.one)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: moonbeam
- Contract surface: 15 unique implementations (15 raw deployments)
- Coverage basis: 1/14 confirmed own live verified implementations (7.1%); conservative 7.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $108,693.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Orbiter One. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across moonbeam. Structural roles: 13 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (13), core (1)
- Contract kinds: contract (10), abstract (4)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aca5c...b11698`, chain 1284)
- UnnamedContract (`0x0bd102...198419`, chain 1284)
- UnnamedContract (`0x168525...7dcf57`, chain 1284)
- UnnamedContract (`0x17f7b9...23a779`, chain 1284)
- UnnamedContract (`0x27dc3d...c4c97d`, chain 1284)
- UnnamedContract (`0x39cbe0...2ccc70`, chain 1284)
- UnnamedContract (`0x569322...60d947`, chain 1284)
- UnnamedContract (`0x64cff2...bdb693`, chain 1284)
- UnnamedContract (`0x6cc6c1...398642`, chain 1284)
- UnnamedContract (`0x864f6a...3fee4b`, chain 1284)
- UnnamedContract (`0xa5ebbf...36d951`, chain 1284)
- UnnamedContract (`0xcc444c...f6c259`, chain 1284)
- UnnamedContract (`0xdf2b90...6886b7`, chain 1284)
- UnnamedContract (`0xe48451...a43efe`, chain 1284)
- OrbitLottery (`0xaa0c24...729a13`, chain 1284)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/14 (7.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/14
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 7.1% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390454 | `0xa5ebbf...36d951` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrbitLottery | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-390455 | `0xaa0c24...729a13` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390445 | `0x0bd102...198419` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390446 | `0x168525...7dcf57` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390447 | `0x17f7b9...23a779` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390448 | `0x27dc3d...c4c97d` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390449 | `0x39cbe0...2ccc70` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390450 | `0x569322...60d947` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390451 | `0x64cff2...bdb693` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | third_party_dependency | 0 | moonbeam | unit-390452 | `0x6cc6c1...398642` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390453 | `0x864f6a...3fee4b` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390456 | `0xcc444c...f6c259` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390457 | `0xdf2b90...6886b7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390458 | `0xe48451...a43efe` | ⚠️ Unaudited |

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
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390444 | `0x0aca5c...b11698` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [SmartContract_Audit_Solidproof_Orbiterone.pdf](https://github.com/solidproof/projects/blob/main/Orbiterone/SmartContract_Audit_Solidproof_Orbiterone.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13647] SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf — matched: Only one contract file (Incentive.sol) is in scope. Audit date is April 17, 2023 from the report date.
- [13648] SmartContract_Audit_Solidproof_Orbiterone.pdf — no match: Three contracts in scope: ReaderOrbiter, OrbiterInterface, Orbiter. Audit date from cover page and reaudit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf | Incentive | own contract | 0xa5ebbf… (selected) `0xa5ebbf...36d951` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | ReaderOrbiter | unmatched — not counted | — | listed in Tested Contract Files | no |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | OrbiterInterface | unmatched — not counted | — | listed in Tested Contract Files | no |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | Orbiter | unmatched — not counted | — | listed in Tested Contract Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0xaa0c24...729a13` | OrbitLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13648] SmartContract_Audit_Solidproof_Orbiterone.pdf

Fork inheritance lineage and inherited audits are included when available.
