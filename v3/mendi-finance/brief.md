# Agentic Audit Brief: Mendi Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 28 unique implementations (29 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,546,416.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Mendi Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across linea. Structural roles: 40 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (40)
- Contract kinds: contract (39), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BribeV2 (`0xec9453...cc0f5a`, chain 59144)
- GnosisSafeProxy (`0xe3cda0...aee9ee`, chain 59144)
- LGEDepositor (`0x8f1b13...49f14d`, chain 59144)
- Mendi (`0x43e880...44065f`, chain 59144)
- MendiLoyaltyPoint (`0xea5747...b7eb52`, chain 59144)
- MixedPriceOracleV2 (`0xc23f48...e24433`, chain 59144)
- OwnedDistributor (`0x5df210...2bc434`, chain 59144)
- OwnedDistributor (`0x716f2d...1053f5`, chain 59144)
- Pair (`0xe5e19b...7bf567`, chain 59144)
- TimelockController (`0x6c81d7...b26902`, chain 59144)
- TransparentUpgradeableProxy (`0x109f4a...29362a`, chain 59144)
- TransparentUpgradeableProxy (`0x150b1e...4921ca`, chain 59144)
- TransparentUpgradeableProxy (`0x1f27f8...9869aa`, chain 59144)
- TransparentUpgradeableProxy (`0x333d8b...e1b30d`, chain 59144)
- TransparentUpgradeableProxy (`0x384be0...1546ea`, chain 59144)
- TransparentUpgradeableProxy (`0x8a90d2...074a67`, chain 59144)
- TransparentUpgradeableProxy (`0x9b4971...0753b5`, chain 59144)
- TransparentUpgradeableProxy (`0x9be5e2...88a40f`, chain 59144)
- TransparentUpgradeableProxy (`0xad7f33...fee6f3`, chain 59144)
- TransparentUpgradeableProxy (`0xceed85...86a782`, chain 59144)
- TransparentUpgradeableProxy (`0xcf8ded...284486`, chain 59144)
- TransparentUpgradeableProxy (`0xf669c3...300e89`, chain 59144)
- Unitroller (`0x1b4d3b...b93103`, chain 59144)

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 40; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 27 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 29
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BribeV2 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400475 | `0xec9453...cc0f5a` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400485 | `0x109f4a...29362a` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400489 | `0x1f27f8...9869aa` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400487 | `0x333d8b...e1b30d` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400482 | `0x8a90d2...074a67` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400490 | `0x9b4971...0753b5` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400480 | `0x9be5e2...88a40f` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400483 | `0xad7f33...fee6f3` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400478 | `0xceed85...86a782` | ⚠️ Unaudited |
| CErc20Upgradable | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400486 | `0xf669c3...300e89` | ⚠️ Unaudited |
| Comptroller | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400479 | 2 deployments: linea `0x1a1166...c3d9e3`; linea `0x1b4d3b...b93103` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400481 | `0xe3cda0...aee9ee` | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400468 | `0x62c31a...5c02d0` | ⚠️ Unaudited |
| LGEDepositor | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400471 | `0x8f1b13...49f14d` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400466 | `0x55231f...9e9144` | ⚠️ Unaudited |
| Mendi | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400465 | `0x43e880...44065f` | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400474 | `0xea5747...b7eb52` | ⚠️ Unaudited |
| MixedPriceOracleV2 | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400472 | `0xc23f48...e24433` | ⚠️ Unaudited |
| MixedPriceOracleV4 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-400463 | `0x16f866...c90fbd` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400467 | `0x5df210...2bc434` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400470 | `0x716f2d...1053f5` | ⚠️ Unaudited |
| Pair | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400473 | `0xe5e19b...7bf567` | ⚠️ Unaudited |
| ReserveManagerV2 | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400488 | `0x384be0...1546ea` | ⚠️ Unaudited |
| RewardDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400476 | `0x3b9b93...013d40` | ⚠️ Unaudited |
| StakedDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400477 | `0x150b1e...4921ca` | ⚠️ Unaudited |
| StakedDistributor | unknown | unclassified_address_book | needs_review (excluded) | 1 | linea | unit-400484 | `0xcf8ded...284486` | ⚠️ Unaudited |
| TimelockController | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400469 | `0x6c81d7...b26902` | ⚠️ Unaudited |
| VesterCliff | unknown | unclassified_address_book | needs_review (excluded) | 0 | linea | unit-400464 | `0x2938b0...495741` | ⚠️ Unaudited |

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
| [2025_10_06_Sherlock_Competition.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [VAR_Malda_250120_malda_lending_V5.pdf](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [audit-reports.md](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [VAR_Malda_250120_malda_zkcoprocessor.pdf](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [veridise.com/audits-archive/company/malda/malda-lending-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-lending-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20](https://veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20) | Veridise | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2930] 2025_10_06_Sherlock_Competition.pdf — no match: Extracted contract names from the scope section listing files in two repositories. The audit date is the end date of the audit period (July 24 - August 14, 2025).
- [2931] VAR_Malda_250120_malda_lending_V5.pdf — no match: Extracted contracts from scope sections and file paths. Excluded contracts (Counter, BytesLib, CREATE3, ChainlinkOracle, LZMessageOnlyBridge) are noted but included in extracted_names for completeness. Audit date from cover page.
- [2932] audit-reports.md — no match: The provided text is an index page listing audit reports but does not contain the actual audit report content. No contract names or scope details are present.
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf — no match: The report focuses on Rust programs and zkVM circuits, not smart contracts. No contract names are explicitly listed in scope.
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 — no match: The report describes two assessments. The first assessment scope is the entire src/ folder excluding some files. The second assessment scope is limited to specific files listed. The extracted names are from the second assessment scope, which is explicitly listed. The audit completion date is May 20, 2025.
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20 — no match: The scope lists directories of Rust source code, not individual smart contract files. No contract names were identifiable from the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025_10_06_Sherlock_Competition.pdf | IOperator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IRebalancer | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IRewardDistributor | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | SafeApprove | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | IMigrator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenGateway | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Host | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Immutable | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mErc20Upgradable | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mToken | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | mTokenStorage | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Operator | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | OperatorStorage | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | MixedPriceOracleV3 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | MixedPriceOracleV4 | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | AcrossBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | BaseBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ConnextBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | EverclearBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | LZBridge | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ExponentialNoError | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | WrapAndSupply | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | ZkVerifier | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | constants | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | elfs_ids | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | lib | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | viewcalls | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | cryptography | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | types | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | validators | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | build | unmatched — not counted | — | listed in scope | no |
| 2025_10_06_Sherlock_Competition.pdf | get_proof_data | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Operator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Unit | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20Host | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mToken | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenGateway | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenConfiguration | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenStorage | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Rebalancer | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BaseBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ConnextBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | EverclearBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | LZMessageOnlyBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | AcrossBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | LZBridge | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | JumpRateModelV4 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | MixedPriceOracleV3 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ZkVerifier | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | OperatorStorage | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mErc20Upgradeable | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | mTokenProofDecoderLib | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IOperator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImTokenGateway | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImErc20Host | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IRoles | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ImTokenMinimal | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IOracleOperator | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IRewardDistributorData | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | IDefaultAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | ILayerZeroReceiverV2 | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Bytes32AddressLib | unmatched — not counted | — | listed in scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | BytesLib | unmatched — not counted | — | excluded from scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | CREATE3 | unmatched — not counted | — | excluded from scope | no |
| VAR_Malda_250120_malda_lending_V5.pdf | Counter | unmatched — not counted | — | excluded from scope | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | Operator | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | OperatorStorage | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | IOperator | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ImTokenGateway | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ImErc20Host | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mErc20Host | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | BatchSubmitter | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenGateway | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenStorage | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | ZkVerifier | unmatched — not counted | — | listed in scope for second assessment | no |
| veridise.com/audits-archive/company/malda/malda-lending-2025-05-20 | mTokenProofDecoderLib | unmatched — not counted | — | listed in scope for second assessment | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 91 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: n/a

Zero-match audit list:

- [2930] 2025_10_06_Sherlock_Competition.pdf
- [2931] VAR_Malda_250120_malda_lending_V5.pdf
- [2932] audit-reports.md
- [2933] VAR_Malda_250120_malda_zkcoprocessor.pdf
- [14778] veridise.com/audits-archive/company/malda/malda-lending-2025-05-20
- [14779] veridise.com/audits-archive/company/malda/malda-zk-coprocessor-2025-05-20

Fork inheritance lineage and inherited audits are included when available.
