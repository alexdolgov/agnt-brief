# Agentic Audit Brief: IMPOSSIBLE

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: IMPOSSIBLE (`impossible`)
- Website: [https://impossible.finance](https://impossible.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora, avalanche, boba, bsc, ethereum, kava, moonbeam, polygon
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $152,485.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for IMPOSSIBLE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across aurora, bsc, ethereum, moonbeam, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 1)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 1)
- UnnamedContract (`0x0da6ed8b13214ff28e9ca979dd37439e8a88f6c4`, chain 56)
- UnnamedContract (`0x1abd0067f60513f152ff14e9cd26a62c820d022c`, chain 56)
- UnnamedContract (`0x1d37f1e6f0cce814f367d2765ebad5448e59b91b`, chain 56)
- UnnamedContract (`0x8f2a0d8865d995364dc6843d51cf6989001f989e`, chain 56)
- UnnamedContract (`0x918d7e714243f7d9d463c37e106235dcde294ffc`, chain 56)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 56)
- UnnamedContract (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 137)
- UnnamedContract (`0xb0e1fc65c1a741b4662b813eb787d369b8614af1`, chain 137)
- ImpossibleDecentralizedIncubatorAccessToken (`0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 21 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/impossiblefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IFTokenStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x2efedebd6e29963511589731a33311196f00eacb` | ⚠️ Unaudited |
| ImpossibleDecentralizedIncubatorAccessToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-387393 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ⚠️ Unaudited |
| ImpossibleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2` | ⚠️ Unaudited |
| ImpossibleRouterExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x16e1cd2370752cc7a4aad326fe2c1aae95b0c5e2` | ⚠️ Unaudited |
| ImpossibleSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4233ad9b8b7c1ccf0818907908a7f0796a3df85f` | ⚠️ Unaudited |
| ImpossibleWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x45a3a315277fbc1bce0611c4398b32e0317fd7c1` | ⚠️ Unaudited |
| StableXFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08823b2f32c96e120ed15d595c4dc3069c41963c` | ⚠️ Unaudited |
| StableXMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c028235dcbc7f9de8926f8ef36feea55b4e4100` | ⚠️ Unaudited |
| StableXRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cce099ae70f17fb74adfc9b00dbdf208a5e5fb3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387389 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387390 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387394 | `0x0da6ed8b13214ff28e9ca979dd37439e8a88f6c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387395 | `0x1abd0067f60513f152ff14e9cd26a62c820d022c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387396 | `0x1d37f1e6f0cce814f367d2765ebad5448e59b91b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387397 | `0x8f2a0d8865d995364dc6843d51cf6989001f989e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387398 | `0x918d7e714243f7d9d463c37e106235dcde294ffc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387399 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-387400 | `0xbf9d97eaf551877e4710d8e9d0519f79e03e5e69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-387401 | `0xccf4881b849d94c15c98567ba71b08ed829aba33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387391 | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387392 | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Beosin Smart contract security audit report - Impossible swap.pdf (also discovered via alternate URL)](https://github.com/ImpossibleFinance/audits/blob/main/Beosin%20Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_if_farm_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/farmsAudits/blocksec_if_farm_draft.pdf) | BlockSec | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Impossible Finance-Swap Zokyo audit report.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible%20Finance-Swap%20Zokyo%20audit%20report.pdf) | Zokyo | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Impossible-Swap-Audit-AtticLab-review_report_0705.pdf](https://github.com/ImpossibleFinance/audits/blob/main/impossibleSwapAudit/Impossible-Swap-Audit-AtticLab-review_report_0705.pdf) | AtticLab | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Beosin-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Beosin-Audit-Launchpad.pdf) | Beosin | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Blocksec-Audit-Launchpad.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/Blocksec-Audit-Launchpad.pdf) | Blocksec | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/PeckShield-Audit-Report-IFlaunchpad-v1.0rc%20(3).pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_if_launchpad_v2.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v2.0_signed.pdf) | Blocksec | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_if_launchpad_v3.0_signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v3.0_signed.pdf) | Blocksec | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_if_launchpad_v4.0_draft.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_launchpad_v4.0_draft.pdf) | Blocksec | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [blocksec_if_tieredsale_v1.1-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_if_tieredsale_v1.1-signed.pdf) | Blocksec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_iflaunchpad_v1.0-signed.pdf](https://github.com/ImpossibleFinance/audits/blob/main/launchpadAudits/blocksec_iflaunchpad_v1.0-signed.pdf) | Blocksec | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Impossible Finance Security Analysis by Pessimistic.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Impossible%20Finance%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Smart contract security audit report - Impossible swap 2 (2).pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/Smart%20contract%20security%20audit%20report%20-%20Impossible%20swap%202%20(2).pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [if_swap_v1.2.pdf](https://github.com/ImpossibleFinance/audits/blob/main/v3%20Swap%20Audits/if_swap_v1.2.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/impossiblefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20566] Beosin Smart contract security audit report - Impossible swap.pdf — no match: Extracted contract names from key audit findings table and risk descriptions. Audit completion date found in header.
- [20567] blocksec_if_farm_draft.pdf — no match: The audit report explicitly lists 'Impossible Finance Farm Contract' as the target, and the fuzzing section mentions SmartChefFactory and SmartChefInitializable as the contracts compiled and tested. Findings also reference these contracts.
- [20568] Impossible Finance-Swap Zokyo audit report.pdf — no match: Extracted contracts from scope listing and findings sections.
- [20569] Impossible-Swap-Audit-AtticLab-review_report_0705.pdf — no match: Report explicitly lists StableXERC20, StableXFactory, StableXPair as contracts in scope. Interfaces and libraries are mentioned but stated to be identical to Uniswap V2, so not extracted. Audit date is from the report header.
- [20570] Beosin-Audit-Launchpad.pdf — no match: Contracts extracted from business audit sections; no explicit scope table, but these are the audited contracts.
- [20571] Blocksec-Audit-Launchpad.pdf — no match: Extracted two contracts from findings targets. Audit date from cover page.
- [20572] PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf — no match: Contracts identified from findings targets; no explicit scope table but report focuses on IFlaunchpad protocol with IFAllocationSale and IFAllocationMaster contracts.
- [20573] blocksec_if_launchpad_v2.0_signed.pdf — no match: Scope explicitly mentions 'Impossible Finance Launchpad contract' and references contracts IFAllocationMaster and IFAllocationSale in findings.
- [20574] blocksec_if_launchpad_v3.0_signed.pdf — no match: Extracted from report title and version history. Contracts identified from scope description and findings listings.
- [20575] blocksec_if_launchpad_v4.0_draft.pdf — no match: Extracted contracts from scope and findings. Audit date from cover page.
- [20576] blocksec_if_tieredsale_v1.1-signed.pdf — no match: Only one contract (IFTieredSale) is explicitly in scope. Other files are excluded. Dependencies are considered reliable and not in scope.
- [20577] blocksec_iflaunchpad_v1.0-signed.pdf — no match: Scope explicitly includes IFFixedSale and its dependencies; IFWhitelistable is a dependency. Date found on cover page.
- [20579] Impossible Finance Security Analysis by Pessimistic.pdf — no match: Two contracts explicitly listed in scope section.
- [20580] Smart contract security audit report - Impossible swap 2 (2).pdf — no match: Extracted contract names from key audit findings table and risk descriptions. Audit date from AuditCompletionDate field.
- [20581] if_swap_v1.2.pdf — no match: Extracted from report title and scope section. Contracts mentioned in findings are considered in scope.
- [20582] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name 'Impossible Finance' is mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossiblePair | unmatched — not counted | — | Listed in key audit findings as ImpossiblePair-1, ImpossiblePair-2 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleRouterExtension | unmatched — not counted | — | Listed in key audit findings as ImpossibleRouterExtension-1 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleWrapperFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrapperFactory-1 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleWrappedToken | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrappedToken-1 through ImpossibleWrappedToken-5 | no |
| Beosin Smart contract security audit report - Impossible swap.pdf | ImpossibleFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleFactory-1 | no |
| blocksec_if_farm_draft.pdf | SmartChefFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| blocksec_if_farm_draft.pdf | SmartChefInitializable | unmatched — not counted | — | mentioned in scope and findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleERC20 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleFactory | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossiblePair | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleRouter01 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleRouter02 | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | ImpossibleLibrary | unmatched — not counted | — | listed in scope | no |
| Impossible Finance-Swap Zokyo audit report.pdf | StableXPair | unmatched — not counted | — | mentioned in findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | StableXFactory | unmatched — not counted | — | mentioned in findings | no |
| Impossible Finance-Swap Zokyo audit report.pdf | Migration | unmatched — not counted | — | mentioned in findings | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXERC20 | unmatched — not counted | — | listed as reviewed contract | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXFactory | unmatched — not counted | — | listed as reviewed contract | no |
| Impossible-Swap-Audit-AtticLab-review_report_0705.pdf | StableXPair | unmatched — not counted | — | listed as reviewed contract and thoroughly reviewed | no |
| Beosin-Audit-Launchpad.pdf | TestToken | unmatched — not counted | — | mentioned in section 3.1 | no |
| Beosin-Audit-Launchpad.pdf | IFAllocationMaster | unmatched — not counted | — | mentioned in section 3.2 | no |
| Beosin-Audit-Launchpad.pdf | IFAllocationSale | unmatched — not counted | — | mentioned in section 3.3 | no |
| Blocksec-Audit-Launchpad.pdf | IFAllocationMaster | unmatched — not counted | — | Target in findings BWE-1, BWE-4, BWE-7 | no |
| Blocksec-Audit-Launchpad.pdf | IFAllocationSale | unmatched — not counted | — | Target in findings BWE-2, BWE-3, BWE-4, BWE-5, BWE-6, BWE-7 | no |
| PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf | IFAllocationSale | unmatched — not counted | — | Target in findings PVE-001, PVE-003 | no |
| PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf | IFAllocationMaster | unmatched — not counted | — | Target in findings PVE-002, PVE-004 | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFLaunchpad | unmatched — not counted | — | The repository that has been audited includes launchpad-contracts (IFLaunchpad). | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFAllocationMaster | unmatched — not counted | — | Listed in findings as contract containing functions stake, emergencyWithdraw, addUserCheckpoint. | no |
| blocksec_if_launchpad_v2.0_signed.pdf | IFAllocationSale | unmatched — not counted | — | Listed in findings as contract containing functions withdrawGiveaway, fund, _purchase, constructor. | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFLaunchpad | unmatched — not counted | — | Target contract mentioned in Section 1.1 | no |
| blocksec_if_launchpad_v3.0_signed.pdf | vIDIA | unmatched — not counted | — | Listed in findings (e.g., Listing 2.1) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFAllocationMaster | unmatched — not counted | — | Listed in findings (e.g., Listing 2.4) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | IFAllocationSale | unmatched — not counted | — | Listed in findings (e.g., Listing 2.6) | no |
| blocksec_if_launchpad_v3.0_signed.pdf | ERC2771ContextUpdateable | unmatched — not counted | — | Listed in findings (e.g., Listing 2.12) | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFLaunchpad | unmatched — not counted | — | listed in scope | no |
| blocksec_if_launchpad_v4.0_draft.pdf | vIDIA | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFAllocationMaster | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | IFAllocationSale | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | BatchMintVoucher | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_launchpad_v4.0_draft.pdf | ERC2771ContextUpdateable | unmatched — not counted | — | mentioned in findings | no |
| blocksec_if_tieredsale_v1.1-signed.pdf | IFTieredSale | unmatched — not counted | — | Listed in scope section: 'The focus of this audit is the IFTieredSale Contracts of Impossible Finance' and 'only contracts inside the contracts folder' | no |
| blocksec_iflaunchpad_v1.0-signed.pdf | IFFixedSale | unmatched — not counted | — | mentioned as the main contract in scope in Section 1.1 and in findings | no |
| blocksec_iflaunchpad_v1.0-signed.pdf | IFWhitelistable | unmatched — not counted | — | mentioned as a dependency and in findings (e.g., Listing 2.2) | no |
| Impossible Finance Security Analysis by Pessimistic.pdf | ImpossiblePair | unmatched — not counted | — | The scope of the audit included only two files: ImpossiblePair.sol ImpossibleERC20.sol | no |
| Impossible Finance Security Analysis by Pessimistic.pdf | ImpossibleERC20 | unmatched — not counted | — | The scope of the audit included only two files: ImpossiblePair.sol ImpossibleERC20.sol | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossiblePair | unmatched — not counted | — | Listed in key audit findings as ImpossiblePair-1, ImpossiblePair-2 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleRouterExtension | unmatched — not counted | — | Listed in key audit findings as ImpossibleRouterExtension-1 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleWrapperFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrapperFactory-1 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleWrappedToken | unmatched — not counted | — | Listed in key audit findings as ImpossibleWrappedToken-1 through -5 | no |
| Smart contract security audit report - Impossible swap 2 (2).pdf | ImpossibleFactory | unmatched — not counted | — | Listed in key audit findings as ImpossibleFactory-1 | no |
| if_swap_v1.2.pdf | ImpossibleWrappedToken | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossibleLibrary | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossiblePair | unmatched — not counted | — | mentioned in findings | no |
| if_swap_v1.2.pdf | ImpossibleWrapperFactory | unmatched — not counted | — | mentioned in finding 2.2.4 | no |
| if_swap_v1.2.pdf | ImpossibleSwapFactory | unmatched — not counted | — | mentioned in finding 2.2.6 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0b15ddf19d47e6a86a56148fb4afffc6929bcb89` | ImpossibleDecentralizedIncubatorAccessToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20566] Beosin Smart contract security audit report - Impossible swap.pdf
- [20567] blocksec_if_farm_draft.pdf
- [20568] Impossible Finance-Swap Zokyo audit report.pdf
- [20569] Impossible-Swap-Audit-AtticLab-review_report_0705.pdf
- [20570] Beosin-Audit-Launchpad.pdf
- [20571] Blocksec-Audit-Launchpad.pdf
- [20572] PeckShield-Audit-Report-IFlaunchpad-v1.0rc (3).pdf
- [20573] blocksec_if_launchpad_v2.0_signed.pdf
- [20574] blocksec_if_launchpad_v3.0_signed.pdf
- [20575] blocksec_if_launchpad_v4.0_draft.pdf
- [20576] blocksec_if_tieredsale_v1.1-signed.pdf
- [20577] blocksec_iflaunchpad_v1.0-signed.pdf
- [20579] Impossible Finance Security Analysis by Pessimistic.pdf
- [20580] Smart contract security audit report - Impossible swap 2 (2).pdf
- [20581] if_swap_v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
