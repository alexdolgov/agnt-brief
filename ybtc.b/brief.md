# Agentic Audit Brief: YBTC.B

## Project Overview

- Project: YBTC.B (`ybtc.b`)
- Website: [https://www.bitlayer.org/](https://www.bitlayer.org/)
- Lifecycle: active (Tier 0, 81.6% below peak)
- Generated: 2026-06-17T07:00:36.313Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $69,267,722.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 10
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Staleness: 1 fresh, 0 aging, 7 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedYBTCB | unknown | ethereum | n/a | [`0xf053a5...15a308`](./contracts/ethereum-1/0xf053a558e551276a36d9036670f6130e5415a308/) | ⚠️ Unaudited |

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
| [2017-04-25_Geth-audit_Truesec.pdf](https://github.com/bitlayer-org/bitlayer-l2/blob/master/docs/audits/2017-04-25_Geth-audit_Truesec.pdf) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [2018-09-14_Clef-audit_NCC.pdf](https://github.com/bitlayer-org/bitlayer-l2/blob/master/docs/audits/2018-09-14_Clef-audit_NCC.pdf) | unknown | Audit | 2018-09 | stale | Direct | n/a | 0 | n/a |
| [2019-10-15_Discv5_audit_LeastAuthority.pdf](https://github.com/bitlayer-org/bitlayer-l2/blob/master/docs/audits/2019-10-15_Discv5_audit_LeastAuthority.pdf) | unknown | Audit | 2019-10 | stale | Direct | n/a | 0 | n/a |
| [2020-01-24_DiscV5_audit_Cure53.pdf](https://github.com/bitlayer-org/bitlayer-l2/blob/master/docs/audits/2020-01-24_DiscV5_audit_Cure53.pdf) | unknown | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [SecurityNetwork.md](https://github.com/bitlayer-org/bitlayer-org.github.io/blob/main/docs/Build/TrackPack/SecurityNetwork.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/bitlayer-org/bitlayer-materials/blob/main/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bitlayer Bridge Audit Report.pdf](https://github.com/bitlayer-org/smart-contract-audits/blob/main/audit_reports/bitlayer_bridge/Bitlayer%20Bridge%20Audit%20Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Bitlayer Bridge Phase 2.pdf](https://github.com/bitlayer-org/smart-contract-audits/blob/main/audit_reports/btc_bridge_and_get_gas/SlowMist%20Audit%20Report%20-%20Bitlayer%20Bridge%20Phase%202.pdf) | SlowMist | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Bitlayer Bridge.pdf](https://github.com/bitlayer-org/smart-contract-audits/blob/main/audit_reports/btc_bridge_and_get_gas/SlowMist%20Audit%20Report%20-%20Bitlayer%20Bridge.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [audit_report.pdf](https://github.com/bitlayer-org/smart-contract-audits/blob/main/audit_reports/btc_bridge_and_get_gas/audit_report.pdf) | Unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf053a5...15a308`](./contracts/ethereum-1/0xf053a558e551276a36d9036670f6130e5415a308/) | BridgedYBTCB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11381] 2017-04-25_Geth-audit_Truesec.pdf
- [11382] 2018-09-14_Clef-audit_NCC.pdf
- [11383] 2019-10-15_Discv5_audit_LeastAuthority.pdf
- [11384] 2020-01-24_DiscV5_audit_Cure53.pdf
- [11434] SecurityNetwork.md
- [11479] README.md
- [12403] Bitlayer Bridge Audit Report.pdf
- [12404] SlowMist Audit Report - Bitlayer Bridge Phase 2.pdf
- [12405] SlowMist Audit Report - Bitlayer Bridge.pdf
- [12406] audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
