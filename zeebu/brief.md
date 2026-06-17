# Agentic Audit Brief: Zeebu

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Zeebu (`zeebu`)
- Website: [https://www.zeebu.com/](https://www.zeebu.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:41.349Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $4,563,991.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Zeebu is a blockchain-based B2B/neobank settlement platform for telecom carriers that uses the ZBU token as a loyalty and settlement token. The reviewed contract surface includes ZBU token deployments, voting-escrow/token-locking related contracts, Lens periphery contracts, and Launchpad contracts on Ethereum and Base; staking and voting-escrow functionality should be described as associated contract functionality rather than the core project purpose. DefiLlama also currently lists Binance/BSC staking activity for Zeebu, so any Ethereum/Base-only review should explicitly state that Binance/BSC staking is excluded from the covered contract surface.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 7 inactive, 7 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Voting Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x8e76cd...ecfb35`](./contracts/ethereum-1/0x8e76cdf3b14c540ab54afa7f8492ac1d16ecfb35/); base `0xcf08d1...6aea03` | ⚠️ Unaudited |

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
| ethereum | [`0x8e76cd...ecfb35`](./contracts/ethereum-1/0x8e76cdf3b14c540ab54afa7f8492ac1d16ecfb35/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
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
