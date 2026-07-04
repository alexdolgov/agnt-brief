# Agentic Audit Brief: Zeebu

## Project Overview

- Project: Zeebu (`zeebu`)
- Website: [https://www.zeebu.com/](https://www.zeebu.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:47.812Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base, ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $4,272,577.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
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
| Voting Escrow | operational_periphery | base | n/a | 3 deployments: ethereum `0x8e76cd...ecfb35`; base [`0x45dd22...d47842`](./contracts/base-8453/0x45dd22ace398002b34cb37b363b2f02c7dd47842/); base `0xcf08d1...6aea03` | ⚠️ Unaudited |
| WeightedPool | core_logic | base | n/a | [`0xc3889f...72a147`](./contracts/base-8453/0xc3889f9764d68bdf2e16f237206746344172a147/) | ⚠️ Unaudited |

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
| [OZ Final Report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/OZ%20Final%20Report.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [TOB final report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/TOB%20final%20report.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zeebu_Certora_report v2.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/Zeebu_Certora_report%20v2.pdf) | Certora | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2440] OZ Final Report.pdf
- [2441] TOB final report.pdf
- [2442] Zeebu_Certora_report v2.pdf

Fork inheritance lineage and inherited audits are included when available.
