# Agentic Audit Brief: Alchemix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 12 (1 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 17 unique implementations (28 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $30,488,433.00
- On-chain TVL (included contracts): $6,906,906.57
- TVL by chain: Ethereum $6,906,906.57

## Project Description

This brief describes the observed EVM deployment and audit surface for Alchemix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, ethereum, optimism. Structural roles: 15 unclassified, 6 infra, 2 core, 2 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: unclassified (15), infra (6), core (2), supporting (2)
- Contract kinds: contract (25)
- Detected standards: erc1967proxy (6), accesscontrol (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1d28d4...cb388e`, chain 1)
- UnnamedContract (`0x5951f1...ea42eb`, chain 1)
- UnnamedContract (`0x7e30fc...9edb5b`, chain 1)
- UnnamedContract (`0xa7aa5b...13f193`, chain 1)
- UnnamedContract (`0xe974b9...d44125`, chain 10)
- AlchemistV2 (`0xf547b8...f4acfb`, chain 1)
- AlchemixToken (`0xdbdb4d...90c8df`, chain 1)
- TransmuterBuffer (`0x437067...b5948f`, chain 1)
- TransmuterV2 (`0xad2a6c...220298`, chain 1)
- TransparentUpgradeableProxy (`0x033231...d64811`, chain 1)
- TransparentUpgradeableProxy (`0x062bf7...b13b5c`, chain 1)
- TransparentUpgradeableProxy (`0x49930a...24df55`, chain 1)
- TransparentUpgradeableProxy (`0x5c6374...dd94dd`, chain 1)
- TransparentUpgradeableProxy (`0xa840c7...a5197f`, chain 1)
- TransparentUpgradeableProxy (`0xfc3082...bdf5b9`, chain 1)
- WETHGateway (`0xa22a7e...76d67a`, chain 1)
- Whitelist (`0x211c74...25ef59`, chain 1)
- Whitelist (`0x35b2c1...78ade6`, chain 1)
- Whitelist (`0x3f950f...4b2096`, chain 1)
- Whitelist (`0x46f992...435ace`, chain 1)
- Whitelist (`0x78537a...8f1132`, chain 1)
- Whitelist (`0xa3dfcc...79e653`, chain 1)
- Whitelist (`0xdd8ac2...e83ff1`, chain 1)

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (23 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 17
- Raw deployments: 28
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $6,906,906.57
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 9 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,906,906.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 8.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-378674 | `0xa22a7e...76d67a` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlchemixToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378678 | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378682 (2 proxies) | 2 deployments: ethereum `0x062bf7...b13b5c`; ethereum `0x5c6374...dd94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378680 | `0xf547b8...f4acfb` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378685 | `0x27b58d...815aa7` | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378672 | `0x7a1728...614047` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378683 (2 proxies) | 2 deployments: ethereum `0x1eed2d...f79bac`; ethereum `0xbc2fb2...c90b9e` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378668 | `0x437067...b5948f` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 4 | ethereum | unit-378684 (4 proxies) | 4 deployments: ethereum `0x033231...d64811`; ethereum `0x49930a...24df55`; ethereum `0xa840c7...a5197f`; ethereum `0xfc3082...bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378677 | `0xad2a6c...220298` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378664 | 7 deployments: ethereum `0x211c74...25ef59`; ethereum `0x35b2c1...78ade6`; ethereum `0x3f950f...4b2096`; ethereum `0x46f992...435ace`; ethereum `0x78537a...8f1132`; ethereum `0xa3dfcc...79e653`; ethereum `0xdd8ac2...e83ff1` | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378666 | `0x3c2c6f...01bcf8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378663 | `0x1d28d4...cb388e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378670 | `0x5951f1...ea42eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378673 | `0x7e30fc...9edb5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378676 | `0xa7aa5b...13f193` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-378681 | `0xe974b9...d44125` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hackmd.io/@geistermeister/SkSZiU9ybe](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [Alchemix_v2.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Alchemix_v2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [View Report](https://drive.google.com/file/d/18LmIajwn6NOCbxKQJ49MVLyLSKb9gmD1/view) | Immunefi | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-yearn-e44c37454c3ba188ea81d6d583c399aa.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-nethermind-3195e302f55244d130f49ec41e6d1539.pdf) | Code4rena | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Strategies report (April 15–17, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-04e42747ec4fdfaad4f32799e6064a9a.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Strategies follow-up report (April 23–24, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-followup-4183b2c1865b0f18d3cd22a6700337e9.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe — no match: No reason recorded
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b — no match: No scope section or contract names found in the provided text.
- [9744] v3-nethermind.pdf — no match: No reason recorded
- [9745] v3-strategies-yaudit-followup.pdf — no match: No reason recorded
- [9746] v3-strategies-yaudit.pdf — no match: No reason recorded
- [9747] v3-yearn.pdf — no match: Extracted 42 contract names from the audit scope section listing all files under src/. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26436] Alchemix_v2.pdf — matched: Scope section explicitly lists 6 smart contracts and 7 libraries. Audit date is the 'Updated' date (2022-02-19) as the final version.
- [26438] View Report — no match: Scope section states 'target assets in scope for the Audit Competition were Alchemix’s smart contract assets' but does not list individual contracts. However, top findings reference specific contracts (Transmuter, AlchemistV3) as targets, indicating they are in scope. Audit competition ended 4 Nov 2025.
- [26440] View Report — no match: Extracted 42 contract names from the audit scope section listing all files in src/ directory. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26441] View Report — no match: Extracted 23 contract names from the 'Audited Files' section (pages 3-4) which lists all contracts in scope with file paths. The audit date is explicitly stated as 'Febuary 2, 2026' on the cover page and in the summary table.
- [26442] Strategies report (April 15–17, 2026) — no match: All 7 contracts listed in Audit Scope section with file paths.
- [26443] Strategies follow-up report (April 23–24, 2026) — no match: Audit scope explicitly lists 3 contracts: SimMigrateToWstethStrategy.s.sol, MYTTokenSwapper.sol, WstETHEthereumStrategy.sol. Audit date found at end of document: 'Completed 2026-04-24'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hackmd.io/@geistermeister/SkSZiU9ybe | AlchemistV3 | unmatched — not counted | — | — | no |
| hackmd.io/@geistermeister/SkSZiU9ybe | Transmuter | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistGate | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MYTStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MorphoYearnOGWETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsUSDC | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PermissionedProxy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoEth | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | WstethMainnet | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | MYTTokenSwapper | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | SimMigrateToWstethStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | WstETHEthereumStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | AlchemistRouter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | EtherfiEETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | OraclePricedSwapStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SFraxETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SiUSDStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | WStethStrategy | unmatched — not counted | — | — | no |
| v3-yearn.pdf | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | StakingGraph | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Transmuter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74...25ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a...8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992...435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfcc...79e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f...4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c1...78ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2...e83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v3-yearn.pdf | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | AlchemistV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x5c6374...dd94dd` — deployed 2022-02-24 05:00:40+03 — liveness: live (current_address_book_code)<br>AlchemistV2 (alternative) `0xf547b8...f4acfb` — deployed 2022-03-08 07:05:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x062bf7...b13b5c` — deployed 2022-02-24 06:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | AlchemicToken | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | TransmuterV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x49930a...24df55` — deployed 2022-03-12 17:57:54+03 — liveness: live (current_address_book_code)<br>TransmuterV2 (alternative) `0xad2a6c...220298` — deployed 2022-03-14 02:39:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa840c7...a5197f` — deployed 2022-03-12 17:50:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc3082...bdf5b9` — deployed 2022-03-12 18:03:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x033231...d64811` — deployed 2022-03-12 18:29:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | TransmuterBuffer | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xbc2fb2...c90b9e` — deployed 2022-03-12 18:24:53+03 — liveness: live (current_address_book_code)<br>TransmuterBuffer (alternative) `0x437067...b5948f` — deployed 2022-03-12 17:43:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1eed2d...f79bac` — deployed 2022-03-12 17:44:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | WETHGateway | own contract | WETHGateway (selected) `0xa22a7e...76d67a` — deployed 2022-03-18 17:07:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Alchemix_v2.pdf | YearnTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Limiters | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | ContractWhitelister | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/Transmuter.sol | no |
| View Report | AlchemistV3 | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/AlchemistV3.sol | no |
| View Report | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| View Report | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| View Report | Errors | unmatched — not counted | — | listed in scope | no |
| View Report | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| View Report | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| View Report | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| View Report | SafeCast | unmatched — not counted | — | listed in scope | no |
| View Report | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| View Report | Sets | unmatched — not counted | — | listed in scope | no |
| View Report | StakingGraph | unmatched — not counted | — | listed in scope | no |
| View Report | TokenUtils | unmatched — not counted | — | listed in scope | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | listed in scope | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| View Report | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74...25ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a...8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992...435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfcc...79e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f...4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c1...78ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2...e83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Report | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope table | no |
| View Report | IAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | IAlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope table | no |
| View Report | WstethMainnet | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsETH | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsUSDC | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoEth | unmatched — not counted | — | listed in scope table | no |
| Strategies report (April 15–17, 2026) | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | AlchemistRouter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | EtherfiEETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | OraclePricedSwapStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SFraxETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SiUSDStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies follow-up report (April 23–24, 2026) | SimMigrateToWstethStrategy | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | MYTTokenSwapper | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | WstETHEthereumStrategy | unmatched — not counted | — | listed in Audit Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdbdb4d...90c8df` | AlchemixToken | token | $6,906,906.57 | Verified native implementation with $6,906,906.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf547b8...f4acfb` | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437067...b5948f` | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad2a6c...220298` | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x211c74...25ef59` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c2c6f...01bcf8` | WstETHAdapterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 163 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b
- [9744] v3-nethermind.pdf
- [9745] v3-strategies-yaudit-followup.pdf
- [9746] v3-strategies-yaudit.pdf
- [9747] v3-yearn.pdf
- [26438] View Report
- [26440] View Report
- [26441] View Report
- [26442] Strategies report (April 15–17, 2026)
- [26443] Strategies follow-up report (April 23–24, 2026)

Fork inheritance lineage and inherited audits are included when available.
