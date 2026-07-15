# Agentic Audit Brief: Frankencoin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 12 (7 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 47 unique implementations (69 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,912,071.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Frankencoin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 1 contracts are derived from known codebases. 0 contracts have no detected origin.

### Forked Contracts

**Frankencoin** (`0xb58e61...0921cb`, chain 1)
Origin: decentralized-euro (`0xb58e61...0921cb`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- None

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 47 unique; 46 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/42
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 47
- Raw deployments: 69
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blockbite | Tier 2 | 1 | 2.4% | 2023-02 |
| ChainSecurity | Tier 1 | 1 | 2.4% | 2024-11 |
| Code4rena | Tier 1 | 1 | 2.4% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Frankencoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240440 | `0xb58e61...0921cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthorizationProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387416...47466e` | ⚠️ Unaudited |
| AuthorizePositionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x64335c...5f3032`; ethereum `0xc2fe10...efd930`; ethereum `0xe5487b...3e33be` | ⚠️ Unaudited |
| Autobidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x761ebe...50a168`; ethereum `0x795075...17b39a`; ethereum `0xa05bfd...72c4c4` | ⚠️ Unaudited |
| BridgeAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd2e...8adb16` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9359cd...be4b79` | ⚠️ Unaudited |
| CCIPAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2527ec...5dfef8` | ⚠️ Unaudited |
| CloneHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55cd28...5f8bee` | ⚠️ Unaudited |
| Equity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba267...e341b2` | ⚠️ Unaudited |
| FlashloanFrankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d60db...ec96a1` | ⚠️ Unaudited |
| Folio | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4a109...db1f94` | ⚠️ Unaudited |
| FPSWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5052d3...80b182`; ethereum `0x54e556...e0fa16` | ⚠️ Unaudited |
| Frankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x422d17...86bf4e`; ethereum `0x7a7870...09b0d8` | ⚠️ Unaudited |
| GovernanceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2327...f876eb` | ⚠️ Unaudited |
| IFALCSUSDFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fae3...794a1c` | ⚠️ Unaudited |
| IFALCUSDCProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ef854...60f52e`; ethereum `0x998d0c...16f8fd` | ⚠️ Unaudited |
| LeadrateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4337...8ef28d` | ⚠️ Unaudited |
| LeverageRealUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf285c...7eda8c` | ⚠️ Unaudited |
| MintingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0e5dfe...fcb9ea`; ethereum `0x4539b0...0a4e7a`; ethereum `0x754676...265219`; ethereum `0xde12b6...653557` | ⚠️ Unaudited |
| MockFlashloanRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83aec9...0005b8` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bfc2...3467b9` | ⚠️ Unaudited |
| PositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0cde50...486392`; ethereum `0x63cf7c...706b7e`; ethereum `0x728310...8472ba`; ethereum `0xcfa9b5...be2080` | ⚠️ Unaudited |
| PositionRoller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0107...9ea6b6` | ⚠️ Unaudited |
| PositionV2Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38426f...9976d5` | ⚠️ Unaudited |
| ReferenceTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46eadd...d80437`; ethereum `0x6a9ffb...79ab7e` | ⚠️ Unaudited |
| RewardRouterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6d71...269339` | ⚠️ Unaudited |
| RewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1209e4...b78283` | ⚠️ Unaudited |
| RollerPositionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77350f...a72786` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27d9ad...a17b38`; ethereum `0x3bf301...dfb2ae` | ⚠️ Unaudited |
| SavingsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e632...e28139` | ⚠️ Unaudited |
| SavingsVaultZCHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637f00...fef8bc` | ⚠️ Unaudited |
| SavingsVaultZCHF_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f130...abf6b0` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3b71ba...340403`; ethereum `0x3e445f...64f6c1`; ethereum `0x4125cd...d8402b`; ethereum `0x7bbe8f...e346df`; ethereum `0x8d8b5d...0fa020` | ⚠️ Unaudited |
| SUSDFUSDFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabad4...610bef` | ⚠️ Unaudited |
| SyStUSDStrategyPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f389...deeca6` | ⚠️ Unaudited |
| SZCHFZCHFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4bbb9...e7b971` | ⚠️ Unaudited |
| TransferReference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98c22...8a1916` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4318...c78cef` | ⚠️ Unaudited |
| VaultAdapterRecoverV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x397fb4...e2e50b`; ethereum `0x5febef...6c4bd7`; ethereum `0x8f36bb...fdf221` | ⚠️ Unaudited |
| VaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745211...1e25d5` | ⚠️ Unaudited |
| XCVXUSDPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a5d0...8628cb` | ⚠️ Unaudited |
| XETHUSDPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x616594...374fe9`; ethereum `0x8c1589...5202fb` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d22e...074615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ca8b...ebed57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c0dc...a026e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecaea1...db11da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-04-frankencoin](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [frankencoin-audit-report-2024-1.1.pdf (also discovered via alternate URL)](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/frankencoin-audit-report-2024-1.1.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 6 | high |
| [blockbite-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.md) | Blockbite | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [code4rena-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/code4rena-audit.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/frankencoin-smart-contracts](https://www.chainsecurity.com/security-audit/frankencoin-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-v2024](https://www.chainsecurity.com/security-audit/frankencoin-v2024) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 3 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-ccip-bridge](https://www.chainsecurity.com/security-audit/frankencoin-ccip-bridge) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [AuditReport-Frankencoin.pdf](https://frankencoin.com/AuditReport-Frankencoin.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4648] code4rena.com/reports/2023-04-frankencoin — matched: No reason recorded
- [15622] ChainSecurity-audit.pdf — matched: No reason recorded
- [15623] blockbite-audit.pdf — matched: No reason recorded
- [15624] ChainSecurity_Frankencoin_Frankencoin_v2024.pdf — matched: No reason recorded
- [15625] frankencoin-audit-report-2024-1.1.pdf — no match: Audit report for FrankenCoin by Decurity, period 16/09/2024 to 25/09/2024. Scope explicitly lists 6 contracts.
- [15626] blockbite-audit.md — no match: No reason recorded
- [15627] code4rena-audit.md — no match: The provided text is a comment on a Code4rena audit report, not the full report. It contains no scope section or explicit contract names.
- [15630] www.chainsecurity.com/security-audit/frankencoin-smart-contracts — matched: No reason recorded
- [15631] www.chainsecurity.com/security-audit/frankencoin-v2024 — matched: No reason recorded
- [15632] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge — no match: Only the project name 'Frankencoin CCIP Bridge' is mentioned; no specific contract names or file paths are provided.
- [15633] AuditReport-Frankencoin.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-04-frankencoin | ERC20 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Equity | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-04-frankencoin | MintingHub | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Position | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | PositionFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | StablecoinBridge | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | ERC20 | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Equity | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-audit.pdf | MathUtil | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | MintingHub | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Ownable | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Position | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | PositionFactory | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | StablecoinBridge | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | Equity | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blockbite-audit.pdf | MintingHub | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | StablecoinBridge | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | FPSWrapper | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Leadrate | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | MintingHub | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Position | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | PositionFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | PositionRoller | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Savings | unmatched — not counted | — | — | no |
| frankencoin-audit-report-2024-1.1.pdf | Leadrate | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | MintingHub | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | Position | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | PositionFactory | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | PositionRoller | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | Savings | unmatched — not counted | — | listed in scope | no |
| blockbite-audit.md | StablecoinBridge | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-smart-contracts | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | MintingHub | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | PositionRoller | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | Savings | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-ccip-bridge | Frankencoin CCIP Bridge | unmatched — not counted | — | listed in scope | no |
| AuditReport-Frankencoin.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Equity | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61...0921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AuditReport-Frankencoin.pdf | MintingHub | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Position | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | StablecoinBridge | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=7

Zero-match audit list:

- [15625] frankencoin-audit-report-2024-1.1.pdf
- [15626] blockbite-audit.md
- [15627] code4rena-audit.md
- [15632] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge

Fork inheritance lineage and inherited audits are included when available.
