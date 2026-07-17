# Agentic Audit Brief: TruStake

## Project Overview

- Project: TruStake (`trufin-protocol`)
- Website: [https://app.truyields.com](https://app.truyields.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.499Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 9 unique implementations (17 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 14 (13 live, 1 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/7 (42.9%)
- Deployed-live implementations: 8 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 17
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 14.3% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 2 | 25.0% | 2025-09 |
| MoveBit | Tier 2 | 1 | 12.5% | 2024-04 |
| OpenZeppelin | Tier 1 | 1 | 12.5% | 2023-07 |
| yAudit | Tier 2 | 1 | 12.5% | 2023-03 |
| Zokyo | Tier 2 | 1 | 12.5% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1608b68d47c8752dbbfe748fdc902e401f96a603`](./contracts/ethereum-1/0x1608b68d47c8752dbbfe748fdc902e401f96a603/); ethereum `0xcfab8530ccf1f9936daede537d6ebbc75289006d` | ✅ Audited |
| TruStakeMATICv2 | unknown | ethereum | n/a | [`0xa43a7c62d56df036c187e1966c03e2799d8987ed`](./contracts/ethereum-1/0xa43a7c62d56df036c187e1966c03e2799d8987ed/) | ✅ Audited |
| TruStakePOL | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbe63b28453eeb284ae9413949accf41ed817f8db`](./contracts/ethereum-1/0xbe63b28453eeb284ae9413949accf41ed817f8db/); ethereum `0xc10214cde5d6754ec1e2220362f2120142c8e5e8` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5701773567a4a903ef1de459d0b542adb2439937`](./contracts/ethereum-1/0x5701773567a4a903ef1de459d0b542adb2439937/); ethereum `0x948ddfecd6ec588beab5a5aaa210504d2f6b14d8` | ⚠️ Unaudited |
| MasterWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb78610ade922b1aa0df2b0981f0dec17733f0334`](./contracts/ethereum-1/0xb78610ade922b1aa0df2b0981f0dec17733f0334/); ethereum `0xc90a7cb712e5ac2dd377602866051ac61487757c` | ⚠️ Unaudited |
| PausableModule | unknown | ethereum | n/a | [`0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246`](./contracts/ethereum-1/0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x022420797d9491b455c345375c48b62a21155158`](./contracts/ethereum-1/0x022420797d9491b455c345375c48b62a21155158/); ethereum `0x567676ddb095b582b49ed21538fc45c9ce791131`; ethereum `0xf7a2a6bd2117a7b907c461d357f0cd4c86b5430a` | ⚠️ Unaudited |
| TruStakeMATICv2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0ee0f1e438e4f0d8e3aa8d1f35592aa5303863a4`](./contracts/ethereum-1/0x0ee0f1e438e4f0d8e3aa8d1f35592aa5303863a4/); ethereum `0x6ba703406bc530d7e160f2b25a253e21d1de5ad9`; ethereum `0xe0579d3d0471720e9e9b76e3fb73dff06e6ceb71` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x66d55290f20d0984f1a1ede2e9f324b5a86ef9b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [TruYields-audit-report-Solana-TruRLP-vaults.pdf](https://truyields.com/audits/TruYields-audit-report-Solana-TruRLP-vaults.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [TruPOL-Nethermind-audit-september-2025.pdf](https://truyields.com/audits/TruPOL-Nethermind-audit-september-2025.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf](https://truyields.com/audits/TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [TruINJ-Zellic-Nov24.pdf](https://truyields.com/audits/TruINJ-Zellic-Nov24.pdf) | Zellic | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [TruNEAR-BlockSec-Sep24.pdf](https://truyields.com/audits/TruNEAR-BlockSec-Sep24.pdf) | BlockSec | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [TruFin Audit Report OtterSec-May24.pdf](https://truyields.com/audits/TruFin%20Audit%20Report%20OtterSec-May24.pdf) | OtterSec | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Trufin Audit Report MoveBit-Apr24.pdf](https://truyields.com/audits/Trufin%20Audit%20Report%20MoveBit-Apr24.pdf) | MoveBit | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [TruMATIC-Nethermind-Dec23.pdf](https://truyields.com/audits/TruMATIC-Nethermind-Dec23.pdf) | Nethermind | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [TruMATIC-OpenZeppelin-Audit-Report.pdf](https://truyields.com/audits/TruMATIC-OpenZeppelin-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [TruMATIC-Nethermind-Jun23.pdf](https://truyields.com/audits/TruMATIC-Nethermind-Jun23.pdf) | Nethermind | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [TruMATIC-ZokyoAudit-May23.pdf](https://truyields.com/audits/TruMATIC-ZokyoAudit-May23.pdf) | Zokyo | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [Trufin-audit-report-20230309.pdf](https://truyields.com/audits/Trufin-audit-report-20230309.pdf) | yAudit | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [www.halborn.com/audits/truyields/smart-contract-assessment-954e48](https://www.halborn.com/audits/truyields/smart-contract-assessment-954e48) | Halborn | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5701773567a4a903ef1de459d0b542adb2439937`](./contracts/ethereum-1/0x5701773567a4a903ef1de459d0b542adb2439937/) | MasterWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb78610ade922b1aa0df2b0981f0dec17733f0334`](./contracts/ethereum-1/0xb78610ade922b1aa0df2b0981f0dec17733f0334/) | MasterWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246`](./contracts/ethereum-1/0xe6dcd72cc14e1b1a6c4d8a3c4b7d9f3bcf84c246/) | PausableModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ee0f1e438e4f0d8e3aa8d1f35592aa5303863a4`](./contracts/ethereum-1/0x0ee0f1e438e4f0d8e3aa8d1f35592aa5303863a4/) | TruStakeMATICv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=4, extraction_exact=6

Zero-match audit list:

- [2211] TruYields-audit-report-Solana-TruRLP-vaults.pdf
- [2213] TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf
- [2214] TruINJ-Zellic-Nov24.pdf
- [2215] TruNEAR-BlockSec-Sep24.pdf
- [2216] TruFin Audit Report OtterSec-May24.pdf
- [15576] www.halborn.com/audits/truyields/smart-contract-assessment-954e48

Fork inheritance lineage and inherited audits are included when available.
