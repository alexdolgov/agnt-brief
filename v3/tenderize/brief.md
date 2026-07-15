# Agentic Audit Brief: Tenderize

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 8 (2 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tenderize (`tenderize`)
- Website: [https://tenderize.me](https://tenderize.me)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 67 unique implementations (89 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $724,869.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Tenderize in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x43c3db...8e008d`, chain 1)
- UnnamedContract (`0x8acd95...6ba824`, chain 1)
- UnnamedContract (`0xa7ca87...3387ee`, chain 1)
- UnnamedContract (`0xb98c7e...835796`, chain 1)
- UnnamedContract (`0xc1ae73...a513a0`, chain 1)
- UnnamedContract (`0xe88d90...3d10f0`, chain 1)
- UnnamedContract (`0xf09b21...8216ca`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 7 of 67 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/55
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 67
- Raw deployments: 89
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllocationExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a53cf...94385f` | ⚠️ Unaudited |
| AudiusAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x402aa6...c1118e`; ethereum `0xc509a0...2cee72` | ⚠️ Unaudited |
| AudiusToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x18aaa7...65b998` | ⚠️ Unaudited |
| AudiusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22a9cc...a87bbd` | ⚠️ Unaudited |
| AudiusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb6149d...ff9fb3`; ethereum `0xc07b7b...65800f` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c61e...3727dc` | ⚠️ Unaudited |
| ClaimsManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44617f...aa1334` | ⚠️ Unaudited |
| ClaimsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41bd3...066bef` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ccd4...616117` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2b24...2c176c` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8fe00a...ce1538` | ⚠️ Unaudited |
| DelegateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612b43...2ff8d6` | ⚠️ Unaudited |
| DelegateManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4d7968...9fb225` | ⚠️ Unaudited |
| DelegateManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24aea...141057` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x444c13...a5bfc2`; ethereum `0x97307b...c4fb0b` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c837a...56517f` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fab25...d2ee31`; ethereum `0x64f990...e05ddb` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf3a75e...796252` | ⚠️ Unaudited |
| ERC20Splitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69eaac...c5aa0d` | ⚠️ Unaudited |
| EthRewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc6425...aa60d3` | ⚠️ Unaudited |
| EthRewardsManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5aa6b9...39c3b0`; ethereum `0xf93bc6...33b6f6` | ⚠️ Unaudited |
| GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28037b...05daeb` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35dd16...0ae5e8`; ethereum `0xc3177c...99dd7f` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4deca5...03abac` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e2064...56366b`; ethereum `0x8c9d77...882875` | ⚠️ Unaudited |
| Graph | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe66f3a...329a07` | ⚠️ Unaudited |
| GraphPreToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9611...559e10` | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b000...e71430` | ⚠️ Unaudited |
| GraphSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09695a...afa68b`; ethereum `0x6533e9...41a2ee` | ⚠️ Unaudited |
| GraphToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944e9...da44a7` | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x628404...095883`; ethereum `0xfcf78a...dfa128` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32ec7a...7f2ca1`; ethereum `0x578517...0666db` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5e63...5a2255` | ⚠️ Unaudited |
| L1GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadca0d...7b6825` | ⚠️ Unaudited |
| L1Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55041...1263b9` | ⚠️ Unaudited |
| LibCobbDouglas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84828...a649fb` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bc748...52679c`; ethereum `0x41b1de...7e5d3f`; ethereum `0x6d8d8b...0ba291` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6454c4...093e9d`; ethereum `0x7a8586...c77bbb` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95e9b5...ad3859`; ethereum `0xcbc414...541d75` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd976d3...b6f64c` | ⚠️ Unaudited |
| Renderer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x43c3db...8e008d` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x842ddf...94940e`; ethereum `0xdbafb0...301ceb` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9ac758...93ed66` | ⚠️ Unaudited |
| ServiceProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684c6f...96c2e1` | ⚠️ Unaudited |
| ServiceProviderFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd17a9b...5156c8` | ⚠️ Unaudited |
| ServiceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x866232...f5b3aa`; ethereum `0xad0c9d...ec26e6` | ⚠️ Unaudited |
| ServiceTypeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9efb0f...8417c5` | ⚠️ Unaudited |
| ServiceTypeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd6c2a...ebd1e5` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x296ebf...9e2a53`; ethereum `0x99660f...27c602`; ethereum `0xc3d14a...a1e55c`; ethereum `0xea10fd...26702f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6d97b...ae4591` | ⚠️ Unaudited |
| Tenderizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a3c14...6bc9ba` | ⚠️ Unaudited |
| TenderSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23c24c...3a469e`; arbitrum `0x2429fc...0b9781` | ⚠️ Unaudited |
| TenderToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2336c1...3599a3`; ethereum `0xc29f56...2ad2ac`; arbitrum `0xfac385...0c4078` | ⚠️ Unaudited |
| TrustedNotifierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e139...cf4af7` | ⚠️ Unaudited |
| TrustedNotifierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f0810...519d39` | ⚠️ Unaudited |

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
| Proxy (impl: 0x54d6e288065addc74c11d9dfbefb805a73cf58c7) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x388b0f...1792cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144b7c...4b025a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbe8...8f54fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393878 | `0x43c3db...8e008d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd49e...722568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393879 | `0x8acd95...6ba824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393880 | `0xa7ca87...3387ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393881 | `0xb98c7e...835796` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393882 | `0xc1ae73...a513a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda0dfc...f8d0d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393883 | `0xe88d90...3d10f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393884 | `0xf09b21...8216ca` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | n/a | matched | 2 | 0 | 0 | 9 | n/a |
| [Trust_Audits_Tenderize_V4.pdf](https://github.com/Tenderize/staking/blob/main/audits/Trust_Audits_Tenderize_V4.pdf) | Trust Audits | Audit | 2024-02 | stale | Direct | n/a | matched | 2 | 0 | 0 | 12 | n/a |
| [halborn-tenderswap-audit.pdf](https://github.com/Tenderize/tenderswap/blob/main/audits/halborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [LPETH _ SSC.pdf](https://276120184-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F29Sq9aVO6bZwCobNudVH%2Fuploads%2FdjqeafNAZu6NSPWUpFuk%2FLPETH%20_%20SSC.pdf) | SSC | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [halborn-tenderswap-audit.pdf](https://276120184-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F29Sq9aVO6bZwCobNudVH%2Fuploads%2F5jOfk2Iskhnxsc8F9knn%2Fhalborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14863] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf — no match: Only one contract in scope: LivepeerAdapter.sol. Audit date is the end date of engagement (September 13th, 2023).
- [14864] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf — no match: Only one contract in scope: PolygonAdapter. Audit date is end of engagement period.
- [14865] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf — no match: Only one contract in scope: GraphAdapter.sol. Audit date is the end date of engagement (September 5th, 2023).
- [14866] Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf — matched: No reason recorded
- [14867] Trust_Audits_Tenderize_V4.pdf — matched: No reason recorded
- [14868] halborn-tenderswap-audit.pdf — no match: Scope section explicitly lists 6 files. Audit date is end of engagement period (March 8, 2024).
- [28249] LPETH _ SSC.pdf — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement (June 28, 2024).
- [28250] halborn-tenderswap-audit.pdf — no match: Scope section explicitly lists 6 files. Audit date is the end date of engagement: March 8, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf | LivepeerAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf | PolygonAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf | GraphAdapter | unmatched — not counted | — | listed in scope section | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Adapter | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Factory | own contract | 0xf09b21… (selected) `0xf09b21...8216ca` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | ITenderizer | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Registry | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | RegistryStorage | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Roles | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TToken | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TTokenStorage | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Tenderizer | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | TenderizerBase | unmatched — not counted | — | — | no |
| Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf | Unlocks | own contract | 0xb98c7e… (selected) `0xb98c7e...835796` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Audits_Tenderize_V4.pdf | Adapter | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Base64 | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Factory | own contract | 0xf09b21… (selected) `0xf09b21...8216ca` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trust_Audits_Tenderize_V4.pdf | GraphAdapter | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | ITenderizer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Registry | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | RegistryStorage | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Renderer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Roles | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TToken | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TTokenStorage | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Tenderizer | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | TenderizerBase | unmatched — not counted | — | — | no |
| Trust_Audits_Tenderize_V4.pdf | Unlocks | own contract | 0xb98c7e… (selected) `0xb98c7e...835796` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn-tenderswap-audit.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Swap | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | UnlockQueue | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Registry | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Base64 | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Renderer | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | UnsETH | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LpETH | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | UnsETHQueue | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | Adapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ETHxAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IStader | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | EETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IEtherfi | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ILiquidCollective | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | LsETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | IMantle | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | METHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ILido | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | StETHAdapter | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | ISwell | unmatched — not counted | — | listed in scope | no |
| LPETH _ SSC.pdf | SwETHAdapter | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | LPToken | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Swap | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | UnlockQueue | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | ERC721Receiver | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| halborn-tenderswap-audit.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 59 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=4

Zero-match audit list:

- [14863] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14864] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf
- [14865] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14868] halborn-tenderswap-audit.pdf
- [28249] LPETH _ SSC.pdf
- [28250] halborn-tenderswap-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
