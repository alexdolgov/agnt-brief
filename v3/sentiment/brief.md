# Agentic Audit Brief: Sentiment

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sentiment (`sentiment`)
- Website: [https://app.sentiment.xyz](https://app.sentiment.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 41 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,203,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sentiment. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across arbitrum. Structural roles: 21 unclassified, 13 supporting, 2 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: unclassified (21), supporting (13), core (2)
- Contract kinds: contract (35), abstract (1)
- Detected standards: erc1967proxy (4)
- Frameworks: solmate (3), openzeppelin (2), chainlink (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 36; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 41 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (16 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 45
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254428 | `0xc3991f...0c5463` | ⚠️ Unaudited |
| AccountFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254432 | `0xce7df5...db9814` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254410 | `0x23ad96...1c2b6b` | ⚠️ Unaudited |
| AccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254437 | `0x62c5aa...826403` | ⚠️ Unaudited |
| ATokenOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254420 | `0x6cb48a...a7d8bb` | ⚠️ Unaudited |
| BaseController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254424 | `0x947e74...4ed278` | ⚠️ Unaudited |
| Beacon | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254435 | `0xb7ba33...122eee` | ⚠️ Unaudited |
| ControllerFacade | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254433 | `0xe71287...15f065` | ⚠️ Unaudited |
| ConvexRewardPoolOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xb24bbe...bcee37` | ⚠️ Unaudited |
| DefaultRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254417 | `0x5a9eec...0dc3ab` | ⚠️ Unaudited |
| GLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254426 | `0xbba8e7...27d4c9` | ⚠️ Unaudited |
| LEther | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254430 | `0xcb3703...0b8228` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254422 | `0x8f7a7c...9292c9` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254423 | `0x91cd72...e1c7ad` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254429 | `0xc3c683...26d2ff` | ⚠️ Unaudited |
| LinearRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254431 | `0xccd7a2...6f04ec` | ⚠️ Unaudited |
| LToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254412 | `0x3c34c6...04f7c0` | ⚠️ Unaudited |
| OracleFacade | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254407 | `0x08f81e...33efb3` | ⚠️ Unaudited |
| Proxy | proxy | external_dependency_or_infra | third_party_dependency (excluded) | 4 | arbitrum | unit-254436 (4 proxies) | 4 deployments: arbitrum `0x0ddb1e...b1299b`; arbitrum `0x2e9963...784c40`; arbitrum `0x4c8e16...e4623e`; arbitrum `0xb19021...776bec` | ⚠️ Unaudited |
| Registry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-254438 | 2 deployments: arbitrum `0x17b07c...49679b`; arbitrum `0xe22d24...2b2991` | ⚠️ Unaudited |
| RewardRouterController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254415 | `0x48b7cb...c5b9af` | ⚠️ Unaudited |
| RewardRouterV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254414 | `0x3e1c3e...3550ce` | ⚠️ Unaudited |
| RiskEngine | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254427 | `0xc0ac97...c078da` | ⚠️ Unaudited |
| StableSwap2PoolController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254434 | `0xfcc9ea...f7e9d8` | ⚠️ Unaudited |
| UniV2Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254421 | `0x6df0b4...ee7bfd` | ⚠️ Unaudited |
| UniV2LpOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254418 | `0x64af46...cbc3b5` | ⚠️ Unaudited |
| UniV3Controller | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254416 | `0x4f0da4...1f9edb` | ⚠️ Unaudited |
| WETHController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254419 | `0x697cfb...5381cc` | ⚠️ Unaudited |
| WETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254408 | `0x0f8011...d7e830` | ⚠️ Unaudited |
| WSTETHOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254409 | `0x1dd8ce...02845b` | ⚠️ Unaudited |
| ZeroOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254425 | `0xb86f62...732792` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254406 | `0x017929...4b449a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x16f3ae...641b5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254411 | `0x306874...404b2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-254413 | `0x3c3b0b...86f9b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x4e828a...a05504` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x5ccd62...17a216` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x8464ed...c080b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xa899f3...a56673` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xe872bc...b79daf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xecb0ab...de0ad8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sentiment_Protocol_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Protocol_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Sentiment_Oracle_20220727.pdf](https://github.com/arbitraryexecution/publications/blob/main/assessments/Sentiment_Oracle_20220727.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [2022.10.18 - Final - Sentiment Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2022.10.18%20-%20Final%20-%20Sentiment%20Audit%20Report.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 34 | n/a |
| [sentiment_v2_guardian.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_guardian.pdf) | Guardian | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [sentiment_v2_sherlock.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [sentiment_v2_zobront.md](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_zobront.md) | Zobront | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [sentiment_v2_sherlock_2.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_2.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [sentiment_v2_sherlock_3.pdf](https://github.com/sentimentxyz/protocol-v2/blob/master/audits/sentiment_v2_sherlock_3.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3171] Sentiment_Protocol_20220727.pdf — no match: No reason recorded
- [3172] Sentiment_Oracle_20220727.pdf — no match: All Solidity files in the controller/src and oracle/src directories were in scope. The list is provided in Appendix B.
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf — no match: No reason recorded
- [3174] sentiment_v2_guardian.pdf — no match: Extracted contract names from findings locations and invariants sections. No explicit scope table found, but contracts are clearly audited targets.
- [3175] sentiment_v2_sherlock.pdf — no match: Extracted from the report header: 'Date Audited: August 14 - August 24, 2024'. Contracts in scope are inferred from the repository and file paths mentioned in findings.
- [3176] sentiment_v2_zobront.md — no match: All contracts listed in the scope section of the audit report.
- [3177] sentiment_v2_sherlock_2.pdf — no match: Scope section lists three oracle contracts. Audit date is March 8-March 10, 2025, using end date.
- [3178] sentiment_v2_sherlock_3.pdf — no match: Only one contract in scope: MetaOracle.sol

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sentiment_Protocol_20220727.pdf | Account | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | AccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BaseProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Beacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | BeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Errors | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Helpers | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccount | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountFactory | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IAccountManager | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeacon | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IBeaconProxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC20 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IERC4626 | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | ILToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IOwnable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRateModel | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRegistry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | IRiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LEther | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | LToken | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Ownable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Pausable | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Proxy | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Registry | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | RiskEngine | unmatched — not counted | — | — | no |
| Sentiment_Protocol_20220727.pdf | Storage | unmatched — not counted | — | — | no |
| Sentiment_Oracle_20220727.pdf | AaveV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AaveEthController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CompoundController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveCryptoSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | StableSwapController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV3Controller | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YearnController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IControllerFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IController | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Ownable | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | Errors | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IPoolV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IProtocolDataProvider | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ISwapRouterV3 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniV2Factory | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IStableSwapPool | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ICToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ChainlinkOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | CurveTriCryptoOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | UniV2LPOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | YTokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | WETHOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | ATokenOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | OracleFacade | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IOracle | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IERC20 | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IAToken | unmatched — not counted | — | listed in Appendix B | no |
| Sentiment_Oracle_20220727.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in Appendix B | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AaveV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Account | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AccountManager | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | BalancerController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | CurveLPStakingController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | DefaultRateModel | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ERC4626Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Errors | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Helpers | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | ICToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IERC4626 | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IStableSwapPool | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LEther | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | LToken | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Oracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | OracleFacade | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Protocol | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | Registry | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | RiskEngine | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | StableSwap2PoolController | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV2LPOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | UniV3Controller | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | WETHOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YTokenOracle | unmatched — not counted | — | — | no |
| 2022.10.18 - Final - Sentiment Audit Report.pdf | YearnController | unmatched — not counted | — | — | no |
| sentiment_v2_guardian.pdf | SuperPool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | Pool | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | PositionManager | unmatched — not counted | — | Listed in findings locations and invariants | no |
| sentiment_v2_guardian.pdf | RiskEngine | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | RiskModule | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | LinearRateModel | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkEthOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ChainlinkUsdOracle | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | ERC6909 | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_guardian.pdf | Position | unmatched — not counted | — | Listed in findings locations | no |
| sentiment_v2_sherlock.pdf | RedstoneOracle | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskModule | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPoolFactory | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | SuperPool | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_sherlock.pdf | RiskEngine | unmatched — not counted | — | listed in scope and findings | no |
| sentiment_v2_zobront.md | FixedRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | LinearRateModel | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PortfolioLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPoolLens | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Errors | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableMap | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | IterableSet | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkEthOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ChainlinkUsdOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | FixedPriceOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | ZeroOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | BasePosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtPosition | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleAssetRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SingleDebtRiskModule | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | Pool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PoolFactory | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | PositionManager | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | RiskEngine | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_zobront.md | SuperPool | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | AggV3Oracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_2.pdf | HyperliquidUsdcOracle | unmatched — not counted | — | listed in scope | no |
| sentiment_v2_sherlock_3.pdf | MetaOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 142 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [3171] Sentiment_Protocol_20220727.pdf
- [3172] Sentiment_Oracle_20220727.pdf
- [3173] 2022.10.18 - Final - Sentiment Audit Report.pdf
- [3174] sentiment_v2_guardian.pdf
- [3175] sentiment_v2_sherlock.pdf
- [3176] sentiment_v2_zobront.md
- [3177] sentiment_v2_sherlock_2.pdf
- [3178] sentiment_v2_sherlock_3.pdf

Fork inheritance lineage and inherited audits are included when available.
