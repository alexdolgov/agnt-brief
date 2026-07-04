# Agentic Audit Brief: Capx AI

## Project Overview

- Project: Capx AI (`capx-ai`)
- Website: [https://capx.ai](https://capx.ai)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.448Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $2,215,353.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
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
- Raw deployments: 2
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 2 stale, 0 unknown
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
| FactoryBurnMintERC20 | registry | bsc | n/a | [`0x71fb17...42ed5f`](./contracts/bsc-56/0x71fb1795b084ff2b65eabf51cad22bbefd42ed5f/) | ⚠️ Unaudited |
| PancakeV3Pool | core_logic | bsc | n/a | [`0x39aae2...390ab7`](./contracts/bsc-56/0x39aae24d8c04e6aa9405fa7583a9e7bacb390ab7/) | ⚠️ Unaudited |

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
| [openzeppelin-audit-report.pdf](https://www.capx.ai/openzeppelin-audit-report.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Dedaub - December 20, 2024.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Dedaub%20-%20December%2020%2C%202024.pdf) | Dedaub | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Dedaub - September 23, 2024.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Dedaub%20-%20September%2023%2C%202024.pdf) | Dedaub | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Security_Review_Final_Report__Othentic_Rewards_V2.pdf](https://github.com/Othentic-Labs/core-contracts/blob/main/audits/Security_Review_Final_Report__Othentic_Rewards_V2.pdf) | Unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2880] openzeppelin-audit-report.pdf
- [14480] Dedaub - December 20, 2024.pdf
- [14481] Dedaub - September 23, 2024.pdf
- [14482] Security_Review_Final_Report__Othentic_Rewards_V2.pdf

Fork inheritance lineage and inherited audits are included when available.
