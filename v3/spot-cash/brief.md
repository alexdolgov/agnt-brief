# Agentic Audit Brief: SPOT Cash

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 15 (3 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SPOT Cash (`spot-cash`)
- Website: [https://www.spot.cash](https://www.spot.cash)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

- UnnamedContract (`0x5613fc36a431c9c2746763b80c1dd89e03593871`, chain 1)
- UnnamedContract (`0x82a91a0d599a45d8e9af781d67f695d7c72869bd`, chain 1)
- UnnamedContract (`0x8689fa9991834bcf0387b31b7986ac311bab6ab5`, chain 1)
- UnnamedContract (`0xc1f33e0cf7e40a67375007104b929e49a581bafe`, chain 1)
- UnnamedContract (`0x8f2e6758c4d6570344bd5007dec6301cd57590a0`, chain 8453)
- RouterV2 (`0xce2878d1f2901efaf48cd456e586b470c145d1bc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 53 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/48
- Verified + Unaudited implementations: 47
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
| PeckShield | Tier 2 | 1 | 2.1% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392958 | `0xce2878d1f2901efaf48cd456e586b470c145d1bc` | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMPLChainBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53049bcf7ca8190ce2eea81747292133d8730a83` | ⚠️ Unaudited |
| AmpleBondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d63d307a2b50c3e76eb12cfba002bf9d8e286f6` | ⚠️ Unaudited |
| App | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ab5ff14f658f1aa122f56ca86cf5f5682dcd9ba` | ⚠️ Unaudited |
| BasicFeeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff732ca9efc95e853fbd71a5c61647cd0c0898a3` | ⚠️ Unaudited |
| BillBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce64cd7583864f7005898aa133c74dbccaca063` | ⚠️ Unaudited |
| BondController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216362799cf20a27b246ef0fccf03bc4b8912a96` | ⚠️ Unaudited |
| BondFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b135c839d61808e1ec6f84151cd9429b0920374` | ⚠️ Unaudited |
| BondIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2e49edcd5ce08677bab6d791c863f1361b52f2` | ⚠️ Unaudited |
| ButtonswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8de4ab6c65e274630f5279f74eb69b66327ce50` | ⚠️ Unaudited |
| ButtonswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d8c77fff3cdcc43804275ad9997b603a7817c5` | ⚠️ Unaudited |
| ButtonTokenWamplRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c76a2ce5f285f10c5674bee172b420b4e20a983` | ⚠️ Unaudited |
| CDRPricingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437ef588307a6e1367e29283edb1740a8b5cbeaa` | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27730429adca6f1fcefdc05e222d64cffd59d201` | ⚠️ Unaudited |
| CharmGeyserRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bb91dafdb5e1aa7d56a1d6c93fa774678406ceb` | ⚠️ Unaudited |
| DRBalancerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f60625c5b4bdf89b9f18b9c681310e6b3dacdbd` | ⚠️ Unaudited |
| DualAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8f46c1545abac895d3ca18f75eadd452643cffb` | ⚠️ Unaudited |
| DualAuctionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1696d00fe4b0f473facbf1958c49090ba55b47a2` | ⚠️ Unaudited |
| ExclusiveGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b3f315e9e7bd3ec8c38bbd31a18a26982f29a66` | ⚠️ Unaudited |
| FeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cb728991deb43a55d475885ff07a694bf1cc6b` | ⚠️ Unaudited |
| Geyser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ec93391752ef1a06aa2b83d15c3a5814651c891` | ⚠️ Unaudited |
| GeyserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc43803f203e3821213be687120ad44c8a21a7e7` | ⚠️ Unaudited |
| ImplementationDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52d1cea2d36c1e43b776a3392e21aff2ad74ba3` | ⚠️ Unaudited |
| MedianOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a18bfb505b49aed12f19f271cc1183f98ff4f71` | ⚠️ Unaudited |
| Package | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722bcc1c85037c7c233eff80f3c057b980cf972e` | ⚠️ Unaudited |
| PerpetualTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a15571db9bfd13d6fba6fd86049e69b73bfa83` | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ccca91368815c1d575f54eeb4c260438b808d2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21a18c81ad418c6c96d4484a97b4632acfbc8914` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e316b724b1ce80aef68f3c7bccd44a060763440` | ⚠️ Unaudited |
| RolloverVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e8adfa8d829dac1c305544a86b53ed0ddd536a` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f600e08540178719bf656e6b43fc15a529c393` | ⚠️ Unaudited |
| SpotAppraiser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08b8cf9f99fa69740579114ed4f7559768f27300` | ⚠️ Unaudited |
| SpotCDRPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b03340d27bc5470aa46da007cd5bde89201739` | ⚠️ Unaudited |
| SpotPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8f519878c10ce36c6aaf89c1aeefaade5d7881` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8e7396ecd4b8472b58a138578569d1d8774b09` | ⚠️ Unaudited |
| TrancheClassDiscountStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c85fb101192e3b969c03533a3be0b3d5f764cef` | ⚠️ Unaudited |
| TrancheFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb90e982be14a51828d20fd8a78ec08910b8f7ad` | ⚠️ Unaudited |
| TrancheManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0028c40c8a09449852ea4d2e9aa4d25895f285f` | ⚠️ Unaudited |
| UFragments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3222a6c3fd5927437c9e5f4c9eb5c98b22bcde48` | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b228a749077b8e307c5856ce62ef35d96dca2ea` | ⚠️ Unaudited |
| UniversalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f723008eec3493a31b6faf7d9fdf3a82322223c` | ⚠️ Unaudited |
| UsdcSpotManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f67158859fe0f69f5773570ec60444fe0c1693c` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a09ffa4d4310c7f59dc538a1481d8ba2214cef0` | ⚠️ Unaudited |
| WAMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb171c18ce90b633db442f2a6f72874093b49ef` | ⚠️ Unaudited |
| WamplLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06111c76430d31c640228609f334c207547faab8` | ⚠️ Unaudited |
| WamplOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410f6cd88a590122a693b0e990d0d094a53363fb` | ⚠️ Unaudited |
| WethLoanRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2119bd77031d5a6c69d7b15a3a73e15a91cbc721` | ⚠️ Unaudited |
| WethWamplManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169ec5446830538e5979121e962621df6003b857` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392954 | `0x5613fc36a431c9c2746763b80c1dd89e03593871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392955 | `0x82a91a0d599a45d8e9af781d67f695d7c72869bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392956 | `0x8689fa9991834bcf0387b31b7986ac311bab6ab5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392957 | `0xc1f33e0cf7e40a67375007104b929e49a581bafe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392959 | `0x8f2e6758c4d6570344bd5007dec6301cd57590a0` | ❓ Unverified |

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
| PeckShield-Audit-Report-Spot-v1.0.pdf | RouterV2 | own contract | RouterV2 (selected) `0xce2878d1f2901efaf48cd456e586b470c145d1bc` — deployed 2024-04-15 20:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
