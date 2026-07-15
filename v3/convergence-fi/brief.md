# Agentic Audit Brief: Convergence Fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Convergence Fi (`convergence-fi`)
- Website: [https://app.cvg.finance/](https://app.cvg.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (56 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $526,539.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Convergence Fi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0af815...3e35f7`, chain 1)
- UnnamedContract (`0x794c31...27fcb9`, chain 1)
- UnnamedContract (`0xcd6cfc...78b36c`, chain 1)
- UnnamedContract (`0xd2be17...8cd856`, chain 1)
- UnnamedContract (`0xd2c46b...f71dbb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 5 of 56 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8022d1...0c9b3d` | ⚠️ Unaudited |
| BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e43b2...12597c` | ⚠️ Unaudited |
| BondDepositoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f15a...b46194` | ⚠️ Unaudited |
| BondLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3916ba...cbeff5` | ⚠️ Unaudited |
| BondPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d89e...81251a` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3ad8...a08537` | ⚠️ Unaudited |
| CloneFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x15a2d4...fa6ec5` | ⚠️ Unaudited |
| Cvg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97effb...b77be8` | ⚠️ Unaudited |
| Cvg-Finance - Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdb7789...e8190d` | ⚠️ Unaudited |
| Cvg-Finance - veCVG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5a35bc...d619d0` | ⚠️ Unaudited |
| CvgControlTower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd7ea9...296e3e` | ⚠️ Unaudited |
| CvgControlTowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0afc8...aeaee7` | ⚠️ Unaudited |
| CvgCVX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2191df...31d082` | ⚠️ Unaudited |
| CvgCvxStakingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c1d29...bab119` | ⚠️ Unaudited |
| CvgOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451ea5...b6d16c` | ⚠️ Unaudited |
| CvgOracleUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955659...93b0c3` | ⚠️ Unaudited |
| CvgRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd615c6...0bc9d7` | ⚠️ Unaudited |
| CvgRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bf8...6f5e7f` | ⚠️ Unaudited |
| CvgRewardsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa044fd...579109` | ⚠️ Unaudited |
| CvgSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x830614...6fcffc` | ⚠️ Unaudited |
| CvgSdtBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df0a3...2cc6ae` | ⚠️ Unaudited |
| CVX1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6c9815...078712` | ⚠️ Unaudited |
| CvxAssetStakerBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600c91...0dcb92` | ⚠️ Unaudited |
| CvxAssetStakingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d753...33e303` | ⚠️ Unaudited |
| CvxRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47c69e...c71f19` | ⚠️ Unaudited |
| CvxRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b083b...3e7606` | ⚠️ Unaudited |
| LockingLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05816a...1e29e9` | ⚠️ Unaudited |
| LockingPositionDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc375d5...5b2271` | ⚠️ Unaudited |
| LockingPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0edb88...a0c0ce` | ⚠️ Unaudited |
| LockingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84728e...fad4d2` | ⚠️ Unaudited |
| LockingPositionServiceV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd1d17...8f5009` | ⚠️ Unaudited |
| LockingPositionServiceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc809e0...cb1262` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf16d93...f59e89` | ⚠️ Unaudited |
| SdtBlackHole | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x217771...deb77f` | ⚠️ Unaudited |
| SdtBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb22d4...cd5871` | ⚠️ Unaudited |
| SdtBufferV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x31ab49...44ddcb` | ⚠️ Unaudited |
| SdtFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15cbdf...0c42ae` | ⚠️ Unaudited |
| SdtRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554f7...1e4d66` | ⚠️ Unaudited |
| SdtRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af5ae...c1a704` | ⚠️ Unaudited |
| SdtStakingLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x461754...fded02` | ⚠️ Unaudited |
| SdtStakingPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x731966...d0dc48` | ⚠️ Unaudited |
| SdtStakingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba753...dcf799` | ⚠️ Unaudited |
| SdtStakingViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8cd...b05ff0` | ⚠️ Unaudited |
| SdtUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d41fa...4b5474` | ⚠️ Unaudited |
| StkCvg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4b3bd8...3960c8` | ⚠️ Unaudited |
| StratPostExploit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c310...674d37` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5d6088...cd2c33` | ⚠️ Unaudited |
| VestingCvg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc929ba...2a0c30` | ⚠️ Unaudited |
| YsCrvDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3ea3...020ccd` | ⚠️ Unaudited |
| YsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc39db...422fb7` | ⚠️ Unaudited |
| YsStreamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2841f1...84ac5a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381906 | `0x0af815...3e35f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381907 | `0x794c31...27fcb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381908 | `0xcd6cfc...78b36c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381909 | `0xd2be17...8cd856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381910 | `0xd2c46b...f71dbb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui](https://ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [audits.sherlock.xyz/contests/126](https://audits.sherlock.xyz/contests/126) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-11-convergence (GitHub directory)](https://github.com/sherlock-audit/2023-11-convergence) | Sherlock | Contest | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope](https://app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope](https://app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21359] ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui — no match: All 31 contracts listed in scope section of the report.
- [21360] audits.sherlock.xyz/contests/126 — no match: The provided text is a fragment of a contest page header with no contract names or audit report content.
- [21361] 2023-11-convergence (GitHub directory) — no match: Extracted 19 contract names from the audit scope listing. No audit date found in the provided text.
- [21362] app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope — no match: The provided text is not an audit report; it appears to be a website requiring JavaScript. No contract names or audit details could be extracted.
- [21363] app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope — no match: The provided text is not an audit report but a generic message about JavaScript. No contracts or audit details found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondCalculator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondDepository | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondPositionManager | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | GaugeController | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingPositionDelegate | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingPositionManager | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | veCVG | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | VveCVGCalculator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgOracle | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgV3Aggregator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | SeedPresaleCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | VestingCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | WlPresaleCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgRewards | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TAssetBlackHole | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | YsDistributor | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgTokeStaking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | StakingLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | StakingViewer | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TAssetStaking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TokeStaker | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TokeStakingCommon | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | Cvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgERC721TimeLocking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgToke | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgUtilities | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | SwapperFactory | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CloneFactory | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgControlTower | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | GaugeController | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionDelegate | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionManager | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionService | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | veCVG | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgRewards | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgSdtBuffer | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtBlackHole | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtBuffer | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtFeeCollector | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | YsDistributor | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtRewardReceiver | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtStakingPositionManager | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtStakingPositionService | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | Cvg | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgERC721TimeLockingUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgSDT | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgUtilities | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtUtilities | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=3
- Match method counts: n/a

Zero-match audit list:

- [21359] ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui
- [21360] audits.sherlock.xyz/contests/126
- [21361] 2023-11-convergence (GitHub directory)
- [21362] app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope
- [21363] app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope

Fork inheritance lineage and inherited audits are included when available.
