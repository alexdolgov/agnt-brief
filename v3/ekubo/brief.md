# Agentic Audit Brief: Ekubo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 16 (1 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: Ekubo (`ekubo`)
- Website: [https://ekubo.org/](https://ekubo.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 31 unique implementations (31 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,683,454.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ekubo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across ethereum, sepolia. Structural roles: 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), supporting (3)
- Contract kinds: contract (8)
- Detected standards: multicall (3), erc165 (1), erc20 (1), erc20permit (1), erc721 (1), ownable (1)
- Frameworks: solady (6), foundry (2), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EkuboToken (`0x04c46e830bb56ce22735d5d8fc9cb90309317d0f`, chain 1)
- StarknetOwnerProxy (`0x1e0ef4162e42c9bf820c307218c4e41ccca6e9cc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (2 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 26 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 31 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 5 fresh, 7 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cairo Security Clan | Tier 2 | 1 | 11.1% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StarknetOwnerProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384180 | `0x1e0ef4162e42c9bf820c307218c4e41ccca6e9cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000000014aa86c5d3c41765bb24e11bd701` | ⚠️ Unaudited |
| Core | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384193 | `0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444` | ⚠️ Unaudited |
| EkuboToken | token | project_anchor | own_supporting | 0 | ethereum | unit-384178 | `0x04c46e830bb56ce22735d5d8fc9cb90309317d0f` | ⚠️ Unaudited |
| MEVResistRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384179 | `0x0c95ea31e4501b3b879cae2232087e478d44aeab` | ⚠️ Unaudited |
| Positions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384190 | `0xa37cc341634afd9e0919d334606e676dbab63e17` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384189 | `0x9995855c00494d039ab6792f18e368e530dff931` | ⚠️ Unaudited |
| TokenWrapperFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384183 | `0x2b8d80d891c1e20aca70ff8a85714aa1900ab120` | ⚠️ Unaudited |
| TokenWrapperPeriphery | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384182 | `0x2992e49d73cc97fbc69c5498f332984c9a89f5d6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384181 | `0x208bb00c6b142351e4a431f6dd323691ebb7c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e3fdc259a4a8b0775d25b3f9396e0ea6e110a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384184 | `0x514d5de68852628af2f1236f780866989660ada6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384185 | `0x51d02a5948496a67827242eabc5725531342527c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384186 | `0x553a2efc570c9e104942cec6ac1c18118e54c091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384187 | `0x5a9093673cdc9f7cae8b0d177797040b758205be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618c25b11a5e9b5ad60b04bb64fcbdfbad7621d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384188 | `0x91cb8a896caf5e60b1f7c4818730543f849b408c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384191 | `0xae1430e3e089794beacba260657fcd0f0967c18a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384192 | `0xd4279c050da1f5c5b2830558c7a08e57e12b54ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384194 | `0x0c95ea31e4501b3b879cae2232087e478d44aeab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384195 | `0x2992e49d73cc97fbc69c5498f332984c9a89f5d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384196 | `0x2b8d80d891c1e20aca70ff8a85714aa1900ab120` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384197 | `0x36e3fdc259a4a8b0775d25b3f9396e0ea6e110a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384198 | `0x514d5de68852628af2f1236f780866989660ada6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384199 | `0x553a2efc570c9e104942cec6ac1c18118e54c091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384200 | `0x618c25b11a5e9b5ad60b04bb64fcbdfbad7621d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384201 | `0x9995855c00494d039ab6792f18e368e530dff931` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384202 | `0xa37cc341634afd9e0919d334606e676dbab63e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384203 | `0xae1430e3e089794beacba260657fcd0f0967c18a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384204 | `0xd4279c050da1f5c5b2830558c7a08e57e12b54ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-384205 | `0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 0
- Live contracts: 0
- Unknown liveness contracts: 0
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: none

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ekubo_Governance_L1_Proxy.pdf](https://github.com/EkuboProtocol/governance/blob/main/l1_proxy/Ekubo_Governance_L1_Proxy.pdf) | Cairo Security Clan | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [Code4rena x Ekubo audit report 2025-11.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Code4rena%20x%20Ekubo%20audit%20report%202025-11.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [Ekubo-Auctions-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Auctions-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Ekubo-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [SignedExclusiveSwap-Extension-Audit.md](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/SignedExclusiveSwap-Extension-Audit.md) | Unknown | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [ve33-audit-invariant-verification.md](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/ve33-audit-invariant-verification.md) | Unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [ve33-audit-invariants.md](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/ve33-audit-invariants.md) | Unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [plainshift ekubo.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FpJYdg1jp3g9ut87p5Emq%2Fplainshift%20ekubo.pdf) | Plainshift | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [NM0123_EKUBO_FINAL_PUBLIC.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FQRpaG8UbUhVThiOUpCEo%2FNM0123_EKUBO_FINAL_PUBLIC.pdf) | Nethermind | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [NM0205_EKUBO_TWAMM.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FYQSqaiRS0PJCjMb01laE%2FNM0205_EKUBO_TWAMM.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [NM_0282_FINAL_Ekubo_Revenue_Buybacks.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FRlH3JYzOLne0Yi9K9TDg%2FNM_0282_FINAL_Ekubo_Revenue_Buybacks.pdf) | Nethermind | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Ekubo EVM Deployment Plainshift Audit.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FwOLy0F8Kln2qG2ZFyc3V%2FEkubo%20EVM%20Deployment%20Plainshift%20Audit.pdf) | Plainshift | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ABDK_Ekubo_EkuboProtocol_v_1_0.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2FIEez2iqmq6I9MoOf6tQE%2FABDK_Ekubo_EkuboProtocol_v_1_0.pdf) | ABDK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [ABDK_Ekubo_InvariantAnalysis_v_1_0.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2F5lHIaxebizbUqCjxg0Qo%2FABDK_Ekubo_InvariantAnalysis_v_1_0.pdf) | ABDK | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ABDK_Ekubo_TWAMM_v_1_0.pdf](https://315464330-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FTLfgXtzlwI2fzDVFEifT%2Fuploads%2Fz1aJ3uS9FgNNSb3K2a1D%2FABDK_Ekubo_TWAMM_v_1_0.pdf) | ABDK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1821] Ekubo_Governance_L1_Proxy.pdf — matched: No reason recorded
- [1822] Code4rena x Ekubo audit report 2025-11.pdf — no match: No reason recorded
- [1823] Ekubo-Auctions-Riley-Holterhus-Audit.pdf — no match: Scope explicitly lists Auctions.sol, auctionKey.sol, and auctionConfig.sol. TWAMM and BoostedFees are mentioned as utilized extensions but not in scope.
- [1824] Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf — no match: Scope section explicitly lists SavedBalancesWrapper, FreePositions, BoostedFees, ManualPoolBooster, BoostedFeesDataFetcher, and BoostedFeesLib as in scope.
- [1825] Ekubo-Riley-Holterhus-Audit.pdf — no match: No reason recorded
- [26784] SignedExclusiveSwap-Extension-Audit.md — no match: Extracted from the Scope section and supporting files list. The audit date is explicitly given in the header.
- [26785] ve33-audit-invariant-verification.md — no match: Document is an invariant verification report, not a formal audit report. No explicit scope section or audit date found. Contract names extracted from 'primary implementation evidence' list and file paths.
- [26786] ve33-audit-invariants.md — no match: Extracted contract names from the 'Reviewed Sources' section of the audit invariants document. No audit date found in the provided text.
- [26787] plainshift ekubo.pdf — no match: Extracted contract names from findings targets and scope section. Audit date from cover page and timeline.
- [26788] NM0123_EKUBO_FINAL_PUBLIC.pdf — no match: Extracted 37 contract names from the 'Audited Files' table in Section 2. The audit date is the Final Report date (Mar 22, 2024) from the Summary of the Audit box.
- [26789] NM0205_EKUBO_TWAMM.pdf — no match: Extracted contract names from audited files table and system overview sections. Audit date from cover page and final report date.
- [26790] NM_0282_FINAL_Ekubo_Revenue_Buybacks.pdf — no match: Only one contract in scope: revenue_buybacks. The lib.cairo file is also listed but is a library, not a contract. Audit date from final report date.
- [26791] Ekubo EVM Deployment Plainshift Audit.pdf — no match: Scope section lists repository and file pattern src/**/*.sol. Contract names extracted from findings targets and file references.
- [26792] ABDK_Ekubo_EkuboProtocol_v_1_0.pdf — no match: Extracted contract names from the 'Project scope' section listing files and from findings referencing specific files. The audit date is from the cover page: '1st April 2025'.
- [26793] ABDK_Ekubo_InvariantAnalysis_v_1_0.pdf — no match: The report analyzes the Ekubo protocol's TWAMM math and invariants, but does not list specific contract names or source files in scope. No contracts are explicitly named as audited targets.
- [26794] ABDK_Ekubo_TWAMM_v_1_0.pdf — no match: Scope section lists 7 files: Orders.sol, math/twamm.sol, math/timeBitmap.sol, math/time.sol, libraries/TWAMMLib.sol, lens/TWAMMDataFetcher.sol, extensions/TWAMM.sol. Audit date from changelog: 27.04.25 (27th April 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ekubo_Governance_L1_Proxy.pdf | StarknetOwnerProxy | own contract | StarknetOwnerProxy (selected) `0x1e0ef4162e42c9bf820c307218c4e41ccca6e9cc` — deployed 2025-01-24 05:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena x Ekubo audit report 2025-11.pdf | BaseOrdersTest | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | BasePositions | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | BaseTWAMMTest | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | CoreLib | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | Counts | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | FlashAccountant | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | FullTest | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | ICore | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | IFlashAccountant | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | IOracle | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | IOrders | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | ITWAMM | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | Oracle | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | OracleCollisionTest | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | OracleLib | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | OrderConfig | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | OrderKey | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | Orders | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | OrdersTest | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | PoolConfig | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | PoolId | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | PoolKey | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | Router | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | Snapshot | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | SqrtRatio | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | StorageSlot | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | TWAMM | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | TWAMMLib | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | TWAMMStartTimeBugPoC | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | TWAMMStorageLayout | unmatched — not counted | — | — | no |
| Code4rena x Ekubo audit report 2025-11.pdf | TwammPoolState | unmatched — not counted | — | — | no |
| Ekubo-Auctions-Riley-Holterhus-Audit.pdf | Auctions | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Auctions-Riley-Holterhus-Audit.pdf | auctionKey | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Auctions-Riley-Holterhus-Audit.pdf | auctionConfig | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | SavedBalancesWrapper | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | FreePositions | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | BoostedFees | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | ManualPoolBooster | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | BoostedFeesDataFetcher | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf | BoostedFeesLib | unmatched — not counted | — | listed in scope section | no |
| Ekubo-Riley-Holterhus-Audit.pdf | BaseNonfungibleToken | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | BasePositions | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | Core | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | CoreStorageLayout | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | FlashAccountant | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | Incentives | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | MEVCapture | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | Orders | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | RevenueBuybacks | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | RevenueBuybacksLib | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | TWAMM | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | TWAMMStorageLayout | unmatched — not counted | — | — | no |
| Ekubo-Riley-Holterhus-Audit.pdf | TokenWrapper | unmatched — not counted | — | — | no |
| SignedExclusiveSwap-Extension-Audit.md | SignedExclusiveSwap | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | ISignedExclusiveSwap | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | SignedExclusiveSwapLib | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | signedSwapMeta | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | signedExclusiveSwapPoolState | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | controllerAddress | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | poolBalanceUpdate | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | swapParameters | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | fee | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | BaseForwardee | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | BaseExtension | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | Core | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | FlashAccountant | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | ExtensionCallPointsLib | unmatched — not counted | — | listed in scope | no |
| SignedExclusiveSwap-Extension-Audit.md | SignedExclusiveSwapTest | unmatched — not counted | — | listed in scope | no |
| ve33-audit-invariant-verification.md | Ve33 | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | Ve33Storage | unmatched — not counted | — | mentioned as abstract contract in Ve33.sol | no |
| ve33-audit-invariant-verification.md | Ve33StorageLayout | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | Ve33Lib | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | stakeId | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | vePoolVote | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | vePoolSwapFeeState | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | ve33GlobalEmissionState | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | VeToken | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | Ve33Positions | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariant-verification.md | Ve33Periphery | unmatched — not counted | — | listed as primary implementation evidence | no |
| ve33-audit-invariants.md | Ve33 | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | VeToken | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | Ve33Positions | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | IVe33 | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | Ve33StorageLayout | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | Ve33Lib | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | StakeId | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | Ve33GlobalEmissionState | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | VePoolVote | unmatched — not counted | — | listed in Reviewed Sources | no |
| ve33-audit-invariants.md | VePoolSwapFeeState | unmatched — not counted | — | listed in Reviewed Sources | no |
| plainshift ekubo.pdf | router | unmatched — not counted | — | Target in finding M1 | no |
| plainshift ekubo.pdf | core | unmatched — not counted | — | Target in findings M1, M3 | no |
| plainshift ekubo.pdf | src5 | unmatched — not counted | — | Target in findings M2, L2 | no |
| plainshift ekubo.pdf | erc721 | unmatched — not counted | — | Target in finding M2 | no |
| plainshift ekubo.pdf | fees_per_liquidity | unmatched — not counted | — | Referenced in finding M3 | no |
| plainshift ekubo.pdf | oracle | unmatched — not counted | — | Target in finding L1 | no |
| plainshift ekubo.pdf | owned_nft | unmatched — not counted | — | Target in finding L2 | no |
| plainshift ekubo.pdf | bounds | unmatched — not counted | — | Target in finding L3 | no |
| plainshift ekubo.pdf | i129 | unmatched — not counted | — | Target in finding L4 | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | core | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | router | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | lib | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | positions | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | owned_nft | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | position | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | delta | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | fees_per_liquidity | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | pool_price | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | keys | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | bounds | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | call_points | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | i129 | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | bitmap | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | bits | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | mask | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | ticks | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | swap | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | string | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | sqrt_ratio | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | max_liquidity | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | exp2 | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | muldiv | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | liquidity | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | fee | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | shared_locker | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | util | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | upgradeable | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | owned | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | clear | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | erc721 | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | erc20 | unmatched — not counted | — | listed in audited files table | no |
| NM0123_EKUBO_FINAL_PUBLIC.pdf | src5 | unmatched — not counted | — | listed in audited files table | no |
| NM0205_EKUBO_TWAMM.pdf | ITWAMM | unmatched — not counted | — | Listed in audited files table (line 6) | no |
| NM0205_EKUBO_TWAMM.pdf | IExtension | unmatched — not counted | — | Mentioned as interface implemented by TWAMM contract in Section 4.4 | no |
| NM0205_EKUBO_TWAMM.pdf | TWAMM | unmatched — not counted | — | Listed in audited files table (line 2) | no |
| NM0205_EKUBO_TWAMM.pdf | Positions | unmatched — not counted | — | Listed in audited files table (line 1) | no |
| NM0205_EKUBO_TWAMM.pdf | IPositions | unmatched — not counted | — | Mentioned as interface implemented by Positions contract in Section 4.5 | no |
| NM0205_EKUBO_TWAMM.pdf | Core | unmatched — not counted | — | Mentioned as contract that TWAMM interacts with (e.g., lock function) in Section 4.4 | no |
| NM_0282_FINAL_Ekubo_Revenue_Buybacks.pdf | revenue_buybacks | unmatched — not counted | — | listed in Audited Files table | no |
| Ekubo EVM Deployment Plainshift Audit.pdf | FlashAccountant | unmatched — not counted | — | listed in scope as src/**/*.sol | no |
| Ekubo EVM Deployment Plainshift Audit.pdf | BaseLocker | unmatched — not counted | — | listed in scope as src/**/*.sol | no |
| Ekubo EVM Deployment Plainshift Audit.pdf | Router | unmatched — not counted | — | listed in scope as src/**/*.sol | no |
| Ekubo EVM Deployment Plainshift Audit.pdf | SlippageChecker | unmatched — not counted | — | listed in scope as src/**/*.sol | no |
| Ekubo EVM Deployment Plainshift Audit.pdf | MintableNFT | unmatched — not counted | — | listed in scope as src/**/*.sol | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | Positions | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | Core | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | BaseURLTokenURIGenerator | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | Router | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | sqrtRatio | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | positionKey | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | position | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | poolKey | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | feesPerLiquidity | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | callPoints | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | ticks | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | tickBitmap | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | swap | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | liquidity | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | isPriceIncreasing | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | fee | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | delta | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | constants | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | bitmap | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | ExposedStorageLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | CoreLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | TokenDataFetcher | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | QuoteDataFetcher | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | PriceFetcher | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | CoreDataFetcher | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | ITokenURIGenerator | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | IFlashAccountant | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | IExposedStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | ICore | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | UsesCore | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | SlippageChecker | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | Permittable | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | PayableMulticallable | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | FlashAccountant | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | ExposedStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | BaseLocker | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | BaseForwardee | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | OracleLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_EkuboProtocol_v_1_0.pdf | MintableNFT | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | Orders | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | twamm | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | timeBitmap | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | time | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | TWAMMLib | unmatched — not counted | — | listed in scope | no |
| ABDK_Ekubo_TWAMM_v_1_0.pdf | TWAMMDataFetcher | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x04c46e830bb56ce22735d5d8fc9cb90309317d0f` | EkuboToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 190 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [1822] Code4rena x Ekubo audit report 2025-11.pdf
- [1823] Ekubo-Auctions-Riley-Holterhus-Audit.pdf
- [1824] Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf
- [1825] Ekubo-Riley-Holterhus-Audit.pdf
- [26784] SignedExclusiveSwap-Extension-Audit.md
- [26785] ve33-audit-invariant-verification.md
- [26786] ve33-audit-invariants.md
- [26787] plainshift ekubo.pdf
- [26788] NM0123_EKUBO_FINAL_PUBLIC.pdf
- [26789] NM0205_EKUBO_TWAMM.pdf
- [26790] NM_0282_FINAL_Ekubo_Revenue_Buybacks.pdf
- [26791] Ekubo EVM Deployment Plainshift Audit.pdf
- [26792] ABDK_Ekubo_EkuboProtocol_v_1_0.pdf
- [26793] ABDK_Ekubo_InvariantAnalysis_v_1_0.pdf
- [26794] ABDK_Ekubo_TWAMM_v_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
