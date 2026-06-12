# Agentic Audit Brief: Dexalot

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: active (Tier 0, 83% below peak)
- Generated: 2026-06-12T05:27:54.384Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: avalanche, bsc
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $7,900,563.00
- On-chain TVL (included contracts): $4,212,791.98
- TVL by chain: Avalanche $4,212,791.98

## Project Description

Dexalot is an omni-chain, app-specific-chain order-book decentralized exchange. Its protocol surface includes trading/order-book infrastructure and portfolio/bridge deposit-withdraw components spanning multiple supported chains. DexalotToken is a token/supporting contract within the ecosystem and should not be treated as the sole protocol contract family or as representing the complete deployed protocol surface.

### Architecture

The Dexalot Portfolio family centers on the DexalotToken, which is the sole contract identified. It likely integrates with the broader Dexalot DEX and bridge infrastructure, though those contracts are not listed in the inventory.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DexalotToken | token | avalanche | [`0x093783...47bc69`](./contracts/avalanche-43114/0x093783055f9047c2bff99c4e414501f8a147bc69/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Exchange | unknown | avalanche | [`0x807687...3d5885`](./contracts/avalanche-43114/0x80768783d18ad5c9de46d2cde398fb0c193d5885/) | ⚠️ Unaudited |
| MainnetRFQ | unknown | bsc | [`0x2a371c...ceb2dd`](./contracts/bsc-56/0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd/) | ⚠️ Unaudited |
| Portfolio | unknown | avalanche | 2 deployments: avalanche [`0x6f8205...6b5c6e`](./contracts/avalanche-43114/0x6f8205cf222dd4c6615991c7f604f366526b5c6e/); avalanche `0xac0f30...0de0d4` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | [`0x9faa0a...ae16f2`](./contracts/avalanche-43114/0x9faa0a5dcbc0cbc81719ba6f0f1726a8baae16f2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | [`0x12e2b3...694323`](./contracts/avalanche-43114/0x12e2b3236d338651f7ee2222e9756b4222694323/) | ⚠️ Unaudited |

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
| [DL audit link](https://hacken.io/audits/dexalot) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [7311] [Dexalot_03092021]SCAudit_Report.pdf
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf
- [12285] DL audit link

Fork inheritance lineage and inherited audits are included when available.
