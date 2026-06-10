# Agentic Audit Brief: Dexalot

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: active (Tier 0, 80.4% below peak)
- Generated: 2026-06-10T20:59:01.845Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $9,501,408.00
- On-chain TVL (included contracts): $4,212,791.98
- TVL by chain: Avalanche $4,212,791.98

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Dexalot is an omni-chain, app-specific-chain order-book decentralized exchange. Its protocol surface includes trading/order-book infrastructure and portfolio/bridge deposit-withdraw components spanning multiple supported chains. DexalotToken is a token/supporting contract within the ecosystem and should not be treated as the sole protocol contract family or as representing the complete deployed protocol surface.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DexalotToken | token | avalanche | [`0x093783...47bc69`](./contracts/avalanche-43114/0x093783055f9047c2bff99c4e414501f8a147bc69/) | ✅ Audited |

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
| [[Dexalot_03092021]SCAudit_Report.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_03092021%5DSCAudit_Report.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_15092021]SCAudit_Report_2.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15092021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_15112021]SCAudit_Report_3.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15112021%5DSCAudit_Report_3.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [[Dexalot_18022022]SCAudit_Report_4.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_18022022%5DSCAudit_Report_4.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [[Dexalot_23022022]SCAudit_Report_5.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_23022022%5DSCAudit_Report_5.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [7311] [Dexalot_03092021]SCAudit_Report.pdf
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf

Fork inheritance lineage and inherited audits are included when available.
