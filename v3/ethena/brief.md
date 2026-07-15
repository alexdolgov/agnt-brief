# Agentic Audit Brief: Ethena

## Export Authority

- Production state: **published scope**
- Raw selected rows: 16 across 9 audit(s)
- Eligible audit results: 18 (9 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ethena (`ethena`)
- Website: [https://www.app.ethena.fi/join/3y20d](https://www.app.ethena.fi/join/3y20d)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, blast, ethereum, kava, linea, manta-pacific, mantle, metis, mode, optimism, scroll, zksync-era
- Contract surface: 48 unique implementations (48 raw deployments)
- Coverage basis: 4/7 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,826,792,406.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ethena. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, base, berachain, blast, ethereum, kava, linea, manta-pacific, mantle, metis, mode, optimism, scroll, zksync-era. Structural roles: 10 core, 3 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (10), supporting (3)
- Contract kinds: contract (12), abstract (1)
- Detected standards: ownable (7), ownable2step (7), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1), erc1967proxy (1)
- Frameworks: openzeppelin (9), layerzero (3), openzeppelin-upgradeable (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3b0aaf...dc1862`, chain 1)
- UnnamedContract (`0x71e4f9...2a3a87`, chain 1)
- UnnamedContract (`0x8be346...a7b3b9`, chain 1)
- UnnamedContract (`0x9d39a5...7a3497`, chain 1)
- UnnamedContract (`0xe34902...1b62d3`, chain 1)
- ENA (`0x57e114...1e6061`, chain 1)
- EthenaLPStaking (`0x8707f2...cfc512`, chain 1)
- EthenaMinting (`0x2cc440...f8afc3`, chain 1)
- GnosisSafe (`0x2b5ab5...5dd4d5`, chain 1)
- MellowVaultCompat (`0xc65433...c47bd8`, chain 1)
- StakingRewardsDistributor (`0xf2fa33...c6b439`, chain 1)
- USDe (`0x4c9edd...1e68b3`, chain 1)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (7 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/7 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 23 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 12 of 48 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 28.6% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 2 | 28.6% | 2023-10 |
| bot | Tier 2 | 2 | 28.6% | 2023-10 |
| Code4rena | Tier 1 | 2 | 28.6% | 2023-11 |
| Pashov | Tier 2 | 2 | 28.6% | 2023-12 |
| Pashov Audit Group | Tier 2 | 2 | 28.6% | 2024-10 |
| Quantstamp | Tier 2 | 2 | 28.6% | 2024-10 |
| Spearbit | Tier 1 | 2 | 28.6% | 2023-10 |
| unknown | Tier 2 | 1 | 14.3% | 2024-05 |
| Zellic | Tier 2 | 1 | 14.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ENA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239319 | `0x57e114...1e6061` | ✅ Audited |
| EthenaLPStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239323 | `0x8707f2...cfc512` | ✅ Audited |
| EthenaMinting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239315 | `0x2cc440...f8afc3` | ✅ Audited |
| USDe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239318 | `0x4c9edd...1e68b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ENAOFTAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239320 | `0x58538e...9c0133` | ⚠️ Unaudited |
| EthenaTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7deee3...0175ae` | ⚠️ Unaudited |
| EthenaWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd1b8d...33a02e` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239352 | `0x2b5ab5...5dd4d5` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | mantle | unit-239353 | `0x799a2c...a060bb` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | unit-239348 | `0x093d3f...b09364` | ⚠️ Unaudited |
| Groth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a526f...005234` | ⚠️ Unaudited |
| MellowVaultCompat | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239351 | `0xc65433...c47bd8` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90ec1...58d16b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c405f...9acd68` | ⚠️ Unaudited |
| StakedENA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd57b...e1018b` | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239314 | `0x211cc4...5fe5d2` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf967...bac41d` | ⚠️ Unaudited |
| StakingRewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239327 | `0xf2fa33...c6b439` | ⚠️ Unaudited |
| TestnetERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb158...3cbea7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0795ab...aa28c3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc13919...18ac1c` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239317 | `0x435664...2f1e47` | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-239321 | `0x5d3a1f...52ef34` | ⚠️ Unaudited |
| USDtb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8a76...39e475` | ⚠️ Unaudited |
| USDtbMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ddbf...48416a` | ⚠️ Unaudited |
| VaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231fa7...331c3c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239316 | `0x3b0aaf...dc1862` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239322 | `0x71e4f9...2a3a87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239324 | `0x8be346...a7b3b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239325 | `0x9d39a5...7a3497` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239326 | `0xe34902...1b62d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239329 | `0xc66bbb...c160bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | manta-pacific | unit-239331 | `0xa408fd...2299ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-239333 | `0x39fe7a...b3db0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-239334 | `0x686b31...4cc25f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-239335 | `0xa026e9...2c609a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-239336 | `0xad17da...e36da8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-239330 | `0x795db3...fc94e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-239332 | `0x10e921...9733b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-239350 | `0xbc89d1...dbf293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-239337 | `0x273ced...07b2ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-239338 | `0x211cc4...5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-239339 | `0x58538e...9c0133` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-239340 | `0x5d3a1f...52ef34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-239341 | `0xc96473...3c406d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-239347 | `0xe1b9b4...ab9192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-239349 | `0x689272...6cc9e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-239346 | `0xafafc5...b8ffd6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ethena x Zellic - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FGZbd1DrrG3YmnTlJnTHa%2FEthena%20-%20Zellic%20Audit%20Report%20Draft.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Ethena x Quantstamp - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2F17Ucep7IYMBZ6mAHGLyw%2FEthena%20Final%20Report%20(1).pdf) | Quantstamp | Audit | 2023-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [Spearbit x Ethena - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FsX7xO54StGnS6RlZM0Qa%2FSpearbit%20_Ethena_v2_Final_report-ethena__1_.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [Ethena x Pashov - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FzUZDAQ77jrhUOIMqFka9%2FEthena-security-review%20(1).pdf) | Pashov Audit Group | Audit | 2023-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [Ethena-security-review (1).pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FBCV8xxvUneCO2WlUk2KS%2FEthena-security-review%20(1).pdf) | Pashov | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |
| [v2-audit.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FJHbdthPqKCPoZFzrpryW%2Fv2-audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Ethena x Pashov - SENA Audit Report.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FtqsJW7hPQMXv80sibsUK%2FEthena%20x%20Pashov%20-%20SENA%20Audit%20Report.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Ethena x Quantstamp - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FuyJ6FDS2CVacoHv303Cw%2FEthena%20x%20Quantstamp%20-%20USTB.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Ethena x Cyfrin - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2Fd7jvu5NZ9eh8thYYRBmP%2FEthena%20x%20Cyfrin%20-%20USTB.pdf) | Cyfrin | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Ethena x Pashov - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2Fvjn1dqCWVE3YWhLFTFFU%2FEthena%20x%20Pashov%20-%20USTB.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [View report](https://code4rena.com/reports/2023-10-ethena) | Code4rena | Contest | 2023-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [4naly3er-report.md](https://github.com/code-423n4/2023-10-ethena/blob/main/4naly3er-report.md) | 4naly3er | Contest | 2023-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [bot-report.md](https://github.com/code-423n4/2023-10-ethena/blob/main/bot-report.md) | bot | Contest | 2023-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [AUDIT_LENDING.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_LENDING.md) | unknown | Contest | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [AUDIT_MINT.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_MINT.md) | unknown | Contest | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [AUDIT_STAKING.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_STAKING.md) | unknown | Contest | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [spaces/sBsPyff5ft3inFy9jyjt/uploads/S8e4wljMcMDkw6fMcnby/Chaos Labs - Ethena LST Market Risk Analysis (1).pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FS8e4wljMcMDkw6fMcnby%2FChaos%20Labs%20-%20Ethena%20LST%20Market%20Risk%20Analysis%20(1).pdf) | Code4rena | Contest | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/sBsPyff5ft3inFy9jyjt/uploads/xB8Qp1VgHy3GN2aJ57JO/Chaos_Labs___USDe_On_chain_Liquidity_Assessment.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FxB8Qp1VgHy3GN2aJ57JO%2FChaos_Labs___USDe_On_chain_Liquidity_Assessment.pdf) | Chaos Labs | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17189] Ethena x Zellic - Audit Report — matched: Scope section lists EthenaStaking, EthenaMinting, and /lending/*. Threat model sections cover AstEth.sol, EUSDAToken.sol, EUSDVariableDebtToken.sol, EthenaMinting.sol, EthenaStaking.sol, StEthVariableDebtToken.sol. Date from cover page: July 5, 2023.
- [17190] Ethena x Quantstamp - Audit Report — matched: Scope section lists EthenaMinting.sol, USDe.sol, StakedUSDe.sol. Additional contracts (StakedUSDeV2, USDeSilo, SingleAdminAccessControl) are mentioned in findings or coverage.
- [17191] Spearbit x Ethena - Audit Report — matched: Extracted contract names from findings context and file paths mentioned in the report. No explicit scope section found, but contracts are clearly audited.
- [17192] Ethena x Pashov - Audit Report — matched: Scope section explicitly lists 5 contracts: EthenaMinting, USDe, StakedUSDe, StakedUSDeV2, SingleAdminAccessControl. Audit date found in header of first page.
- [17193] Ethena-security-review (1).pdf — matched: Scope section explicitly lists EthenaLPStaking and ENA as smart contracts in scope.
- [17194] v2-audit.pdf — matched: Scope section explicitly lists EthenaMinting and SingleAdminAccessControl. Audit date is May 23th 2024 from the cover page.
- [17195] Ethena x Pashov - SENA Audit Report.pdf — no match: Scope section explicitly lists StakedENA and DeployStakedENA. Audit date is the end date of the engagement: September 2nd 2024.
- [17196] Ethena x Quantstamp - USTB.pdf — no match: Scope section lists 4 contracts: SingleAdminAccessControl.sol, SingleAdminAccessControlUpgradeable.sol, UStb.sol, UStbMinting.sol. Audit date from changelog: 2024-10-31 (Final report).
- [17197] Ethena x Cyfrin - USTB.pdf — no match: All contracts listed in the Audit Scope section of the report.
- [17198] Ethena x Pashov - USTB.pdf — no match: Scope section lists 4 contracts. Audit date range October 17th - October 20th, using end date.
- [17199] View report — matched: Scope section explicitly lists 6 smart contracts. Audit date found on cover page.
- [17200] 4naly3er-report.md — matched: Extracted contract names from file paths in the report. No explicit scope section or audit date found.
- [17201] bot-report.md — matched: No explicit scope section found; contracts extracted from findings across all severity levels. No audit date found in the provided text.
- [17202] AUDIT_LENDING.md — no match: The provided text is a pre-audit questionnaire, not the audit report itself. It mentions the project Ethena and its components but does not list specific contracts in scope. No contract names, file paths, or audit date are identifiable.
- [17203] AUDIT_MINT.md — no match: The provided text is a pre-audit questionnaire, not an audit report. It does not contain a scope section or list of contracts in scope. No contract names are explicitly mentioned as being audited.
- [17204] AUDIT_STAKING.md — no match: Only one contract name (EthenaStaking) is explicitly mentioned in the project description. No formal scope section or file listing is provided.
- [26386] spaces/sBsPyff5ft3inFy9jyjt/uploads/S8e4wljMcMDkw6fMcnby/Chaos Labs - Ethena LST Market Risk Analysis (1).pdf — no match: This is a market risk assessment report, not a smart contract audit. No smart contracts are listed in scope. The report discusses LST tokens (stETH, wbETH) and protocols (Lido, Ethena) but does not audit specific contracts.
- [26390] spaces/sBsPyff5ft3inFy9jyjt/uploads/xB8Qp1VgHy3GN2aJ57JO/Chaos_Labs___USDe_On_chain_Liquidity_Assessment.pdf — no match: The document is a liquidity assessment report, not a smart contract audit. It does not list any smart contracts in scope. The date is October 2023, converted to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ethena x Zellic - Audit Report | AstEth | unmatched — not counted | — | Threat Model section 5.1 Module: AstEth.sol | no |
| Ethena x Zellic - Audit Report | EUSDAToken | unmatched — not counted | — | Threat Model section 5.2 Module: EUSDAToken.sol | no |
| Ethena x Zellic - Audit Report | EUSDVariableDebtToken | unmatched — not counted | — | Threat Model section 5.3 Module: EUSDVariableDebtToken.sol | no |
| Ethena x Zellic - Audit Report | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena x Zellic - Audit Report | EthenaStaking | unmatched — not counted | — | Scope section lists EthenaStaking; Threat Model section 5.5 | no |
| Ethena x Zellic - Audit Report | StEthVariableDebtToken | unmatched — not counted | — | Threat Model section 5.6 Module: StEthVariableDebtToken.sol | no |
| Ethena x Quantstamp - Audit Report | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena x Quantstamp - Audit Report | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena x Quantstamp - Audit Report | StakedUSDe | unmatched — not counted | — | listed in scope | no |
| Ethena x Quantstamp - Audit Report | StakedUSDeV2 | unmatched — not counted | — | mentioned in findings | no |
| Ethena x Quantstamp - Audit Report | USDeSilo | unmatched — not counted | — | mentioned in findings | no |
| Ethena x Quantstamp - Audit Report | SingleAdminAccessControl | unmatched — not counted | — | mentioned in code coverage | no |
| Spearbit x Ethena - Audit Report | StakedUSDe | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | StakedUSDeV2 | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit x Ethena - Audit Report | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit x Ethena - Audit Report | USDeSilo | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | IStakedUSDeCooldown | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | IEthenaMintingEvents | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | IStakedUSDe | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | IEthenaMinting | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit x Ethena - Audit Report | IUSDe | unmatched — not counted | — | mentioned in findings context | no |
| Ethena x Pashov - Audit Report | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena x Pashov - Audit Report | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena x Pashov - Audit Report | StakedUSDe | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - Audit Report | StakedUSDeV2 | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - Audit Report | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Ethena-security-review (1).pdf | EthenaLPStaking | own contract | EthenaLPStaking (selected) `0x8707f2...cfc512` — deployed 2024-01-09 20:26:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ethena-security-review (1).pdf | ENA | own contract | ENA (selected) `0x57e114...1e6061` — deployed 2024-03-06 00:29:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v2-audit.pdf | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v2-audit.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in scope section | no |
| Ethena x Pashov - SENA Audit Report.pdf | StakedENA | unmatched — not counted | — | listed in scope section | no |
| Ethena x Pashov - SENA Audit Report.pdf | DeployStakedENA | unmatched — not counted | — | listed in scope section | no |
| Ethena x Quantstamp - USTB.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Ethena x Quantstamp - USTB.pdf | SingleAdminAccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| Ethena x Quantstamp - USTB.pdf | UStb | unmatched — not counted | — | listed in scope | no |
| Ethena x Quantstamp - USTB.pdf | UStbMinting | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | ISingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | Upgrades | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | IUStb | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | IUStbDefinitions | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | IUStbMinting | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | IUStbMintingEvents | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | UStb | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | UStbMinting | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Ethena x Cyfrin - USTB.pdf | SingleAdminAccessControlUpgradeable | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - USTB.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - USTB.pdf | SingleAdminAccesscontrolUpgradeable | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - USTB.pdf | UStb | unmatched — not counted | — | listed in scope | no |
| Ethena x Pashov - USTB.pdf | UStbMinting | unmatched — not counted | — | listed in scope | no |
| View report | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View report | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View report | StakedUSDe | unmatched — not counted | — | listed in scope | no |
| View report | StakedUSDeV2 | unmatched — not counted | — | listed in scope | no |
| View report | USDeSilo | unmatched — not counted | — | listed in scope | no |
| View report | SingleAdminAccessControl | unmatched — not counted | — | mentioned in analysis | no |
| 4naly3er-report.md | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | SingleAdminAccessControl | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | StakedUSDe | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | StakedUSDeV2 | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | USDeSilo | unmatched — not counted | — | listed in scope | no |
| bot-report.md | USDe | own contract | USDe (selected) `0x4c9edd...1e68b3` — deployed 2023-11-14 19:32:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bot-report.md | EthenaMinting | own contract | EthenaMinting (selected) `0x2cc440...f8afc3` — deployed 2023-11-14 19:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bot-report.md | StakedUSDe | unmatched — not counted | — | listed in findings | no |
| bot-report.md | StakedUSDeV2 | unmatched — not counted | — | listed in findings | no |
| bot-report.md | USDeSilo | unmatched — not counted | — | listed in findings | no |
| bot-report.md | SingleAdminAccessControl | unmatched — not counted | — | listed in findings | no |
| AUDIT_STAKING.md | EthenaStaking | unmatched — not counted | — | described in project info as 'The EthenaStaking contract allows users to stake USDe tokens' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc65433...c47bd8` | MellowVaultCompat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf2fa33...c6b439` | StakingRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 16 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 54 unmatched
- Matched-own operational status: 16 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=5
- Match method counts: unique_name=16

Zero-match audit list:

- [17195] Ethena x Pashov - SENA Audit Report.pdf
- [17196] Ethena x Quantstamp - USTB.pdf
- [17197] Ethena x Cyfrin - USTB.pdf
- [17198] Ethena x Pashov - USTB.pdf
- [17202] AUDIT_LENDING.md
- [17203] AUDIT_MINT.md
- [17204] AUDIT_STAKING.md
- [26386] spaces/sBsPyff5ft3inFy9jyjt/uploads/S8e4wljMcMDkw6fMcnby/Chaos Labs - Ethena LST Market Risk Analysis (1).pdf
- [26390] spaces/sBsPyff5ft3inFy9jyjt/uploads/xB8Qp1VgHy3GN2aJ57JO/Chaos_Labs___USDe_On_chain_Liquidity_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
