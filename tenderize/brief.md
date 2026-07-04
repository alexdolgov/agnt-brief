# Agentic Audit Brief: Tenderize

## Project Overview

- Project: Tenderize (`tenderize`)
- Website: [https://tenderize.me](https://tenderize.me)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.860Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, ethereum
- Contract surface: 21 unique implementations (26 raw deployments)
- DeFi Llama TVL: $724,869.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 41 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (upgradeabilityproxy, baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 26 (21 live, 5 unknown).
- Excluded by liveness: 47 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/15 (13.3%)
- Deployed-live implementations: 16 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/16
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 21
- Raw deployments: 26
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trust Audits | Tier 2 | 2 | 12.5% | 2024-02 |
| Halborn | Tier 2 | 1 | 6.3% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Renderer | unknown | arbitrum | n/a | [`0x43c3db...8e008d`](./contracts/arbitrum-42161/0x43c3dbee4d6e884dc2b81e9432ecee29dd8e008d/) | ✅ Audited |
| Tenderizer | unknown | arbitrum | n/a | [`0x4a3c14...6bc9ba`](./contracts/arbitrum-42161/0x4a3c14d7450c30f712e89659af21f90df56bc9ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AudiusToken | token | ethereum | n/a | [`0x18aaa7...65b998`](./contracts/ethereum-1/0x18aaa7115705e8be94bffebde57af9bfc265b998/) | ⚠️ Unaudited |
| ClaimsManager | governance | ethereum | n/a | [`0x44617f...aa1334`](./contracts/ethereum-1/0x44617f9dced9787c3b06a05b35b4c779a2aa1334/) | ⚠️ Unaudited |
| DelegateManagerV2 | governance | ethereum | n/a | [`0x4d7968...9fb225`](./contracts/ethereum-1/0x4d7968ebfd390d5e7926cb3587c39eff2f9fb225/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0xf3a75e...796252`](./contracts/ethereum-1/0xf3a75e087a92770b4150fff14c6d36fb07796252/) | ⚠️ Unaudited |
| ERC20Splitter | operational_periphery | ethereum | n/a | [`0x69eaac...c5aa0d`](./contracts/ethereum-1/0x69eaacad9c08bf3a809688395a5f2f0ccac5aa0d/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x4deca5...03abac`](./contracts/ethereum-1/0x4deca517d6817b6510798b7328f2314d3003abac/) | ⚠️ Unaudited |
| Graph | unknown | ethereum | n/a | [`0xe66f3a...329a07`](./contracts/ethereum-1/0xe66f3ab2f5621fe12ebf37754e1af6d05b329a07/) | ⚠️ Unaudited |
| GraphToken | token | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| L1GNS | unknown | ethereum | n/a | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | n/a | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6454c4...093e9d`](./contracts/ethereum-1/0x6454c485890a2d8eef0e6df9cbf9b82d60093e9d/); ethereum `0x95e9b5...ad3859`; ethereum `0xcbc414...541d75` | ⚠️ Unaudited |
| ServiceProviderFactory | registry | ethereum | n/a | [`0xd17a9b...5156c8`](./contracts/ethereum-1/0xd17a9bc90c582249e211a4f4b16721e7f65156c8/) | ⚠️ Unaudited |
| TenderSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23c24c...3a469e`](./contracts/ethereum-1/0x23c24c1253c602106255b357cd3efe260a3a469e/); arbitrum `0x2429fc...0b9781` | ⚠️ Unaudited |
| TenderToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2336c1...3599a3`](./contracts/ethereum-1/0x2336c10a1d3100343fa9911a2c57b77c333599a3/); ethereum `0xc29f56...2ad2ac`; arbitrum `0xfac385...0c4078` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x54d6e288065addc74c11d9dfbefb805a73cf58c7) | proxy | arbitrum | n/a | `0x388b0f...1792cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x144b7c...4b025a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16dbe8...8f54fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fd49e...722568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda0dfc...f8d0d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [Trust_Audits_Tenderize_V4.pdf](https://github.com/Tenderize/staking/blob/main/audits/Trust_Audits_Tenderize_V4.pdf) | Trust Audits | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [halborn-tenderswap-audit.pdf](https://github.com/Tenderize/tenderswap/blob/main/audits/halborn-tenderswap-audit.pdf) | Halborn | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x18aaa7...65b998`](./contracts/ethereum-1/0x18aaa7115705e8be94bffebde57af9bfc265b998/) | AudiusToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44617f...aa1334`](./contracts/ethereum-1/0x44617f9dced9787c3b06a05b35b4c779a2aa1334/) | ClaimsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d7968...9fb225`](./contracts/ethereum-1/0x4d7968ebfd390d5e7926cb3587c39eff2f9fb225/) | DelegateManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69eaac...c5aa0d`](./contracts/ethereum-1/0x69eaacad9c08bf3a809688395a5f2f0ccac5aa0d/) | ERC20Splitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4deca5...03abac`](./contracts/ethereum-1/0x4deca517d6817b6510798b7328f2314d3003abac/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66f3a...329a07`](./contracts/ethereum-1/0xe66f3ab2f5621fe12ebf37754e1af6d05b329a07/) | Graph | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | GraphToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | L1GNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | L1Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6454c4...093e9d`](./contracts/ethereum-1/0x6454c485890a2d8eef0e6df9cbf9b82d60093e9d/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd17a9b...5156c8`](./contracts/ethereum-1/0xd17a9bc90c582249e211a4f4b16721e7f65156c8/) | ServiceProviderFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23c24c...3a469e`](./contracts/ethereum-1/0x23c24c1253c602106255b357cd3efe260a3a469e/) | TenderSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2336c1...3599a3`](./contracts/ethereum-1/0x2336c10a1d3100343fa9911a2c57b77c333599a3/) | TenderToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [14862] hacken.io/audits
- [14863] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14864] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf
- [14865] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [14868] halborn-tenderswap-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
