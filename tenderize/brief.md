# Agentic Audit Brief: Tenderize

⚠️ Lifecycle status: DECLINING - TVL dropped 0.6% over 90 days

## Project Overview

- Project: Tenderize (`tenderize`)
- Website: [https://tenderize.me](https://tenderize.me)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:40.660Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 13 unique implementations (16 raw deployments)
- DeFi Llama TVL: $782,035.00
- On-chain TVL (included contracts): $313,346,192.69
- TVL by chain: Ethereum $313,291,694.27 | Arbitrum $54,498.42

## Project Description

Tenderize is a liquid staking ecosystem that issues liquid staking tokens for validator-specific and multi-validator staking positions, allowing users to earn staking rewards while retaining liquidity. Its products include TenderSwap for instant unstaking and swaps between LSTs and underlying assets, and may also include current homepage-advertised components such as BeefyBank collateralized stablecoin borrowing/lending and the WAGYU governance/value-accrual token where those deployments are verified in scope.

### Architecture

Tenderize V1 and V2 are different generations of the liquid staking protocol, with V2 introducing a registry-based architecture. TenderSwap provides liquidity pools for tokens from both versions, and lpETH and tLPT are specific LST implementations that may integrate with either version's infrastructure.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 56 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 9/26 live.
- Detected codebases: none
- Dependencies extracted: 6; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 16
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $313,346,192.69
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $313,346,192.69 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GraphToken | token | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| AudiusToken | token | ethereum | unit-24841 | [`0x18aaa7...65b998`](./contracts/ethereum-1/0x18aaa7115705e8be94bffebde57af9bfc265b998/) | ⚠️ Unaudited |
| TenderToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2336c1...3599a3`](./contracts/ethereum-1/0x2336c10a1d3100343fa9911a2c57b77c333599a3/); ethereum `0xc29f56...2ad2ac`; arbitrum `0xfac385...0c4078` | ⚠️ Unaudited |
| ClaimsManager | governance | ethereum | unit-24842 | [`0x44617f...aa1334`](./contracts/ethereum-1/0x44617f9dced9787c3b06a05b35b4c779a2aa1334/) | ⚠️ Unaudited |
| DelegateManagerV2 | governance | ethereum | unit-24843 | [`0x4d7968...9fb225`](./contracts/ethereum-1/0x4d7968ebfd390d5e7926cb3587c39eff2f9fb225/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-24862 | [`0xf3a75e...796252`](./contracts/ethereum-1/0xf3a75e087a92770b4150fff14c6d36fb07796252/) | ⚠️ Unaudited |
| ERC20Splitter | operational_periphery | ethereum | n/a | [`0x69eaac...c5aa0d`](./contracts/ethereum-1/0x69eaacad9c08bf3a809688395a5f2f0ccac5aa0d/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | unit-24844 | [`0x4deca5...03abac`](./contracts/ethereum-1/0x4deca517d6817b6510798b7328f2314d3003abac/) | ⚠️ Unaudited |
| L1GNS | unknown | ethereum | unit-24856 | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | unit-24863 | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| ServiceProviderFactory | registry | ethereum | unit-24859 | [`0xd17a9b...5156c8`](./contracts/ethereum-1/0xd17a9bc90c582249e211a4f4b16721e7f65156c8/) | ⚠️ Unaudited |
| TenderSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23c24c...3a469e`](./contracts/ethereum-1/0x23c24c1253c602106255b357cd3efe260a3a469e/); arbitrum `0x2429fc...0b9781` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x54d6e288065addc74c11d9dfbefb805a73cf58c7) | proxy | arbitrum | unit-24864 | `0x388b0f...1792cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Trust_Audits_Tenderize_V4.pdf](https://github.com/Tenderize/staking/blob/main/audits/Trust_Audits_Tenderize_V4.pdf) | Trust Audits | Audit | 2024-02 | stale | Direct | contract_name | 0 | n/a |
| [halborn-tenderswap-audit.pdf](https://github.com/Tenderize/tenderswap/blob/main/audits/halborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2336c1...3599a3`](./contracts/ethereum-1/0x2336c10a1d3100343fa9911a2c57b77c333599a3/) | TenderToken | token | $58,502.30 | Verified native implementation with $58,502.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23c24c...3a469e`](./contracts/ethereum-1/0x23c24c1253c602106255b357cd3efe260a3a469e/) | TenderSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 9 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=14

Zero-match audit list:

- [3214] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [3215] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf
- [3216] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [3217] Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf
- [3218] Trust_Audits_Tenderize_V4.pdf
- [3219] halborn-tenderswap-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
