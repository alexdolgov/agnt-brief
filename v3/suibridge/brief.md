# Agentic Audit Brief: SuiBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SuiBridge (`suibridge`)
- Website: [https://bridge.sui.io](https://bridge.sui.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 6 unique implementations (10 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $30,994,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SuiBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 2 of 6 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 10
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 1 | 20.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SuiBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393289 | 2 deployments: ethereum `0xa60f29201aeae592d9ab95747ae1cf425dbb036c`; ethereum `0xda3bd1fe1973470312db04551b65f401bc8a92fd` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa470ca92126bd6b6f6e98f3010c7e384f223b63b`; ethereum `0xee2d52477a7c1a7be0b0347dbe7e3b15185b416f` | ⚠️ Unaudited |
| BridgeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x72d34fe82c71bf8120647518e5128e53106a1540`; ethereum `0xb083c462fa5b04899d87204a4566b3db90fec50c` | ⚠️ Unaudited |
| BridgeLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12183b0796bbc4678999100e8c6c5715d5736767`; ethereum `0xd754e54261e300ff9653567f03f74bfdef887340` | ⚠️ Unaudited |
| BridgeVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312e67b47a2a29ae200184949093d92369f80b53` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393288 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sui_bridge_v1_OtterSec.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sui-foundation/security-audits/main/docs/Sui_bridge_v1_OtterSec.pdf) | OtterSec | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Sui_Bridge_v1_Zellic.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sui-foundation/security-audits/main/docs/Sui_Bridge_v1_Zellic.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21279] Sui_bridge_v1_OtterSec.pdf — no match: Only one program name 'suiBridgeV1' is explicitly mentioned in scope. No individual contract or module names are listed; the scope describes the program as a whole. The audit date is from the cover page.
- [21280] Sui_Bridge_v1_Zellic.pdf — matched: Extracted 14 contracts/modules from scope section and threat model. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sui_bridge_v1_OtterSec.pdf | suiBridgeV1 | unmatched — not counted | — | listed in scope section as the program name | no |
| Sui_Bridge_v1_Zellic.pdf | SuiBridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xda3bd1fe1973470312db04551b65f401bc8a92fd` — deployed 2024-09-23 08:38:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sui_Bridge_v1_Zellic.pdf | BridgeVault | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | BridgeLimiter | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | BridgeConfig | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | CommitteeUpgradeable | unmatched — not counted | — | described in threat model and findings | no |
| Sui_Bridge_v1_Zellic.pdf | BridgeCommittee | unmatched — not counted | — | described in threat model and findings | no |
| Sui_Bridge_v1_Zellic.pdf | bridge | unmatched — not counted | — | listed in scope and described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | chain_ids | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | committee | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | crypto | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | limiter | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | message | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | message_types | unmatched — not counted | — | described in threat model | no |
| Sui_Bridge_v1_Zellic.pdf | treasury | unmatched — not counted | — | described in threat model | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [21279] Sui_bridge_v1_OtterSec.pdf

Fork inheritance lineage and inherited audits are included when available.
