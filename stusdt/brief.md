# Agentic Audit Brief: stUSDT

## Project Overview

- Project: stUSDT (`stusdt`)
- Website: [https://stusdt.io/#/home](https://stusdt.io/#/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.963Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $60,224,841.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 4 project-authored contract(s) across 1 chain(s).

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/4 (100.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/4
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 100.0% | 2024-02 |
| yAudit | Tier 2 | 4 | 100.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MinterProxy | unknown | ethereum | n/a | [`0xe22d16...73728c`](./contracts/ethereum-1/0xe22d16a16d8a5a92241cf696c35c08eaa873728c/) | ✅ Audited |
| StUSDTProxy | unknown | ethereum | n/a | [`0x25ec98...145e10`](./contracts/ethereum-1/0x25ec98773d7b4ced4cafab96a2a1c0945f145e10/) | ✅ Audited |
| UnstUSDTProxy | unknown | ethereum | n/a | [`0x156269...2c058c`](./contracts/ethereum-1/0x156269966404ca72f6721c3228676c56412c058c/) | ✅ Audited |
| WstUSDTProxy | unknown | ethereum | n/a | [`0x572975...fe1ab0`](./contracts/ethereum-1/0x572975ff6d5136c81c8d7448b6361ef9eefe1ab0/) | ✅ Audited |

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
| [www.chainsecurity.com/security-audit/stusdt-smart-contracts](https://www.chainsecurity.com/security-audit/stusdt-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_StUSDT_StUSDT_Audit.pdf](https://reports.chainsecurity.com/StUSDT/ChainSecurity_StUSDT_StUSDT_Audit.pdf) | ChainSecurity | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |
| [stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available](https://stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [audit-report.pdf](https://stusdt.io/audit-report.pdf) | yAudit | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Zero-match audit list:

- [21016] www.chainsecurity.com/security-audit/stusdt-smart-contracts
- [21018] stusdt.zendesk.com/hc/en-us/articles/34180101619865-Key-Update-stUSDT-Security-Enhancements-and-Contract-Upgrade-Full-Audit-Report-and-Whitepaper-Available

Fork inheritance lineage and inherited audits are included when available.
