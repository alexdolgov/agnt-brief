# Agentic Audit Brief: Hyperdrive HL

## Project Overview

- Project: Hyperdrive HL (`hyperdrive-hl`)
- Website: [https://hyperdrive.fi/](https://hyperdrive.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.729Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,172,242.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (0 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7fb0d6...01f9f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86ccfb...c7c1e7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Feb 2025 - Kiki - Hyperdrive_Final_Report - Markets.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/lending/Feb%202025%20-%20Kiki%20-%20Hyperdrive_Final_Report%20-%20Markets.pdf) | Kiki | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Mar 2025 - Bailsec - Hyperdrive - Markets - Final Report.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/lending/Mar%202025%20-%20Bailsec%20-%20Hyperdrive%20-%20Markets%20-%20Final%20Report.pdf) | Bailsec | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [May 2025 - Obsidian - hyperdrive-obsidian-review.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/lending/May%202025%20-%20Obsidian%20-%20hyperdrive-obsidian-review.pdf) | Obsidian | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Apr 2025 - Enigma Dark - Managed_Security_Review_Ambit_Labs_Hyperdrive_LST_Final.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/staking/Apr%202025%20-%20Enigma%20Dark%20-%20Managed_Security_Review_Ambit_Labs_Hyperdrive_LST_Final.pdf) | Enigma Ventures | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Aug 2025 - Bailsec - Hyperdrive - LST.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/staking/Aug%202025%20-%20Bailsec%20-%20Hyperdrive%20-%20LST.pdf) | Bailsec | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Bailsec - Hyperdrive - Tokenization - Feb 2025.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/vaults/Bailsec%20-%20Hyperdrive%20-%20Tokenization%20-%20Feb%202025.pdf) | Bailsec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Bailsec - Hyperdrive - Tokenization - Jul 2025 - 2nd Report.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/vaults/Bailsec%20-%20Hyperdrive%20-%20Tokenization%20-%20Jul%202025%20-%202nd%20Report.pdf) | Bailsec | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Bailsec - Hyperdrive - Tokenization - Jul 2025.pdf](https://github.com/ambitlabsxyz/hyperdrive-audits/blob/main/vaults/Bailsec%20-%20Hyperdrive%20-%20Tokenization%20-%20Jul%202025.pdf) | Bailsec | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2780] Feb 2025 - Kiki - Hyperdrive_Final_Report - Markets.pdf
- [2781] Mar 2025 - Bailsec - Hyperdrive - Markets - Final Report.pdf
- [2782] May 2025 - Obsidian - hyperdrive-obsidian-review.pdf
- [2783] Apr 2025 - Enigma Dark - Managed_Security_Review_Ambit_Labs_Hyperdrive_LST_Final.pdf
- [2784] Aug 2025 - Bailsec - Hyperdrive - LST.pdf
- [2785] Bailsec - Hyperdrive - Tokenization - Feb 2025.pdf
- [2786] Bailsec - Hyperdrive - Tokenization - Jul 2025 - 2nd Report.pdf
- [2787] Bailsec - Hyperdrive - Tokenization - Jul 2025.pdf

Fork inheritance lineage and inherited audits are included when available.
