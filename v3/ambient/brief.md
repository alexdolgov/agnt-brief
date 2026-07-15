# Agentic Audit Brief: Ambient

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 45.0% over 90 days

## Project Overview

- Project: Ambient (`ambient`)
- Website: [https://ambient.finance/](https://ambient.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ethereum, scroll, swellchain
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,748,323.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ambient. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across blast, ethereum, scroll, swellchain. Structural roles: 4 unclassified, 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (4), core (3), supporting (3)
- Contract kinds: contract (10)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: foundry (3), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xaab174...3f6194`, chain 81457)
- UnnamedContract (`0xd83ef4...7e0362`, chain 81457)
- UnnamedContract (`0x62223e...0d6ddf`, chain 534352)
- UnnamedContract (`0x70b161...e9dc4f`, chain 534352)
- UnnamedContract (`0xc2c301...2f3ae3`, chain 534352)
- UnnamedContract (`0xed5535...b4c4e4`, chain 534352)
- CrocSwapDex (`0xaaaaaa...1fb958`, chain 81457)
- CrocSwapDex (`0xaaaaaa...a74106`, chain 534352)
- CrocSwapRouter (`0xfb5f26...5fd1fc`, chain 534352)
- TimelockAccepts (`0x19d005...2dee94`, chain 81457)
- UnnamedContract (`0x79cf6e...7ef6e9`, chain 1923)
- UnnamedContract (`0x983a06...eb1038`, chain 1923)
- UnnamedContract (`0xaaaaaa...3bf24d`, chain 1923)
- UnnamedContract (`0xaab174...3f6194`, chain 1923)
- UnnamedContract (`0xd83ef4...7e0362`, chain 1923)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 18 of 29 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrocImpact | unknown | project_anchor | own_supporting | 0 | blast | unit-226614 | `0x6a699a...5efdb9` | ⚠️ Unaudited |
| CrocPolicy | unknown | project_anchor | own_supporting | 0 | blast | unit-226613 | `0x503e3d...8c162c` | ⚠️ Unaudited |
| CrocQuery | unknown | project_anchor | own_supporting | 0 | blast | unit-226615 | `0xa3bd3b...36a8a7` | ⚠️ Unaudited |
| CrocSwapDex | unknown | project_anchor | own_supporting | 0 | scroll | unit-226608 | `0xaaaaaa...a74106` | ⚠️ Unaudited |
| CrocSwapRouter | adapter | project_anchor | own_supporting | 0 | scroll | unit-226611 | `0xfb5f26...5fd1fc` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | blast | unit-226620 | `0xc73c8c...1e36ed` | ⚠️ Unaudited |
| HotProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-226621 | `0xaaaaaa...1fb958` | ⚠️ Unaudited |
| TimelockAccepts | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-226612 | `0x19d005...2dee94` | ⚠️ Unaudited |
| WarmPath | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226619 | `0xaaaaaa...34f688` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226592 | `0x0b6cd0...0b68a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226593 | `0x3e3edd...94c0d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226594 | `0x41114a...38cb7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226595 | `0x533e16...278035` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226596 | `0x7237c1...4962b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226597 | `0x9facdc...503a6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226598 | `0xa3e58b...2efed2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226599 | `0xca0092...7b6b56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226600 | `0xdbd8d5...62dac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226601 | `0x79cf6e...7ef6e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226602 | `0x983a06...eb1038` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226603 | `0xaaaaaa...3bf24d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226604 | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226605 | `0xd83ef4...7e0362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-226616 | `0xaab174...3f6194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-226618 | `0xd83ef4...7e0362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226606 | `0x62223e...0d6ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226607 | `0x70b161...e9dc4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226609 | `0xc2c301...2f3ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226610 | `0xed5535...b4c4e4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [QuantstampV1.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV1.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 56 | high |
| [QuantstampV2.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV2.pdf) | Quantstamp | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |
| [Zellic.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/Zellic.pdf) | Zellic | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8689] QuantstampV1.pdf — no match: Extracted contract names from findings sections and file paths. Audit date from cover page.
- [8690] QuantstampV2.pdf — no match: Extracted all contract names from the file signatures appendix and the findings section. The audit date is the fix review date (2023-05-30) from the changelog.
- [8691] Zellic.pdf — no match: Scope section lists CrocSwap contracts repository and version, but specific contract files are identified from findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| QuantstampV1.pdf | MultiPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | WarmPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocSwapDex | ambiguous — not counted | CrocSwapDex (proxy) (alternative) `0xaaaaaa...1fb958` — deployed 2024-02-29 05:42:09+03 — liveness: live (code_present_context)<br>UnnamedContract (alternative) `0xaaaaaa...3bf24d` — liveness: live (current_address_book_code)<br>CrocSwapDex (alternative) `0xaaaaaa...a74106` — deployed 2023-10-24 19:12:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | AgentMask | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ColdPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PoolRegistry | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PositionRegistry | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ColdInjector | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Encoding | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CompoundMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LiquidityMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | DepositDesk | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SettleLayer | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocPolicy | ambiguous — not counted | 0x70b161… (alternative) `0x70b161...e9dc4f` — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x79cf6e...7ef6e9` — liveness: live (current_address_book_code)<br>CrocPolicy (alternative) `0x503e3d...8c162c` — deployed 2024-02-29 05:43:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | FixedPoint | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | HotPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LongPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SafeModePath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Chaining | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SwapCurve | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveAssimilate | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveRoll | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | MarketSequencer | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LevelBook | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TransferHelper | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | BootPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TimeLock | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TradeMatcher | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Bitmaps | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TickMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SafeCast | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PriceGrid | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutLiq | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutFlagPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutLiqPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | MicroPaths | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TickCensus | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LiquidityCurve | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PositionRegistrar | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutCounter | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TokenFlow | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveCache | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PoolSpecs | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | StorageLayout | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ProtocolCmd | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ProtocolAccount | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocEvents | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocLpErc20 | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocQuery | ambiguous — not counted | 0x62223e… (alternative) `0x62223e...0d6ddf` — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xaab174...3f6194` — liveness: live (current_address_book_code)<br>CrocQuery (alternative) `0xa3bd3b...36a8a7` — deployed 2024-02-29 05:45:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | ICrocLpConduit | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocMinion | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocPermitOracle | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocVirtualToken | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Directives | unmatched — not counted | — | listed in findings | no |
| QuantstampV2.pdf | CrocSwapDex | ambiguous — not counted | CrocSwapDex (proxy) (alternative) `0xaaaaaa...1fb958` — deployed 2024-02-29 05:42:09+03 — liveness: live (code_present_context)<br>UnnamedContract (alternative) `0xaaaaaa...3bf24d` — liveness: live (current_address_book_code)<br>CrocSwapDex (alternative) `0xaaaaaa...a74106` — deployed 2023-10-24 19:12:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocEvents | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocLpConduit | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocMinion | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocCondOracle | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocPermitOracle | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LongPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SafeModePath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | WarmPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | BootPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | HotPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ColdPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | MicroPaths | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CrocPolicy | ambiguous — not counted | 0x70b161… (alternative) `0x70b161...e9dc4f` — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x79cf6e...7ef6e9` — liveness: live (current_address_book_code)<br>CrocPolicy (alternative) `0x503e3d...8c162c` — deployed 2024-02-29 05:43:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocQuery | ambiguous — not counted | 0x62223e… (alternative) `0x62223e...0d6ddf` — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xaab174...3f6194` — liveness: live (current_address_book_code)<br>CrocQuery (alternative) `0xa3bd3b...36a8a7` — deployed 2024-02-29 05:45:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocImpact | ambiguous — not counted | CrocImpact (alternative) `0x6a699a...5efdb9` — deployed 2024-02-29 05:45:37+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xd83ef4...7e0362` — liveness: live (current_address_book_code)<br>0xc2c301… (alternative) `0xc2c301...2f3ae3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocLpErc20 | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutLiq | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Bitmaps | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Directives | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Encoding | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | FixedPoint | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProtocolCmd | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PriceGrid | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveCache | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CompoundMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SwapCurve | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PoolSpecs | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveRoll | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveAssimilate | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Chaining | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TokenFlow | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PoolRegistry | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LevelBook | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | StorageLayout | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProtocolAccount | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutCounter | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TickCensus | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProxyCaller | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | MarketSequencer | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TradeMatcher | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | AgentMask | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LiquidityCurve | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PositionRegistrar | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | DepositDesk | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SettleLayer | unmatched — not counted | — | listed in scope | no |
| Zellic.pdf | PoolRegistry | unmatched — not counted | — | Target in finding 3.1 | no |
| Zellic.pdf | TransferHelper | unmatched — not counted | — | Target in finding 3.2 | no |
| Zellic.pdf | TradeMatcher | unmatched — not counted | — | Target in finding 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0x6a699a...5efdb9` | CrocImpact | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x503e3d...8c162c` | CrocPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa3bd3b...36a8a7` | CrocQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xaaaaaa...a74106` | CrocSwapDex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xfb5f26...5fd1fc` | CrocSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xaaaaaa...1fb958` | HotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 7 ambiguous, 107 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [8689] QuantstampV1.pdf
- [8690] QuantstampV2.pdf
- [8691] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
