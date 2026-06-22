# Agentic Audit Brief: Ithaca Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 96.2% over 90 days

## Project Overview

- Project: Ithaca Protocol (`ithaca-protocol`)
- Website: [https://app.ithacaprotocol.io](https://app.ithacaprotocol.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-22T11:09:38.566Z
- Pipeline run: v2-pipeline-2026-06-22-727228-695b
- Chains: arbitrum, bsc
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $12,861.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 13 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 3
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0xba0412...4ea1db`](./contracts/arbitrum-42161/0xba041237bb5ae8202f0d5135c5f7fc71b64ea1db/); arbitrum `0xf43028...8286d2` | ⚠️ Unaudited |
| ITHACA | unknown | bsc | n/a | [`0x49f1d4...c007ca`](./contracts/bsc-56/0x49f1d4db3ea1a64390e990c6debeac88eac007ca/) | ⚠️ Unaudited |

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
| [index.html](https://certificate.quantstamp.com/full/ithaca-finance/8cacdbf3-9f47-4135-854d-1d004abad065/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ithacaprotocol.io_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/ithacaprotocol.io_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-01 | stale | Direct | contract_name | 0 | n/a |
| [Ithaca_Backend_WebApp_Pentest_ Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Web%20Pentest/Ithaca_Backend_WebApp_Pentest_%20Report_Halborn_Final.pdf) | Halborn | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x49f1d4...c007ca`](./contracts/bsc-56/0x49f1d4db3ea1a64390e990c6debeac88eac007ca/) | ITHACA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=15

Zero-match audit list:

- [13304] index.html
- [13305] ithacaprotocol.io_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf
- [13306] Ithaca_Backend_WebApp_Pentest_ Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
