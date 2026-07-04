# Agentic Audit Brief: Biconomy.com

## Project Overview

- Project: Biconomy.com (`biconomy.com`)
- Website: [https://www.biconomy.com](https://www.biconomy.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.657Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $121,714,307.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 1 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoinToken | unknown | bsc | n/a | [`0xc86401...ee808a`](./contracts/bsc-56/0xc864019047b864b6ab609a968ae2725dfaee808a/) | ⚠️ Unaudited |

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
| [docs.biconomy.io/contracts-and-audits](https://docs.biconomy.io/contracts-and-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CodeHawks-Cyfrin-Competition-170924.pdf](https://github.com/bcnmy/nexus/blob/main/audits/CodeHawks-Cyfrin-Competition-170924.pdf) | Cyfrin | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [report-cantinacode-biconomy-0708-updated.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-0708-updated.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report-cantinacode-biconomy-erc7739-addon-final.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-erc7739-addon-final.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Biconomy-Nexus_Zenith-Audit-Report.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Biconomy-Nexus_Zenith-Audit-Report.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Nexus-Pashov-Review_2025-03.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Nexus-Pashov-Review_2025-03.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2026-05-Composability-Nexus-Pashov-Review.pdf](https://github.com/bcnmy/erc8211-contracts/blob/main/audits/2026-05-Composability-Nexus-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [2025-03-Composability_Zenith-Audit-Report.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability_Zenith-Audit-Report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-03-Composability-Pashov-Review.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-02%20Zenith%20Audit%20Report%20-%20Biconomy%20MEE%20Contracts.pdf) | Zenith | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-04 Zenith Audit Report - Node PM Sponsorship.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-04%20Zenith%20Audit%20Report%20-%20Node%20PM%20Sponsorship.pdf) | Zenith | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20750] docs.biconomy.io/contracts-and-audits
- [20751] CodeHawks-Cyfrin-Competition-170924.pdf
- [20752] report-cantinacode-biconomy-0708-updated.pdf
- [20753] report-cantinacode-biconomy-erc7739-addon-final.pdf
- [20754] Biconomy-Nexus_Zenith-Audit-Report.pdf
- [20755] Nexus-Pashov-Review_2025-03.pdf
- [20756] 2026-05-Composability-Nexus-Pashov-Review.pdf
- [20757] 2025-03-Composability_Zenith-Audit-Report.pdf
- [20758] 2025-03-Composability-Pashov-Review.pdf
- [20759] 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf
- [20760] 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf

Fork inheritance lineage and inherited audits are included when available.
