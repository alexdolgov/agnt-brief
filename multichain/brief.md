# Agentic Audit Brief: Multichain

## Project Overview

- Project: Multichain (`multichain`)
- Website: [https://multichain.org/](https://multichain.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.992Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $36,348,243.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 10 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/5 (60.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/7
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 16 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 71.4% | 2022-03 |
| Dedaub | Tier 2 | 2 | 28.6% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | ethereum | n/a | [`0x9fb9a3...8764e3`](./contracts/ethereum-1/0x9fb9a33956351cf4fa040f65a13b835a3c8764e3/) | ✅ Audited |
| AnyswapV6ERC20 | token | ethereum | n/a | [`0x0615db...6748b1`](./contracts/ethereum-1/0x0615dbba33fe61a31c7ed131bda6655ed76748b1/) | ✅ Audited |
| AnyswapV6Router | adapter | ethereum | n/a | [`0xba8da9...910705`](./contracts/ethereum-1/0xba8da9dcf11b50b03fd5284f164ef5cdef910705/) | ✅ Audited |
| MultichainToken | token | ethereum | n/a | [`0x65ef70...492df4`](./contracts/ethereum-1/0x65ef703f5594d2573eb71aaf55bc0cb548492df4/) | ✅ Audited |
| MultiDao | unknown | ethereum | n/a | [`0x172280...90d558`](./contracts/ethereum-1/0x1722800c0f1bfdf916ef948ef7790a861e90d558/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyCallProxy | unknown | ethereum | n/a | [`0x37414a...490a89`](./contracts/ethereum-1/0x37414a8662bc1d25be3ee51fb27c2686e2490a89/) | ⚠️ Unaudited |
| AnyswapV4Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6b7a87...e71522`](./contracts/ethereum-1/0x6b7a87899490ece95443e979ca9485cbe7e71522/); ethereum `0x765277...b39c61` | ⚠️ Unaudited |

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
| [blocksec_audit_multichain_routerv7_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf) | BlockSec | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [blocksec_audit_multichain_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_v1.0-signed.pdf) | BlockSec | Audit | 2022-04 | stale | Direct | contract_name | 0 | n/a |
| [CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Security Assessment - Multichain Stellar - V230330.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Coinspect/Coinspect%20-%20Security%20Assessment%20-%20Multichain%20Stellar%20-%20V230330.pdf) | Coinspect | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Multichain Contract V6 Audit Report by Dedaub.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/DEDAUB/Multichain%20Contract%20V6%20Audit%20Report%20by%20Dedaub.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-MultiChainV6-v1.0.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/PeckShield/PeckShield-Audit-Report-MultiChainV6-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 4 | n/a |
| [AnySwap CrossChain-Bridge Security Audit Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20CrossChain-Bridge%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [AnySwap 跨链桥白盒安全审计报告.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20%E8%B7%A8%E9%93%BE%E6%A1%A5%E7%99%BD%E7%9B%92%E5%AE%89%E5%85%A8%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8A.pdf) | SlowMist | Audit | 2020-08 | stale | Direct | n/a | 0 | n/a |
| [Anyswap Smart Contract Security Audit.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/Anyswap%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2020-07 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - AnySwap AnyCall App.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/SlowMist%20Audit%20Report%20-%20AnySwap%20AnyCall%20App.pdf) | SlowMist | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [智能合约审计报告DApp - Anyswap.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/%E6%99%BA%E8%83%BD%E5%90%88%E7%BA%A6%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8ADApp%20-%20Anyswap.pdf) | SlowMist | Audit | 2020-07 | stale | Direct | n/a | 0 | n/a |
| [AnySwap Threshold-DSA Final Report Edited.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/AnySwap%20Threshold-DSA%20Final%20Report%20Edited.pdf) | Trail of Bits | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final%20Report.pdf) | Trail of Bits | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Verichain/Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf) | Verichains | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x37414a...490a89`](./contracts/ethereum-1/0x37414a8662bc1d25be3ee51fb27c2686e2490a89/) | AnyCallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b7a87...e71522`](./contracts/ethereum-1/0x6b7a87899490ece95443e979ca9485cbe7e71522/) | AnyswapV4Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7, extraction_exact=1

Zero-match audit list:

- [4569] blocksec_audit_multichain_routerv7_v1.0-signed.pdf
- [4570] blocksec_audit_multichain_v1.0-signed.pdf
- [4571] CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf
- [4572] CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf
- [4573] Coinspect - Security Assessment - Multichain Stellar - V230330.pdf
- [4576] AnySwap CrossChain-Bridge Security Audit Report.pdf
- [4577] AnySwap 跨链桥白盒安全审计报告.pdf
- [4578] Anyswap Smart Contract Security Audit.pdf
- [4579] SlowMist Audit Report - AnySwap AnyCall App.pdf
- [4580] 智能合约审计报告DApp - Anyswap.pdf
- [4581] AnySwap Threshold-DSA Final Report Edited.pdf
- [4582] Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf
- [4583] Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf

Fork inheritance lineage and inherited audits are included when available.
