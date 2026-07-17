# Agentic Audit Brief: MortgageFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MortgageFi (`mortgagefi`)
- Website: [https://mortgagefi.app](https://mortgagefi.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base
- Contract surface: 24 unique implementations (31 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $730,636.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MortgageFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (2), erc165 (2), erc20permit (2), multicall (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcd89abe6ec3eedef07713e1b89d698c0c421dc8f`, chain 8453)
- mortgagefipoolusdtwbtc (`0x2f5aac46575f68fe600e99096ca38301a4520a91`, chain 42161)
- mortgagefiusdccbbtcupgraded (`0xe93131620945a1273b48f57f453983d270b62dc7`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 3 of 24 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 24
- Raw deployments: 31
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mortgagecontracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa702f61b6e055be8d394754f59814254f7059109`; arbitrum `0xcb83d438943cad3dc11d5c83a97d14872cb2c87b`; arbitrum `0xede6f5f8a9d6b90b1392dcc9e7fd8a5b0192bfe1` | ⚠️ Unaudited |
| mortgageconversionvault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x61d2688121676ed8123ad62e71994c66ee33fbed`; arbitrum `0x76d80459a85e795ccff36f34dc8a4cfa08141b59`; arbitrum `0xa468d9260a96fd7db044a35047010e91869f8988` | ⚠️ Unaudited |
| mortgagefipoolusdcweth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1be87d273d47c3832ab7853812e9a995a4de9eea` | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-389466 | `0x2f5aac46575f68fe600e99096ca38301a4520a91` | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9be2cf73e62dd3b5df4334d9a36888394822a33f`; arbitrum `0xc355f70f5f37f773e76e16d0e046c5f868d8ea72` | ⚠️ Unaudited |
| mortgagefiusdccbbtcupgraded | unknown | project_anchor | own_supporting | 1 | base | unit-389468 | `0xe93131620945a1273b48f57f453983d270b62dc7` | ⚠️ Unaudited |
| mortgagetickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x5c72d7be838415a663dda5f1213c0d72b4b61932`; arbitrum `0x7ce0dcbf0b72bc06fc82361848e74024388dede3`; arbitrum `0x8b712a8afd5163460cc121deef6d233011c63375` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aea2ddf5e255a9b73f1dd8557be4dc19b2f71b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32ff6cda1fddfbcb01980fb00543b95db42bd0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x392574f6f3dfd576514fba8e53304c3a815d0e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45306c3927e81a9a3dd9152cb7af064afcbf1f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x646a9d3148c7443b7b644adc465f2ac1baf58c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa49204110778ff1e333f71067aef92e34c05ea10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafcf31294fcc627217c8c5334af20258bf533817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5a79b21045c4a36e73bc723804c2ed7859b3152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbd3e8fc6ee1e441c841baaaa8cde330d1c0b002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389467 | `0xcd89abe6ec3eedef07713e1b89d698c0c421dc8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5f28ca9b4d5580e79b4561e424fca88fbf8c766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0dc45a7141db52a1452ec99140458870816f2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd7457e714b4b218fa95dea40d0665f7e47648d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe51499d328009ab7b8abed6b27dabd58b37cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bccf0b30e9081c586496c827587e27652c72051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59f8881d28772f8e23a1b282fb9d5fc2e7ca5bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd3f2b92fd5708a44e6df95cd57b59e896d6db8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [mortgagefi-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/MortgageFi/mortgagefi-audit-report-1.1.pdf) | Decurity | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [hashlock.com/audits/mortgagefi](https://hashlock.com/audits/mortgagefi) | unknown | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2024/10/MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13524] mortgagefi-audit-report-1.1.pdf — no match: No reason recorded
- [13525] hashlock.com/audits/mortgagefi — no match: The provided text is a marketing page for Hashlock's audit services, not the actual audit report. No contract names or scope details are present. The date 'August 2024' is inferred as the last audit date.
- [13526] MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| mortgagefi-audit-report-1.1.pdf | ciabv2erc20 | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagecontracts | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgageconversionvault | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagefeetickets | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagefipoolwethusdc | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagecontracts | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgageconversionvault | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagefeetickets | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagefipoolwethusdc | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x2f5aac46575f68fe600e99096ca38301a4520a91` | mortgagefipoolusdtwbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe93131620945a1273b48f57f453983d270b62dc7` | mortgagefiusdccbbtcupgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13524] mortgagefi-audit-report-1.1.pdf
- [13525] hashlock.com/audits/mortgagefi
- [13526] MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
