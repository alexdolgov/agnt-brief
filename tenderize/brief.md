# Agentic Audit Brief: Tenderize

⚠️ Lifecycle status: DECLINING - TVL dropped 0.6% over 90 days

## Project Overview

- Project: Tenderize (`tenderize`)
- Website: [https://tenderize.me](https://tenderize.me)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:17.350Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum
- Contract surface: 43 unique implementations (86 raw deployments)
- DeFi Llama TVL: $1,095,343.00
- On-chain TVL (included contracts): $332,491,563.37
- TVL by chain: Ethereum $332,437,064.95 | Arbitrum $54,498.42

## Project Description

Tenderize is a liquid staking ecosystem that issues liquid staking tokens for validator-specific and multi-validator staking positions, allowing users to earn staking rewards while retaining liquidity. Its products include TenderSwap for instant unstaking and swaps between LSTs and underlying assets, and may also include current homepage-advertised components such as BeefyBank collateralized stablecoin borrowing/lending and the WAGYU governance/value-accrual token where those deployments are verified in scope.

### Architecture

Tenderize V1 and V2 are different generations of the liquid staking protocol, with V2 introducing a registry-based architecture. TenderSwap provides liquidity pools for tokens from both versions, and lpETH and tLPT are specific LST implementations that may integrate with either version's infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/38 (2.6%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 43
- Raw deployments: 86
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $332,491,563.37
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $332,491,563.37 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 2.6% | 2024-03 |
| Trust Audits | Tier 2 | 1 | 2.6% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Registry | registry | ethereum | 7 deployments: ethereum [`0x6454c4...093e9d`](./contracts/ethereum-1/0x6454c485890a2d8eef0e6df9cbf9b82d60093e9d/); ethereum `0x7a8586...c77bbb`; ethereum `0x95e9b5...ad3859`; ethereum `0xa7ca87...3387ee`; ethereum `0xcbc414...541d75`; ethereum `0xd976d3...b6f64c`; arbitrum `0xa7ca87...3387ee` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GraphToken | token | ethereum | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| AudiusToken | token | ethereum | 4 deployments: ethereum [`0x18aaa7...65b998`](./contracts/ethereum-1/0x18aaa7115705e8be94bffebde57af9bfc265b998/); ethereum `0x22a9cc...a87bbd`; ethereum `0xb6149d...ff9fb3`; ethereum `0xc07b7b...65800f` | ⚠️ Unaudited |
| GraphTokenLockSimple | token | ethereum | 2 deployments: ethereum [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/); ethereum `0x578517...0666db` | ⚠️ Unaudited |
| TenderToken | token | ethereum | 4 deployments: ethereum [`0x2336c1...3599a3`](./contracts/ethereum-1/0x2336c10a1d3100343fa9911a2c57b77c333599a3/); ethereum `0xc29f56...2ad2ac`; ethereum `0xc83bad...b07243`; arbitrum `0xfac385...0c4078` | ⚠️ Unaudited |
| AllocationExchange | unknown | ethereum | [`0x4a53cf...94385f`](./contracts/ethereum-1/0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f/) | ⚠️ Unaudited |
| AudiusAdminUpgradeabilityProxy | unknown | ethereum | 2 deployments: ethereum [`0x402aa6...c1118e`](./contracts/ethereum-1/0x402aa633b9acfa4c74b7ea38126dd415b9c1118e/); ethereum `0xc509a0...2cee72` | ⚠️ Unaudited |
| BancorFormula | unknown | ethereum | [`0xd0c61e...3727dc`](./contracts/ethereum-1/0xd0c61e8f15d9def697e1100663ed7da74d3727dc/) | ⚠️ Unaudited |
| ClaimsManager | governance | ethereum | 2 deployments: ethereum [`0x44617f...aa1334`](./contracts/ethereum-1/0x44617f9dced9787c3b06a05b35b4c779a2aa1334/); ethereum `0xc41bd3...066bef` | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0x24ccd4...616117`](./contracts/ethereum-1/0x24ccd4d3ac8529ff08c58f74ff6755036e616117/) | ⚠️ Unaudited |
| Curation | unknown | ethereum | 2 deployments: ethereum [`0x6d2b24...2c176c`](./contracts/ethereum-1/0x6d2b24947680fce35d5c9dd6a4e32649f12c176c/); ethereum `0x8fe00a...ce1538` | ⚠️ Unaudited |
| DelegateManager | governance | ethereum | [`0x612b43...2ff8d6`](./contracts/ethereum-1/0x612b4367a7ae2cf346dc3759623a9c22102ff8d6/) | ⚠️ Unaudited |
| DelegateManagerV2 | governance | ethereum | 2 deployments: ethereum [`0x4d7968...9fb225`](./contracts/ethereum-1/0x4d7968ebfd390d5e7926cb3587c39eff2f9fb225/); ethereum `0xf24aea...141057` | ⚠️ Unaudited |
| DisputeManager | governance | ethereum | 3 deployments: ethereum [`0x444c13...a5bfc2`](./contracts/ethereum-1/0x444c138bf2b151f28a713b0ee320240365a5bfc2/); ethereum `0x97307b...c4fb0b`; ethereum `0x9c837a...56517f` | ⚠️ Unaudited |
| EpochManager | governance | ethereum | 2 deployments: ethereum [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/); ethereum `0x64f990...e05ddb` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | [`0xf3a75e...796252`](./contracts/ethereum-1/0xf3a75e087a92770b4150fff14c6d36fb07796252/) | ⚠️ Unaudited |
| ERC20Splitter | operational_periphery | ethereum | [`0x69eaac...c5aa0d`](./contracts/ethereum-1/0x69eaacad9c08bf3a809688395a5f2f0ccac5aa0d/) | ⚠️ Unaudited |
| EthRewardsManager | governance | ethereum | [`0xfc6425...aa60d3`](./contracts/ethereum-1/0xfc642533cf9756de38831ea6b3d2b0020eaa60d3/) | ⚠️ Unaudited |
| EthRewardsManagerV2 | governance | ethereum | 2 deployments: ethereum [`0x5aa6b9...39c3b0`](./contracts/ethereum-1/0x5aa6b99a2b461ba8e97207740f0a689c5c39c3b0/); ethereum `0xf93bc6...33b6f6` | ⚠️ Unaudited |
| GNS | unknown | ethereum | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | 5 deployments: ethereum [`0x35dd16...0ae5e8`](./contracts/ethereum-1/0x35dd16dfa4ea1522c29ddd087e8f076cad0ae5e8/); ethereum `0x4deca5...03abac`; ethereum `0x7e2064...56366b`; ethereum `0x8c9d77...882875`; ethereum `0xc3177c...99dd7f` | ⚠️ Unaudited |
| GraphPreToken | token | ethereum | [`0x5d9611...559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | ⚠️ Unaudited |
| GraphProxyAdmin | governance | ethereum | [`0xf3b000...e71430`](./contracts/ethereum-1/0xf3b000a6749259539af4e49f24eec74ea0e71430/) | ⚠️ Unaudited |
| GraphSale | unknown | ethereum | 2 deployments: ethereum [`0x09695a...afa68b`](./contracts/ethereum-1/0x09695a6dff47b0053ef9553fee49d2d833afa68b/); ethereum `0x6533e9...41a2ee` | ⚠️ Unaudited |
| GraphTokenLockManager | governance | ethereum | 2 deployments: ethereum [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/); ethereum `0xfcf78a...dfa128` | ⚠️ Unaudited |
| GraphTokenLockWallet | token | ethereum | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | ⚠️ Unaudited |
| L1GNS | unknown | ethereum | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| L1Staking | unknown | ethereum | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| LibCobbDouglas | unknown | ethereum | [`0xb84828...a649fb`](./contracts/ethereum-1/0xb84828c5978f4539bbda1965f92ea34dc7a649fb/) | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 3 deployments: ethereum [`0x2bc748...52679c`](./contracts/ethereum-1/0x2bc74881d732763e61a7381f23216d06e352679c/); ethereum `0x41b1de...7e5d3f`; ethereum `0x6d8d8b...0ba291` | ⚠️ Unaudited |
| RewardsManager | governance | ethereum | 3 deployments: ethereum [`0x842ddf...94940e`](./contracts/ethereum-1/0x842ddfe3f5cadfd45c45421329cddf0af994940e/); ethereum `0x9ac758...93ed66`; ethereum `0xdbafb0...301ceb` | ⚠️ Unaudited |
| ServiceProviderFactory | registry | ethereum | 2 deployments: ethereum [`0x684c6f...96c2e1`](./contracts/ethereum-1/0x684c6f255bdfb64476723cb58deed5bafc96c2e1/); ethereum `0xd17a9b...5156c8` | ⚠️ Unaudited |
| ServiceRegistry | registry | ethereum | 2 deployments: ethereum [`0x866232...f5b3aa`](./contracts/ethereum-1/0x866232ec9a9f918a821eba561cc5fc960ef5b3aa/); ethereum `0xad0c9d...ec26e6` | ⚠️ Unaudited |
| ServiceTypeManager | governance | ethereum | 2 deployments: ethereum [`0x9efb0f...8417c5`](./contracts/ethereum-1/0x9efb0f4f38afbb4b0984d00c126e97e21b8417c5/); ethereum `0xdd6c2a...ebd1e5` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 5 deployments: ethereum [`0x296ebf...9e2a53`](./contracts/ethereum-1/0x296ebf81430ea5561143b4b15b17cc3c549e2a53/); ethereum `0x99660f...27c602`; ethereum `0xc3d14a...a1e55c`; ethereum `0xe6d97b...ae4591`; ethereum `0xea10fd...26702f` | ⚠️ Unaudited |
| SwapFactory | registry | arbitrum | 2 deployments: ethereum `0xcb78eb...0c6b06`; arbitrum [`0xac273c...fb7bb6`](./contracts/arbitrum-42161/0xac273c1187ddf51e2e57fa71e85ba0924bfb7bb6/) | ⚠️ Unaudited |
| TenderSwap | unknown | ethereum | 4 deployments: ethereum [`0x23c24c...3a469e`](./contracts/ethereum-1/0x23c24c1253c602106255b357cd3efe260a3a469e/); ethereum `0x7de47d...7fdaaa`; ethereum `0xf56f61...7b207e`; arbitrum `0x2429fc...0b9781` | ⚠️ Unaudited |
| TrustedNotifierManager | governance | ethereum | 2 deployments: ethereum [`0x53e139...cf4af7`](./contracts/ethereum-1/0x53e139da2546bcdb533aee3ec1f9222eb5cf4af7/); ethereum `0x6f0810...519d39` | ⚠️ Unaudited |

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
| Proxy (impl: 0x54d6e288065addc74c11d9dfbefb805a73cf58c7) | proxy | arbitrum | `0x388b0f...1792cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x144b7c...4b025a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16dbe8...8f54fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5fd49e...722568` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda0dfc...f8d0d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/Tenderize/staking/blob/main/audits/Halborn_Tenderize_v2_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 7 | high |
| [Trust_Audits_Tenderize_V4.pdf](https://github.com/Tenderize/staking/blob/main/audits/Trust_Audits_Tenderize_V4.pdf) | Trust Audits | Audit | 2024-02 | stale | Direct | contract_name | 7 | high |
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
| upstream | 33 |
| standard_library | 3 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=14

Zero-match audit list:

- [3214] Halborn_Tenderize_Livepeer_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [3215] Halborn_Tenderize_Polygon_Integration_Smart_Contract_Security_Assessment.pdf
- [3216] Halborn_Tenderize_The_Graph_Adapter_Smart_Contract_Security_Assessment_Report.pdf
- [3219] halborn-tenderswap-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
