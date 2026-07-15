# Agentic Audit Brief: Treehouse Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 15 across 6 audit(s)
- Eligible audit results: 20 (6 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Treehouse Protocol (`treehouse-protocol`)
- Website: [https://www.treehouse.finance/](https://www.treehouse.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, hyperliquid
- Contract surface: 20 unique implementations (21 raw deployments)
- Coverage basis: 5/14 confirmed own live verified implementations (35.7%); conservative 35.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $52,583,625.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Treehouse Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, avalanche, ethereum, hyperliquid. Structural roles: 11 unclassified, 4 core, 2 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (11), core (4), supporting (2), infra (1)
- Contract kinds: contract (17), unclassified (1)
- Detected standards: ownable (4), ownable2step (3), erc165 (2), erc20 (2), erc20permit (2), pausable (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 14 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

**StablePool** (`0x832f8e...ded1f0`, chain 43114)
Origin: balancer (`0x0a8afe...85dd5d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1620b7...a9d30a`, chain 999)
- UnnamedContract (`0x932f2a...e340b7`, chain 999)
- UnnamedContract (`0xa120f5...43f642`, chain 999)
- UnnamedContract (`0xb2c507...97762a`, chain 999)
- UnnamedContract (`0xb83d27...03fdc7`, chain 999)
- UnnamedContract (`0xd09acb...167003`, chain 42161)
- ComposableStablePool (`0x65c2d9...251c21`, chain 42161)
- CurveStableSwapNG (`0xa10d15...0dddb1`, chain 1)
- LockReleaseTokenPool (`0x8113f0...ca8435`, chain 1)
- Strategy (`0x568bf0...7a15bb`, chain 43114)
- TreehouseRouter (`0xefa3fa...0628f5`, chain 1)
- TreehouseRouter (`0x5f4d2e...873d6e`, chain 43114)
- Vault (`0x3fc60a...ac99ed`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (15 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/14 (35.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/14
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 20
- Raw deployments: 21
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 6 fresh, 13 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 28.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 4 | 28.6% | 2025-03 |
| Trail of Bits | Tier 1 | 4 | 28.6% | 2024-10 |
| Fuzzland | Tier 2 | 2 | 14.3% | 2024-09 |
| WatchPug | Tier 2 | 1 | 7.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionExecutor | unknown | project_anchor | own_supporting | 2 | ethereum | unit-394266 (2 proxies) | 2 deployments: ethereum `0x60d2d9...2e5943`; ethereum `0xb27d68...cdce98` | ✅ Audited |
| TAsset | unknown | project_anchor | own_supporting | 1 | ethereum | unit-394267 | `0xd11c45...6d5ed8` | ✅ Audited |
| TreehouseRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-394253 | `0xefa3fa...0628f5` | ✅ Audited |
| TreehouseRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394258 | `0x5f4d2e...873d6e` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394249 | `0x551d15...5d761b` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ComposableStablePool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-394254 | `0x65c2d9...251c21` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-394252 | `0xa10d15...0dddb1` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394251 | `0x8113f0...ca8435` | ⚠️ Unaudited |
| StablePool | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394259 | `0x832f8e...ded1f0` | ⚠️ Unaudited |
| Strategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394250 | `0x5ae0e4...284938` | ⚠️ Unaudited |
| Strategy | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394257 | `0x568bf0...7a15bb` | ⚠️ Unaudited |
| Strategy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394260 | `0x882fdc...f62316` | ⚠️ Unaudited |
| TAsset | unknown | project_anchor | own_supporting | 1 | avalanche | unit-394268 | `0x14a84f...bc1646` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-394256 | `0x3fc60a...ac99ed` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394261 | `0x1620b7...a9d30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394262 | `0x932f2a...e340b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394263 | `0xa120f5...43f642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394264 | `0xb2c507...97762a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-394265 | `0xb83d27...03fdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394255 | `0xd09acb...167003` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [One_Rate_To_Rule_Them_All.pdf](https://www.treehouse.finance/One_Rate_To_Rule_Them_All.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Fuzzland tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Fuzzland%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Fuzzland | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 7 | high |
| [Sigma Prime tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 16 | n/a |
| [Sigma Prime tETH Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Mar%20Audit%20Report.pdf) | Sigma Prime | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Sigma Prime tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | n/a | matched | 4 | 2 | 0 | 10 | n/a |
| [Trail of Bits tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 8 | n/a |
| [Trail of Bits tETH Oct Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Oct%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | matched | 4 | 2 | 0 | 9 | n/a |
| [WatchPug Merkl Claim Apr Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20Merkl%20Claim%20Apr%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [WatchPug TREE Token Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20TREE%20Token%20Mar%20Audit%20Report.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [WatchPug tAVAX Aug Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Aug%20Audit%20Report.pdf) | WatchPug | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | medium |
| [WatchPug tAVAX Benqi Strategy Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Benqi%20Strategy%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [WatchPug tAVAX Merkl Claim Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Merkl%20Claim%20Audit%20Report.pdf) | WatchPug | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug tAVAX Spectra Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Spectra%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug tETH Dec 2025 Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%202025%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [WatchPug tETH Dec Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [WatchPug tETH Dec Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [WatchPug tETH Feb Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [WatchPug tETH Feb Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [WatchPug tETH Timelock May Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Timelock%20May%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [WatchPug tHYPE May Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tHYPE%20May%20Audit%20Report.pdf) | WatchPug | Audit | 2026-05 | fresh | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4607] One_Rate_To_Rule_Them_All.pdf — no match: The document is a book or whitepaper about the Treehouse Protocol, not a smart contract audit report. No contracts, source files, or audit date are mentioned.
- [11318] Fuzzland tETH Sep Audit Report vF.pdf — matched: Extracted contract names from findings and scope section. Audit date from executive summary: 'From Sept 20, 2024, to Sept 30, 2024'.
- [11319] Sigma Prime tETH Aug Audit Report vF.pdf — matched: No reason recorded
- [11320] Sigma Prime tETH Mar Audit Report.pdf — no match: No reason recorded
- [11321] Sigma Prime tETH Sep Audit Report vF.pdf — matched: No reason recorded
- [11322] Trail of Bits tETH Aug Audit Report vF.pdf — matched: No reason recorded
- [11323] Trail of Bits tETH Oct Audit Report vF.pdf — matched: No reason recorded
- [11324] WatchPug Merkl Claim Apr Audit Report vF2.pdf — no match: Audit report for Treehouse Merkl Claim contracts. Scope includes MerklClaim and MerklToggleOperator, with ActionBase as a base contract. Audit date is Apr 23, 2025.
- [11325] WatchPug TREE Token Mar Audit Report.pdf — no match: Only one contract explicitly in scope: TreehouseAirdropWithBonusPool. The report also mentions NftClaim.sol in a gas finding, but it is not listed in the scope section.
- [11326] WatchPug tAVAX Aug Audit Report.pdf — no match: No explicit scope section found; contracts extracted from findings and file paths in the report.
- [11327] WatchPug tAVAX Benqi Strategy Audit Report.pdf — no match: Extracted contract names from the audit report's scope and findings sections. The report covers Treehouse tAVAX protocol with Benqi strategy. Audit date found on cover page and delivery date.
- [11328] WatchPug tAVAX Merkl Claim Audit Report.pdf — no match: The audit report covers the MerklClaim contract and the IDistributor interface. The audit date is explicitly stated as Sep 18, 2025.
- [11329] WatchPug tAVAX Spectra Audit Report.pdf — no match: Audit report for Treehouse project, focusing on SpectraWrappedtAVAX contract and its deployment script. No explicit scope section; contracts identified from findings and code references.
- [11330] WatchPug tETH Dec 2025 Audit Report vF.pdf — no match: No reason recorded
- [11331] WatchPug tETH Dec Audit Report vF.pdf — no match: No reason recorded
- [11332] WatchPug tETH Dec Audit Report vF2.pdf — no match: No reason recorded
- [11333] WatchPug tETH Feb Audit Report vF.pdf — no match: No reason recorded
- [11334] WatchPug tETH Feb Audit Report vF2.pdf — no match: No explicit scope section found; contracts extracted from findings sections where they are directly audited. The report date is from the cover page.
- [11335] WatchPug tETH Timelock May Audit Report vF2.pdf — no match: Audit report covers VaultRescuer contract and related interfaces. The codebase URL points to tETH-protocol repo. The audit date is explicitly stated as May 23, 2025.
- [11336] WatchPug tHYPE May Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuzzland tETH Sep Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | mentioned in finding [Low] Chainlink’s latestRoundData Might Return Stale or Incorrect Results | no |
| Fuzzland tETH Sep Audit Report vF.pdf | LidoStake | unmatched — not counted | — | mentioned in finding [Low] Missing Derivative Limit and Deposit Availability Checks Will Revert The Whole Stake | no |
| Fuzzland tETH Sep Audit Report vF.pdf | LidoWrap | unmatched — not counted | — | mentioned in finding [Low] Missing Derivative Limit and Deposit Availability Checks Will Revert The Whole Stake | no |
| Fuzzland tETH Sep Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f...bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c45...6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 21d from audit; next candidate 329d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fuzzland tETH Sep Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | mentioned in finding [Low] Missing Strategy Existence Check In isActionWhitelisted | no |
| Fuzzland tETH Sep Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | mentioned in finding [Low] Lock When Redeeming Funds | no |
| Fuzzland tETH Sep Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | mentioned in finding [Info] Contract Address May Be Set to Zero Address | no |
| Fuzzland tETH Sep Audit Report vF.pdf | ActionExecutor | own proxy deployment | Strategy (proxy) (alternative) `0xb27d68...cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d9...2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 6d from audit; next candidate 158d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fuzzland tETH Sep Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | mentioned in finding [Info] StrategyExecutor::executeOnStrategy Does Not Check Lengths Of Input Arrays | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Blacklistable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Converter | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | LidoAPR | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | MainnetAaveV3Addresses | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | MainnetLidoAddresses | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | NavHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | PnlAccountingHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | RateProviderRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TokenUtils | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseAccounting | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e...873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa...0628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Aug Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d15...5d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60a...ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Aug Audit Report vF.pdf | iETH | unmatched — not counted | — | — | no |
| Sigma Prime tETH Aug Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavAaveV3 | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavLens | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | NavRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | PnlAccounting | unmatched — not counted | — | — | no |
| Sigma Prime tETH Mar Audit Report.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ActionRegistry | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | Blacklistable | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | IAU | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | NavHelper | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ProtocolPhaseOne | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | ProtocolPhaseTwo | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | Strategy | own proxy deployment | Strategy (alternative) `0x5ae0e4...284938` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x568bf0...7a15bb` — deployed 2025-08-25 14:24:39+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (alternative) `0xb27d68...cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x882fdc...f62316` — deployed 2025-10-22 13:09:38+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d9...2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 23d from audit; next candidate 187d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f...bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c45...6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e...873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa...0628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d15...5d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60a...ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 8d from audit; next candidate 358d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma Prime tETH Sep Audit Report vF.pdf | VaultPull | unmatched — not counted | — | — | no |
| Sigma Prime tETH Sep Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | Converter | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | MainnetLidoAddresses | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e...873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa...0628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Aug Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d15...5d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60a...ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 39d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Aug Audit Report vF.pdf | iETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Aug Audit Report vF.pdf | tETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | ChainlinkRateProvider | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | InternalAccountingUnit | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | IstETH | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | PnlAccountingHelper | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | Rescuable | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | Strategy | own proxy deployment | Strategy (alternative) `0x5ae0e4...284938` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x568bf0...7a15bb` — deployed 2025-08-25 14:24:39+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (alternative) `0xb27d68...cdce98` — deployed 2025-03-07 09:17:23+03 — liveness: live (current_address_book_code)<br>Strategy (alternative) `0x882fdc...f62316` — deployed 2025-10-22 13:09:38+03 — liveness: live (current_address_book_code)<br>Strategy (proxy) (selected) `0x60d2d9...2e5943` — deployed 2024-09-24 10:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-24 was 7d from audit; next candidate 157d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TAsset | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x14a84f...bc1646` — deployed 2025-08-25 13:43:49+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xd11c45...6d5ed8` — deployed 2024-09-09 08:58:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreeHouseAccounting | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreehouseRedemption | unmatched — not counted | — | — | no |
| Trail of Bits tETH Oct Audit Report vF.pdf | TreehouseRouter | own contract | TreehouseRouter (alternative) `0x5f4d2e...873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (selected) `0xefa3fa...0628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | Vault | own contract | Vault (selected) `0x551d15...5d761b` — deployed 2024-09-09 08:59:11+03 — liveness: live (code_present_context)<br>Vault (alternative) `0x3fc60a...ac99ed` — deployed 2025-08-25 13:44:31+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-09 was 22d from audit; next candidate 328d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Trail of Bits tETH Oct Audit Report vF.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | MerklClaim | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | MerklToggleOperator | unmatched — not counted | — | Referenced in finding WP-N4. | no |
| WatchPug Merkl Claim Apr Audit Report vF2.pdf | ActionBase | unmatched — not counted | — | MerklClaim inherits from ActionBase, mentioned in contract definition. | no |
| WatchPug TREE Token Mar Audit Report.pdf | TreehouseAirdropWithBonusPool | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Aug Audit Report.pdf | SavaxUnlock | unmatched — not counted | — | mentioned in finding WP-L2 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | NavErc20 | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| WatchPug tAVAX Aug Audit Report.pdf | NavErc20WithDebt | unmatched — not counted | — | mentioned in finding WP-L3 | no |
| WatchPug tAVAX Aug Audit Report.pdf | ASAVAXRateProvider | unmatched — not counted | — | mentioned in finding WP-N4 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | TAvaxExchangeRateProvider | unmatched — not counted | — | mentioned in finding WP-L5 | no |
| WatchPug tAVAX Aug Audit Report.pdf | ChainlinkRateProvider | unmatched — not counted | — | mentioned in finding WP-M6 with file path | no |
| WatchPug tAVAX Aug Audit Report.pdf | IRateProvider | unmatched — not counted | — | imported in ChainlinkRateProvider and ASAVAXRateProvider | no |
| WatchPug tAVAX Aug Audit Report.pdf | ISAVAX | unmatched — not counted | — | imported in ASAVAXRateProvider | no |
| WatchPug tAVAX Aug Audit Report.pdf | RateProviderRegistry | unmatched — not counted | — | referenced in NavErc20.nav() | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavRegistry | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavErc20 | unmatched — not counted | — | mentioned in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavBenqi | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | NavUnSavax | unmatched — not counted | — | mentioned in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | BenqiClaimReward | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Benqi Strategy Audit Report.pdf | BenqiWithdraw | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tAVAX Merkl Claim Audit Report.pdf | MerklClaim | unmatched — not counted | — | Listed in scope as the main contract audited; referenced in findings. | no |
| WatchPug tAVAX Merkl Claim Audit Report.pdf | IDistributor | unmatched — not counted | — | Listed in scope as an interface; referenced in findings. | no |
| WatchPug tAVAX Spectra Audit Report.pdf | SpectraWrappedtAVAX | unmatched — not counted | — | listed in findings and code snippets | no |
| WatchPug tAVAX Spectra Audit Report.pdf | DeploySpectraWrappedtAVAX | unmatched — not counted | — | listed in findings and code snippets | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | GearboxDepositV31 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | GearboxRedeemV31 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec 2025 Audit Report vF.pdf | StrategyExecutor | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | FastlaneFee | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IERC4626 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IFastlaneFee | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | IInternalAccountingUnit | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | ITreehouseFastlane | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | ITreehouseRedemption | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | RedemptionController | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | TreehouseFastlane | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF.pdf | TreehouseRedemptionV2 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IERC20 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IERC4626 | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IInternalAccountingUnit | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | IwstETH | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | RedemptionController | unmatched — not counted | — | — | no |
| WatchPug tETH Dec Audit Report vF2.pdf | TreehouseRedemptionV2 | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | NavLens | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | NavRegistry | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | PnlAccounting | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | StrategyStorage | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF.pdf | TreehouseAccounting | unmatched — not counted | — | — | no |
| WatchPug tETH Feb Audit Report vF2.pdf | NavAaveV3 | unmatched — not counted | — | mentioned in findings WP-M1 and WP-M2 as audited contract | no |
| WatchPug tETH Feb Audit Report vF2.pdf | AaveV3Withdraw | unmatched — not counted | — | mentioned in finding WP-L3 as audited contract | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | VaultRescuer | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IRescuable | unmatched — not counted | — | interface mentioned in findings | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | NavLens | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | INavErc20 | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IVault | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | INavRegistry | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | ITreehouseAccounting | unmatched — not counted | — | mentioned in finding WP-I3 | no |
| WatchPug tETH Timelock May Audit Report vF2.pdf | IERC20 | unmatched — not counted | — | standard interface used in VaultRescuer | no |
| WatchPug tHYPE May Audit Report.pdf | ActionBase | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | IStakingManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | IValidatorManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | KinetiqHelper | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | KinetiqRedelegate | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | Router | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingFacet | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingManager | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | StakingManagerStorage | unmatched — not counted | — | — | no |
| WatchPug tHYPE May Audit Report.pdf | TreehouseRouter | own contract | TreehouseRouter (selected) `0x5f4d2e...873d6e` — deployed 2025-08-25 13:44:50+03 — liveness: live (current_address_book_code)<br>TreehouseRouter (alternative) `0xefa3fa...0628f5` — deployed 2024-09-09 14:03:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-08-25 was 249d from audit; next candidate 599d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x65c2d9...251c21` | ComposableStablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8113f0...ca8435` | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x832f8e...ded1f0` | StablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ae0e4...284938` | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x568bf0...7a15bb` | Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x882fdc...f62316` | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x14a84f...bc1646` | TAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3fc60a...ac99ed` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1, medium=2
- Match method counts: temporal_name=15

Zero-match audit list:

- [4607] One_Rate_To_Rule_Them_All.pdf
- [11320] Sigma Prime tETH Mar Audit Report.pdf
- [11324] WatchPug Merkl Claim Apr Audit Report vF2.pdf
- [11325] WatchPug TREE Token Mar Audit Report.pdf
- [11326] WatchPug tAVAX Aug Audit Report.pdf
- [11327] WatchPug tAVAX Benqi Strategy Audit Report.pdf
- [11328] WatchPug tAVAX Merkl Claim Audit Report.pdf
- [11329] WatchPug tAVAX Spectra Audit Report.pdf
- [11330] WatchPug tETH Dec 2025 Audit Report vF.pdf
- [11331] WatchPug tETH Dec Audit Report vF.pdf
- [11332] WatchPug tETH Dec Audit Report vF2.pdf
- [11333] WatchPug tETH Feb Audit Report vF.pdf
- [11334] WatchPug tETH Feb Audit Report vF2.pdf
- [11335] WatchPug tETH Timelock May Audit Report vF2.pdf

Fork inheritance lineage and inherited audits are included when available.
