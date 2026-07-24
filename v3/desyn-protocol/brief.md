# Agentic Audit Brief: DeSyn Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 19 (0 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: DeSyn Protocol (`desyn-protocol`)
- Website: [https://www.desyn.io/#/](https://www.desyn.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ailayer, arbitrum, bsc, ethereum, hashkey, linea, merlin, mode, scroll, zklink-nova
- Contract surface: 22 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,300,477.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DeSyn Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, mode. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 22
- Raw deployments: 26
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 16 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Actions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x576c9a3dad2175964ad72fd6c097566e38182d1e` | ⚠️ Unaudited |
| DesynChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2d25bd8027586fc2503eb22d928107c94d59841e` | ⚠️ Unaudited |
| DesynSafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf9fe7428b5ea2ce69d4627ff5fdea782067c84d8` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x09dfee598d5217da799bead56206bec0fdb0d17b` | ⚠️ Unaudited |
| GnosisSafe | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-235252 | `0xf8770931fc94d05ab4982d06bd6572bdf520e174` | ⚠️ Unaudited |
| LiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x02a9ad4d451407faa6039f07ef596203c0db78c0`; mode `0x26f9fa1615c7eedc903d329cbf74ba6d91cd9805`; mode `0x34075f46152e2c02762d2e07da6c658583879eef`; mode `0x87374d884b67b209f61f8676c7053a4a0eed3d0a`; mode `0xbfb3a640449c9a066d50062b3b4c58a0b1e34c96` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x867a8c12301217a588fafd7bbc1267d0e0250647` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe7dfa1607f286e37f86915b791282ccdd2535952` | ⚠️ Unaudited |
| RightsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc07b41f521ab9510a54212c315240e448621be15` | ⚠️ Unaudited |
| SmartPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcaf8af5217e16551acc00fff671c6caeff3626e6` | ⚠️ Unaudited |
| UserVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x833e81b279959f216331589dd9cec4388cf18387` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xe3b43dc43f2ab7102006e46074151c427de06794` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0c4d317b85c2676a3c1d4181f2536ac418240a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x203cbba1d9499c5e4556e88de746b72b40dc7faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d2b9cdf26c5506730ed07abdf44c1d86f242ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5e69d826d3663094321e2cf3c387b7f9dd7b44bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x66a50e286541e1bdd10118ff0d2cb8cbb3d2dc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6cb698e933f6ba140e79bfb6cb377a32b9518079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb7669c77745e79cc7b46a2218a5f8e33fd1ef23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc017af8486d74c06443d01b2fff16111a18f5943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd4d402c9047854eeb3ac36f0ea7222377bf7889a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xda8c0bb4c00c187c6db4cdb12ddf5b4a37b3e95d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 10
- Live contracts: 0
- Unknown liveness contracts: 10
- Source-verified contracts: 9
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=9, unverified unclassified=1

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | DesynChainlinkOracle<br>`0x2d25bd8027586fc2503eb22d928107c94d59841e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | DesynSafeMath<br>`0xf9fe7428b5ea2ce69d4627ff5fdea782067c84d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | Factory<br>`0x09dfee598d5217da799bead56206bec0fdb0d17b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | Oracle<br>`0x867a8c12301217a588fafd7bbc1267d0e0250647` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | RebalanceAdapter<br>`0xe7dfa1607f286e37f86915b791282ccdd2535952` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | RightsManager<br>`0xc07b41f521ab9510a54212c315240e448621be15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | SmartPoolManager<br>`0xcaf8af5217e16551acc00fff671c6caeff3626e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | UserVault<br>`0x833e81b279959f216331589dd9cec4388cf18387` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| candidate review | Vault<br>`0xe3b43dc43f2ab7102006e46074151c427de06794` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |
| unverified unclassified | UnnamedContract<br>`0x0c4d317b85c2676a3c1d4181f2536ac418240a9a` | non_address_book | unknown | unknown | unverified | n/a | `0x7de2e3b30de9aeaf5bdcf99aa1a2601dad6b2fbb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202301-Certik Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FXuYcetKVmU4mdQCxsVNw%2F202301-Certik%20Audit%20Report.pdf) | CertiK | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [202301-SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FOuH46mM16u9vWTy1M5oE%2F202301-SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [202305-Certik Audit Report-3x ETH staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fd3LYyoZWcxB4AYNF9VBZ%2F202305-Certik%20Audit%20Report-3x%20ETH%20staking.pdf) | CertiK | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202305-SlowMist Audit Report-3x ETH staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FwrLbJYPsxxLRxADLjcZd%2F202305-SlowMist%20Audit%20Report-3x%20ETH%20staking.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202309-Certik Audit Report - dSTBT.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FtCuMt7qEam1L2BWI4qt8%2F202309-Certik%20Audit%20Report%20-%20dSTBT.pdf) | CertiK | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [202309-SlowMist Audit Report - dSTBT.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FFCbWC2dX93XtuD4Tlalk%2F202309-SlowMist%20Audit%20Report%20-%20dSTBT.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [202310-Certik Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FVPpTwsDAA0DUYUQSZs8L%2F202310-Certik%20Audit%20Report.pdf) | CertiK | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [202310-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FN2BfLpF5KvRYLgGVAjPt%2F202310-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Ff81479RzxyKcEW3teujy%2F202406-SlowMist%20Audit%20Report%20-%20DeSyn%20ETH%20Flashloan%20Leverage%20Staking.pdf) | SlowMist | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [202406-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2F62XRir9wqJp5PO8hzoHq%2F202406-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | high |
| [202407-SlowMist Audit Report - Desyn Phase3.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FB81XUYLuwfS1hdIJvqaK%2F202407-SlowMist%20Audit%20Report%20-%20Desyn%20Phase3.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [202407-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fu3h3u0XRHwzTHahQ5sCw%2F202407-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [For New Chain Deployment - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2F37cc92G4A8DJmEBz2QSX%2FFor%20New%20Chain%20Deployment%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [For Scroll Chain - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FefRuA6mrMhG4ZxbjCKZa%2FFor%20Scroll%20Chain%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | address | no match | 0 | 0 | 0 | 11 | high |
| [rebalanceAdapter related - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FmcOSJVHKpqV0h3P5gQ40%2FrebalanceAdapter%20related%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [DeSyn Key Modules Audit - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FMQXMs98uSDr4IJNagCNF%2FDeSyn%20Key%20Modules%20Audit%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [DeSyn New Chains Updates- SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FcunUjPsGoe0bT1mtoJ5d%2FDeSyn%20New%20Chains%20Updates-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [New Chain Updates-BNB Chain - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fym42fdR3QXJ7umFVXv9N%2FNew%20Chain%20Updates-BNB%20Chain%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [New Chian Updates-Abstract Chain Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FwRn3JvidCdW7xeJ6ftgW%2FNew%20Chian%20Updates-Abstract%20Chain%20Audit%20Report.pdf) | SlowMist | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17168] 202301-Certik Audit Report.pdf — no match: Extracted 38 contracts from the audit scope table and report findings. Audit date found on cover page: 'CertiK Verified on Jan 18th, 2023'.
- [17169] 202301-SlowMist Audit Report.pdf — no match: All contracts listed in the 'Contracts Description' section and visibility tables are considered in scope. The audit date is the end date of the audit period (2022.11.10 - 2022.11.25).
- [17170] 202305-Certik Audit Report-3x ETH staking.pdf — no match: Two contracts in scope: AaveCall.sol and LeverageStake.sol, as per the Audit Scope table. Audit date is May 22nd, 2023.
- [17171] 202305-SlowMist Audit Report-3x ETH staking.pdf — no match: Two contracts in scope: AaveCall and LeverageStake. Audit date from audit result table: 2023.05.09 - 2023.05.11, using end date.
- [17172] 202309-Certik Audit Report - dSTBT.pdf — no match: Three contracts in scope: Actions.sol, DTBT.sol, TBillSimple.sol. Audit date from cover page.
- [17173] 202309-SlowMist Audit Report - dSTBT.pdf — no match: Audit scope includes contracts/bill/*.sol (DTBT, TBillSimple) and contracts/deploy/Actions.sol. Audit date range 2023.07.31 - 2023.08.02, end date used.
- [17174] 202310-Certik Audit Report.pdf — no match: Extracted 6 contracts from the audit scope table and review notes. Audit date is explicitly stated as 'Assessed on Oct 24th, 2023'.
- [17175] 202310-SlowMist Audit Report - DeSyn Phase5.pdf — no match: Contracts extracted from Code Overview and Vulnerability Summary sections. Audit date from Audit Result table: 2023.09.26 - 2023.09.27, using end date.
- [17176] 202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf — no match: Only LeverageStake contract is explicitly in scope; rebalanceAdapter mentioned but not audited.
- [17177] 202406-SlowMist Audit Report - DeSyn Phase5.pdf — no match: Extracted contracts from code overview and contract address table. Audit date from executive summary and audit result table.
- [17178] 202407-SlowMist Audit Report - Desyn Phase3.pdf — no match: Contracts extracted from project overview and code overview sections. Audit date from audit result table.
- [17179] 202407-SlowMist Audit Report - DeSyn Phase5.pdf — no match: Extracted 5 contracts from the audit report's Code Overview and Vulnerability Summary sections. The audit date is the end date of the audit period (2023.09.26 - 2023.09.27).
- [17180] For New Chain Deployment - SlowMist Audit Report.pdf — no match: Extracted contract names from code overview and contract address tables. Audit date from executive summary and audit result section.
- [17181] For Scroll Chain - SlowMist Audit Report.pdf — no match: Extracted contract names from scope table and visibility description. Audit date from executive summary.
- [17182] rebalanceAdapter related - SlowMist Audit Report.pdf — no match: Contracts extracted from the audit report's 'Contracts Description' section and vulnerability descriptions. The audit date is the end date of the audit period (2023.03.16 - 2023.03.22).
- [17183] DeSyn Key Modules Audit - SlowMist Audit Report.pdf — no match: Scope explicitly listed in 'Audit Scope' section with file paths. Audit date from 'Audit Result' table: 2024.12.16 - 2024.12.20, using end date.
- [17184] DeSyn New Chains Updates- SlowMist Audit Report.pdf — no match: Extracted 5 core contracts from the audit report's code overview and vulnerability sections. The report also lists many deployed contract addresses per chain, but those are instances of the same contracts. The audit date is the end date of the audit period (2023.09.26 - 2023.09.27).
- [17185] New Chain Updates-BNB Chain - SlowMist Audit Report.pdf — no match: Scope includes MoveFunds, Airdrop, and ConfigurableRightsPool. Audit date range 2025.04.28-2025.04.29, end date used.
- [17186] New Chian Updates-Abstract Chain Audit Report.pdf — no match: Audit scope explicitly lists ./contracts/base/Create2Helper.sol, ./contracts/deploy/CRPFactory.sol, ./contracts/deploy/Factory.sol. ConfigurableRightsPool and LiquidityPool are imported in Create2Helper and discussed in findings, thus in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202301-Certik Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | LpToken | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | WhiteToken | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | UserVault | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | SafeApprove | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DesynOwnable | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DSProxyContract | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | RightsManager | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Color | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Const | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Num | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | PCToken | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | WETH | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | sorMultiCall | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | AggregatorV2V3Interface | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IBFactory | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IConfigurableRightsPool | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | ILeverageStake | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IUniswapOracle | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | Address | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DesynConstants | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DesynSafeMath | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| 202301-Certik Audit Report.pdf | DesynReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 202301-SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | ExchangeProxy | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | LpTokenBase | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | LpToken | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Math | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Num | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | PCToken | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | sorMultiCall | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | WhiteToken | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DesynOwnable | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DesynReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DSProxy | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DSProxyFactory | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | DSProxyCache | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | ProxyRegistry | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | UserVault | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 202301-SlowMist Audit Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 202305-Certik Audit Report-3x ETH staking.pdf | AaveCall | unmatched — not counted | — | listed in Audit Scope table | no |
| 202305-Certik Audit Report-3x ETH staking.pdf | LeverageStake | unmatched — not counted | — | listed in Audit Scope table | no |
| 202305-SlowMist Audit Report-3x ETH staking.pdf | AaveCall | unmatched — not counted | — | listed in scope section 4.2 | no |
| 202305-SlowMist Audit Report-3x ETH staking.pdf | LeverageStake | unmatched — not counted | — | listed in scope section 4.2 | no |
| 202309-Certik Audit Report - dSTBT.pdf | Actions | unmatched — not counted | — | listed in Audit Scope table | no |
| 202309-Certik Audit Report - dSTBT.pdf | DTBT | unmatched — not counted | — | listed in Audit Scope table | no |
| 202309-Certik Audit Report - dSTBT.pdf | TBillSimple | unmatched — not counted | — | listed in Audit Scope table | no |
| 202309-SlowMist Audit Report - dSTBT.pdf | DTBT | unmatched — not counted | — | Listed in scope as contracts/bill/*.sol and mentioned in findings. | no |
| 202309-SlowMist Audit Report - dSTBT.pdf | TBillSimple | unmatched — not counted | — | Listed in scope as contracts/bill/*.sol and mentioned in findings. | no |
| 202309-SlowMist Audit Report - dSTBT.pdf | Actions | unmatched — not counted | — | Explicitly listed in scope: desyn-contracts-fork/contracts/deploy/Actions.sol | no |
| 202310-Certik Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-Certik Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-Certik Audit Report.pdf | TBillSimple | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-Certik Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-Certik Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-Certik Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope table and findings | no |
| 202310-SlowMist Audit Report - DeSyn Phase5.pdf | Actions | unmatched — not counted | — | listed in scope and findings | no |
| 202310-SlowMist Audit Report - DeSyn Phase5.pdf | CRPFactory | unmatched — not counted | — | listed in scope and findings | no |
| 202310-SlowMist Audit Report - DeSyn Phase5.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and findings | no |
| 202310-SlowMist Audit Report - DeSyn Phase5.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| 202310-SlowMist Audit Report - DeSyn Phase5.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and findings | no |
| 202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf | LeverageStake | unmatched — not counted | — | listed in scope and findings | no |
| 202406-SlowMist Audit Report - DeSyn Phase5.pdf | Actions | unmatched — not counted | — | listed in scope and code overview | no |
| 202406-SlowMist Audit Report - DeSyn Phase5.pdf | CRPFactory | unmatched — not counted | — | listed in scope and code overview | no |
| 202406-SlowMist Audit Report - DeSyn Phase5.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in code overview | no |
| 202406-SlowMist Audit Report - DeSyn Phase5.pdf | LiquidityPool | unmatched — not counted | — | listed in code overview | no |
| 202406-SlowMist Audit Report - DeSyn Phase5.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and code overview | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | Oracle | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | UserVault | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | Vault | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | Invoke | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | RebalanceAdapter | unmatched — not counted | — | listed in scope and described in contracts description | no |
| 202407-SlowMist Audit Report - Desyn Phase3.pdf | Factory | unmatched — not counted | — | mentioned in project overview and findings | no |
| 202407-SlowMist Audit Report - DeSyn Phase5.pdf | Actions | unmatched — not counted | — | listed in scope and code overview | no |
| 202407-SlowMist Audit Report - DeSyn Phase5.pdf | CRPFactory | unmatched — not counted | — | listed in scope and code overview | no |
| 202407-SlowMist Audit Report - DeSyn Phase5.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and code overview | no |
| 202407-SlowMist Audit Report - DeSyn Phase5.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and code overview | no |
| 202407-SlowMist Audit Report - DeSyn Phase5.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and code overview | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope and code overview | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope and code overview | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and code overview | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and code overview | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | Vault | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | UserVault | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | Factory | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | DesynSafeMath | unmatched — not counted | — | listed in contract address table | no |
| For New Chain Deployment - SlowMist Audit Report.pdf | RightsManager | unmatched — not counted | — | listed in contract address table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope table and code location | no |
| For Scroll Chain - SlowMist Audit Report.pdf | Factory | unmatched — not counted | — | listed in scope table and code location | no |
| For Scroll Chain - SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in visibility description | no |
| For Scroll Chain - SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in visibility description | no |
| For Scroll Chain - SlowMist Audit Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | UserVault | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | DesynSafeMath | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | RightsManager | unmatched — not counted | — | listed in scope table | no |
| For Scroll Chain - SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope table | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | DesynChainlinkOracle | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | UserVault | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | Vault | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | Invoke | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | RebalanceAdapter | unmatched — not counted | — | listed in scope and vulnerability descriptions | no |
| rebalanceAdapter related - SlowMist Audit Report.pdf | Factory | unmatched — not counted | — | mentioned in vulnerability N19 | no |
| DeSyn Key Modules Audit - SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope | no |
| DeSyn Key Modules Audit - SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope | no |
| DeSyn Key Modules Audit - SlowMist Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| DeSyn Key Modules Audit - SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope | no |
| DeSyn New Chains Updates- SlowMist Audit Report.pdf | Actions | unmatched — not counted | — | listed in scope and code overview | no |
| DeSyn New Chains Updates- SlowMist Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in scope and code overview | no |
| DeSyn New Chains Updates- SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | listed in scope and code overview | no |
| DeSyn New Chains Updates- SlowMist Audit Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and code overview | no |
| DeSyn New Chains Updates- SlowMist Audit Report.pdf | SmartPoolManager | unmatched — not counted | — | listed in scope and code overview | no |
| New Chain Updates-BNB Chain - SlowMist Audit Report.pdf | MoveFunds | unmatched — not counted | — | listed in scope with commit hash | no |
| New Chain Updates-BNB Chain - SlowMist Audit Report.pdf | Airdrop | unmatched — not counted | — | listed in scope with commit hash | no |
| New Chain Updates-BNB Chain - SlowMist Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | mentioned in vulnerability findings and visibility table | no |
| New Chian Updates-Abstract Chain Audit Report.pdf | Create2Helper | unmatched — not counted | — | listed in audit scope | no |
| New Chian Updates-Abstract Chain Audit Report.pdf | CRPFactory | unmatched — not counted | — | listed in audit scope | no |
| New Chian Updates-Abstract Chain Audit Report.pdf | Factory | unmatched — not counted | — | listed in audit scope | no |
| New Chian Updates-Abstract Chain Audit Report.pdf | ConfigurableRightsPool | unmatched — not counted | — | referenced in Create2Helper and vulnerability discussion | no |
| New Chian Updates-Abstract Chain Audit Report.pdf | LiquidityPool | unmatched — not counted | — | referenced in Create2Helper and vulnerability discussion | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 155 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=19
- Match method counts: n/a

Zero-match audit list:

- [17168] 202301-Certik Audit Report.pdf
- [17169] 202301-SlowMist Audit Report.pdf
- [17170] 202305-Certik Audit Report-3x ETH staking.pdf
- [17171] 202305-SlowMist Audit Report-3x ETH staking.pdf
- [17172] 202309-Certik Audit Report - dSTBT.pdf
- [17173] 202309-SlowMist Audit Report - dSTBT.pdf
- [17174] 202310-Certik Audit Report.pdf
- [17175] 202310-SlowMist Audit Report - DeSyn Phase5.pdf
- [17176] 202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf
- [17177] 202406-SlowMist Audit Report - DeSyn Phase5.pdf
- [17178] 202407-SlowMist Audit Report - Desyn Phase3.pdf
- [17179] 202407-SlowMist Audit Report - DeSyn Phase5.pdf
- [17180] For New Chain Deployment - SlowMist Audit Report.pdf
- [17181] For Scroll Chain - SlowMist Audit Report.pdf
- [17182] rebalanceAdapter related - SlowMist Audit Report.pdf
- [17183] DeSyn Key Modules Audit - SlowMist Audit Report.pdf
- [17184] DeSyn New Chains Updates- SlowMist Audit Report.pdf
- [17185] New Chain Updates-BNB Chain - SlowMist Audit Report.pdf
- [17186] New Chian Updates-Abstract Chain Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
