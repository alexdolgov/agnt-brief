# Agentic Audit Brief: Shadow Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 14 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 32 unique implementations (33 raw deployments)
- Coverage basis: 9/30 confirmed own live verified implementations (30.0%); conservative 30.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,440,156.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shadow Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across sonic. Structural roles: 14 supporting, 14 unclassified, 4 core, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: supporting (14), unclassified (14), core (4), infra (1)
- Contract kinds: contract (33)
- Detected standards: erc165 (4), erc20 (4), multicall (3), erc20permit (2), erc721 (2), accesscontrol (1), erc1967proxy (1), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (13), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

3 of 28 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

**PairFactory** (`0x2da25e...6374c8`, chain 146)
Origin: vfat.io (`0x60b7ec...03a8b6`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xcd2d06...8de6d7`, chain 146)
Origin: shadow-exchange (`0x20b770...5d1f5a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VoteModule** (`0xdcb5a2...b666b4`, chain 146)
Origin: vfat.io (`0xf7a585...13656c`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0e03b0...690dcf`, chain 146)
- UnnamedContract (`0x1a99e5...1b1d74`, chain 146)
- FeeDistributorFactory (`0x29adf0...847ff5`, chain 146)
- FeeRecipientFactory (`0x5712bd...bf37c1`, chain 146)
- GaugeFactory (`0x8cf82d...1299e9`, chain 146)
- Gems (`0x5555b2...ee5555`, chain 146)
- GnosisSafeProxy (`0x137f7c...dec218`, chain 146)
- GnosisSafeProxy (`0x5be2e8...553432`, chain 146)
- GnosisSafeProxy (`0x7fdf76...9f3d22`, chain 146)
- LauncherPlugin (`0x3ec4fc...dbfc7f`, chain 146)
- Minter (`0xc7022f...7f3765`, chain 146)
- NonfungiblePositionManager (`0x12e66c...0f4406`, chain 146)
- NonfungiblePositionManager (`0xa57fa3...f1542e`, chain 146)
- NonfungibleTokenPositionDescriptor (`0xdaa4b0...2c4607`, chain 146)
- Quoter (`0x3003b4...d79dc7`, chain 146)
- QuoterV2 (`0x219b7a...07535a`, chain 146)
- Router (`0x1d3687...330cdc`, chain 146)
- Shadow (`0x3333b9...a33333`, chain 146)
- ShadowTimelock (`0x4577d5...83df50`, chain 146)
- SwapRouter (`0x5543c6...e2d695`, chain 146)
- TransparentUpgradeableProxy (`0x5e7a9e...e8e37f`, chain 146)
- TransparentUpgradeableProxy (`0x9f5939...b0062d`, chain 146)
- UniversalRouter (`0x92643d...04a9c2`, chain 146)
- x33 (`0x333311...333333`, chain 146)
- XShadow (`0x5050bc...4b2424`, chain 146)

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (30 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/30 (30.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 32 of 32 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 9/30
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 32
- Raw deployments: 33
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 30.0% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 9 | 30.0% | 2025-10 |
| Code4rena | Tier 1 | 3 | 10.0% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 6.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392528 | `0x5e7a9e...e8e37f` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | sonic | unit-392518 | `0xcc0365...f8d27f` | ✅ Audited |
| FeeDistributorFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392503 | `0x29adf0...847ff5` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | sonic | unit-392524 | `0x452f37...b6968c` | ✅ Audited |
| Minter | unknown | project_anchor | own_supporting | 0 | sonic | unit-392517 | `0xc7022f...7f3765` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-392519 | `0xcd2d06...8de6d7` | ✅ Audited |
| RamsesV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-392514 | `0x8bbdc1...142d59` | ✅ Audited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | sonic | unit-392521 | `0xdcb5a2...b666b4` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 1 | sonic | unit-392526 | `0x9f5939...b0062d` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeRecipientFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392512 | `0x5712bd...bf37c1` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392515 | `0x8cf82d...1299e9` | ⚠️ Unaudited |
| Gems | unknown | project_anchor | own_supporting | 0 | sonic | unit-392511 | `0x5555b2...ee5555` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392499 | `0x137f7c...dec218` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-392513 | `0x7fdf76...9f3d22` | ⚠️ Unaudited |
| LauncherPlugin | unknown | project_anchor | own_supporting | 0 | sonic | unit-392508 | `0x3ec4fc...dbfc7f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392522 | `0x12e66c...0f4406` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-392527 | `0xa57fa3...f1542e` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | sonic | unit-392520 | `0xdaa4b0...2c4607` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | sonic | unit-392504 | `0x2da25e...6374c8` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | sonic | unit-392505 | `0x3003b4...d79dc7` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | sonic | unit-392502 | `0x219b7a...07535a` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | sonic | unit-392501 | `0x1d3687...330cdc` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | third_party_dependency | 2 | sonic | unit-392523 (2 proxies) | 2 deployments: sonic `0x5be2e8...553432`; sonic `0x600ad8...5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392507 | `0x3333b9...a33333` | ⚠️ Unaudited |
| ShadowTimelock | unknown | project_anchor | own_supporting | 0 | sonic | unit-392509 | `0x4577d5...83df50` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 1 | sonic | unit-392525 | `0x5543c6...e2d695` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-392497 | `0x095bbc...202e14` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-392516 | `0x92643d...04a9c2` | ⚠️ Unaudited |
| x33 | unknown | project_anchor | own_supporting | 0 | sonic | unit-392506 | `0x333311...333333` | ⚠️ Unaudited |
| XShadow | unknown | project_anchor | own_supporting | 0 | sonic | unit-392510 | `0x5050bc...4b2424` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392498 | `0x0e03b0...690dcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-392500 | `0x1a99e5...1b1d74` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | matched | 10 | 4 | 0 | 15 | high |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2501] cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e — matched: Extracted contract names from findings and file paths mentioned in the report. No explicit scope section found, but contracts are clearly referenced as part of the audited codebase.
- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [2503] diligence.security/audits/2024/08/ramses-v3 — matched: The audit report explicitly lists six contracts in scope: RamsesV3PoolDeployer, RamsesV3Factory, RamsesV3Pool, Oracle, Tick, and Position. The audit was conducted from July to September 2024, with the extension into September, so the end date is September 30, 2024.
- [15349] code4rena.com/reports/2024-10-ramses-exchange — matched: Extracted 6 contracts from scope and findings. Audit date from report title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | AccessHub | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e7a9e...e8e37f` — deployed 2024-12-27 05:22:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactory | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactoryStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Etherex | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeCollector | own contract | FeeCollector (selected) `0xcc0365...f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributor | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributorFactory | own contract | FeeDistributorFactory (selected) `0x29adf0...847ff5` — deployed 2025-01-15 20:56:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Gauge | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Minter | own contract | Minter (selected) `0xc7022f...7f3765` — deployed 2025-01-15 20:56:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa3...f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c...0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Pair | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | PositionKey | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesTreasuryHelper | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Pool | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc1...142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PositionManager | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | REX33 | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RewardValidator | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoteModule | own contract | VoteModule (selected) `0xdcb5a2...b666b4` — deployed 2025-01-15 21:35:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Voter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x9f5939...b0062d` — deployed 2025-02-26 12:46:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterGovernanceActions | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterStorage | unmatched — not counted | — | mentioned in findings | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | XRex | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x8bbdc1...142d59` — deployed 2024-12-27 05:25:16+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x452f37...b6968c` — deployed 2025-02-26 12:46:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and mentioned in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0xcc0365...f8d27f` — deployed 2025-01-15 22:06:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xcd2d06...8de6d7` — deployed 2024-12-27 05:25:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | ambiguous — not counted | NonfungiblePositionManager (proxy) (alternative) `0xa57fa3...f1542e` — deployed 2024-12-27 05:34:40+03 — liveness: live (current_address_book_code)<br>NonfungiblePositionManager (proxy) (alternative) `0x12e66c...0f4406` — deployed 2025-01-01 11:07:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2024-10-ramses-exchange | Oracle | unmatched — not counted | — | Referenced in code and findings as Oracle library. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x5712bd...bf37c1` | FeeRecipientFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8cf82d...1299e9` | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5555b2...ee5555` | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3ec4fc...dbfc7f` | LauncherPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x12e66c...0f4406` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa57fa3...f1542e` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xdaa4b0...2c4607` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2da25e...6374c8` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3003b4...d79dc7` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x219b7a...07535a` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1d3687...330cdc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3333b9...a33333` | Shadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4577d5...83df50` | ShadowTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5543c6...e2d695` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x095bbc...202e14` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x92643d...04a9c2` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x333311...333333` | x33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x5050bc...4b2424` | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 20 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=14

Zero-match audit list:

- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
