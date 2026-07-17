# Agentic Audit Brief: Electra

## Project Overview

- Project: Electra (`electra`)
- Website: [https://electra.trade/](https://electra.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.644Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $81,737.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 2 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | unknown | ethereum | n/a | [`0xf713a7ac6891b0b581af46b3e753576f967c698e`](./contracts/ethereum-1/0xf713a7ac6891b0b581af46b3e753576f967c698e/) | ⚠️ Unaudited |
| TUP_old | proxy | ethereum | n/a | [`0xfc63831f1c517d196470f03a61afd3d0cc0f7127`](./contracts/ethereum-1/0xfc63831f1c517d196470f03a61afd3d0cc0f7127/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xc4ae1e29aae9d6cd898030b6e5ce4155b8268fcf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Electra Smart Contract Audit Report-Exvul.pdf](https://github.com/EXVUL-Sec/AuditReport/blob/main/Smartcontract/Electra%20Smart%20Contract%20Audit%20Report-Exvul.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [1.6-electra-security-and-audit-report.md](https://docs.electra.exchange/electra-terminal-guide/1.6-electra-security-and-audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xfc63831f1c517d196470f03a61afd3d0cc0f7127`](./contracts/ethereum-1/0xfc63831f1c517d196470f03a61afd3d0cc0f7127/) | TUP_old | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13079] Electra Smart Contract Audit Report-Exvul.pdf
- [13080] 1.6-electra-security-and-audit-report.md

Fork inheritance lineage and inherited audits are included when available.
