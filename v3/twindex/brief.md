# Agentic Audit Brief: Twindex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Twindex (`twindex`)
- Website: [https://twindex.com/](https://twindex.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,718.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Twindex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitraryCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174293 | `0x9351ba...552729` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174284 | `0x34c885...75b7a3` | ⚠️ Unaudited |
| ConvertDopple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174296 | `0xb762a7...bcaf96` | ⚠️ Unaudited |
| ConvertTwin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174287 | `0x6320f0...a67ce9` | ⚠️ Unaudited |
| CustomOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174292 | `0x90ed83...8987c6` | ⚠️ Unaudited |
| dfiProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174310 | `0x37f5a7...30790c` | ⚠️ Unaudited |
| DiamondHandInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174276 | `0x182a11...fd3615` | ⚠️ Unaudited |
| DoppleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174283 | `0x2acec0...c5b753` | ⚠️ Unaudited |
| DoppleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174291 | `0x844fa8...46bb28` | ⚠️ Unaudited |
| DoppleX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174273 | `0x106679...a1476f` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174301 | `0xda0a17...6bddbe` | ⚠️ Unaudited |
| InternalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174294 | `0xa442c3...562caa` | ⚠️ Unaudited |
| KUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174288 | `0x67772f...cf24ad` | ⚠️ Unaudited |
| LoanOpenings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174298 | `0xcd72c5...3a2641` | ⚠️ Unaudited |
| LoanTokenLogicStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174305 | `0x066888...ee3db2` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174279 | `0x22a5c7...d6eec0` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174270 | `0x03f441...fb4da3` | ⚠️ Unaudited |
| OneClickMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174277 | `0x191069...6c2bda` | ⚠️ Unaudited |
| PriceFeeds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174300 | `0xd4f061...7532b2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174269 | `0x03b01b...faa824` | ⚠️ Unaudited |
| ReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174290 | `0x6b5646...ea4c41` | ⚠️ Unaudited |
| Shield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174295 | `0xad8f26...da423c` | ⚠️ Unaudited |
| StableCollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174281 | `0x25fceb...6d4433` | ⚠️ Unaudited |
| StablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174278 | `0x220110...dd0764` | ⚠️ Unaudited |
| StableReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174286 | `0x3bbc44...119377` | ⚠️ Unaudited |
| StockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174274 | `0x1085b9...20ac79` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174271 | `0x0473fb...bcb3e3` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174275 | `0x1433fe...fb6103` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174268 | `0x00378b...a069fb` | ⚠️ Unaudited |
| SyntheticPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174267 | `0x00280b...93c384` | ⚠️ Unaudited |
| TempStablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174297 | `0xbb0bb9...97d12b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174302 | `0xfec395...ae43ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174272 | `0x0cb11d...839436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174304 | `0x119f53...e13e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174306 | `0x127a2b...7eaab0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174308 | `0x262d5f...0a50fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174303 | `0x41171d...02f82b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174307 | `0x6e3551...9adcd9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174309 | `0x72c5b3...4ce0df` | ⚠️ Unaudited |
| TwindexALPACAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174299 | `0xcd8a5b...9da679` | ⚠️ Unaudited |
| TwindexBetaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174282 | `0x286a1e...08b393` | ⚠️ Unaudited |
| TwindexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174280 | `0x230b49...46bbef` | ⚠️ Unaudited |
| TwindexSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174289 | `0x6b011d...5f47ef` | ⚠️ Unaudited |
| TwinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174285 | `0x3806aa...4c7a57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x08422f...6d3de3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/twindex](https://skynet.certik.com/projects/twindex) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21466] skynet.certik.com/projects/twindex — no match: Extracted from audited files list; only two files explicitly named. Audit date from 'Last Audit was delivered on 12/10/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/twindex | MasterChef | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/twindex | Synth | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21466] skynet.certik.com/projects/twindex

Fork inheritance lineage and inherited audits are included when available.
