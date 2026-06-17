# Agentic Audit Brief: Mendi Finance

⚠️ Lifecycle status: DEAD - TVL dropped 34.1% over 90 days

## Project Overview

- Project: Mendi Finance (`mendi-finance`)
- Website: [https://malda.xyz/](https://malda.xyz/)
- Lifecycle: dead (Tier 1, sunsetting)
- Generated: 2026-06-17T07:00:48.760Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: linea
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,655,936.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Mendi Finance began as a Compound-style decentralized lending protocol on Linea, with cToken-style markets, a Comptroller for risk management, and reward distribution mechanisms. The project later rebranded/evolved into Malda, a unified cross-chain lending protocol positioning itself around zkProof-based cross-chain functionality. The current brief should distinguish the legacy Linea-only Mendi deployment from the broader Malda cross-chain lending system, and note that Malda has since been sunset and open-sourced.

### Architecture

The Comptroller manages all lending markets and coordinates reward distribution. Reward-related contracts (RewardManagerV2, RewardDistributor, StakedDistributor, OwnedDistributor, RewardHolder) work together to distribute incentives to users, while LPDepositor contracts facilitate liquidity provision.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 72 inactive, 44 singleton, 0 uninitialized.
- Deployment units: 0/22 live.
- Detected codebases: compound-v2
- Unverified dependencies: 4/18.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Mendi | unknown | linea | n/a | [`0x43e880...44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | ⚠️ Unaudited |
| MendiLoyaltyPoint | unknown | linea | n/a | 2 deployments: linea [`0x688ff5...26dea1`](./contracts/linea-59144/0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1/); linea `0xea5747...b7eb52` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | linea | n/a | 3 deployments: linea [`0x5df210...2bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/); linea `0x5f9668...c38d61`; linea `0x716f2d...1053f5` | ⚠️ Unaudited |

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
| [* [malda-lending-sherlock-audit-report]() (also discovered via alternate URL)](https://github.com/malda-protocol/malda-lending/blob/main/audit/2025_10_06_Sherlock_Competition.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 0 | n/a |
| [* [malda-lending report]()](https://github.com/malda-protocol/malda-lending/blob/main/audit/VAR_Malda_250120_malda_lending_V5.pdf) | Veridise | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [Audit Reports](https://ionian.gitbook.io/malda/malda-protocol/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* [malda-zk-coprocessor report]()](https://github.com/malda-protocol/malda-zk-coprocessor/blob/main/audit/VAR_Malda_250120_malda_zkcoprocessor.pdf) | Veridise | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x43e880...44065f`](./contracts/linea-59144/0x43e8809ea748eff3204ee01f08872f063e44065f/) | Mendi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x688ff5...26dea1`](./contracts/linea-59144/0x688ff5acedd3295ae4b60cc613a9a3fa5326dea1/) | MendiLoyaltyPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5df210...2bc434`](./contracts/linea-59144/0x5df2107a5b5e7b0b19dd7ded7470e8d9792bc434/) | OwnedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=8

Zero-match audit list:

- [2930] * [malda-lending-sherlock-audit-report]()
- [2931] * [malda-lending report]()
- [2932] Audit Reports
- [2933] * [malda-zk-coprocessor report]()

Fork inheritance lineage and inherited audits are included when available.
