# Agentic Audit Brief: Pangolin

⚠️ Lifecycle status: DECLINING - TVL changed 12.8% over 90 days

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T09:44:17.417Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: avalanche
- Contract surface: 21 unique implementations (27 raw deployments)
- DeFi Llama TVL: $3,062,801.00
- On-chain TVL (included contracts): $579,035.42
- TVL by chain: Avalanche $579,035.42

## Project Description

Pangolin is a multichain decentralized exchange (DEX) that enables users to swap tokens, provide liquidity, and earn rewards through an automated market maker (AMM) model, with PNG as its governance token and staking/yield farming features. The contract and audit coverage in this brief should be treated as Avalanche-only unless non-Avalanche deployments are explicitly added to scope.

### Architecture

The DEX Core generates fees that are collected by the FeeCollector and directed to the CommunityTreasury. Governance contracts control treasury spending and protocol parameters, while Staking and Rewards distribute PNG tokens to incentivize liquidity provision.

## Contract Surface Quality

- Indexed contracts: 211; live-surface contracts included: 27 (24 live, 3 unknown).
- Excluded by liveness: 182 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/13 (38.5%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 21
- Raw deployments: 27
- Audits discovered: 13
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $579,035.42
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 12 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $579,035.42 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 5 | 38.5% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | avalanche | n/a | [`0xac61fd...6f43a7`](./contracts/avalanche-43114/0xac61fd938e762357eee739eb30938783366f43a7/) | ✅ Audited |
| GovernorAlpha | governance | avalanche | n/a | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ✅ Audited |
| MiniChefV2 | unknown | avalanche | n/a | [`0x1f806f...98e928`](./contracts/avalanche-43114/0x1f806f7c8ded893fd3cae279191ad7aa3798e928/) | ✅ Audited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ✅ Audited |
| StakingRewards | unknown | avalanche | n/a | [`0x88afda...a0135b`](./contracts/avalanche-43114/0x88afdae1a9f58da3e68584421937e5f564a0135b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PangolinV3Pool | core_logic | avalanche | n/a | 3 deployments: avalanche [`0x11476e...0c3e20`](./contracts/avalanche-43114/0x11476e10eb79ddffa6f2585be526d2bd840c3e20/); avalanche `0x115040...b2f456`; avalanche `0xfc2bb1...b2e722` | ⚠️ Unaudited |
| ForwarderLogic | unknown | avalanche | n/a | [`0xca3fc8...cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ⚠️ Unaudited |
| PangolinFactory | registry | avalanche | n/a | [`0xefa94d...e9fd88`](./contracts/avalanche-43114/0xefa94de7a4656d787667c749f7e1223d71e9fd88/) | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0e0100...3a9665`](./contracts/avalanche-43114/0x0e0100ab771e9288e0aa97e11557e6654c3a9665/); avalanche `0xbd918e...1970d9` | ⚠️ Unaudited |
| PangolinRouter | adapter | avalanche | n/a | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PangolinV3Rewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x4e8b94...bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/); avalanche `0x4fdf9a...7ba14a`; avalanche `0xba19af...ac2f1c` | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x757121...a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0693ea...83317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/); avalanche `0x7bca92...c52b02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x0df7c5...e9587a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e303b...c74e3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e9433...a96efa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5485a0...22547f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d8265...8aa587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80c4cc...98eab4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe66ddf...d408e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf40937...f06a7f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<div align="center" data-full-width="false"><figure><img src="https://paladinsec.co/pld/assets/paladin.svg" alt="" width="375"><figcaption><p><em>Pangolin V3 is Audited by Paladin</em></p></figcaption></figure> <figure><img src="/files/lKszGOVYSa6uOUjS9hYB" alt="" width="375"><figcaption><p><a href="">https://paladinsec.co/projects/pangolin/</a></p></figcaption></figure></div>](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | 0 | n/a |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | contract_name | 4 | high |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x11476e...0c3e20`](./contracts/avalanche-43114/0x11476e10eb79ddffa6f2585be526d2bd840c3e20/) | PangolinV3Pool | core_logic | $579,035.42 | Verified native implementation with $579,035.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xca3fc8...cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ForwarderLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xefa94d...e9fd88`](./contracts/avalanche-43114/0xefa94de7a4656d787667c749f7e1223d71e9fd88/) | PangolinFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0e0100...3a9665`](./contracts/avalanche-43114/0x0e0100ab771e9288e0aa97e11557e6654c3a9665/) | PangolinPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | PangolinRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e8b94...bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/) | PangolinV3Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x757121...a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0693ea...83317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=55

Zero-match audit list:

- [2689] <div align="center" data-full-width="false"><figure><img src="https://paladinsec.co/pld/assets/paladin.svg" alt="" width="375"><figcaption><p><em>Pangolin V3 is Audited by Paladin</em></p></figcaption></figure> <figure><img src="/files/lKszGOVYSa6uOUjS9hYB" alt="" width="375"><figcaption><p><a href="">https://paladinsec.co/projects/pangolin/</a></p></figcaption></figure></div>
- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2692] Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2698] Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
