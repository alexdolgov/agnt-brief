# Agentic Audit Brief: SpinUp

## Project Overview

- Project: SpinUp (`spinup`)
- Website: [https://www.spinup.zone/](https://www.spinup.zone/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.505Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: hyperliquid
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $453,338.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/5 (80.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 80.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 80.0% | 2025-11 |
| unknown | Tier 2 | 4 | 80.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HyperpiePair | unknown | hyperliquid | n/a | [`0xcf1088...b67a33`](./contracts/hyperliquid-999/0xcf10887fff956a6f5f13a561ee90550c50b67a33/) | ✅ Audited |
| HyperpieRouter | unknown | hyperliquid | n/a | [`0xdfbaf8...cb2150`](./contracts/hyperliquid-999/0xdfbaf8c8d60fbddc906f95810ffc62e511cb2150/) | ✅ Audited |
| MEMELaunchpad | unknown | hyperliquid | n/a | [`0x9246d2...a6168e`](./contracts/hyperliquid-999/0x9246d27ea8059529a615a4acf35351df0fa6168e/) | ✅ Audited |
| mHYPE | unknown | hyperliquid | n/a | [`0xdabb04...3a9aa8`](./contracts/hyperliquid-999/0xdabb040c428436d41cecd0fb06bcfdbaad3a9aa8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HyperpieFactory | unknown | hyperliquid | n/a | [`0xeaf403...6133fa`](./contracts/hyperliquid-999/0xeaf40318453a81993569b14b898aac31df6133fa/) | ⚠️ Unaudited |

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
| [AstraSec-AuditReport-SpinUp.pdf](https://github.com/astrasecai/audit-reports/blob/main/AstraSec-AuditReport-SpinUp.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [Supremacy-Audit-Report-SpinUp-v1.6.pdf](https://github.com/SupremacyTeam/publications/blob/main/SpinUp/Supremacy-Audit-Report-SpinUp-v1.6.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Supremacy-Audit-Report-Hyperpie-v1.0.pdf](https://github.com/SupremacyTeam/publications/blob/main/Magpie/Supremacy-Audit-Report-Hyperpie-v1.0.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [AstraSec-AuditReport-Hyperpie.pdf](https://github.com/astrasecai/audit-reports/blob/main/AstraSec-AuditReport-Hyperpie.pdf) | ChainSecurity | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [Supremacy-Audit-Report-wBETH-v1.0.pdf](https://github.com/SupremacyTeam/publications/blob/main/Supremacy-Audit-Report-wBETH-v1.0.pdf) | Supremacy | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/drive/folders/1aRufjLigHHwV3jkrHIIbjKdJmFCO9S8O](https://drive.google.com/drive/folders/1aRufjLigHHwV3jkrHIIbjKdJmFCO9S8O) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0xeaf403...6133fa`](./contracts/hyperliquid-999/0xeaf40318453a81993569b14b898aac31df6133fa/) | HyperpieFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=9

Zero-match audit list:

- [13890] Supremacy-Audit-Report-Hyperpie-v1.0.pdf
- [13892] Supremacy-Audit-Report-wBETH-v1.0.pdf
- [13893] drive.google.com/drive/folders/1aRufjLigHHwV3jkrHIIbjKdJmFCO9S8O

Fork inheritance lineage and inherited audits are included when available.
