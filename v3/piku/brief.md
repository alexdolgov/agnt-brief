# Agentic Audit Brief: Piku Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Piku Finance (`piku`)
- Website: [https://piku.co/](https://piku.co/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,681,859.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Piku Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 8 core, 3 supporting, 2 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (8), supporting (3), unclassified (2)
- Contract kinds: contract (13)
- Detected standards: erc20 (6), erc20permit (3), erc4626 (2), ownable (2), accesscontrol (1), erc165 (1), erc1967proxy (1), multicall (1), ownable2step (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- PendleMarketV7 (`0x6354b7...7dcec4`, chain 1)
- PendlePrincipalToken (`0x3ffaa9...04d129`, chain 1)
- PendleYieldToken (`0xacd577...fdd6be`, chain 1)
- PIKU (`0x2e4039...c02dc3`, chain 1)
- StakedPikuV2 (`0x5da17c...839df8`, chain 1)
- TransparentUpgradeableProxy (`0xf51453...62a2d9`, chain 1)
- VaultV2 (`0x153bd1...d64a57`, chain 1)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (8 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 8 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omega Security | Tier 2 | 1 | 12.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20IssuanceUpgradeable_Blacklist_v1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251262 | `0x098697...e95fe6` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AUT_Roles_v1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251259 | `0x2f7656...7c2fb3` | ⚠️ Unaudited |
| FM_PC_Oracle_Redeeming_v1 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251264 | `0x7e0305...f9a797` | ⚠️ Unaudited |
| LM_Oracle_Permissioned_v1 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251261 | `0x433471...b33552` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-251260 | `0xf51453...62a2d9` | ⚠️ Unaudited |
| PendleMarketV7 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251257 | `0x6354b7...7dcec4` | ⚠️ Unaudited |
| PendlePrincipalToken | token | project_anchor | own_supporting | 0 | ethereum | unit-251255 | `0x3ffaa9...04d129` | ⚠️ Unaudited |
| PendleYieldToken | token | project_anchor | own_supporting | 0 | ethereum | unit-251258 | `0xacd577...fdd6be` | ⚠️ Unaudited |
| PIKU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251254 | `0x2e4039...c02dc3` | ⚠️ Unaudited |
| PP_Queue_ManualExecution_v1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251263 | `0x5a2d08...0f6fd2` | ⚠️ Unaudited |
| StakedPikuV2 | token | project_anchor | own_supporting | 0 | ethereum | unit-251256 | `0x5da17c...839df8` | ⚠️ Unaudited |
| VaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251253 | `0x153bd1...d64a57` | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view](https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view) | Omega Security | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [report.md](https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [2024-06-19-macro.pdf](https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 28 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1965] drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view — matched: Extracted 5 contract names from the 'Code under review' section with file paths and commit hash.
- [1967] report.md — no match: No reason recorded
- [11968] 2024-06-19-macro.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | ERC20IssuanceUpgradeable_Blacklist_v1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x098697...e95fe6` — deployed 2025-08-22 12:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | FM_PC_Oracle_Redeeming_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | LM_Oracle_Permissioned_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | PP_Queue_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | PP_Queue_ManualExecution_v1 | unmatched — not counted | — | listed in scope | no |
| 2024-06-19-macro.pdf | AUT_Roles_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | AUT_TokenGated_Roles_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | BancorFormula | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | BondingCurveBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ERC20Issuance_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ERC20PaymentClientBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | FM_BC_Bancor_Redeeming_VirtualSupply_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | FeeManager_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Governor_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | InverterBeaconProxy_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | InverterBeacon_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LM_PC_KPIRewarder_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LM_PC_Staking_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LibMetadata | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ModuleFactory_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ModuleManagerBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Module_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | OptimisticOracleIntegrator | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | OrchestratorFactory_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Orchestrator_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | PP_Simple_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | PP_Streaming_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | RedeemingBondingCurveBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | SafeMath | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | TransactionForwarder_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Utils | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | VirtualCollateralSupplyBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | VirtualIssuanceSupplyBase_v1 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2e4039...c02dc3` | PIKU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5da17c...839df8` | StakedPikuV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x153bd1...d64a57` | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [1967] report.md
- [11968] 2024-06-19-macro.pdf

Fork inheritance lineage and inherited audits are included when available.
