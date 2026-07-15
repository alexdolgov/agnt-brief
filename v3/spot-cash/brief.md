# Agentic Audit Brief: SPOT Cash

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 15 (3 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SPOT Cash (`spot-cash`)
- Website: [https://www.spot.cash](https://www.spot.cash)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 53 unique implementations (53 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $204,028.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SPOT Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5613fc...593871`, chain 1)
- UnnamedContract (`0x82a91a...2869bd`, chain 1)
- UnnamedContract (`0x8689fa...ab6ab5`, chain 1)
- UnnamedContract (`0xc1f33e...81bafe`, chain 1)
- UnnamedContract (`0x8f2e67...7590a0`, chain 8453)
- RouterV2 (`0xce2878...45d1bc`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 6 of 53 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 53
- Raw deployments: 53
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 100.0% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392958 | `0xce2878...45d1bc` | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMPLChainBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53049b...730a83` | ⚠️ Unaudited |
| AmpleBondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d63d3...e286f6` | ⚠️ Unaudited |
| App | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ab5ff...dcd9ba` | ⚠️ Unaudited |
| BasicFeeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff732c...0898a3` | ⚠️ Unaudited |
| BillBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce64c...aca063` | ⚠️ Unaudited |
| BondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216362...912a96` | ⚠️ Unaudited |
| BondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b135c...920374` | ⚠️ Unaudited |
| BondIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2e49...1b52f2` | ⚠️ Unaudited |
| ButtonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8de4a...27ce50` | ⚠️ Unaudited |
| ButtonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d8c7...7817c5` | ⚠️ Unaudited |
| ButtonTokenWamplRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c76a2...20a983` | ⚠️ Unaudited |
| CDRPricingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437ef5...5cbeaa` | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277304...59d201` | ⚠️ Unaudited |
| CharmGeyserRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb91d...406ceb` | ⚠️ Unaudited |
| DRBalancerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f6062...dacdbd` | ⚠️ Unaudited |
| DualAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f46c...43cffb` | ⚠️ Unaudited |
| DualAuctionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1696d0...5b47a2` | ⚠️ Unaudited |
| ExclusiveGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b3f31...f29a66` | ⚠️ Unaudited |
| FeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cb72...f1cc6b` | ⚠️ Unaudited |
| Geyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ec933...51c891` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4380...21a7e7` | ⚠️ Unaudited |
| ImplementationDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52d1c...d74ba3` | ⚠️ Unaudited |
| MedianOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a18bf...ff4f71` | ⚠️ Unaudited |
| Package | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722bcc...cf972e` | ⚠️ Unaudited |
| PerpetualTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a155...3bfa83` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ccca...b808d2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a18c...bc8914` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e316b...763440` | ⚠️ Unaudited |
| RolloverVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e8ad...dd536a` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f600...29c393` | ⚠️ Unaudited |
| SpotAppraiser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b8cf...f27300` | ⚠️ Unaudited |
| SpotCDRPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b033...201739` | ⚠️ Unaudited |
| SpotPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8f51...5d7881` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8e73...774b09` | ⚠️ Unaudited |
| TrancheClassDiscountStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c85fb...764cef` | ⚠️ Unaudited |
| TrancheFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb90e9...b8f7ad` | ⚠️ Unaudited |
| TrancheManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0028c...5f285f` | ⚠️ Unaudited |
| UFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3222a6...bcde48` | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b228a...dca2ea` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f7230...22223c` | ⚠️ Unaudited |
| UsdcSpotManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f6715...c1693c` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a09ff...14cef0` | ⚠️ Unaudited |
| WAMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb171...3b49ef` | ⚠️ Unaudited |
| WamplLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06111c...7faab8` | ⚠️ Unaudited |
| WamplOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410f6c...3363fb` | ⚠️ Unaudited |
| WethLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2119bd...cbc721` | ⚠️ Unaudited |
| WethWamplManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169ec5...03b857` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392954 | `0x5613fc...593871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392955 | `0x82a91a...2869bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392956 | `0x8689fa...ab6ab5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392957 | `0xc1f33e...81bafe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392959 | `0x8f2e67...7590a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Spot-v2.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v2.0.0/PeckShield-Audit-Report-Spot-v2.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-Spot-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v3.0.0/PeckShield-Audit-Report-Spot-v1.0.pdf) | PeckShield | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high|medium |
| [PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/vaults/BillBroker/v1.0.0/PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21453] PeckShield-Audit-Report-Spot-v2.0.pdf — no match: No explicit scope table; contracts extracted from findings targets. Audit date from cover page.
- [21454] PeckShield-Audit-Report-Spot-v1.0.pdf — matched: No explicit scope table; contracts extracted from findings targets and recommendations.
- [21456] PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf — no match: The report does not have a dedicated scope section or table listing contracts in scope. However, the findings consistently target 'BillBroker' and mention 'Multiple Contracts' in PVE-003. No other contract names are explicitly identified as in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Spot-v2.0.pdf | RolloverVault | unmatched — not counted | — | Target in finding PVE-001 and PVE-003 | no |
| PeckShield-Audit-Report-Spot-v2.0.pdf | PerpetualTranche | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Spot-v2.0.pdf | RouterV1 | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | PerpetualTranche | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondIssue | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondIssuer | unmatched — not counted | — | mentioned in finding PVE-001 target and recommendation | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | RouterV2 | own contract | RouterV2 (selected) `0xce2878...45d1bc` — deployed 2024-04-15 20:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Spot-v1.0.pdf | FeePolicy | unmatched — not counted | — | mentioned in finding PVE-003 target and PVE-005 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BondHelpers | unmatched — not counted | — | mentioned in finding PVE-004 target | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | RolloverVault | unmatched — not counted | — | mentioned in finding PVE-001 recommendation | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | UniswapV3PoolHelpers | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Spot-v1.0.pdf | BillBroker | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf | BillBroker | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, and PVE-003; mentioned as the main contract in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=3
- Match method counts: unique_name=3

Zero-match audit list:

- [21453] PeckShield-Audit-Report-Spot-v2.0.pdf
- [21456] PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
