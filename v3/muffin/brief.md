# Agentic Audit Brief: Muffin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Muffin (`muffin`)
- Website: [https://muffin.fi/](https://muffin.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, goerli
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $106,215.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Muffin in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6690384822aff0b65fe0c21a809f187f5c3fcdd8`, chain 1)
- UnnamedContract (`0xded07e2da859714f69d93f9794344606ed67907e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 13 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Lens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7d5bdf76f6143f200f6f2d831bb049a37de935` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a03ff1bac0f600cbb4e1e788fd924a43f35077` | ⚠️ Unaudited |
| MuffinHubPositions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd2444a17edc079210077924906d5bdf432a858` | ⚠️ Unaudited |
| MuffinMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74cc5c431531bf2601250c52825dc7b3dcee785` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42789c4d6c5cc9334fef4da662a57d78771ce9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e090c58e71b86b94fb544b0143363c3414d0579` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389473 | `0x6690384822aff0b65fe0c21a809f187f5c3fcdd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389474 | `0xded07e2da859714f69d93f9794344606ed67907e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed6165a870f48ea4244d6d2cdf4e19737c9b1e2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-389475 | `0xf3defa1cd3c0ee826f32cff252c7d6c79f07f68b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-389476 | `0x1a55404cf1e3666bb612b78c8f18af730997ca96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-389477 | `0x95186358c4f2f64ae33264494e4a7c6cd5dd80dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-389478 | `0xa06c455d19704e4871c547211504e17e2199308d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK (Core contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Core_v_2_0.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 31 | high |
| [ABDK (Periphery contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Periphery_v_1_0.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Dedaub (Core + periphery contracts)](https://resources.muffin.fi/files/audits/Deduab-Muffin-Audit-Report.pdf) | Dedaub | Audit | 2022-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 24 | high |
| [PeckShield (Core + periphery contracts)](https://resources.muffin.fi/files/audits/PeckShield-Audit-Report-Muffin-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24252] ABDK (Core contracts) — matched: All 32 files listed in the scope section of the audit report. Audit date is 20th May 2022 from the cover page and document properties.
- [24253] ABDK (Periphery contracts) — matched: The audit report explicitly lists 8 files in scope under 'We have reviewed the contracts at the next tag:' on page 8. The date is given as '22nd April 2022' on the cover page.
- [24254] Dedaub (Core + periphery contracts) — matched: All contracts listed in the scope section of the audit report, excluding interfaces, mocks, and test files.
- [24255] PeckShield (Core + periphery contracts) — matched: Extracted contract names from audit report findings targets and scope table. Audit date from cover page and latest audit report date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK (Core contracts) | IERC1271 | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IERC20 | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IERC721Descriptor | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMulticall | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IWETH | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubPositions | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubPositionsActions | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubPositionsView | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHub | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubActions | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubBase | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubEvents | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubView | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | IMuffinHubCallbacks | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | EMAMath | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | FullMath | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Math | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | PoolMath | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | SwapMath | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | TickMath | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | PathLib | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Constants | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Pools | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Settlement | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Positions | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | TickMaps | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Ticks | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | Tiers | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | MuffinHub | own contract | 0x669038… (selected) `0x6690384822aff0b65fe0c21a809f187f5c3fcdd8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK (Core contracts) | MuffinHubBase | unmatched — not counted | — | listed in scope | no |
| ABDK (Core contracts) | MuffinHubPositions | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | ERC721 | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | ERC721Extended | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | ManagerBase | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | Multicall | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | SelfPermit | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | Manager | own contract | 0xded07e… (selected) `0xded07e2da859714f69d93f9794344606ed67907e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK (Periphery contracts) | PositionManager | unmatched — not counted | — | listed in scope | no |
| ABDK (Periphery contracts) | SwapManager | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | MuffinHubBase | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | MuffinHubPositions | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | MuffinHub | own contract | 0x669038… (selected) `0x6690384822aff0b65fe0c21a809f187f5c3fcdd8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub (Core + periphery contracts) | Constants | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Pools | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Positions | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Settlement | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | TickMaps | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Ticks | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Tiers | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Manager | own contract | 0xded07e… (selected) `0xded07e2da859714f69d93f9794344606ed67907e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub (Core + periphery contracts) | EMAMath | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | FullMath | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Math | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | PoolMath | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | SwapMath | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | TickMath | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | PathLib | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | ERC721Extended | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | ERC721 | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | ManagerBase | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | Multicall | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | PositionManager | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | SelfPermit | unmatched — not counted | — | listed in scope | no |
| Dedaub (Core + periphery contracts) | SwapManager | unmatched — not counted | — | listed in scope | no |
| PeckShield (Core + periphery contracts) | MuffinHubPositions | unmatched — not counted | — | mentioned in finding PVE-004 target | no |
| PeckShield (Core + periphery contracts) | MuffinHub | own contract | 0x669038… (selected) `0x6690384822aff0b65fe0c21a809f187f5c3fcdd8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield (Core + periphery contracts) | Pools | unmatched — not counted | — | mentioned in findings PVE-001, PVE-003, PVE-005 targets | no |
| PeckShield (Core + periphery contracts) | ERC721Extended | unmatched — not counted | — | mentioned in finding PVE-002 target | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=5

Fork inheritance lineage and inherited audits are included when available.
