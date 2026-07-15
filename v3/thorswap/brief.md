# Agentic Audit Brief: THORSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: THORSwap (`thorswap`)
- Website: [https://www.thorswap.finance/](https://www.thorswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 55 unique implementations (87 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,172,556.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for THORSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ThorToken (`0xa5f221...468044`, chain 1)

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
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 55 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 55
- Raw deployments: 87
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RewardsForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6318...22b182` | ⚠️ Unaudited |
| SingleStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x675563...b34922`; ethereum `0xae1fc3...88bc24` | ⚠️ Unaudited |
| SKChainflipHyperLiquid_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x00503a...cf4cd5`; arbitrum `0x199dab...a90d40`; arbitrum `0x78fd32...39d799` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16d48d...4adbb1`; ethereum `0xa82b8d...b46b75` | ⚠️ Unaudited |
| ThorchainSimpleAggregatorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfbf2f...a0899d` | ⚠️ Unaudited |
| ThorToken | token | project_anchor | own_supporting | 0 | ethereum | unit-266969 | `0xa5f221...468044` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c3c9e...da2223`; ethereum `0xb54147...c0d25f` | ⚠️ Unaudited |
| TSAggregatorChainflip_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x029c7a...8b05ed`; ethereum `0xd917c3...06f1f1` | ⚠️ Unaudited |
| TSAggregatorChainflip_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe797be...99ecdc` | ⚠️ Unaudited |
| TSAggregatorChainflip_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104715...bfd1f5` | ⚠️ Unaudited |
| TSAggregatorGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0ccd5d...f63c3c`; ethereum `0x5727d8...7cd2ab`; ethereum `0x77cdf2...7abd95`; ethereum `0x97fce4...26cffc`; ethereum `0xd31f7e...c49fd2` | ⚠️ Unaudited |
| TSAggregatorGeneric_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0xaa68cf...ea9e9f`; base `0xb1970f...7aaeed`; arbitrum `0x6e5add...1b17ac`; arbitrum `0xfa3f33...d01e9a` | ⚠️ Unaudited |
| TSAggregatorTokenTransferProxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xf892fe...33abe8`; base `0x5505be...f9bf5a`; arbitrum `0x5786ef...bef9ce`; arbitrum `0x8baf33...c5d5f7` | ⚠️ Unaudited |
| TSAggregatorUniswapV3_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50cbe1...d78012` | ⚠️ Unaudited |
| TSAggregatorWoofi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x30912b...9aec2e`; arbitrum `0xcd6f8b...626ceb`; avalanche `0x5505be...f9bf5a` | ⚠️ Unaudited |
| TSAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5505be...f9bf5a` | ⚠️ Unaudited |
| TSDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf061e3...3e3528` | ⚠️ Unaudited |
| TSFeeDistributor_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd5060c...382d01`; ethereum `0xdfafdb...b419e5` | ⚠️ Unaudited |
| TSFeeDistributor_V3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x546e7b...e04ba7`; ethereum `0xfb6820...b87b6a` | ⚠️ Unaudited |
| TSLedgerAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x004d19...2187e5`; ethereum `0x8fec55...47745e`; ethereum `0xad545d...4a9e78`; ethereum `0xb81c7c...6f4016` | ⚠️ Unaudited |
| TSOracle_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849ec6...167d05`; ethereum `0xd0b385...02f28c` | ⚠️ Unaudited |
| TSSwapGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x213255...5906e2`; ethereum `0x8ca20a...5601ed` | ⚠️ Unaudited |
| TSWrapperLedger_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e0068...78fb40`; ethereum `0xe4e831...44d3d6` | ⚠️ Unaudited |
| TSWrapperTCRouterV4_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x84fda6...6003a2`; ethereum `0x94b7f2...941ae7`; ethereum `0xa701ec...ffa454`; ethereum `0xc4a1d2...fa0653`; ethereum `0xdd40f1...5fa5a3` | ⚠️ Unaudited |
| uTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34deff...e03588`; ethereum `0xdd294e...fd89a3` | ⚠️ Unaudited |
| vTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815c23...c24d8d` | ⚠️ Unaudited |
| yTHOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8793cd...764775`; ethereum `0xc01eb1...1e3d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32459c...2b6e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0274...b52310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8235a7...c65078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8526ce...01b46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ae03...774311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60edc...870fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73b8e...8df0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2b279...2fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10929...17c256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8bb7...9df06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4db2...4bf6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x082f52...b61850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17e7e5...da7d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30912b...9aec2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b08b8...783d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5505be...f9bf5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55cf4d...db25b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80d86b...0d2dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa68cf...ea9e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd46ee2...dc48ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc0189...d28c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc5e9...be4654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02f7a...10b0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17e7e5...da7d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55cf4d...db25b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8772b3...0e9606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbd658...795bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf02f7a...10b0af` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-THORSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-THORSwap-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2069] PeckShield-Audit-Report-THORSwap-v1.0.pdf — no match: No reason recorded
- [2070] THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | PledgeFactory | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregator | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregatorGeneric | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | TSAggregatorUniswapV2 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-THORSwap-v1.0.pdf | vTHOR | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Owners | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator2LegUniswapV2 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregator2LegUniswapV3 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorGeneric | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorTokenTransferProxy | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorUniswapV2 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TSAggregatorUniswapV3 | unmatched — not counted | — | — | no |
| THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | vTHOR | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa5f221...468044` | ThorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2069] PeckShield-Audit-Report-THORSwap-v1.0.pdf
- [2070] THORSwap_Aggregators_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
