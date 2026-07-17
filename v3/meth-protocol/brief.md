# Agentic Audit Brief: mETH Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 24 (0 matched; 24 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: mETH Protocol (`meth-protocol`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $360,161,561.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for mETH Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 5 fresh, 7 aging, 11 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | unit-153255 | `0x9f0c013016e8656bc256f948cd4b79ab25c7b94d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x54c23e0d89da943165c969d1abdb65f0d64174b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a6c874db238d7fdc84516cd940e97032271af69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8735049f496727f824cc0f2b174d826f5c408192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8b6c86d2c0cc65cb4138cc01c97ec4e1d5712478` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x92e56d2146d54d5aecb25ca36c89d027a6ea0d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc26016f1166be7b6c5611aab104122e0f6c2ace2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc9173bf8bd5c1b071b5cae4122202a347b7eefab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd4e11c28e04c0c2bf370b7a9989498b7ea02493f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd6e4aa932147a3fe5311da1b67d9e73da06f9cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdecacc56fc347274d3df2b709602632845611d39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf2bc410fad9fc3140c4cded7c6e5bd56ac292c93` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle Network METH Secuity Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/METH/Mantle%20Network%20METH%20Secuity%20Audit%20Report.pdf) | MixBytes | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Mantle cMETH Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/cMETH/Mantle%20cMETH%20Security%20Audit%20Report.pdf) | MixBytes | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Mantle mETH x Aave Integration Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Mantle%20Network/mETH%20x%20Aave%20Integration/Mantle%20mETH%20x%20Aave%20Integration%20Security%20Audit%20Report.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [secure3.io/contest/64954f6b](https://secure3.io/contest/64954f6b) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [secure3.io/contest/bbb030a7](https://secure3.io/contest/bbb030a7) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [MixBytes-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F7DhxKicJ8bDVIc97CU5f%2FMixBytes-BufferPool.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [Hexens-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNQRVoWBNlZQgGHJqlE2P%2FHexens-BufferPool.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Blocksec-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNdXlRHtKYExIqqa9s7fP%2FBlocksec-BufferPool.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Exvul-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FIVOEAhgisB2EtOU2rwNP%2FExvul-BufferPool.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Mantle cMETH Security Audit Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FDQqPYLP8pvuxVwj4n6av%2FMantle%20cMETH%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [verilog-mantle-fuzzland-cook-pm-audit-report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F5uL6TUlJvsnMnZ3bTBfG%2Fverilog-mantle-fuzzland-cook-pm-audit-report.pdf) | Fuzzland | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Mantle Fix Review 3 Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FvRlXVC4cVdibzenmeS6I%2FMantle%20Fix%20Review%203%20Report.pdf) | Mantle | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [BlockSec Final[Cook].pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FVvF5gHAjjBeZ25zObSz2%2FBlockSec%20Final%5BCook%5D.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Mantle-cmETH_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Ff5ozoh0YRvxE3YO8FqMK%2FMantle-cmETH_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [mantle-cmeth-hexens-audit-aug-2024.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FT0QClInfYwk3ARBy1vrk%2Fmantle-cmeth-hexens-audit-aug-2024.pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FG407rVeB9SxJVhM28PEC%2FMantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FMlIxHGCEPsOGBFdgxvrJ%2FMantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle Network METH Secuity Audit Report Upd.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FZBSPwrDcGKf3Y7WyeJXr%2FMantle%20Network%20METH%20Secuity%20Audit%20Report%20Upd.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Fb5AJNmg1LvkJjL88oJCt%2FMantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FEtxWvXpZa5vpZuHK1hGi%2FMantle-LSD-mntETH_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Mantle_LSP_L2_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FJgFbWoSYWVOJkwVeRceq%2FMantle_LSP_L2_Report.pdf) | Verilog Solutions | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21210] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: Extracted 7 contracts from scope and findings. Audit completion date is 25.08.2023.
- [21212] mantle-cmeth-audit-aug-2024(Public).pdf — no match: Extracted contracts from scope section and findings. Audit date from 'delivered 02.09.2024'.
- [21213] Mantle Network METH Secuity Audit Report.pdf — no match: All contracts listed in the Project Scope section of the audit report.
- [21214] Mantle cMETH Security Audit Report.pdf — no match: Extracted 19 contract names from the scope table and file paths. Audit date found on cover page: Nov 04, 2024.
- [21215] Mantle mETH x Aave Integration Security Audit Report.pdf — no match: Scope table lists four contracts: LiquidityBuffer, PositionManager, Pauser, Staking. Audit date from title: NOVEMBER 13, 2025.
- [21217] secure3.io/contest/64954f6b — no match: All contracts listed in the Audit Scope section with file paths and SHA256 hashes.
- [21218] secure3.io/contest/bbb030a7 — no match: Extracted 24 Go source files from the Audit Scope table on page 7. The audit date is from the cover page: 'Oct 13th, 2023'.
- [23905] Mantle_L2_ERC20_Token_Bridge_Report.pdf — no match: Scope section states 'Solidity smart contracts under the folder contracts' in the repository. Four contracts explicitly named in findings.
- [23908] MixBytes-BufferPool.pdf — no match: Scope table lists 4 contracts: LiquidityBuffer, PositionManager, Pauser, Staking. Audit date from title: NOVEMBER 13, 2025.
- [23909] Hexens-BufferPool.pdf — no match: Extracted contracts from scope section and findings. Audit date from final report date (22 October 2025).
- [23910] Blocksec-BufferPool.pdf — no match: Scope explicitly lists src/interfaces/IStaking.sol, src/interfaces/IPauser.sol, src/Staking.sol, src/Pauser.sol, and src/liquidityBuffer/*. The contracts LiquidityBuffer and PositionManager are within the liquidityBuffer directory and are referenced in findings.
- [23911] Exvul-BufferPool.pdf — no match: Extracted from audit report of Mantle LSP. Contracts explicitly mentioned in findings with file paths. Audit date from 'Audit Time' field: 14/10/2025 - 20/10/2025, using end date.
- [23912] Mantle cMETH Security Audit Report.pdf — no match: Extracted 19 contract names from the scope table and file listings. Audit date from cover page.
- [23913] verilog-mantle-fuzzland-cook-pm-audit-report.pdf — no match: Scope section lists 'contracts/**/*.sol' for both cmETH and ITBStrategy projects, but no specific contract names. Extracted contract names from findings: PositionManager (from ITBStrategy) and L2CookMessagingStatus (from cmETH). No audit date found.
- [23914] Mantle Fix Review 3 Report.pdf — no match: Extracted 11 contract names from the scope section. Audit date is the latest fix review date (2024-10-18) as the report includes multiple updates.
- [23915] BlockSec Final[Cook].pdf — no match: Scope explicitly states 'src/cook' folder. Contracts identified from file paths in findings.
- [23916] Mantle-cmETH_Secure3_Audit_Report.pdf — no match: Extracted 19 contract names from the Audit Scope table on page 4. Audit date found in the title: 'Sep 11th, 2024'.
- [23917] mantle-cmeth-hexens-audit-aug-2024.pdf — no match: Extracted contracts from scope section and file paths in findings. Audit date from 'delivered 02.09.2024'.
- [23918] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: Extracted 7 contracts from the scope section and findings. Audit completion date is 25.08.2023.
- [23919] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit completion date is 02.10.2023.
- [23920] Mantle Network METH Secuity Audit Report Upd.pdf — no match: Scope table explicitly lists 9 contracts (METH, OracleQuorumManager, Oracle, Pauser, ReturnsAggregator, ReturnsReceiver, Staking, UnstakeRequestsManager, METHL2) with file paths. Audit date is November 21, 2023 from the cover page.
- [23921] Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf — no match: Extracted 24 Go source files from the Audit Scope table on page 7. The audit date is from the cover page: 'Oct 13th, 2023'.
- [23922] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5. Date found on cover page: Oct 12th, 2023.
- [23923] Mantle_LSP_L2_Report.pdf — no match: Only one contract (METHL2) is in scope, as per the audit scope section and findings referencing src/METHL2.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | SanctionsList | unmatched — not counted | — | listed in scope and finding mantle-1 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope and findings mantle-12, mantle-16, mantle-5 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope and findings mantle-4, mantle-9 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope and findings mantle-6, mantle-15, mantle-13 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope and finding mantle-9 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | BoringVault | unmatched — not counted | — | listed in scope and findings mantle-2, mantle-8 | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope and finding mantle-2 | no |
| Mantle Network METH Secuity Audit Report.pdf | METH | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report.pdf | METHL2 | unmatched — not counted | — | listed in scope | no |
| Mantle cMETH Security Audit Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| Mantle mETH x Aave Integration Security Audit Report.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope table | no |
| Mantle mETH x Aave Integration Security Audit Report.pdf | PositionManager | unmatched — not counted | — | listed in scope table | no |
| Mantle mETH x Aave Integration Security Audit Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle mETH x Aave Integration Security Audit Report.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | Oracle | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | Staking | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | Pauser | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | METH | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IOracle | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IUnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IPauser | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IStaking | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IMETH | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | IReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/64954f6b | ProtocolEvents | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | main | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | scheduler | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | service | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | withdrawals | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | reporter | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | finder | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | events | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | blockstamp | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | loader | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | sourcer | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | gcpkmssigner | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | config | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | validator | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | pubkeyfilter | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | runner | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | keyset | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | multiplex | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | client | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | filter | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | constants | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | predicates | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | clients | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | set | unmatched — not counted | — | listed in scope table | no |
| secure3.io/contest/bbb030a7 | network | unmatched — not counted | — | listed in scope table | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | BridgeableTokens | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | ERC20BridgedPermit | unmatched — not counted | — | mentioned in findings | no |
| MixBytes-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Hexens-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | Staking | unmatched — not counted | — | mentioned in findings as Staking contract | no |
| Hexens-BufferPool.pdf | UnstakeRequestsManager | unmatched — not counted | — | mentioned in finding MANT4-8 | no |
| Blocksec-BufferPool.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| Blocksec-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| Exvul-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope and findings | no |
| Exvul-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Exvul-BufferPool.pdf | METH | unmatched — not counted | — | listed in scope and findings | no |
| Exvul-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope and findings | no |
| Mantle cMETH Security Audit Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle cMETH Security Audit Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | PositionManager | unmatched — not counted | — | mentioned in scope and findings | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | L2CookMessagingStatus | unmatched — not counted | — | mentioned in findings | no |
| Mantle Fix Review 3 Report.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | PositionManagerNoVault | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | IMessagingStatus | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | L1Cook | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | L1CookAdapter | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | L1CookMessagingStatus | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | L2Cook | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | L2CookMessagingStatus | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | ERC20VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| Mantle Fix Review 3 Report.pdf | VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| BlockSec Final[Cook].pdf | L1Cook | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec Final[Cook].pdf | L2Cook | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec Final[Cook].pdf | L1CookMessagingStatus | unmatched — not counted | — | listed in findings | no |
| BlockSec Final[Cook].pdf | L2CookMessagingStatus | unmatched — not counted | — | listed in findings | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | SanctionsList | unmatched — not counted | — | listed in scope and finding mantle-1 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope and findings mantle-12, mantle-16, mantle-5 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope and findings mantle-4, mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope and findings mantle-6, mantle-15, mantle-13 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope and finding mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | BoringVault | unmatched — not counted | — | listed in scope and findings mantle-2, mantle-8 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope and finding mantle-2 | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METH | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METHL2 | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | main | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | scheduler | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | service | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | withdrawals | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | reporter | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | finder | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | events | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | blockstamp | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | loader | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | sourcer | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | gcpkmssigner | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | config | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | validator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | pubkeyfilter | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | runner | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | keyset | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | multiplex | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | client | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | filter | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | constants | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | predicates | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | clients | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | set | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf | network | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | METH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IUnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IPauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IMETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ProtocolEvents | unmatched — not counted | — | listed in scope table | no |
| Mantle_LSP_L2_Report.pdf | METHL2 | unmatched — not counted | — | Listed in findings as source file src/METHL2.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 24
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 234 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21210] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [21212] mantle-cmeth-audit-aug-2024(Public).pdf
- [21213] Mantle Network METH Secuity Audit Report.pdf
- [21214] Mantle cMETH Security Audit Report.pdf
- [21215] Mantle mETH x Aave Integration Security Audit Report.pdf
- [21217] secure3.io/contest/64954f6b
- [21218] secure3.io/contest/bbb030a7
- [23905] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [23908] MixBytes-BufferPool.pdf
- [23909] Hexens-BufferPool.pdf
- [23910] Blocksec-BufferPool.pdf
- [23911] Exvul-BufferPool.pdf
- [23912] Mantle cMETH Security Audit Report.pdf
- [23913] verilog-mantle-fuzzland-cook-pm-audit-report.pdf
- [23914] Mantle Fix Review 3 Report.pdf
- [23915] BlockSec Final[Cook].pdf
- [23916] Mantle-cmETH_Secure3_Audit_Report.pdf
- [23917] mantle-cmeth-hexens-audit-aug-2024.pdf
- [23918] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [23919] Mantle_Sep23(Public) (Oracle).pdf
- [23920] Mantle Network METH Secuity Audit Report Upd.pdf
- [23921] Mantle-LSD-Oracle-Service-Core_final_Secure3_Audit_Report.pdf
- [23922] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf
- [23923] Mantle_LSP_L2_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
