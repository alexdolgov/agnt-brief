# Agentic Audit Brief: Zircuit Finance

## Project Overview

- Project: Zircuit Finance (`zircuit-finance`)
- Website: [https://finance.zircuit.com/](https://finance.zircuit.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.075Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base, ethereum
- Contract surface: 10 unique implementations (21 raw deployments)
- DeFi Llama TVL: $1,141,487.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 8 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/10 (100.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/10
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 21
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 2 fresh, 5 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zenith | Tier 2 | 9 | 90.0% | 2025-12 |
| Dedaub | Tier 2 | 1 | 10.0% | 2024-07 |
| Ottersec | Tier 2 | 1 | 10.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingReceiver | unknown | base | n/a | 2 deployments: base [`0x43c4a9...e66c9c`](./contracts/base-8453/0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c/); base `0x7fceb5...affd68` | ✅ Audited |
| StrategyManager | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x075193...a04d94`](./contracts/ethereum-1/0x075193d36693da7ba3bb709cf63bef070ba04d94/); ethereum `0xf7e745...cd3374` | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x28966c...332c49`](./contracts/ethereum-1/0x28966ce36d0f25858dc5d10dfc2829f05c332c49/); ethereum `0x6424c7...2b6e38` | ✅ Audited |
| TokenizedStrategy | core_logic | base | n/a | 3 deployments: base [`0x1a48ce...37e1cc`](./contracts/base-8453/0x1a48cec817bcb5436efe99bab6dde228cc37e1cc/); base `0xc91e44...e1aca7`; base `0xe83ef4...ab1dc5` | ✅ Audited |
| UnderlyingOFT | unknown | base | n/a | 2 deployments: base [`0x264d64...3c5330`](./contracts/base-8453/0x264d6474802ef8bc1bc05f89f7d640d1e93c5330/); base `0xd7abc3...1c1c8b` | ✅ Audited |
| UnderlyingOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2d342d...835865`](./contracts/ethereum-1/0x2d342de4c58a871b3525740c58a1c112d5835865/); ethereum `0xd58e8c...85d190` | ✅ Audited |
| Vault | core_logic | base | n/a | 2 deployments: base [`0x03067b...da4cae`](./contracts/base-8453/0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae/); base `0x25d90a...fc832d` | ✅ Audited |
| VaultComposer | core_logic | base | n/a | 2 deployments: base [`0x16ce6d...7ad96b`](./contracts/base-8453/0x16ce6d9576a411911e62b6073f1cc9d1347ad96b/); base `0xbb801e...030923` | ✅ Audited |
| VaultToken | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x07c898...a1c1a9`](./contracts/ethereum-1/0x07c898e77310870770f88d18a01009cb65a1c1a9/); ethereum `0x8adbea...cf470a` | ✅ Audited |
| ZtakingPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/); ethereum `0xf047ab...aeafa6` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Reports](https://docs.zircuit.com/info/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link (also discovered via alternate URL)](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Zircuit - Zenith Audit Report.pdf](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2F3HGYEl2g48GgzIm810Nh%2FZircuit%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-12 | fresh | Direct | contract_name | 19 | high |
| [Zircuit Finance - CCTP Adapter Report.pdf](https://3252263143-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fp2pPzGBdConDaqw5tnHs%2Fuploads%2FDTiUd0GK87vWQ6Nfe880%2FZircuit%20Finance%20-%20CCTP%20Adapter%20Report.pdf) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=23

Zero-match audit list:

- [18718] Audit Reports
- [18719] Link
- [18721] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [18722] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [18723] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [18724] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [18725] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [18726] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf
- [18729] ZRC_OFT_final_report_Quantstamp.pdf
- [18731] Zircuit Finance - CCTP Adapter Report.pdf

Fork inheritance lineage and inherited audits are included when available.
