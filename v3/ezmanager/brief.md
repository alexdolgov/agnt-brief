# Agentic Audit Brief: EZManager

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: EZManager (`ezmanager`)
- Website: [https://ezmanager.finance](https://ezmanager.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid
- Contract surface: 47 unique implementations (47 raw deployments)
- Coverage basis: 4/47 confirmed own live verified implementations (8.5%); conservative 8.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $340,173.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EZManager. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 47 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid. Structural roles: 22 supporting, 20 core, 5 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 47
- Structural roles: supporting (22), core (20), unclassified (5)
- Contract kinds: contract (47)
- Detected standards: ownable (41), pausable (31)
- Frameworks: openzeppelin (41), uniswap-v3 (26)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 47 contracts are derived from known codebases. 47 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AerodromeAdapter (`0x9efde1...a5fa28`, chain 8453)
- CLCore (`0xab2646...160312`, chain 1)
- CLCore (`0x10c6d3...a08eb2`, chain 56)
- CLCore (`0x6f8179...63ae11`, chain 999)
- CLCore (`0x61c36a...52770f`, chain 8453)
- CLCore (`0xd52170...86ae91`, chain 42161)
- CLManager (`0xcb9f75...87f3b3`, chain 1)
- CLManager (`0x4d5a83...4be153`, chain 56)
- CLManager (`0x84ff60...815fc2`, chain 999)
- CLManager (`0x52dcc4...bd48a2`, chain 8453)
- CLManager (`0x57f5b2...2bc2aa`, chain 42161)
- EZWrapper (`0x2e631a...db574f`, chain 1)
- EZWrapper (`0xfdbeb9...81d48d`, chain 56)
- EZWrapper (`0x5afebf...8ec338`, chain 999)
- EZWrapper (`0x180670...bf1921`, chain 8453)
- EZWrapper (`0x91d0ac...16c449`, chain 42161)
- ProjectXAdapter (`0xc5cf6b...00cc0d`, chain 999)
- ProtocolReserve (`0x7adce9...8659f2`, chain 1)
- ProtocolReserve (`0xf3af04...7b5889`, chain 56)
- ProtocolReserve (`0x43ea78...d49799`, chain 999)
- ProtocolReserve (`0x6c50a4...bfe973`, chain 8453)
- ProtocolReserve (`0x149a9a...0d8ee6`, chain 42161)
- RebalancePlanner (`0x9a1fce...e19b7b`, chain 1)
- RebalancePlanner (`0x61f3d9...7b0a45`, chain 56)
- RebalancePlanner (`0xc3687d...167804`, chain 999)
- RebalancePlanner (`0x84600d...88643a`, chain 8453)
- RebalancePlanner (`0xa7e6a3...ee09b4`, chain 42161)
- ReferralManager (`0x257555...dfebdc`, chain 1)
- ReferralManager (`0x1b5f42...ebfd35`, chain 56)
- ReferralManager (`0xa90b89...1031e0`, chain 999)
- ReferralManager (`0xab31a2...f6ff28`, chain 8453)
- ReferralManager (`0xf89bae...07bc3b`, chain 42161)
- TimelockController (`0x896389...eae985`, chain 1)
- TimelockController (`0x16e38a...a01c6b`, chain 56)
- TimelockController (`0x389170...50c398`, chain 999)
- TimelockController (`0x93e4a1...88c872`, chain 8453)
- TimelockController (`0xab9e67...6d5611`, chain 42161)
- UniswapAdapter (`0x0c10cb...900bd3`, chain 1)
- UniswapAdapter (`0xaebfc2...9cfd3f`, chain 56)
- UniswapAdapter (`0x0e5d5a...c5be3b`, chain 8453)
- UniswapAdapter (`0x6e08ca...b4f749`, chain 8453)
- UniswapAdapter (`0xc0fac5...f6fc1d`, chain 42161)
- Valuation (`0x43ea78...d49799`, chain 1)
- Valuation (`0xbcdd73...2edc10`, chain 56)
- Valuation (`0x5a049d...a04cc7`, chain 999)
- Valuation (`0xae79b3...71a548`, chain 8453)
- Valuation (`0xf6d5ce...3d7d6c`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/47 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/47 (8.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 47 of 47 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/47
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 47
- Raw deployments: 47
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 8.5% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385454 | `0x9efde1...a5fa28` | ✅ Audited |
| CLCore | unknown | project_anchor | own_supporting | 0 | base | unit-385445 | `0x61c36a...52770f` | ✅ Audited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | base | unit-385447 | `0x6c50a4...bfe973` | ✅ Audited |
| Valuation | unknown | project_anchor | own_supporting | 0 | base | unit-385458 | `0xae79b3...71a548` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CLCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385398 | `0xab2646...160312` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | bsc | unit-385420 | `0x10c6d3...a08eb2` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385467 | `0x6f8179...63ae11` | ⚠️ Unaudited |
| CLCore | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385415 | `0xd52170...86ae91` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-385400 | `0xcb9f75...87f3b3` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | bsc | unit-385426 | `0x4d5a83...4be153` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385469 | `0x84ff60...815fc2` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | base | unit-385443 | `0x52dcc4...bd48a2` | ⚠️ Unaudited |
| CLManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385404 | `0x57f5b2...2bc2aa` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385388 | `0x2e631a...db574f` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-385436 | `0xfdbeb9...81d48d` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385465 | `0x5afebf...8ec338` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | base | unit-385441 | `0x180670...bf1921` | ⚠️ Unaudited |
| EZWrapper | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385407 | `0x91d0ac...16c449` | ⚠️ Unaudited |
| ProjectXAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-385475 | `0xc5cf6b...00cc0d` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385392 | `0x7adce9...8659f2` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | bsc | unit-385434 | `0xf3af04...7b5889` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385461 | `0x43ea78...d49799` | ⚠️ Unaudited |
| ProtocolReserve | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385402 | `0x149a9a...0d8ee6` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385396 | `0x9a1fce...e19b7b` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | bsc | unit-385428 | `0x61f3d9...7b0a45` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385473 | `0xc3687d...167804` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | base | unit-385451 | `0x84600d...88643a` | ⚠️ Unaudited |
| RebalancePlanner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385409 | `0xa7e6a3...ee09b4` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-385385 | `0x257555...dfebdc` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | bsc | unit-385424 | `0x1b5f42...ebfd35` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385471 | `0xa90b89...1031e0` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | base | unit-385456 | `0xab31a2...f6ff28` | ⚠️ Unaudited |
| ReferralManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385418 | `0xf89bae...07bc3b` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-385394 | `0x896389...eae985` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | bsc | unit-385421 | `0x16e38a...a01c6b` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-385460 | `0x389170...50c398` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | base | unit-385452 | `0x93e4a1...88c872` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-385411 | `0xab9e67...6d5611` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-385383 | `0x0c10cb...900bd3` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-385431 | `0xaebfc2...9cfd3f` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385439 | `0x0e5d5a...c5be3b` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | base | unit-385449 | `0x6e08ca...b4f749` | ⚠️ Unaudited |
| UniswapAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-385413 | `0xc0fac5...f6fc1d` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385390 | `0x43ea78...d49799` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | bsc | unit-385432 | `0xbcdd73...2edc10` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385463 | `0x5a049d...a04cc7` | ⚠️ Unaudited |
| Valuation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385416 | `0xf6d5ce...3d7d6c` | ⚠️ Unaudited |

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
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ezmanager/audit.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 20 | high |
| [Valves_v1_5.pdf](https://github.com/EZManagerCL/EZManagerContracts/blob/master/audits/Valves_v1_5.pdf) | Valves | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13103] audit.pdf — matched: Extracted 6 main contracts from Source Files table and additional interfaces/contracts from Functions Analysis. Audit date from 'Corrected Phase 3 13 Feb 2026'.
- [13104] Valves_v1_5.pdf — no match: Scope table lists 4 files: src/CLManager, src/ReferralManager, src/EZWrapper, libraries/CLManagerUtils. Contract names extracted from file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audit.pdf | CLCore | own contract | CLCore (alternative) `0xd52170...86ae91` — deployed 2026-04-14 21:36:47+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0xab2646...160312` — deployed 2026-03-16 02:38:23+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0x6f8179...63ae11` — deployed 2026-04-26 22:47:00+03 — liveness: live (code_present_context)<br>CLCore (selected) `0x61c36a...52770f` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>CLCore (alternative) `0x10c6d3...a08eb2` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | Valuation | own contract | Valuation (selected) `0xae79b3...71a548` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0xf6d5ce...3d7d6c` — deployed 2026-04-14 21:36:43+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0x43ea78...d49799` — deployed 2026-03-16 02:38:23+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0x5a049d...a04cc7` — deployed 2026-04-26 22:45:00+03 — liveness: live (code_present_context)<br>Valuation (alternative) `0xbcdd73...2edc10` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | CLManager | ambiguous — not counted | CLManager (alternative) `0x4d5a83...4be153` — deployed 2026-05-31 05:27:22+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0xcb9f75...87f3b3` — deployed 2026-05-31 05:30:59+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x52dcc4...bd48a2` — deployed 2026-05-31 05:13:33+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x84ff60...815fc2` — deployed 2026-05-31 04:56:00+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x57f5b2...2bc2aa` — deployed 2026-05-31 05:22:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | UniswapAdapter | ambiguous — not counted | UniswapAdapter (alternative) `0x0c10cb...900bd3` — deployed 2026-03-16 02:38:23+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0x0e5d5a...c5be3b` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0x6e08ca...b4f749` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0xc0fac5...f6fc1d` — deployed 2026-04-14 21:36:42+03 — liveness: live (current_address_book_code)<br>UniswapAdapter (alternative) `0xaebfc2...9cfd3f` — deployed 2026-04-17 01:57:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | AerodromeAdapter | own contract | AerodromeAdapter (selected) `0x9efde1...a5fa28` — deployed 2026-02-13 23:00:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | RebalancePlanner | ambiguous — not counted | RebalancePlanner (alternative) `0x9a1fce...e19b7b` — deployed 2026-05-26 01:22:11+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0x84600d...88643a` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0x61f3d9...7b0a45` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0xa7e6a3...ee09b4` — deployed 2026-05-26 01:04:25+03 — liveness: live (code_present_context)<br>RebalancePlanner (alternative) `0xc3687d...167804` — deployed 2026-05-26 01:30:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| audit.pdf | ProtocolReserve | own contract | ProtocolReserve (alternative) `0x149a9a...0d8ee6` — deployed 2026-04-14 21:36:39+03 — liveness: live (code_present_context)<br>ProtocolReserve (selected) `0x6c50a4...bfe973` — deployed 2026-02-13 23:00:55+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0xf3af04...7b5889` — deployed 2026-04-17 01:57:47+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0x7adce9...8659f2` — deployed 2026-03-16 02:37:11+03 — liveness: live (code_present_context)<br>ProtocolReserve (alternative) `0x43ea78...d49799` — deployed 2026-04-26 22:42:00+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-13 was 0d from audit; next candidate 31d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | ICLDexAdapter | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLCore | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IValuation | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IRebalancePlanner | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | INonfungiblePositionManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamNonfungiblePositionManager | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IAerodromeFactory | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ICLPool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamPool | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISwapRouterV3 | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamSwapRouter | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | IUniswapQuoterV2Like | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamQuoterV2Like | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| audit.pdf | ISlipstreamPoolState | unmatched — not counted | — | mentioned in Functions Analysis as an interface | no |
| Valves_v1_5.pdf | CLManager | ambiguous — not counted | CLManager (alternative) `0x4d5a83...4be153` — deployed 2026-05-31 05:27:22+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0xcb9f75...87f3b3` — deployed 2026-05-31 05:30:59+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x52dcc4...bd48a2` — deployed 2026-05-31 05:13:33+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x84ff60...815fc2` — deployed 2026-05-31 04:56:00+03 — liveness: live (code_present_context)<br>CLManager (alternative) `0x57f5b2...2bc2aa` — deployed 2026-05-31 05:22:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | ReferralManager | ambiguous — not counted | ReferralManager (alternative) `0x257555...dfebdc` — deployed 2026-05-26 01:22:23+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xa90b89...1031e0` — deployed 2026-05-26 01:33:00+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xf89bae...07bc3b` — deployed 2026-05-26 01:04:28+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0xab31a2...f6ff28` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>ReferralManager (alternative) `0x1b5f42...ebfd35` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | EZWrapper | ambiguous — not counted | EZWrapper (alternative) `0x5afebf...8ec338` — deployed 2026-05-26 01:37:00+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x91d0ac...16c449` — deployed 2026-05-26 01:04:31+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x2e631a...db574f` — deployed 2026-05-26 01:22:23+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0x180670...bf1921` — deployed 2026-05-26 01:00:21+03 — liveness: live (code_present_context)<br>EZWrapper (alternative) `0xfdbeb9...81d48d` — deployed 2026-05-26 01:09:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Valves_v1_5.pdf | CLManagerUtils | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xab2646...160312` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10c6d3...a08eb2` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6f8179...63ae11` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd52170...86ae91` | CLCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb9f75...87f3b3` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d5a83...4be153` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x84ff60...815fc2` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52dcc4...bd48a2` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x57f5b2...2bc2aa` | CLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e631a...db574f` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfdbeb9...81d48d` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5afebf...8ec338` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x180670...bf1921` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x91d0ac...16c449` | EZWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc5cf6b...00cc0d` | ProjectXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7adce9...8659f2` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf3af04...7b5889` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x43ea78...d49799` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x149a9a...0d8ee6` | ProtocolReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a1fce...e19b7b` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x61f3d9...7b0a45` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc3687d...167804` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x84600d...88643a` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa7e6a3...ee09b4` | RebalancePlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x257555...dfebdc` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b5f42...ebfd35` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa90b89...1031e0` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xab31a2...f6ff28` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf89bae...07bc3b` | ReferralManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c10cb...900bd3` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaebfc2...9cfd3f` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0e5d5a...c5be3b` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e08ca...b4f749` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc0fac5...f6fc1d` | UniswapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43ea78...d49799` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbcdd73...2edc10` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5a049d...a04cc7` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf6d5ce...3d7d6c` | Valuation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 18 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: temporal_name=3, unique_name=1

Zero-match audit list:

- [13104] Valves_v1_5.pdf

Fork inheritance lineage and inherited audits are included when available.
