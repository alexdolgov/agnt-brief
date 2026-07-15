# Agentic Audit Brief: Tangent Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tangent Finance (`tangent-finance`)
- Website: [https://app.tangent.finance/](https://app.tangent.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,145,684.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tangent Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (2), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ConvexFxnLPMarket (`0x849cf8...81b754`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (33 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 77 unique; 76 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 3.1% | 2025-12 |
| Sherlock | Tier 1 | 1 | 3.1% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConvexFxnLPMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258129 | `0x849cf8...81b754` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorStablePriceV3 - aggregator of stablecoin prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1770b6...eb9fea` | ⚠️ Unaudited |
| AggregatorStablePriceV3 - aggregator of stablecoin prices for USG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970b2f...dd2f97` | ⚠️ Unaudited |
| BasicERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10ec7...8642b8` | ⚠️ Unaudited |
| ControlTower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f766...267215` | ⚠️ Unaudited |
| ConvexCrvLPMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e75b...a0ebfb` | ⚠️ Unaudited |
| CurveGaugeMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4742a5...8f716f` | ⚠️ Unaudited |
| FeeHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bd47c...8d8f0d` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| IRCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e1d3...a6e88b` | ⚠️ Unaudited |
| MarketCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x214c8a...6f2781` | ⚠️ Unaudited |
| MarketViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05afee...a2477d` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| OracleChainlinkWrapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x06acea...35b292` | ⚠️ Unaudited |
| OracleCoinFromCurveLP | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258121 | `0x0124b3...d0b074` | ⚠️ Unaudited |
| OracleDuoPoolStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069575...168542` | ⚠️ Unaudited |
| OracleRedstoneWrapperFallback | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258122 | `0x01ddf7...40ff88` | ⚠️ Unaudited |
| PauserProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b1f3...e6b5fa` | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887706...b3f19e` | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a7f16...506d4e` | ⚠️ Unaudited |
| PendlePTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5ace...cd2f52` | ⚠️ Unaudited |
| RewardAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1461d7...3ce639` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x461b62...2c27ca` | ⚠️ Unaudited |
| StakeDaoVaultV2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161d6f...fc099f` | ⚠️ Unaudited |
| USG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c2db...5ae1b1` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17d6f...ef6900` | ⚠️ Unaudited |
| ZappingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e002...719c99` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258123 | `0x25605c...5b6775` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258124 | `0x31acd6...13ead7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x35c62a...0920da` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x385b0c...ff13ce` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3ccd01...94da6a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258125 | `0x4cf9d4...83523e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536d4e...7ce493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56dbc6...f11931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c9965...d35a4b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5d34f6...173aef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258126 | `0x5d634d...b3df9b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258127 | `0x6094c7...eb4a28` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x63f171...38fe2b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258128 | `0x747582...a54e16` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258130 | `0x867df3...d598b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258131 | `0x8aa49a...509859` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8ce9fb...d2f957` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258132 | `0x905f64...8deefb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa3daa1...56c3f4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258133 | `0xa3e863...ba1291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6069a...a5d67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63ded...fcd380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c619...c31e77` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258134 | `0xa8c43f...1651be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed9bc...c5d9a1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb8cc9e...061fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce94d...a514e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbffbd9...8b9b71` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258135 | `0xc866d0...4a0e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c80e...d19c56` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcba777...87b6ef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcf4345...4af4ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd0879e...02b066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c725...2f7e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d29a...0c1785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a63e...a4e638` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdb0fc4...2c7daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08c25...0ac2f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258136 | `0xe10885...82a4c3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe3adae...2163bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe3e962...0b1268` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf26b68...8e69c9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf31be7...0bf886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf89615...66bad9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc3dff...e01fe4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view](https://drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view) | Egis Security | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2025.09.11 - Final - USG - Tangent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.09.11%20-%20Final%20-%20USG%20-%20Tangent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [Tangent-security-review_2025-10-30.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-10-30.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [Tangent-security-review_2025-12-08.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-12-08.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg](https://app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg?finding=M-01) | Zerocool | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21131] drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view — no match: Extracted contract names from context lines in findings and the scope table on page 6. The audit date is from the cover page.
- [21132] 2025.09.11 - Final - USG - Tangent Audit Report.pdf — matched: All contract names extracted from the 'Scope' section file list. Audit date from cover page: 'Date Audited: August 28 - September 11, 2025' -> end date used.
- [21133] Tangent-security-review_2025-10-30.pdf — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the end date of the review period (November 12th 2025).
- [21134] Tangent-security-review_2025-12-08.pdf — matched: All 15 contracts listed in the Scope section of the audit report.
- [21135] app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg — no match: The provided text is only a title 'zerocool-frontend' with no audit report content, contract names, or date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | OracleBase | unmatched — not counted | — | Context:OracleBase.sol#L20 in finding 6.1.1 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | RewardAccumulator | unmatched — not counted | — | Context:RewardAccumulator.sol:564-568 in finding 6.1.2 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | VsTan | unmatched — not counted | — | Context:VsTan.sol#L542-L543 in finding 6.2.5 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ZappingProxy | unmatched — not counted | — | Context:ZappingProxy.sol#L47-L48 in finding 6.2.1 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ControlTower | unmatched — not counted | — | Context:ControlTower.sol#L52-L55 in finding 6.2.4 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | IRCalculator | unmatched — not counted | — | Mentioned in finding 6.2.3 as having same issue | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ConvexCrvLPMarket | unmatched — not counted | — | Context:ConvexCrvLPMarket.sol#L66-L69 in finding 6.2.6 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | Collateral | unmatched — not counted | — | Context:Collateral.sol#L80-L84 in finding 6.2.8 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | MarketCore | unmatched — not counted | — | Context:MarketCore.sol#L412 in finding 6.2.9 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | PauseSettings | unmatched — not counted | — | Mentioned in informational findings 6.3.5 and 6.3.6 | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | Collateral | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | BasicERC20Market | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ConvexFxnLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf8...81b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleCryptoSwap | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleDuoPoolStable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleBase | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OraclePendlePT | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ChainlinkAggregatorWrapper | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleCoinFromCurveLP | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | PendlePTRouter | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | TAN | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | USG | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | VsTAN | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | WStable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | LightOwnable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | LightReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ZappingUtil | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ZappingProxy | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | Collateral | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | BasicERC20Market | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ConvexFxnLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf8...81b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Tangent-security-review_2025-10-30.pdf | OracleCryptoSwap | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleDuoPoolStable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleBase | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OraclePendlePT | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleChainlinkWrapper | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleCoinFromCurveLP | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleERC4626 | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | PendlePTRouter | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | TAN | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | USG | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | VsTAN | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | WStable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | LightOwnable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | LightReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ZappingUtil | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ZappingProxy | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | CurveGaugeMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | StakeDaoVaultV2Market | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ConvexFXNLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf8...81b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Tangent-security-review_2025-12-08.pdf | USG | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | Collateral | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 80 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21131] drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view
- [21135] app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg

Fork inheritance lineage and inherited audits are included when available.
