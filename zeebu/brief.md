# Agentic Audit Brief: Zeebu

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Zeebu (`zeebu`)
- Website: [https://www.zeebu.com/](https://www.zeebu.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-18T12:57:25.023Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-a45b
- Chains: base, ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $4,563,991.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zeebu is a blockchain-based B2B/neobank settlement platform for telecom carriers that uses the ZBU token as a loyalty and settlement token. The reviewed contract surface includes ZBU token deployments, voting-escrow/token-locking related contracts, Lens periphery contracts, and Launchpad contracts on Ethereum and Base; staking and voting-escrow functionality should be described as associated contract functionality rather than the core project purpose. DefiLlama also currently lists Binance/BSC staking activity for Zeebu, so any Ethereum/Base-only review should explicitly state that Binance/BSC staking is excluded from the covered contract surface.

### Architecture

The ZeebuToken is deployed behind multiple TransparentUpgradeableProxy instances, and the Voting Escrow contracts interact with the token to enable locking and governance functionality.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 7 inactive, 7 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

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
| [OZ Final Report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/OZ%20Final%20Report.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [TOB final report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/TOB%20final%20report.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zeebu_Certora_report v2.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/Zeebu_Certora_report%20v2.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x45dd22...d47842`](./contracts/base-8453/0x45dd22ace398002b34cb37b363b2f02c7dd47842/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=9

Zero-match audit list:

- [2440] OZ Final Report.pdf
- [2441] TOB final report.pdf
- [2442] Zeebu_Certora_report v2.pdf

Fork inheritance lineage and inherited audits are included when available.
