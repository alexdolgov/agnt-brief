# Agentic Audit Brief: TruFin Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 69.8% over 90 days

## Project Overview

- Project: TruFin Protocol (`trufin-protocol`)
- Website: [https://www.trufin.io/](https://www.trufin.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:17.606Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 7 unique implementations (24 raw deployments)
- DeFi Llama TVL: $7,016,995.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TruYields is an institutional onchain yield platform with product lines including TruCore, TruStake, and TruVault. TruStake includes liquid staking products such as MATIC/POL staking, while TruVault and related products cover additional yield strategies. The Ethereum contracts listed in this brief represent only a subset of the broader TruYields platform and should not be treated as the complete multi-chain protocol surface.

### Architecture

Both families share the MasterWhitelist contract for access control, and the TruStake family builds upon the staking concepts from the legacy vaults, with TruStakePOL potentially interacting with the Staker contract for reward distribution.

## Audit Coverage Summary

- Verified implementations audited: 4/6 (66.7%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 24
- Audits discovered: 12
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 3 aging, 7 stale, 0 unknown
- Tier 1 coverage: 33.3% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 3 | 50.0% | 2025-09 |
| OpenZeppelin | Tier 1 | 2 | 33.3% | 2023-07 |
| Zokyo | Tier 2 | 2 | 33.3% | 2023-05 |
| MoveBit | Tier 2 | 1 | 16.7% | 2024-04 |
| yAudit | Tier 2 | 1 | 16.7% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MasterWhitelist | unknown | ethereum | 5 deployments: ethereum [`0x570177...439937`](./contracts/ethereum-1/0x5701773567a4a903ef1de459d0b542adb2439937/); ethereum `0x948ddf...6b14d8`; ethereum `0xb78610...3f0334`; ethereum `0xc90a7c...87757c`; ethereum `0xf9bd69...c0c39e` | ✅ Audited |
| Staker | core_logic | ethereum | 2 deployments: ethereum [`0x1608b6...96a603`](./contracts/ethereum-1/0x1608b68d47c8752dbbfe748fdc902e401f96a603/); ethereum `0xcfab85...89006d` | ✅ Audited |
| TruStakeMATICv2 | unknown | ethereum | 9 deployments: ethereum [`0x0ee0f1...3863a4`](./contracts/ethereum-1/0x0ee0f1e438e4f0d8e3aa8d1f35592aa5303863a4/); ethereum `0x2a9fd3...9faeae`; ethereum `0x6ba703...de5ad9`; ethereum `0x8d991f...c59052`; ethereum `0xa43a7c...8987ed`; ethereum `0xa51022...c4ea45`; ethereum `0xbf3b3b...4d1b31`; ethereum `0xe0579d...6ceb71`; ethereum `0xe3f8d0...91bbad` | ✅ Audited |
| TruStakePOL | unknown | ethereum | 2 deployments: ethereum [`0xbe63b2...17f8db`](./contracts/ethereum-1/0xbe63b28453eeb284ae9413949accf41ed817f8db/); ethereum `0xc10214...c8e5e8` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PausableModule | unknown | ethereum | 2 deployments: ethereum [`0x65c3d9...7e990c`](./contracts/ethereum-1/0x65c3d968bf51d60e13982b8511f2e1ed4f7e990c/); ethereum `0xe6dcd7...84c246` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x022420...155158`](./contracts/ethereum-1/0x022420797d9491b455c345375c48b62a21155158/); ethereum `0x567676...791131`; ethereum `0xf7a2a6...b5430a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x66d552...6ef9b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Download PDF](https://truyields.com/audits/TruYields-audit-report-Solana-TruRLP-vaults.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruPOL-Nethermind-audit-september-2025.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [Download PDF](https://truyields.com/audits/TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruINJ-Zellic-Nov24.pdf) | Zellic | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/TruNEAR-BlockSec-Sep24.pdf) | BlockSec | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [TruFin Audit Report OtterSec-May24.pdf](https://truyields.com/audits/TruFin%20Audit%20Report%20OtterSec-May24.pdf) | OtterSec | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Download PDF](https://truyields.com/audits/Trufin%20Audit%20Report%20MoveBit-Apr24.pdf) | MoveBit | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Download PDF](https://truyields.com/audits/TruMATIC-Nethermind-Dec23.pdf) | Nethermind | Audit | 2023-12 | stale | Direct | contract_name | 14 | high |
| [TruMATIC-OpenZeppelin-Audit-Report.pdf](https://truyields.com/audits/TruMATIC-OpenZeppelin-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | 14 | high |
| [Download PDF](https://truyields.com/audits/TruMATIC-Nethermind-Jun23.pdf) | Nethermind | Audit | 2023-06 | stale | Direct | contract_name | 14 | high |
| [Download PDF](https://truyields.com/audits/TruMATIC-ZokyoAudit-May23.pdf) | Zokyo | Audit | 2023-05 | stale | Direct | contract_name | 11 | high |
| [Download PDF](https://truyields.com/audits/Trufin-audit-report-20230309.pdf) | yAudit | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x65c3d9...7e990c`](./contracts/ethereum-1/0x65c3d968bf51d60e13982b8511f2e1ed4f7e990c/) | PausableModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=59

Zero-match audit list:

- [2211] Download PDF
- [2213] Download PDF
- [2214] Download PDF
- [2215] Download PDF
- [2216] TruFin Audit Report OtterSec-May24.pdf

Fork inheritance lineage and inherited audits are included when available.
