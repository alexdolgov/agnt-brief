# Agentic Audit Brief: Superform

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Superform (`superform`)
- Website: [https://app.superform.xyz](https://app.superform.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, hyperliquid
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 7/9 confirmed own live verified implementations (77.8%); conservative 77.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,050,136.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Superform. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base, ethereum, hyperliquid. Structural roles: 5 core, 3 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), unclassified (1)
- Contract kinds: contract (9)
- Detected standards: erc20 (3), erc165 (2), ownable (2), accesscontrol (1), erc20permit (1), erc4626 (1), ownable2step (1)
- Frameworks: uniswap-v2 (7), openzeppelin-upgradeable (2), boringcrypto (1), chainlink (1), foundry (1), openzeppelin (1), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ECDSAPPSOracle (`0x366d88...f694f2`, chain 1)
- SuperBank (`0x6fcc6a...cb5d15`, chain 1)
- SuperGovernor (`0xb5396e...0e74d4`, chain 1)
- SuperOracle (`0x894312...5aa070`, chain 1)
- SuperVault (`0x2c71f7...94f417`, chain 8453)
- SuperVaultAggregator (`0x10ac0b...2d4698`, chain 1)
- Up (`0x1d926b...80bf33`, chain 1)
- UpOFT (`0x642ffc...9654fe`, chain 999)
- UpOFT (`0x5b2193...f8c86b`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/9 (77.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 9 of 21 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/9
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 55.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 7 | 77.8% | 2025-11 |
| GetRecon | Tier 2 | 5 | 55.6% | 2025-11 |
| Spearbit | Tier 1 | 5 | 55.6% | 2025-08 |
| sujithsomraaj | Tier 2 | 1 | 11.1% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ECDSAPPSOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257356 | `0x366d88...f694f2` | ✅ Audited |
| SuperBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257357 | `0x6fcc6a...cb5d15` | ✅ Audited |
| SuperGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-257359 | `0xb5396e...0e74d4` | ✅ Audited |
| SuperOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257358 | `0x894312...5aa070` | ✅ Audited |
| SuperVault | core_logic | project_anchor | own_supporting | 0 | base | unit-257360 | `0x2c71f7...94f417` | ✅ Audited |
| SuperVaultAggregator | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257354 | `0x10ac0b...2d4698` | ✅ Audited |
| Up | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257355 | `0x1d926b...80bf33` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UpOFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-257362 | `0x642ffc...9654fe` | ⚠️ Unaudited |
| UpOFT | unknown | project_anchor | own_supporting | 0 | base | unit-257361 | `0x5b2193...f8c86b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709c6...72ab79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1101ee...691e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e80aa...d52b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f289...8e5e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860ec9...7daaf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3a66...a5290e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3aa31...5f5b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d51a...88d1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf77f9...39053d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09106...7495be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf78c9a...c5c4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda77d...c9b5e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.08.22-orion.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.08.22-orion.pdf) | Orion Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2025.11.30-octane-security.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.30-octane-security.pdf) | Octane Security | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025.11.27-0xMacro.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.27-0xMacro.pdf) | 0xMacro | Audit | 2025-11 | fresh | Direct | n/a | matched | 7 | 0 | 0 | 17 | n/a |
| [2023-09-gerard-persoon.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-gerard-persoon.pdf) | Gerard Persoon | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [2023-09-hans-friese.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-09-hans-friese.pdf) | Hans Friese | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2023-12-cantina-competition.md](https://github.com/superform-xyz/superform-core/blob/main/security-review/2023-12-cantina-competition.md) | Spearbit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | medium |
| [report-cantinacode-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-cantinacode-superform.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [report-competition-superform.pdf](https://github.com/superform-xyz/superform-core/blob/main/security-review/report-competition-superform.pdf) | Unknown (competition) | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [2025.03.24-sujithsomraaj.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.03.24-sujithsomraaj.pdf) | sujithsomraaj | Audit | 2025-03 | aging | Direct | n/a | matched | 1 | 0 | 0 | 28 | n/a |
| [2025.04.19-cantinacode.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.04.19-cantinacode.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | n/a | matched | 1 | 0 | 0 | 31 | n/a |
| [2025.05.05-nodesecurity.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.05.05-nodesecurity.pdf) | nodesecurity | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2025.06.02-cantina-competition.pdf](https://github.com/superform-xyz/v2-core/blob/dev/audits/2025.06.02-cantina-competition.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [2025.06.30-cantinacode.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.06.30-cantinacode.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | matched | 4 | 0 | 0 | 10 | n/a |
| [2025.11.07-GetRecon.pdf](https://github.com/superform-xyz/v2-periphery/blob/dev/audits/2025.11.07-GetRecon.pdf) | GetRecon | Audit | 2025-11 | fresh | Direct | n/a | matched | 5 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3981] 2025.08.22-orion.pdf — no match: No reason recorded
- [3986] 2025.11.30-octane-security.pdf — no match: The report title states 'Security Analysis of Superform: v2-periphery (main)' and the only contract explicitly mentioned in findings is SuperVaultStrategy. No other contracts are listed in scope.
- [3987] 2025.11.27-0xMacro.pdf — matched: No reason recorded
- [14877] 2023-09-gerard-persoon.pdf — no match: Extracted contract names from the scope section and findings. The scope section lists repositories but not individual files; however, the findings reference specific .sol files which are assumed to be in scope. The audit date is explicitly stated as 'Date: 2023-11-03' at the top of the report.
- [14878] 2023-09-hans-friese.pdf — no match: Scope section states 'Everything in the src folder except vendor is in scope.' All contracts mentioned in findings are within src folder. Audit date is September 2, 2023 from cover page.
- [14879] 2023-12-cantina-competition.md — no match: No explicit scope section found; contract names extracted from findings context and file paths mentioned in the report.
- [14880] report-cantinacode-superform.pdf — no match: Only one contract (SuperFrens) is explicitly referenced in findings. No explicit scope section listing all contracts; the report mentions review of 'superrewards-contracts' but only SuperFrens.sol is cited.
- [14881] report-competition-superform.pdf — no match: Extracted contract names from findings context; no explicit scope section found. Date from cover page.
- [14882] 2025.03.24-sujithsomraaj.pdf — matched: No reason recorded
- [14883] 2025.04.19-cantinacode.pdf — matched: No reason recorded
- [14884] 2025.05.05-nodesecurity.pdf — no match: No reason recorded
- [14885] 2025.06.02-cantina-competition.pdf — no match: No reason recorded
- [14887] 2025.06.30-cantinacode.pdf — matched: No reason recorded
- [14888] 2025.11.07-GetRecon.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.08.22-orion.pdf | ApproveAndSwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | ChainAgnosticSafeSignatureValidation | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayAddDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayMinterHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | CircleGatewayRemoveDelegateHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Base | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | DeployV2Core | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | HookDataUpdater | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MarkRootAsUsedHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperValidator | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SuperYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.08.22-orion.pdf | SwapOdosV2Hook | unmatched — not counted | — | — | no |
| 2025.11.30-octane-security.pdf | SuperVaultStrategy | unmatched — not counted | — | listed in scope and findings reference file src/SuperVault/SuperVaultStrategy.sol | no |
| 2025.11.27-0xMacro.pdf | AssetMetadataLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | IECDSAPPSOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | IHookExecutionData | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperBank | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperGovernor | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracle | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVault | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultAggregator | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | ISuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a...cb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperOracleL2 | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultAccountingLib | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.27-0xMacro.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.11.27-0xMacro.pdf | Up | own contract | Up (selected) `0x1d926b...80bf33` — deployed 2025-06-16 23:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-gerard-persoon.pdf | CoreStateRegistry | unmatched — not counted | — | Listed in scope and findings reference CoreStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626FormImplementation | unmatched — not counted | — | Listed in scope and findings reference ERC4626FormImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiquidityHandler | unmatched — not counted | — | Listed in scope and findings reference LiquidityHandler.sol | no |
| 2023-09-gerard-persoon.pdf | PaymentHelper | unmatched — not counted | — | Listed in scope and findings reference PaymentHelper.sol | no |
| 2023-09-gerard-persoon.pdf | ERC1155A | unmatched — not counted | — | Listed in scope and findings reference ERC1155A.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRegistry | unmatched — not counted | — | Listed in scope and findings reference SuperRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | LayerzeroImplementation | unmatched — not counted | — | Listed in scope and findings reference LayerzeroImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | TimelockStateRegistry | unmatched — not counted | — | Listed in scope and findings reference TimelockStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | DataLib | unmatched — not counted | — | Listed in scope and findings reference DataLib.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeSRImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeSRImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | BaseStateRegistry | unmatched — not counted | — | Listed in scope and findings reference BaseStateRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | BroadcastRegistry | unmatched — not counted | — | Listed in scope and findings reference BroadcastRegistry.sol | no |
| 2023-09-gerard-persoon.pdf | SuperTransmuter | unmatched — not counted | — | Listed in scope and findings reference SuperTransmuter.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626KYCDaoForm.sol | no |
| 2023-09-gerard-persoon.pdf | DstSwapper | unmatched — not counted | — | Listed in scope and findings reference DstSwapper.sol | no |
| 2023-09-gerard-persoon.pdf | BaseForm | unmatched — not counted | — | Listed in scope and findings reference BaseForm.sol | no |
| 2023-09-gerard-persoon.pdf | FormBeacon | unmatched — not counted | — | Listed in scope and findings reference FormBeacon.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformFactory | unmatched — not counted | — | Listed in scope and findings reference SuperformFactory.sol | no |
| 2023-09-gerard-persoon.pdf | BaseRouterImplementation | unmatched — not counted | — | Listed in scope and findings reference BaseRouterImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiTxDataExtractor | unmatched — not counted | — | Listed in scope and findings reference LiFiTxDataExtractor.sol | no |
| 2023-09-gerard-persoon.pdf | LiFiValidator | unmatched — not counted | — | Listed in scope and findings reference LiFiValidator.sol | no |
| 2023-09-gerard-persoon.pdf | StandardizedCallFacet | unmatched — not counted | — | Listed in scope and findings reference StandardizedCallFacet.sol | no |
| 2023-09-gerard-persoon.pdf | SuperRBAC | unmatched — not counted | — | Listed in scope and findings reference SuperRBAC.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadHelper | unmatched — not counted | — | Listed in scope and findings reference PayloadHelper.sol | no |
| 2023-09-gerard-persoon.pdf | Transmuter | unmatched — not counted | — | Listed in scope and findings reference Transmuter.sol | no |
| 2023-09-gerard-persoon.pdf | SuperPositions | unmatched — not counted | — | Listed in scope and findings reference SuperPositions.sol | no |
| 2023-09-gerard-persoon.pdf | IBridgeValidator | unmatched — not counted | — | Listed in scope and findings reference IBridgeValidator.sol | no |
| 2023-09-gerard-persoon.pdf | SuperformRouter | unmatched — not counted | — | Listed in scope and findings reference SuperformRouter.sol | no |
| 2023-09-gerard-persoon.pdf | HyperlaneImplementation | unmatched — not counted | — | Listed in scope and findings reference HyperlaneImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | WormholeARImplementation | unmatched — not counted | — | Listed in scope and findings reference WormholeARImplementation.sol | no |
| 2023-09-gerard-persoon.pdf | PayloadUpdaterLib | unmatched — not counted | — | Listed in scope and findings reference PayloadUpdaterLib.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626Form | unmatched — not counted | — | Listed in scope and findings reference ERC4626Form.sol | no |
| 2023-09-gerard-persoon.pdf | ERC4626TimelockForm | unmatched — not counted | — | Listed in scope and findings reference ERC4626TimelockForm.sol | no |
| 2023-09-hans-friese.pdf | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseForm | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | BaseStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CelerImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | HyperlaneImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayMaster | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PaymentHelper | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SocketValidator | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformRouter | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | TwoStepsFormStateRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRBAC | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperformFactory | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | MultiTxProcessor | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | SuperPositions | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | FormBeacon | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | PayloadUpdaterLib | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-hans-friese.pdf | Error | unmatched — not counted | — | mentioned in findings context | no |
| 2023-12-cantina-competition.md | SuperformRouter | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseRouterImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | CoreStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626FormImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperPositions | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC1155A | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LayerzeroImplementation | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | LiFiValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | DstSwapper | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | EmergencyQueue | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperformFactory | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SuperRBAC | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | BaseStateRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | SocketValidator | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626Form | unmatched — not counted | — | mentioned in findings as audited contract | no |
| 2023-12-cantina-competition.md | ERC4626TimelockForm | unmatched — not counted | — | mentioned in findings as audited contract | no |
| report-cantinacode-superform.pdf | SuperFrens | unmatched — not counted | — | Context in findings: SuperFrens.sol | no |
| report-competition-superform.pdf | SuperPositions | unmatched — not counted | — | mentioned in finding 3.1.1 | no |
| report-competition-superform.pdf | ERC1155A | unmatched — not counted | — | mentioned in finding 3.1.2 | no |
| report-competition-superform.pdf | BaseRouterImplementation | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| report-competition-superform.pdf | ERC4626KYCDaoForm | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| report-competition-superform.pdf | CoreStateRegistry | unmatched — not counted | — | mentioned in finding 3.2.1 | no |
| report-competition-superform.pdf | ERC4626FormImplementation | unmatched — not counted | — | mentioned in finding 3.2.3 | no |
| report-competition-superform.pdf | SuperformRouter | unmatched — not counted | — | mentioned in finding 3.2.8 | no |
| report-competition-superform.pdf | LiFiValidator | unmatched — not counted | — | mentioned in finding 3.2.9 | no |
| report-competition-superform.pdf | DstSwapper | unmatched — not counted | — | mentioned in finding 3.2.10 | no |
| report-competition-superform.pdf | LiquidityHandler | unmatched — not counted | — | mentioned in finding 3.2.13 | no |
| 2025.03.24-sujithsomraaj.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | BasePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Deposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC1155Ledger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidStakeWithPermitHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | ISuperLedger | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | PeripheryRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistry | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SuperRegistryImplementer | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | Withdraw4626VaultHook | unmatched — not counted | — | — | no |
| 2025.03.24-sujithsomraaj.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossReceiveFundsAndExecuteGateway | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | AcrossTargetExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndRequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Deposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | FluidYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxUnstakeHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | GearboxYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | HookDataDecoder | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | PaymasterGasCalculator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | StakingYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SuperOracle | own contract | SuperOracle (selected) `0x894312...5aa070` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.04.19-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | TransferERC20Hook | unmatched — not counted | — | — | no |
| 2025.04.19-cantinacode.pdf | Withdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | DebridgeAdapter | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.05.05-nodesecurity.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AbstractYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | AcrossSendFundsAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndDeposit4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndRedeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndSwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveAndWithdraw7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ApproveERC20Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BaseLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | BatchTransferFromHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ClaimCancelRedeemRequest7540Hook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | DeBridgeSendOrderAndExecuteOnDstHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Deposit5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC4626YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | ERC5115YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaCooldownSharesHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | EthenaUnstakeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FlatFeeLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | FluidClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | GearboxClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoBorrowHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayAndWithdrawHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | MorphoRepayHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendlePTYieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | PendleRouterSwapHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem4626VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Redeem5115VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SpectraExchangeHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperBundler | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperDestinationValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutor | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperExecutorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedger | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperLedgerConfiguration | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperMerkleValidator | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperNativePaymaster | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperPosition | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SuperValidatorBase | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | SwapOdosHook | unmatched — not counted | — | — | no |
| 2025.06.02-cantina-competition.pdf | YearnClaimOneRewardHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndFluidStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ApproveAndGearboxStakeHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BaseHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | BundlerRegistry | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | RequestDeposit7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | RequestRedeem7540VaultHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.06.30-cantinacode.pdf | SuperVaultEscrow | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | Swap1InchHook | unmatched — not counted | — | — | no |
| 2025.06.30-cantinacode.pdf | UpDistributor | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | Bank | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ECDSAPPSOracle | own contract | ECDSAPPSOracle (selected) `0x366d88...f694f2` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | ERC4626YieldOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | ERC7540YieldSourceOracle | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | MerklClaimRewardHook | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperBank | own contract | SuperBank (selected) `0x6fcc6a...cb5d15` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperGovernor | own contract | SuperGovernor (selected) `0xb5396e...0e74d4` — deployed 2025-12-01 21:45:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperOracleBase | unmatched — not counted | — | — | no |
| 2025.11.07-GetRecon.pdf | SuperVault | own contract | SuperVault (selected) `0x2c71f7...94f417` — deployed 2026-01-16 12:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultAggregator | own contract | SuperVaultAggregator (selected) `0x10ac0b...2d4698` — deployed 2025-12-01 21:45:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.11.07-GetRecon.pdf | SuperVaultStrategy | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x642ffc...9654fe` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5b2193...f8c86b` | UpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 247 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=3
- Match method counts: unique_name=18

Zero-match audit list:

- [3981] 2025.08.22-orion.pdf
- [3986] 2025.11.30-octane-security.pdf
- [14877] 2023-09-gerard-persoon.pdf
- [14878] 2023-09-hans-friese.pdf
- [14879] 2023-12-cantina-competition.md
- [14880] report-cantinacode-superform.pdf
- [14881] report-competition-superform.pdf
- [14884] 2025.05.05-nodesecurity.pdf
- [14885] 2025.06.02-cantina-competition.pdf

Fork inheritance lineage and inherited audits are included when available.
