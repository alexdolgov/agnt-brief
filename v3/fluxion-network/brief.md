# Agentic Audit Brief: Fluxion Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fluxion Network (`fluxion-network`)
- Website: [https://app.fluxion.network/](https://app.fluxion.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 8 unique implementations (9 raw deployments)
- Coverage basis: 5/8 confirmed own live verified implementations (62.5%); conservative 62.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,360,326.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Fluxion Network in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FactoryRegistry (`0x47c401...fd8710`, chain 5000)
- NonfungiblePositionManager (`0x2b70c4...fd8db3`, chain 5000)
- Pool (`0x8d4b46...d921e6`, chain 5000)
- PoolFactory (`0x9336b1...d41fe9`, chain 5000)
- PoolFeesUpgradeable (`0xac1305...9e27b1`, chain 5000)
- QuoterV2 (`0x3e4ee1...2e14ce`, chain 5000)
- Router (`0xd772e6...fb6408`, chain 5000)
- SwapRouter (`0x5628a5...6dfaa0`, chain 5000)
- UniswapV3Factory (`0xf88316...9b737c`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/8 (62.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 8 of 8 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/8
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 9
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| QuillAudits | Tier 2 | 3 | 37.5% | 2026-02 |
| Exvul | Tier 2 | 2 | 25.0% | 2026-01 |
| unknown | Tier 2 | 2 | 25.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-386588 | `0x2b70c4...fd8db3` | ✅ Audited |
| Pool | unknown | project_anchor | own_supporting | 1 | mantle | unit-386595 | 2 deployments: mantle `0x8d4b46...d921e6`; mantle `0x9336b1...d41fe9` | ✅ Audited |
| PoolFeesUpgradeable | unknown | project_anchor | own_supporting | 0 | mantle | unit-386591 | `0xac1305...9e27b1` | ✅ Audited |
| SwapRouter | unknown | project_anchor | own_supporting | 1 | mantle | unit-386594 | `0x5628a5...6dfaa0` | ✅ Audited |
| UniswapV3Factory | unknown | project_anchor | own_supporting | 0 | mantle | unit-386593 | `0xf88316...9b737c` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryRegistry | unknown | project_anchor | own_supporting | 0 | mantle | unit-386590 | `0x47c401...fd8710` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-386589 | `0x3e4ee1...2e14ce` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | mantle | unit-386592 | `0xd772e6...fb6408` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fluxion Smart Contract Audit Report-Exvul.pdf](https://github.com/exvulsec/auditreport/blob/main/Smartcontract/Fluxion%20Smart%20Contract%20Audit%20Report-Exvul.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | matched | 2 | 1 | 0 | 2 | high |
| [Security-Programs (GitHub directory)](https://github.com/Fluxion-Exchange/Security-Programs) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Fluxion Smart Contract - V2 Audit Report-Exvul.pdf](https://github.com/Fluxion-Exchange/Security-Programs/blob/main/Fluxion%20Smart%20Contract%20-%20V2%20Audit%20Report-Exvul.pdf) | Exvul | Audit | 2025-11 | fresh | Direct | contract_name | matched | 2 | 1 | 0 | 2 | high |
| [Fluxion Smart Contract - V3 Audit Report-Exvul.pdf](https://github.com/Fluxion-Exchange/Security-Programs/blob/main/Fluxion%20Smart%20Contract%20-%20V3%20Audit%20Report-Exvul.pdf) | Exvul | Audit | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Fluxion-Exchange/Security-Programs/blob/main/Fluxion-Exchange%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2026-02 | fresh | Direct | contract_name | matched | 3 | 1 | 0 | 44 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13120] Fluxion Smart Contract Audit Report-Exvul.pdf — matched: Contracts explicitly mentioned in findings paths: Pool.sol, PoolFactory.sol, PoolFeesUpgradeable.sol, IPool.sol. Audit date from 'Audit Time' field: 24/11/2025 - 27/11/2025, using end date.
- [13121] Security-Programs (GitHub directory) — no match: The provided text is a GitHub repository README for a bug bounty program, not an audit report. No specific contract names, file paths, or audit dates are mentioned.
- [13122] Fluxion Smart Contract - V2 Audit Report-Exvul.pdf — matched: Extracted contract names from findings paths and scope table. Audit date from 'Audit Time' field: 24/11/2025 - 27/11/2025, using end date.
- [13123] Fluxion Smart Contract - V3 Audit Report-Exvul.pdf — no match: No specific contract names or file paths were provided in the scope section. The report only mentions the project name 'Fluxion Exchange' and a repository URL, but no individual contract names.
- [13124] Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf — matched: Extracted 46 contract names from the 'Contracts in Scope' table on page 4. Audit date derived from review period '9th February to 12th February' (end date).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fluxion Smart Contract Audit Report-Exvul.pdf | Pool | ambiguous — not counted | Pool (alternative) `0x8d4b46...d921e6` — liveness: live (current_address_book_code)<br>PoolFactory (proxy) (alternative) `0x9336b1...d41fe9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Fluxion Smart Contract Audit Report-Exvul.pdf | PoolFactory | own proxy deployment | PoolFactory (proxy) (selected) `0x9336b1...d41fe9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion Smart Contract Audit Report-Exvul.pdf | PoolFeesUpgradeable | own contract | PoolFeesUpgradeable (selected) `0xac1305...9e27b1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion Smart Contract Audit Report-Exvul.pdf | IPool | unmatched — not counted | — | listed in scope and findings | no |
| Fluxion Smart Contract - V2 Audit Report-Exvul.pdf | Pool | ambiguous — not counted | Pool (alternative) `0x8d4b46...d921e6` — liveness: live (current_address_book_code)<br>PoolFactory (proxy) (alternative) `0x9336b1...d41fe9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Fluxion Smart Contract - V2 Audit Report-Exvul.pdf | PoolFactory | own proxy deployment | PoolFactory (proxy) (selected) `0x9336b1...d41fe9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion Smart Contract - V2 Audit Report-Exvul.pdf | PoolFeesUpgradeable | own contract | PoolFeesUpgradeable (selected) `0xac1305...9e27b1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion Smart Contract - V2 Audit Report-Exvul.pdf | IPool | unmatched — not counted | — | listed in scope and findings | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | BlockTimestamp | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | ERC721Permit | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | LiquidityManagement | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PeripheryImmutableState | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PeripheryPayments | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PeripheryValidation | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PoolInitializer | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SelfPermit | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | BytesLib | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | CallbackValidation | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | ChainId | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | HexStrings | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | NFTDescriptor | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | NFTSVG | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | OracleLibrary | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | Path | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PoolAddress | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PositionKey | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | PositionValue | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | TokenRatioSortOrder | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | NonfungiblePositionManager | own contract | NonfungiblePositionManager (selected) `0x2b70c4...fd8db3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SwapRouter | own proxy deployment | SwapRouter (proxy) (selected) `0x5628a5...6dfaa0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | UniswapV3Factory | own contract | UniswapV3Factory (selected) `0xf88316...9b737c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | BitMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | LiquidityMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SafeCast | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | SwapMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | Tick | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | TickBitmap | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | TickMath | unmatched — not counted | — | listed in scope table | no |
| Fluxion-Exchange Smart Contract Audit Report - QuillAudits.pdf | UnsafeMath | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 46 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=7

Zero-match audit list:

- [13121] Security-Programs (GitHub directory)
- [13123] Fluxion Smart Contract - V3 Audit Report-Exvul.pdf

Fork inheritance lineage and inherited audits are included when available.
