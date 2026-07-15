# Agentic Audit Brief: Stakehouse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 24 across 6 audit(s)
- Eligible audit results: 12 (6 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stakehouse (`stakehouse`)
- Website: [https://blockswap.network/](https://blockswap.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, goerli
- Contract surface: 66 unique implementations (66 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $101,495.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Stakehouse in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...7705fa`, chain 1)
- UnnamedContract (`0x00ee7e...e1402e`, chain 1)
- UnnamedContract (`0x03f431...7dea80`, chain 1)
- UnnamedContract (`0x04e5c9...56796e`, chain 1)
- UnnamedContract (`0x1d1f35...207d37`, chain 1)
- UnnamedContract (`0x1eb104...91984d`, chain 1)
- UnnamedContract (`0x2a86d2...7abfff`, chain 1)
- UnnamedContract (`0x3d1e5c...cd90c5`, chain 1)
- UnnamedContract (`0x53975f...a20ca7`, chain 1)
- UnnamedContract (`0x64f4fc...3a55d0`, chain 1)
- UnnamedContract (`0x6edd4d...c3850a`, chain 1)
- UnnamedContract (`0x8035a7...2afbef`, chain 1)
- UnnamedContract (`0x88e6c7...6b3c0c`, chain 1)
- UnnamedContract (`0x8f6839...354333`, chain 1)
- UnnamedContract (`0x9cbc2b...038369`, chain 1)
- UnnamedContract (`0xc01dc3...c48569`, chain 1)
- UnnamedContract (`0xc6306c...3056bd`, chain 1)
- UnnamedContract (`0xcf7468...b67f03`, chain 1)
- UnnamedContract (`0xdd6e67...71377c`, chain 1)
- UnnamedContract (`0xf5d92b...1ecbb9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 20 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 20 of 66 unique; 46 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0ff7e2...001a33` | ⚠️ Unaudited |
| SimpleMerkleVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fda7...e3f4ce` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x534d1f...776a5e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256862 | `0x000000...7705fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256863 | `0x00ee7e...e1402e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01efec...2829d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256864 | `0x03f431...7dea80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256865 | `0x04e5c9...56796e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161c47...fb32f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256866 | `0x1d1f35...207d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256867 | `0x1eb104...91984d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256868 | `0x2a86d2...7abfff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3564a4...b62eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f75c...3e7609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370fcb...1e99a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256869 | `0x3d1e5c...cd90c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x424242...424242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bfc95...dfeb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7af9...0f5a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509c0a...f827e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256870 | `0x53975f...a20ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58b2a7...c591bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d003...8ba342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c29fd...d3933e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cecfa...a72895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256871 | `0x64f4fc...3a55d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256872 | `0x6edd4d...c3850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3008...e84eed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-256873 | `0x7f79a6...d043cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256874 | `0x8035a7...2afbef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256875 | `0x88e6c7...6b3c0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256876 | `0x8f6839...354333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x952a86...f4cfe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256877 | `0x9cbc2b...038369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa060a5...7b895c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38042...39b81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50350...41adf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb766d4...5c39e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256878 | `0xc01dc3...c48569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc24cd7...b1cb2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256879 | `0xc6306c...3056bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc861fd...a3100a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256880 | `0xcf7468...b67f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd21424...56fbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d58b...bfe47c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-256881 | `0xd7beff...0341e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1837...a0d2a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256882 | `0xdd6e67...71377c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c28a...11048b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9482a...36be5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d210...36e2bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256883 | `0xf5d92b...1ecbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd6645...0391d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256884 | `0x1a86d0...22ec5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256885 | `0x3be1e8...0e41d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256886 | `0x4acb70...db44a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256887 | `0x506c2b...64cb6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256888 | `0x55fa81...6a9c19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256889 | `0x6bc326...5a3047` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256890 | `0x952295...f77b28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256891 | `0x9ef3bb...fb5b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256892 | `0xc38ee0...726e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256893 | `0xc4b443...d3d24b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256894 | `0xf0be47...07de85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256895 | `0xfd989f...fa2fbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-256896 | `0xff50ed...8a7b2b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Solidified - Audit 1 - Stakehouse - Nov 2021](https://github.com/stakehouse-dev/Audits/blob/main/Solidified_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Solidified | Audit | 2021-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Halborn - Audit 2 - Stakehouse - Dec 2021](https://github.com/stakehouse-dev/Audits/blob/main/Halborn_Stakehouse_Smart_Contract_Security_Audit_Report.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 24 | high |
| [Runtime Verification - Formal Audit - Stakehouse - Apr 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-04 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 16 | high |
| [Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_Stakehouse_Smart_Contracts_2nd_Audit_Report.pdf) | Runtime Verification | Audit | 2022-06 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 15 | high |
| [Runtime Verification - Formal Audit - dETH Gateway - Oct 2022](https://github.com/stakehouse-dev/Audits/blob/main/Runtime_Verification_dETH_Gateway_Smart_Contracts_Audit_Report.pdf) | Runtime Verification | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [code4rena - LSD Network Audit Contest - Nov 2022](https://github.com/stakehouse-dev/Audits/blob/main/code4rena%20-%20LSD%20Network%20Audit%20Contest.pdf) | Code4rena | Contest | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Contract properties - LSD - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Stakehouse withdrawal - Stakehouse - Jul 2023](https://github.com/stakehouse-dev/Audits/blob/main/Stakehouse%20_Withdrawal_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [Protocol properties - kETH - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Protocol%20properties-kETH.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Contract properties - LSD withdrawals - Oct 2023](https://github.com/stakehouse-dev/Audits/blob/main/Contract%20properties-LSD%20withdrawals.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Certora_Stakehouse_Report.pdf](https://github.com/stakehouse-dev/Audits/blob/main/Certora_Stakehouse_Report.pdf) | Certora | Audit | 2022-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 3 | high |
| [Formal Verification - LSD syndicate](https://github.com/stakehouse-dev/Audits/blob/main/Formal%20Verification%20-%20LSD%20syndicate.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24500] Solidified - Audit 1 - Stakehouse - Nov 2021 — matched: Contracts extracted from findings sections; scope section mentions repository but not individual files; all contracts referenced in findings are in scope.
- [24501] Halborn - Audit 2 - Stakehouse - Dec 2021 — matched: Extracted 28 contract names from the scope section (page 11) and findings. Audit date is the end date of the engagement (December 7th, 2021).
- [24502] Runtime Verification - Formal Audit - Stakehouse - Apr 2022 — matched: Extracted 21 contract names from the Scope section (pages 7-8) and the audit date from the cover page.
- [24503] Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 — matched: Extracted 22 contract names from the 'Scope' section listing. Audit date from cover page 'Delivered: 2022-06-06'.
- [24504] Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 — no match: Scope section explicitly lists 7 smart contracts. Audit date found on cover page: 'Delivered: 2022-10-17'.
- [24505] code4rena - LSD Network Audit Contest - Nov 2022 — no match: Extracted 10 contracts from scope and findings. Audit date from contest end date (November 18, 2022).
- [24506] Contract properties - LSD - Jul 2023 — no match: Extracted contract names from the audit report text. No file paths or dates provided.
- [24507] Stakehouse withdrawal - Stakehouse - Jul 2023 — matched: Extracted 9 contracts from the Scope section. Audit date from cover page.
- [24508] Protocol properties - kETH - Oct 2023 — no match: No explicit scope section or file paths found. Contract names extracted from property sections in the formal verification document.
- [24509] Contract properties - LSD withdrawals - Oct 2023 — no match: The provided text is garbled and does not contain clear contract names or a scope section. It appears to be a corrupted or misformatted document.
- [24510] Certora_Stakehouse_Report.pdf — matched: Scope section lists 7 contracts plus StakeHouseUniverseFactory is verified in a separate section.
- [24511] Formal Verification - LSD syndicate — no match: The document is a list of Certora verification results with rule names and links, but no explicit contract names or scope section. The date 'May 2023' is inferred from the header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Solidified - Audit 1 - Stakehouse - Nov 2021 | TransactionManager | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | CarefulMath | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | Exponential | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | ExponentialNoError | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | skLOOTFactory | unmatched — not counted | — | listed in findings | no |
| Solidified - Audit 1 - Stakehouse - Nov 2021 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5c...cd90c5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c...3056bd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | Banking | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | SlotSettlementPool | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | SlotToken | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5c...cd90c5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | sETH | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7e...e1402e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETHReservePool | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandCentral | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandNFT | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | skLOOT | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | skLOOTFactory | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | FlagHelper | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67...71377c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | TransactionManager | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | Streamer | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ETH2ReportValidator | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | ETH2ValidationLib | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | StakeHouseUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | UniverseUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit 2 - Stakehouse - Dec 2021 | BrandCentralClaimAuction | unmatched — not counted | — | mentioned in findings as a contract with issues | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67...71377c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | Streamer | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | TransactionManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | Banking | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SlotSettlementRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5c...cd90c5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | sETH | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7e...e1402e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7...6b3c0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | DKGRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | SafeBoxManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseUUPSCoreModule | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - Stakehouse - Apr 2022 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c...3056bd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SlotSettlementRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7...6b3c0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETH | own contract | 0x00ee7e… (selected) `0x00ee7e...e1402e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | CollateralisedSlotManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | sETH | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | Banking | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | dETH | own contract | 0x3d1e5c… (selected) `0x3d1e5c...cd90c5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | savETHManager | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | Streamer | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67...71377c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | TransactionRouter | own contract | 0x03f431… (selected) `0x03f431...7dea80` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SignatureValidator | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseUUPSCoreModule | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | BaseModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | ModuleGuards | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | SafeBox | own contract | 0x8035a7… (selected) `0x8035a7...2afbef` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | DKGRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseRegistry | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseUniverse | own contract | 0xc6306c… (selected) `0xc6306c...3056bd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Runtime Verification - Mainnet Audit - Stakehouse - Jun 2022 | StakeHouseAccessControls | unmatched — not counted | — | listed in scope | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHDestinationReporter | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHGatewaySignatureValidator | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHOriginGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | savETHRegistryDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Formal Audit - dETH Gateway - Oct 2022 | StakeHouseUniverseDestinationGateway | unmatched — not counted | — | listed in scope section | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantMevAndFeesPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | SyndicateRewardsProcessor | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantLP | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | Syndicate | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | LiquidStakingManager | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantSavETHVaultPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | GiantPoolBase | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | StakingFundsVault | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | LPToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena - LSD Network Audit Contest - Nov 2022 | SavETHVault | unmatched — not counted | — | listed in scope and findings | no |
| Contract properties - LSD - Jul 2023 | ETHPoolFactory | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | SavETHVault | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | StakingFundsVault | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | Syndicate | unmatched — not counted | — | Listed as contract in scope with invariants | no |
| Contract properties - LSD - Jul 2023 | LPToken | unmatched — not counted | — | Listed as contract in scope with properties | no |
| Contract properties - LSD - Jul 2023 | SyndicateRewardsProcessor | unmatched — not counted | — | Mentioned as contract state and invariants | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | ExitedUnknownSweeps | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | FullWithdrawals | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | PartialWithdrawals | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | QueueFlushETHClaim | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | ShanghaiSweepReporting | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | WithdrawalsDataStructures | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67...71377c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Stakehouse withdrawal - Stakehouse - Jul 2023 | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7...6b3c0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Protocol properties - kETH - Oct 2023 | kETHVault | unmatched — not counted | — | Properties of KETHVault section | no |
| Protocol properties - kETH - Oct 2023 | DEthVault | unmatched — not counted | — | Properties of DETHVault section | no |
| Protocol properties - kETH - Oct 2023 | SavETHManagerHandler | unmatched — not counted | — | Properties of SavETHManagerHandler section | no |
| Protocol properties - kETH - Oct 2023 | SavETHManager | unmatched — not counted | — | Referenced in SavETHManagerHandler properties | no |
| Protocol properties - kETH - Oct 2023 | KETHStrategy | unmatched — not counted | — | Properties of KETHStrategy section | no |
| Protocol properties - kETH - Oct 2023 | ISwapper | unmatched — not counted | — | Properties of ISwapper section | no |
| Certora_Stakehouse_Report.pdf | savETHRegistry | own contract | 0x88e6c7… (selected) `0x88e6c7...6b3c0c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | SlotRegistry | own contract | 0xc01dc3… (selected) `0xc01dc3...c48569` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | StakehouseRegistry | unmatched — not counted | — | listed in scope | no |
| Certora_Stakehouse_Report.pdf | AccountManager | own contract | 0xdd6e67… (selected) `0xdd6e67...71377c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | Safebox | own contract | 0x8035a7… (selected) `0x8035a7...2afbef` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | TransactionRouter | own contract | 0x03f431… (selected) `0x03f431...7dea80` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora_Stakehouse_Report.pdf | BalanceReporter | unmatched — not counted | — | listed in scope | no |
| Certora_Stakehouse_Report.pdf | StakeHouseUniverseFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 24 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 99 unmatched
- Matched-own operational status: 24 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=2, medium=1
- Match method counts: unique_name=24

Zero-match audit list:

- [24504] Runtime Verification - Formal Audit - dETH Gateway - Oct 2022
- [24505] code4rena - LSD Network Audit Contest - Nov 2022
- [24506] Contract properties - LSD - Jul 2023
- [24508] Protocol properties - kETH - Oct 2023
- [24509] Contract properties - LSD withdrawals - Oct 2023
- [24511] Formal Verification - LSD syndicate

Fork inheritance lineage and inherited audits are included when available.
