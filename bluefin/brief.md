# Agentic Audit Brief: Bluefin

## Project Overview

- Project: Bluefin (`bluefin`)
- Website: [https://bluefin.io](https://bluefin.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.616Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $26,028,155.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
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
| ProxyAdmin | unknown | arbitrum | n/a | [`0x2b4b5e5dffcde417ead8253cf6a117836a00fc53`](./contracts/arbitrum-42161/0x2b4b5e5dffcde417ead8253cf6a117836a00fc53/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x01a4acf737ea3b786cb8ace16ca95e1bef6090f6`](./contracts/arbitrum-42161/0x01a4acf737ea3b786cb8ace16ca95e1bef6090f6/) | ⚠️ Unaudited |

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
| [Code Audits](https://learn.bluefin.io/bluefin/more/security/code-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Spot Audits](https://learn.bluefin.io/bluefin/more/security/spot-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [full report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-dTrade-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [full report](https://github.com/HalbornSecurity/PublicReports/blob/master/Web%20Pentest/dTrade_Frontend_Pentest_Executive_Summary_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19579] Code Audits
- [19580] Spot Audits
- [19581] full report
- [19582] full report

Fork inheritance lineage and inherited audits are included when available.
