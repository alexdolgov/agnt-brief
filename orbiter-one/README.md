# Agentic Audit Brief: Orbiter One

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Orbiter One (`orbiter-one`)
- Website: [https://orbiter.one](https://orbiter.one)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonbeam
- Contract surface: 18 unique implementations (18 raw deployments)
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

- UnnamedContract (`0x0aca5cb726c4e86045f6fbb673eaaca854b11698`, chain 1284)
- UnnamedContract (`0x0bd102515503f1bd2b37bc723ba5ee7cfb198419`, chain 1284)
- UnnamedContract (`0x168525d35d61ce3c9cf17b91c98755f2197dcf57`, chain 1284)
- UnnamedContract (`0x17f7b994510e7652981bd115f174a9241323a779`, chain 1284)
- UnnamedContract (`0x27dc3dadbfb40adc677a2d5ef192d40ad7c4c97d`, chain 1284)
- UnnamedContract (`0x39cbe088dc510596d5fb14f051917f88932ccc70`, chain 1284)
- UnnamedContract (`0x5693227b49d79c294dbfc6df76399013a860d947`, chain 1284)
- UnnamedContract (`0x64cff24763227511475b345498f71b987ebdb693`, chain 1284)
- UnnamedContract (`0x6cc6c17d25bd3646b3710d6188d0467f5d398642`, chain 1284)
- UnnamedContract (`0x864f6a9a0ba613c079a7c0ab9f1ac8b3e63fee4b`, chain 1284)
- UnnamedContract (`0xa5ebbfe3d4391c7079fa6cd5dc230b915936d951`, chain 1284)
- UnnamedContract (`0xcc444ca6bba3764fc55beefe4ffa27435cf6c259`, chain 1284)
- UnnamedContract (`0xdf2b90e2ed9a77054be91aa00bd52f78a86886b7`, chain 1284)
- UnnamedContract (`0xe48451b26e140b9b2f1a55f2879fe0ca66a43efe`, chain 1284)
- OrbitLottery (`0xaa0c247e385f2995fb0d88921470bfb450729a13`, chain 1284)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/14 (7.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 15 of 18 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/15
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 18
- Raw deployments: 18
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
| unknown | Tier 2 | 1 | 6.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390454 | `0xa5ebbfe3d4391c7079fa6cd5dc230b915936d951` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrbitLottery | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-390455 | `0xaa0c247e385f2995fb0d88921470bfb450729a13` | ⚠️ Unaudited |
| ORBToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4eeaa1fd27c50c64e77272bcdde68c28f0a3c3d7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390445 | `0x0bd102515503f1bd2b37bc723ba5ee7cfb198419` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390446 | `0x168525d35d61ce3c9cf17b91c98755f2197dcf57` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390447 | `0x17f7b994510e7652981bd115f174a9241323a779` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390448 | `0x27dc3dadbfb40adc677a2d5ef192d40ad7c4c97d` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390449 | `0x39cbe088dc510596d5fb14f051917f88932ccc70` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390450 | `0x5693227b49d79c294dbfc6df76399013a860d947` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390451 | `0x64cff24763227511475b345498f71b987ebdb693` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | third_party_dependency | 0 | moonbeam | unit-390452 | `0x6cc6c17d25bd3646b3710d6188d0467f5d398642` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390453 | `0x864f6a9a0ba613c079a7c0ab9f1ac8b3e63fee4b` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390456 | `0xcc444ca6bba3764fc55beefe4ffa27435cf6c259` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390457 | `0xdf2b90e2ed9a77054be91aa00bd52f78a86886b7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390458 | `0xe48451b26e140b9b2f1a55f2879fe0ca66a43efe` | ⚠️ Unaudited |

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
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | moonbeam | unit-390444 | `0x0aca5cb726c4e86045f6fbb673eaaca854b11698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6d954ee9a06c6fea6fc53bfb971a1489de2c9e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9968788811688d037392c0de5e270d13a0c8719c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 1
- Unknown liveness contracts: 2
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | OrbitLottery<br>`0xaa0c247e385f2995fb0d88921470bfb450729a13` | project_anchor | unknown | live | verified | n/a | `0x8be6ccecb1cfc49be3efbcdb40f2a4c9b6255d4d` |
| unverified unclassified | UnnamedContract<br>`0x6d954ee9a06c6fea6fc53bfb971a1489de2c9e58` | non_address_book | unknown | unknown | unverified | n/a | `0x8be6ccecb1cfc49be3efbcdb40f2a4c9b6255d4d` |
| unverified unclassified | UnnamedContract<br>`0x9968788811688d037392c0de5e270d13a0c8719c` | non_address_book | unknown | unknown | unverified | n/a | `0x8be6ccecb1cfc49be3efbcdb40f2a4c9b6255d4d` |

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
| SmartContract_Audit_Solidproof_OrbiterOne_Incentive.pdf | Incentive | own contract | 0xa5ebbf… (selected) `0xa5ebbfe3d4391c7079fa6cd5dc230b915936d951` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | ReaderOrbiter | unmatched — not counted | — | listed in Tested Contract Files | no |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | OrbiterInterface | unmatched — not counted | — | listed in Tested Contract Files | no |
| SmartContract_Audit_Solidproof_Orbiterone.pdf | Orbiter | unmatched — not counted | — | listed in Tested Contract Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0xaa0c247e385f2995fb0d88921470bfb450729a13` | OrbitLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

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
