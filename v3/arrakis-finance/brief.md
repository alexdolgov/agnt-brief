# Agentic Audit Brief: Arrakis Finance

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

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 96.4% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain
- Contract surface: 42 unique implementations (52 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $65,967,661.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Arrakis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain. Structural roles: 29 supporting, 11 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: supporting (29), core (11)
- Contract kinds: contract (39), abstract (1)
- Detected standards: ownable (23), erc1967proxy (16), pausable (11), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (29), uniswap-v3 (9), solady (8), permit2 (3)
- Upgradeable-pattern rows: 29

## Fork Analysis

3 of 51 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x5e7bb1...06809a`, chain 8453)
Origin: hybra (`0x32b9da...1324c2`)
Containment: 65.6% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- factoryRegistry()
- voter()

Removals (removed from original):
- collectAllProtocolFees()
- collectProtocolFees(address)
- defaultProtocolFee()
- gaugeManager()
- getProtocolFee(address)
- protocolFeeManager()
- protocolFeeModule()
- setGaugeManager(address)
- setMaxFee(uint24)
- setProtocolFeeManager(address)
- setProtocolFeeModule(address)

**CLFactory** (`0xade65c...89716a`, chain 8453)
Origin: arrakis-finance (`0xec2ffc...9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLFactory** (`0xf8f2eb...c061ef`, chain 8453)
Origin: arrakis-finance (`0xec2ffc...9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x022a0c...62f556`, chain 1)
- UnnamedContract (`0x1cc0ad...84149d`, chain 1)
- UnnamedContract (`0x413fc8...ed01ab`, chain 10)
- UnnamedContract (`0xcc8989...6006e3`, chain 130)
- UnnamedContract (`0xfb4e25...97f408`, chain 137)
- UnnamedContract (`0x8dd906...d4ea6e`, chain 8453)
- UnnamedContract (`0x97d42d...f6e5fb`, chain 8453)
- UnnamedContract (`0xa8098d...150785`, chain 8453)
- UnnamedContract (`0x9a4935...293345`, chain 9745)
- UnnamedContract (`0xe1a764...3deef4`, chain 42161)
- AerodromeStandardModulePrivate (`0x0e4afb...7d417e`, chain 8453)
- AerodromeStandardModulePrivate (`0xd9e51f...adefd1`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x06baae...7434ee`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x1a5273...0c33aa`, chain 8453)
- AerodromeStandardModulePrivateFees (`0xe7d57e...2b2f43`, chain 8453)
- ArrakisMetaVaultFactory (`0x820fb8...123982`, chain 1)
- ArrakisPublicVaultRouter (`0x72aa2c...a66041`, chain 1)
- Guardian (`0x6f4411...7ab981`, chain 1)
- MigrationHelper (`0xd61407...f9b962`, chain 1)
- ModulePrivateRegistry (`0xe278c1...27a265`, chain 1)
- ModulePublicRegistry (`0x791d75...779603`, chain 1)
- PancakeSwapV3StandardModulePrivate (`0x49083c...3d4b11`, chain 1)
- PancakeSwapV4StandardModulePrivate (`0x3da003...c53c39`, chain 56)
- Pauser (`0x700a1c...aac03a`, chain 1)
- PrivateVaultNFT (`0x44a801...56b762`, chain 1)
- RouterSwapExecutor (`0x194886...ceb1b6`, chain 1)
- RouterSwapResolver (`0xc6c533...9fb265`, chain 1)
- TimelockController (`0xaf6f96...c40b7f`, chain 1)
- TransparentUpgradeableProxy (`0x2e6e87...733bda`, chain 1)
- UniswapV3StandardModulePrivate (`0x8c0283...ace35e`, chain 1)
- UniV4StandardModulePrivate (`0x04ead2...b337dc`, chain 1)
- UnnamedContract (`0xcc8989...6006e3`, chain 57073)
- UpgradeableBeacon (`0x143687...627255`, chain 1)
- UpgradeableBeacon (`0xdf4975...4b6a38`, chain 1)
- UpgradeableBeacon (`0x205e64...796199`, chain 56)
- UpgradeableBeacon (`0x68c0d8...20f07a`, chain 56)
- UpgradeableBeacon (`0x741d42...87e639`, chain 56)
- UpgradeableBeacon (`0xc0b7fa...b987f0`, chain 56)
- UpgradeableBeacon (`0x243727...fa6f9b`, chain 8453)
- UpgradeableBeacon (`0x568336...25ac6f`, chain 8453)
- UpgradeableBeacon (`0x618e7d...e59778`, chain 8453)
- UpgradeableBeacon (`0x6b81f1...78df08`, chain 8453)
- UpgradeableBeacon (`0x82c0a1...75067f`, chain 8453)
- UpgradeableBeacon (`0x8b5c39...1cb82f`, chain 8453)
- UpgradeableBeacon (`0xa8c0b4...45342f`, chain 8453)
- UpgradeableBeacon (`0x1ec500...bd7327`, chain 42161)
- UpgradeableBeacon (`0x28a9a4...3cf6cb`, chain 42161)
- WithdrawHelper (`0x3a2e9c...6f46d3`, chain 1)

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 41 of 42 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 1
- Unverified implementations: 10
- Unique implementations: 42
- Raw deployments: 52
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379804 | `0x0e4afb...7d417e` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379818 | `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379803 | `0x06baae...7434ee` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379805 | `0x1a5273...0c33aa` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379819 | `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-379783 | `0x820fb8...123982` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379781 | `0x72aa2c...a66041` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-379822 | `0x2e6e87...733bda` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379808 | `0x5e7bb1...06809a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379817 | `0xade65c...89716a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379820 | `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-379779 | `0x6f4411...7ab981` | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379787 | `0xd61407...f9b962` | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379789 | `0xe278c1...27a265` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379782 | `0x791d75...779603` | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379778 | `0x49083c...3d4b11` | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | bsc | unit-379798 | `0x3da003...c53c39` | ⚠️ Unaudited |
| Pauser | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379780 | `0x700a1c...aac03a` | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379777 | `0x44a801...56b762` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379773 | `0x194886...ceb1b6` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379786 | `0xc6c533...9fb265` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379785 | `0xaf6f96...c40b7f` | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379784 | `0x8c0283...ace35e` | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379771 | `0x04ead2...b337dc` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | ethereum | unit-379772 | 4 deployments: ethereum `0x143687...627255`; bsc `0x205e64...796199`; base `0x618e7d...e59778`; arbitrum `0x1ec500...bd7327` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379800 | `0x741d42...87e639` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379801 | `0xc0b7fa...b987f0` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379806 | 4 deployments: base `0x243727...fa6f9b`; base `0x568336...25ac6f`; base `0x6b81f1...78df08`; base `0x8b5c39...1cb82f` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379816 | `0xa8c0b4...45342f` | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379776 | `0x3a2e9c...6f46d3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | arbitrum | unit-379795 | 5 deployments: ethereum `0xdf4975...4b6a38`; bsc `0x68c0d8...20f07a`; base `0x82c0a1...75067f`; plasma `0x9a4935...293345`; arbitrum `0x28a9a4...3cf6cb` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379770 | `0x022a0c...62f556` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379774 | `0x1cc0ad...84149d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-379790 | `0x413fc8...ed01ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379792 | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379793 | `0xfb4e25...97f408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379813 | `0x8dd906...d4ea6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379814 | `0x97d42d...f6e5fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379815 | `0xa8098d...150785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379796 | `0xe1a764...3deef4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-379802 | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379791 | `0xc0b7fa...b987f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Arrakis_Audit_Report_Sherlock.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5488] Arrakis_Audit_Report_Sherlock.pdf — no match: No reason recorded
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf — no match: Extracted contract names from findings and file paths. Audit date from delivery date.
- [5493] REP-Gelato-UNI-2021-07-22.pdf — no match: No reason recorded
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf — no match: No reason recorded
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5497] Arrakis_Audit_Report.pdf — no match: No reason recorded
- [5500] Chainsecurity Audit Report December 21.pdf — no match: Extracted 7 contracts from the scope table in section 2.1. Audit date from cover page and final version date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2FactoryStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Resolver | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | FullMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IManagerProxyV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ITransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Position | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | PositionHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | SafeCast | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | TickMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UnderlyingHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UniswapV3Amounts | unmatched — not counted | — | — | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisVaultV1 | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisV1RouterStaking | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1 | unmatched — not counted | — | mentioned in AR-N1, AR-N2 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1Storage | unmatched — not counted | — | mentioned in AR-N3, AR-N4 | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173ProxyWithReceive | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | FullMath | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactoryStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPool | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Gelatofied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IEIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | OwnableUninitialized | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | TickMath | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniFactory | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniPool | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | FTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManagerStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTermsStorage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | Underlying | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report December 21.pdf | BaseSurplusConverter | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterSanTokens | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV2Sushi | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV3 | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | PoolManager | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | AngleDistributor | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | LiquidityGaugeV4 | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0e4afb...7d417e` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9e51f...adefd1` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x06baae...7434ee` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a5273...0c33aa` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7d57e...2b2f43` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x820fb8...123982` | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72aa2c...a66041` | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e7bb1...06809a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xade65c...89716a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf8f2eb...c061ef` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f4411...7ab981` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61407...f9b962` | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe278c1...27a265` | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x791d75...779603` | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49083c...3d4b11` | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x700a1c...aac03a` | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44a801...56b762` | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194886...ceb1b6` | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6c533...9fb265` | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04ead2...b337dc` | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a2e9c...6f46d3` | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [5488] Arrakis_Audit_Report_Sherlock.pdf
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5493] REP-Gelato-UNI-2021-07-22.pdf
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf
- [5497] Arrakis_Audit_Report.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
