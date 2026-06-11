# Agentic Audit Brief: Zeebu

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Zeebu (`zeebu`)
- Website: [https://www.zeebu.com/](https://www.zeebu.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-11T04:19:53.779Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: base, ethereum
- Contract surface: 8 unique implementations (16 raw deployments)
- DeFi Llama TVL: $5,210,326.35
- On-chain TVL (included contracts): $87,874,707.29
- TVL by chain: Base $52,362,720.01 | Ethereum $35,511,987.28

## Project Description

Zeebu is a blockchain-based B2B/neobank settlement platform for telecom carriers that uses the ZBU token as a loyalty and settlement token. The reviewed contract surface includes ZBU token deployments, voting-escrow/token-locking related contracts, Lens periphery contracts, and Launchpad contracts on Ethereum and Base; staking and voting-escrow functionality should be described as associated contract functionality rather than the core project purpose. DefiLlama also currently lists Binance/BSC staking activity for Zeebu, so any Ethereum/Base-only review should explicitly state that Binance/BSC staking is excluded from the covered contract surface.

### Architecture

The ZeebuToken is deployed behind multiple TransparentUpgradeableProxy instances, and the Voting Escrow contracts interact with the token to enable locking and governance functionality.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 8
- Raw deployments: 16
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 66.7% (Certora, OpenZeppelin)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 2 | 66.7% | 2025-02 |
| OpenZeppelin | Tier 1 | 1 | 33.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ZeebuToken | token | ethereum | 5 deployments: ethereum [`0x2c8c89...da3161`](./contracts/ethereum-1/0x2c8c89c442436cc6c0a77943e09c8daf49da3161/); ethereum `0x6cf363...8c0406`; ethereum `0xe77f6a...ec2f4b`; base [`0x2c8c89...da3161`](./contracts/base-8453/0x2c8c89c442436cc6c0a77943e09c8daf49da3161/); base `0x6cf363...8c0406` | ✅ Audited |
| RewardDistributor | operational_periphery | base | 2 deployments: ethereum `0x624658...b568dc`; base [`0x17710a...3b3da1`](./contracts/base-8453/0x17710aaeb8fce1d789c09f30bc7a4863363b3da1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Voting Escrow | operational_periphery | ethereum | 4 deployments: ethereum [`0x8e76cd...ecfb35`](./contracts/ethereum-1/0x8e76cdf3b14c540ab54afa7f8492ac1d16ecfb35/); ethereum `0xb36f41...2ce2a4`; base `0x95a6b3...e6485d`; base `0xcf08d1...6aea03` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x57d882103d69d8e6a25fa64d387b66ab21fa4a7c) | proxy | base | `0x309755...527971` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x05279b...74990d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57d882...fa4a7c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3ea3d...0351d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf8b0eb...318b24` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OZ Final Report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/OZ%20Final%20Report.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [TOB final report.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/TOB%20final%20report.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Zeebu_Certora_report v2.pdf](https://github.com/TechnologyZeebu/Zeebu-Protocol-Audit-V1.0/blob/main/Zeebu_Certora_report%20v2.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8e76cd...ecfb35`](./contracts/ethereum-1/0x8e76cdf3b14c540ab54afa7f8492ac1d16ecfb35/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=9

Zero-match audit list:

- [2441] TOB final report.pdf

Fork inheritance lineage and inherited audits are included when available.
