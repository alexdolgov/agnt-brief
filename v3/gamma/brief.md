# Agentic Audit Brief: Gamma

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Gamma (`gamma`)
- Website: [https://www.gamma.xyz](https://www.gamma.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon, unichain
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 1/16 confirmed own live verified implementations (6.3%); conservative 6.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,761,288.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gamma. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, base, bsc, ethereum, polygon, unichain. Structural roles: 11 supporting, 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (11), core (5)
- Contract kinds: contract (16)
- Detected standards: ownable (9), accesscontrol (5), erc165 (5), pausable (4), erc20 (2), erc20permit (1)
- Frameworks: openzeppelin (16), foundry (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4006be...93dc25`, chain 1)
- Gamma (`0x6bea7c...44e197`, chain 1)
- LimitOrderHook (`0xa9bc29...6f80c0`, chain 56)
- LimitOrderHook (`0x2016c0...da40c0`, chain 130)
- LimitOrderHook (`0xc773b9...fc00c0`, chain 137)
- LimitOrderHook (`0x9d11f9...7ec0c0`, chain 8453)
- LimitOrderHook (`0xd73339...6500c0`, chain 42161)
- LimitOrderLens (`0x86c495...0dac37`, chain 56)
- LimitOrderLens (`0x979012...d019eb`, chain 130)
- LimitOrderLens (`0xc8da58...5f6959`, chain 137)
- LimitOrderLens (`0x1e18a5...a7689d`, chain 8453)
- LimitOrderLens (`0xaea3a2...1044d4`, chain 42161)
- LimitOrderManager (`0x8a79be...de29ee`, chain 130)
- LimitOrderManager (`0xa566a5...d92253`, chain 137)
- LimitOrderManager (`0xc7dfb6...7be3c1`, chain 8453)
- LimitOrderManager (`0x464efb...965ae5`, chain 42161)
- xGamma (`0x268050...747d8c`, chain 1)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/16 (6.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/16
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/gamma/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 6.3% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 6.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| xGamma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240941 | `0x268050...747d8c` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Gamma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240943 | `0x6bea7c...44e197` | ⚠️ Unaudited |
| LimitOrderHook | unknown | project_anchor | own_supporting | 0 | bsc | unit-240954 | `0xa9bc29...6f80c0` | ⚠️ Unaudited |
| LimitOrderHook | unknown | project_anchor | own_supporting | 0 | unichain | unit-240944 | `0x2016c0...da40c0` | ⚠️ Unaudited |
| LimitOrderHook | unknown | project_anchor | own_supporting | 0 | polygon | unit-240948 | `0xc773b9...fc00c0` | ⚠️ Unaudited |
| LimitOrderHook | unknown | project_anchor | own_supporting | 0 | base | unit-240956 | `0x9d11f9...7ec0c0` | ⚠️ Unaudited |
| LimitOrderHook | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240952 | `0xd73339...6500c0` | ⚠️ Unaudited |
| LimitOrderLens | periphery | project_anchor | own_supporting | 0 | bsc | unit-240953 | `0x86c495...0dac37` | ⚠️ Unaudited |
| LimitOrderLens | periphery | project_anchor | own_supporting | 0 | unichain | unit-240946 | `0x979012...d019eb` | ⚠️ Unaudited |
| LimitOrderLens | periphery | project_anchor | own_supporting | 0 | polygon | unit-240949 | `0xc8da58...5f6959` | ⚠️ Unaudited |
| LimitOrderLens | periphery | project_anchor | own_supporting | 0 | base | unit-240955 | `0x1e18a5...a7689d` | ⚠️ Unaudited |
| LimitOrderLens | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-240951 | `0xaea3a2...1044d4` | ⚠️ Unaudited |
| LimitOrderManager | governance | project_anchor | own_supporting | 0 | unichain | unit-240945 | `0x8a79be...de29ee` | ⚠️ Unaudited |
| LimitOrderManager | governance | project_anchor | own_supporting | 0 | polygon | unit-240947 | `0xa566a5...d92253` | ⚠️ Unaudited |
| LimitOrderManager | governance | project_anchor | own_supporting | 0 | base | unit-240957 | `0xc7dfb6...7be3c1` | ⚠️ Unaudited |
| LimitOrderManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-240950 | `0x464efb...965ae5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240942 | `0x4006be...93dc25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [AE_Gamma_audit_09_03_22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/AE_Gamma_audit_09_03_22.pdf) | Arbitrary Execution | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [Bailsec - Gamma - Vaults - Final Report.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/Bailsec%20-%20Gamma%20-%20Vaults%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [ConsenSys-Diligence-Audit-28-03-22.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/ConsenSys-Diligence-Audit-28-03-22.pdf) | Consensys Diligence | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Gamma_Position_Managers_report.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/Gamma_Position_Managers_report.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [REP-Hypervisor-2021-07-07.pdf](https://github.com/GammaStrategies/hypervisor/blob/master/audits/REP-Hypervisor-2021-07-07.pdf) | REP | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Gamma_LimitOrders_Report.pdf](https://github.com/GammaStrategies/gamma-univ4-limit-order-hook/blob/main/audits/Gamma_LimitOrders_Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [report-competition-gamma.pdf](https://github.com/GammaStrategies/gamma-univ4-limit-order-hook/blob/main/audits/report-competition-gamma.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Gamma_Gamma_MultiPositionManager_report.pdf](https://github.com/GammaStrategies/GammaV2/blob/main/audits/Gamma_Gamma_MultiPositionManager_report.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [immunefi.com/bug-bounty/gamma/information](https://immunefi.com/bug-bounty/gamma/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Gamma Security Review (Jan 2024).pdf](https://github.com/GammaStrategies/hypervisor/blob/master/Gamma%20Security%20Review%20(Jan%202024).pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8017] AE_Gamma_audit_09_03_22.pdf — no match: No reason recorded
- [8018] Bailsec - Gamma - Vaults - Final Report.pdf — no match: No reason recorded
- [8019] ConsenSys-Diligence-Audit-28-03-22.pdf — no match: No reason recorded
- [8020] Gamma_Position_Managers_report.pdf — no match: No reason recorded
- [8021] REP-Hypervisor-2021-07-07.pdf — no match: No reason recorded
- [8022] Gamma_LimitOrders_Report.pdf — no match: Extracted from the Audit Scope & Methodology section and findings references. The report lists the codebase URL and commit hashes, but the specific files in scope are inferred from the findings (LimitOrderManager.sol, LimitOrderHook.sol, PositionManagement.sol, TickLibrary.sol, CurrencySettler.sol). The audit date is the Final Report Date: April 14, 2025.
- [8023] report-competition-gamma.pdf — no match: No explicit scope section found; contracts inferred from findings and test setup. Date from cover page: 'May23,2025'.
- [8024] Gamma_Gamma_MultiPositionManager_report.pdf — no match: No reason recorded
- [15321] immunefi.com/bug-bounty/gamma/information — matched: No reason recorded
- [15324] Gamma Security Review (Jan 2024).pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| AE_Gamma_audit_09_03_22.pdf | Hypervisor | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | HypervisorFactory | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | HypervisorV3Migrator | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | IHypervisor | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | IUniProxy | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | IUniversalVault | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | IVault | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | Swap | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | UniProxy | unmatched — not counted | — | — | no |
| AE_Gamma_audit_09_03_22.pdf | admin | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | ClearingV3NFPM | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | Farming Module RewardCalculations | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | Hypervisor Module PositionValue | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | HypervisorNFPM | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | MultiFeeDistribution | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | PositionManagementLibrary | unmatched — not counted | — | — | no |
| Bailsec - Gamma - Vaults - Final Report.pdf | UniProxyETH | unmatched — not counted | — | — | no |
| ConsenSys-Diligence-Audit-28-03-22.pdf | Hypervisor | unmatched — not counted | — | — | no |
| ConsenSys-Diligence-Audit-28-03-22.pdf | UniProxy | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | ClearingV3 | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | ClearingV3NFPM | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | HypervisorNFPM | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | MultiFeeDistribution | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | MultiPositionManager | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | PoolManagerUtils | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | PositionManagementLibrary | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | PositionValue | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | RewardCalculations | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | UniProxyETH | unmatched — not counted | — | — | no |
| Gamma_Position_Managers_report.pdf | UniProxyV2 | unmatched — not counted | — | — | no |
| REP-Hypervisor-2021-07-07.pdf | Hypervisor.sol | unmatched — not counted | — | — | no |
| REP-Hypervisor-2021-07-07.pdf | HypervisorFactory.sol | unmatched — not counted | — | — | no |
| Gamma_LimitOrders_Report.pdf | LimitOrderManager | ambiguous — not counted | LimitOrderManager (alternative) `0xc7dfb6...7be3c1` — deployed 2025-05-26 01:40:15+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0x464efb...965ae5` — deployed 2025-06-02 23:36:29+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0x8a79be...de29ee` — deployed 2025-05-26 01:56:03+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0xa566a5...d92253` — deployed 2025-07-25 00:38:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Gamma_LimitOrders_Report.pdf | LimitOrderHook | ambiguous — not counted | LimitOrderHook (alternative) `0x2016c0...da40c0` — deployed 2025-05-26 01:58:27+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xa9bc29...6f80c0` — deployed 2025-09-01 22:11:09+03 — liveness: live (current_address_book_code)<br>LimitOrderHook (alternative) `0x9d11f9...7ec0c0` — deployed 2025-05-26 01:43:11+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xc773b9...fc00c0` — deployed 2025-07-25 00:41:42+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xd73339...6500c0` — deployed 2025-06-02 23:38:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Gamma_LimitOrders_Report.pdf | PositionManagement | unmatched — not counted | — | Listed in scope table and findings reference PositionManagement.sol | no |
| Gamma_LimitOrders_Report.pdf | TickLibrary | unmatched — not counted | — | Listed in scope table and findings reference TickLibrary.sol | no |
| Gamma_LimitOrders_Report.pdf | CurrencySettler | unmatched — not counted | — | Listed in scope table and findings reference CurrencySettler.sol | no |
| report-competition-gamma.pdf | LimitOrderManager | ambiguous — not counted | LimitOrderManager (alternative) `0xc7dfb6...7be3c1` — deployed 2025-05-26 01:40:15+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0x464efb...965ae5` — deployed 2025-06-02 23:36:29+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0x8a79be...de29ee` — deployed 2025-05-26 01:56:03+03 — liveness: live (code_present_context)<br>LimitOrderManager (alternative) `0xa566a5...d92253` — deployed 2025-07-25 00:38:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report-competition-gamma.pdf | LimitOrderHook | ambiguous — not counted | LimitOrderHook (alternative) `0x2016c0...da40c0` — deployed 2025-05-26 01:58:27+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xa9bc29...6f80c0` — deployed 2025-09-01 22:11:09+03 — liveness: live (current_address_book_code)<br>LimitOrderHook (alternative) `0x9d11f9...7ec0c0` — deployed 2025-05-26 01:43:11+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xc773b9...fc00c0` — deployed 2025-07-25 00:41:42+03 — liveness: live (code_present_context)<br>LimitOrderHook (alternative) `0xd73339...6500c0` — deployed 2025-06-02 23:38:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report-competition-gamma.pdf | LimitOrderLens | ambiguous — not counted | LimitOrderLens (alternative) `0xaea3a2...1044d4` — deployed 2025-09-04 22:15:14+03 — liveness: live (current_address_book_code)<br>LimitOrderLens (alternative) `0x979012...d019eb` — deployed 2025-09-04 22:12:45+03 — liveness: live (current_address_book_code)<br>LimitOrderLens (alternative) `0x86c495...0dac37` — deployed 2025-09-04 22:11:13+03 — liveness: live (current_address_book_code)<br>LimitOrderLens (alternative) `0xc8da58...5f6959` — deployed 2025-09-04 22:16:20+03 — liveness: live (current_address_book_code)<br>LimitOrderLens (alternative) `0x1e18a5...a7689d` — deployed 2025-09-04 21:55:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report-competition-gamma.pdf | TickLibrary | unmatched — not counted | — | imported and used in findings | no |
| report-competition-gamma.pdf | PositionManagement | unmatched — not counted | — | referenced in code snippets | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | DepositLogic | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | Errors | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | LBPDeploymentLib | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | MultiPositionDeployer | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | MultiPositionFactory | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | MultiPositionManager | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | Multicall | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | OrderBookFactory | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | PoolManagerUtils | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | PositionLogic | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | RebalanceLogic | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | Relayer | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | RelayerDeployer | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | RelayerFactory | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | RelayerLens | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | RelayerLogic | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | SharedStructs | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | SuperchainLBPStrategy | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | SuperchainLBPStrategyDeployer | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | SuperchainLBPStrategyFactory | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | TokenLaunchFactory | unmatched — not counted | — | — | no |
| Gamma_Gamma_MultiPositionManager_report.pdf | WithdrawLogic | unmatched — not counted | — | — | no |
| immunefi.com/bug-bounty/gamma/information | UniProxy | unmatched — not counted | — | — | no |
| immunefi.com/bug-bounty/gamma/information | xGamma | own contract | xGamma (selected) `0x268050...747d8c` — deployed 2021-12-26 22:32:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Gamma Security Review (Jan 2024).pdf | Clearing.sol | unmatched — not counted | — | — | no |
| Gamma Security Review (Jan 2024).pdf | ClearingV2.sol | unmatched — not counted | — | — | no |
| Gamma Security Review (Jan 2024).pdf | Uniproxy.sol | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6bea7c...44e197` | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa9bc29...6f80c0` | LimitOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x2016c0...da40c0` | LimitOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc773b9...fc00c0` | LimitOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9d11f9...7ec0c0` | LimitOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd73339...6500c0` | LimitOrderHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x86c495...0dac37` | LimitOrderLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x979012...d019eb` | LimitOrderLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc8da58...5f6959` | LimitOrderLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1e18a5...a7689d` | LimitOrderLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaea3a2...1044d4` | LimitOrderLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x8a79be...de29ee` | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa566a5...d92253` | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc7dfb6...7be3c1` | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x464efb...965ae5` | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 63 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [8017] AE_Gamma_audit_09_03_22.pdf
- [8018] Bailsec - Gamma - Vaults - Final Report.pdf
- [8019] ConsenSys-Diligence-Audit-28-03-22.pdf
- [8020] Gamma_Position_Managers_report.pdf
- [8021] REP-Hypervisor-2021-07-07.pdf
- [8022] Gamma_LimitOrders_Report.pdf
- [8023] report-competition-gamma.pdf
- [8024] Gamma_Gamma_MultiPositionManager_report.pdf
- [15324] Gamma Security Review (Jan 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
