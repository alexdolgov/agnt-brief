# Agentic Audit Brief: DeSyn Protocol

## Project Overview

- Project: DeSyn Protocol (`desyn-protocol`)
- Website: [https://www.desyn.io/#/](https://www.desyn.io/#/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.818Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum, mode
- Contract surface: 22 unique implementations (26 raw deployments)
- DeFi Llama TVL: $1,300,477.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 9 project-authored contract(s) across 2 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (ownable, logs). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (16 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/12 (91.7%)
- Deployed-live implementations: 12 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/12
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 22
- Raw deployments: 26
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 16 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 91.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 11 | 91.7% | 2026-01 |
| CertiK | Tier 2 | 10 | 83.3% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Actions | unknown | mode | n/a | [`0x576c9a...182d1e`](./contracts/mode-34443/0x576c9a3dad2175964ad72fd6c097566e38182d1e/) | ✅ Audited |
| DesynChainlinkOracle | unknown | mode | n/a | [`0x2d25bd...59841e`](./contracts/mode-34443/0x2d25bd8027586fc2503eb22d928107c94d59841e/) | ✅ Audited |
| DesynSafeMath | unknown | mode | n/a | [`0xf9fe74...7c84d8`](./contracts/mode-34443/0xf9fe7428b5ea2ce69d4627ff5fdea782067c84d8/) | ✅ Audited |
| Factory | unknown | mode | n/a | [`0x09dfee...b0d17b`](./contracts/mode-34443/0x09dfee598d5217da799bead56206bec0fdb0d17b/) | ✅ Audited |
| LiquidityPool | core_logic | mode | n/a | 5 deployments: mode [`0x02a9ad...db78c0`](./contracts/mode-34443/0x02a9ad4d451407faa6039f07ef596203c0db78c0/); mode `0x26f9fa...cd9805`; mode `0x34075f...879eef`; mode `0x87374d...ed3d0a`; mode `0xbfb3a6...e34c96` | ✅ Audited |
| Oracle | unknown | mode | n/a | [`0x867a8c...250647`](./contracts/mode-34443/0x867a8c12301217a588fafd7bbc1267d0e0250647/) | ✅ Audited |
| RebalanceAdapter | unknown | mode | n/a | [`0xe7dfa1...535952`](./contracts/mode-34443/0xe7dfa1607f286e37f86915b791282ccdd2535952/) | ✅ Audited |
| RightsManager | unknown | mode | n/a | [`0xc07b41...21be15`](./contracts/mode-34443/0xc07b41f521ab9510a54212c315240e448621be15/) | ✅ Audited |
| SmartPoolManager | unknown | mode | n/a | [`0xcaf8af...3626e6`](./contracts/mode-34443/0xcaf8af5217e16551acc00fff671c6caeff3626e6/) | ✅ Audited |
| UserVault | unknown | mode | n/a | [`0x833e81...f18387`](./contracts/mode-34443/0x833e81b279959f216331589dd9cec4388cf18387/) | ✅ Audited |
| Vault | unknown | mode | n/a | [`0xe3b43d...e06794`](./contracts/mode-34443/0xe3b43dc43f2ab7102006e46074151c427de06794/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0xf87709...20e174`](./contracts/ethereum-1/0xf8770931fc94d05ab4982d06bd6572bdf520e174/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x0c4d31...240a9a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x203cbb...dc7faa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5d2b9c...242ce3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5e69d8...7b44bb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x66a50e...d2dc5c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6cb698...518079` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb7669c...1ef23a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc017af...8f5943` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd4d402...f7889a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xda8c0b...b3e95d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [202301-Certik Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FXuYcetKVmU4mdQCxsVNw%2F202301-Certik%20Audit%20Report.pdf) | CertiK | Audit | 2023-01 | stale | Direct | contract_name | 14 | high |
| [202301-SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FOuH46mM16u9vWTy1M5oE%2F202301-SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | 12 | high |
| [202305-Certik Audit Report-3x ETH staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fd3LYyoZWcxB4AYNF9VBZ%2F202305-Certik%20Audit%20Report-3x%20ETH%20staking.pdf) | CertiK | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [202305-SlowMist Audit Report-3x ETH staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FwrLbJYPsxxLRxADLjcZd%2F202305-SlowMist%20Audit%20Report-3x%20ETH%20staking.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [202309-Certik Audit Report - dSTBT.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FtCuMt7qEam1L2BWI4qt8%2F202309-Certik%20Audit%20Report%20-%20dSTBT.pdf) | CertiK | Audit | 2023-09 | stale | Direct | contract_name | 1 | high |
| [202309-SlowMist Audit Report - dSTBT.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FFCbWC2dX93XtuD4Tlalk%2F202309-SlowMist%20Audit%20Report%20-%20dSTBT.pdf) | SlowMist | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [202310-Certik Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FVPpTwsDAA0DUYUQSZs8L%2F202310-Certik%20Audit%20Report.pdf) | CertiK | Audit | 2023-10 | stale | Direct | contract_name | 7 | high |
| [202310-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FN2BfLpF5KvRYLgGVAjPt%2F202310-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | 7 | high |
| [202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Ff81479RzxyKcEW3teujy%2F202406-SlowMist%20Audit%20Report%20-%20DeSyn%20ETH%20Flashloan%20Leverage%20Staking.pdf) | SlowMist | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [202406-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2F62XRir9wqJp5PO8hzoHq%2F202406-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | 7 | high |
| [202407-SlowMist Audit Report - Desyn Phase3.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FB81XUYLuwfS1hdIJvqaK%2F202407-SlowMist%20Audit%20Report%20-%20Desyn%20Phase3.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 13 | high |
| [202407-SlowMist Audit Report - DeSyn Phase5.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fu3h3u0XRHwzTHahQ5sCw%2F202407-SlowMist%20Audit%20Report%20-%20DeSyn%20Phase5.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | 7 | high |
| [For New Chain Deployment - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2F37cc92G4A8DJmEBz2QSX%2FFor%20New%20Chain%20Deployment%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | 7 | high |
| [For Scroll Chain - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FefRuA6mrMhG4ZxbjCKZa%2FFor%20Scroll%20Chain%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | 13 | high |
| [rebalanceAdapter related - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FmcOSJVHKpqV0h3P5gQ40%2FrebalanceAdapter%20related%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 12 | high |
| [DeSyn Key Modules Audit - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FMQXMs98uSDr4IJNagCNF%2FDeSyn%20Key%20Modules%20Audit%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 7 | high |
| [DeSyn New Chains Updates- SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FcunUjPsGoe0bT1mtoJ5d%2FDeSyn%20New%20Chains%20Updates-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-09 | stale | Direct | contract_name | 7 | high |
| [New Chain Updates-BNB Chain - SlowMist Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2Fym42fdR3QXJ7umFVXv9N%2FNew%20Chain%20Updates-BNB%20Chain%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [New Chian Updates-Abstract Chain Audit Report.pdf](https://245932585-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZfmVzvFfhPc46NKqgV40%2Fuploads%2FwRn3JvidCdW7xeJ6ftgW%2FNew%20Chian%20Updates-Abstract%20Chain%20Audit%20Report.pdf) | SlowMist | Audit | 2026-01 | fresh | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=15
- Match method counts: extraction_exact=121

Zero-match audit list:

- [17170] 202305-Certik Audit Report-3x ETH staking.pdf
- [17171] 202305-SlowMist Audit Report-3x ETH staking.pdf
- [17176] 202406-SlowMist Audit Report - DeSyn ETH Flashloan Leverage Staking.pdf
- [17185] New Chain Updates-BNB Chain - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
