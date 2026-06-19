# Agentic Audit Brief: Loopring

⚠️ Lifecycle status: DECLINING - TVL dropped 10.9% over 90 days

## Project Overview

- Project: Loopring (`loopring`)
- Website: [https://loopring.org/#/](https://loopring.org/#/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:28.446Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: base, ethereum
- Contract surface: 67 unique implementations (93 raw deployments)
- DeFi Llama TVL: $8,551,737.62
- On-chain TVL (included contracts): $2,433,916.36
- TVL by chain: Ethereum $2,433,916.11 | Base $0.24

## Project Description

Loopring is a zkRollup Layer 2 exchange and payment protocol that uses zero-knowledge rollups to provide high-throughput, low-cost, non-custodial trading, transfers, and payments. Its system includes DEX and AMM functionality with off-chain batching/order processing and on-chain settlement. DefiLlama currently reports Loopring TVL across Ethereum, Base, and Taiko; any contract-surface or coverage analysis should distinguish the indexed contract set from the full DefiLlama-reported chain set.

### Architecture

The ExchangeV3 contract serves as the central hub for trade settlement, while numerous LoopringAmmPool proxies provide liquidity for individual token pairs. Supporting infrastructure like the PriceOracleDelegate and OfficialGuardian ensures accurate pricing and security across the system.

## Contract Surface Quality

- Indexed contracts: 439; live-surface contracts included: 93 (5 live, 88 unknown).
- Excluded by liveness: 207 inactive, 139 singleton, 0 uninitialized.
- Deployment units: 0/13 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 8/77.

## Audit Coverage Summary

- Verified implementations audited: 3/20 (15.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 67
- Raw deployments: 93
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $2,433,916.36
- Latest audit: 2019-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,433,916.36 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 15.0% | 2019-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlockVerifier | periphery | base | n/a | 5 deployments: base [`0x18d587...2f15f9`](./contracts/base-8453/0x18d5879a890b135b36190f6df06f9046c32f15f9/); base `0x921c0e...c44f91`; base `0x95bd4d...f396e3`; base `0xae8de5...0032ad`; base `0xc9a437...591c94` | ✅ Audited |
| LoopringV3 | unknown | base | n/a | 4 deployments: base [`0x1a75c2...894718`](./contracts/base-8453/0x1a75c2a6ccedfe038c12574aaaa93f5118894718/); base `0x267b9b...836c94`; base `0x3edbc7...211b5f`; base `0x571d92...73b67d` | ✅ Audited |
| ProtocolFeeVault | core_logic | base | n/a | 5 deployments: base [`0x277c2c...2ba8e4`](./contracts/base-8453/0x277c2c086f7435496e7d892ac370e5bede2ba8e4/); base `0x69ef9d...b5e965`; base `0x883f31...9fc7ac`; base `0xa3ac9b...8fc765`; base `0xe3a12f...978c09` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefaultDepositContract | core_logic | base | n/a | 4 deployments: ethereum `0x674bdf...66bd3f`; base [`0x4ee77c...2bec55`](./contracts/base-8453/0x4ee77ca36a8df5ff9c4bc9edc1b3a5ced22bec55/); base `0x65b0c7...442010`; base `0x732771...dc99fe` | ⚠️ Unaudited |
| AgentRegistry | registry | base | n/a | 5 deployments: base [`0x0d9b7f...87786b`](./contracts/base-8453/0x0d9b7f5bf6b81f0418233a1c2bffe6b4fd87786b/); base `0x1b5544...fd1e69`; base `0x46c362...26644c`; base `0x533379...4f9f25`; base `0xd06824...f04eff` | ⚠️ Unaudited |
| DepositAgent | unknown | base | n/a | 2 deployments: base [`0x1b561b...764d9f`](./contracts/base-8453/0x1b561b2d785eb5344d489901fe4b724e5d764d9f/); base `0xfb8c97...85459a` | ⚠️ Unaudited |
| ExchangeAdmins | unknown | base | n/a | [`0x0e77d9...4a691c`](./contracts/base-8453/0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c/) | ⚠️ Unaudited |
| ExchangeBalances | unknown | base | n/a | [`0x013aa5...826069`](./contracts/base-8453/0x013aa50dc4a1b11c6a1b37c2961895c9dc826069/) | ⚠️ Unaudited |
| ExchangeBlocks | unknown | base | n/a | [`0x874507...8002c7`](./contracts/base-8453/0x8745074248634f37327ee748137c8b31238002c7/) | ⚠️ Unaudited |
| ExchangeDeposits | unknown | base | n/a | [`0x7e185c...d4359c`](./contracts/base-8453/0x7e185c0233d4f5473e540fb2c72ff0e994d4359c/) | ⚠️ Unaudited |
| ExchangeGenesis | unknown | base | n/a | [`0x0d75ce...3c1764`](./contracts/base-8453/0x0d75ce2c4534d273d42c29371c9749aa133c1764/) | ⚠️ Unaudited |
| ExchangeTokens | token | base | n/a | [`0x99ce8b...8a96e9`](./contracts/base-8453/0x99ce8b04a1b4f20d8491446fc9280e9d1b8a96e9/) | ⚠️ Unaudited |
| ExchangeWithdrawals | operational_periphery | base | n/a | [`0xc2d1e8...846105`](./contracts/base-8453/0xc2d1e8fb0c10810bb888231e7b85118042846105/) | ⚠️ Unaudited |
| FastWithdrawalAgent | operational_periphery | base | n/a | 2 deployments: base [`0x2023c4...20d99f`](./contracts/base-8453/0x2023c4c0ef8fe9a1883ec8a08b456e0c9b20d99f/); base `0x41a2e4...aae769` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | operational_periphery | base | n/a | 2 deployments: base [`0x058b93...7efcac`](./contracts/base-8453/0x058b93012eedef1795b1028f41080ed5387efcac/); base `0xceefae...d86415` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | ethereum | n/a | 4 deployments: ethereum [`0x153cdd...aa8512`](./contracts/ethereum-1/0x153cddd727e407cb951f728f24beb9a5faaa8512/); base `0x43d05b...501afe`; base `0x68499b...3737a4`; base `0xadcd97...5bcc59` | ⚠️ Unaudited |
| NFTFactory | registry | ethereum | n/a | [`0x97be94...b911db`](./contracts/ethereum-1/0x97be94250aef1df307749afaed27f9bc8ab911db/) | ⚠️ Unaudited |
| OwnedUpgradabilityProxy | unknown | base | n/a | [`0xe2f623...1fd927`](./contracts/base-8453/0xe2f62365279ef91646da51f0952d8a391a1fd927/) | ⚠️ Unaudited |
| RabbitWithdrawalAgent | operational_periphery | base | n/a | 3 deployments: ethereum `0xab78c3...9d3264`; base [`0x3b740f...553f93`](./contracts/base-8453/0x3b740fee3ed82fa676286938e124a8bb74553f93/); base `0xd06d38...6fae3c` | ⚠️ Unaudited |
| StakingBridge | operational_periphery | ethereum | n/a | [`0x199ca6...8ca079`](./contracts/ethereum-1/0x199ca6e284f344210f9a3090d1eaf7d3b88ca079/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x02427f...9c008b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x038363...fadd53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04f6de...805466` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b6c46...21402c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17ca15...0e08a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18dd1d...960ac7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a716e...d9545e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d5a52...3aae45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x318485...4c192e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x330e34...6e994f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3354e9...cf62f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c9d36...80e599` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x415403...2251f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48b65e...1c37dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2103...77611f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5507e4...ffe31c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55911b...68763c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59d0e7...4cc22a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bb8ef...1f1cb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6175bf...4e2c92` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ae781...184034` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d6505...7b13b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e7bd6...446570` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82f58f...d75158` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x849432...2734ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x891f07...22d503` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e7e54...0303da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x925af9...877cc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a45ea...5b5930` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aefb2...a90a1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa45802...4d8b8f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9c123...457b44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeb439...817bc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf92b8...7e62cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3263d...cba317` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5ca74...be2cdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe18e3...dac9da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe639c...b8db46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7ee2c...61be59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc39ac...f12154` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd14b3...b43f67` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd89483...fa4aad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdef4f4...1c6253` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe87654...ea98ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed8dec...cd4e82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3392d...21ac08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4662b...8a4a5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [LoopringV3_1_Report_EN.pdf](https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/security_audit/LoopringV3_1_Report_EN.pdf) | unknown | Audit | 2019-11 | stale | Direct | contract_name | 14 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4ee77c...2bec55`](./contracts/base-8453/0x4ee77ca36a8df5ff9c4bc9edc1b3a5ced22bec55/) | DefaultDepositContract | core_logic | $2,433,916.36 | Verified native implementation with $2,433,916.36 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d9b7f...87786b`](./contracts/base-8453/0x0d9b7f5bf6b81f0418233a1c2bffe6b4fd87786b/) | AgentRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b561b...764d9f`](./contracts/base-8453/0x1b561b2d785eb5344d489901fe4b724e5d764d9f/) | DepositAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e77d9...4a691c`](./contracts/base-8453/0x0e77d9716e3f6a6ee4763fcc59ed164cf74a691c/) | ExchangeAdmins | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x013aa5...826069`](./contracts/base-8453/0x013aa50dc4a1b11c6a1b37c2961895c9dc826069/) | ExchangeBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x874507...8002c7`](./contracts/base-8453/0x8745074248634f37327ee748137c8b31238002c7/) | ExchangeBlocks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7e185c...d4359c`](./contracts/base-8453/0x7e185c0233d4f5473e540fb2c72ff0e994d4359c/) | ExchangeDeposits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d75ce...3c1764`](./contracts/base-8453/0x0d75ce2c4534d273d42c29371c9749aa133c1764/) | ExchangeGenesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x99ce8b...8a96e9`](./contracts/base-8453/0x99ce8b04a1b4f20d8491446fc9280e9d1b8a96e9/) | ExchangeTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc2d1e8...846105`](./contracts/base-8453/0xc2d1e8fb0c10810bb888231e7b85118042846105/) | ExchangeWithdrawals | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2023c4...20d99f`](./contracts/base-8453/0x2023c4c0ef8fe9a1883ec8a08b456e0c9b20d99f/) | FastWithdrawalAgent | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x058b93...7efcac`](./contracts/base-8453/0x058b93012eedef1795b1028f41080ed5387efcac/) | ForcedWithdrawalAgent | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153cdd...aa8512`](./contracts/ethereum-1/0x153cddd727e407cb951f728f24beb9a5faaa8512/) | LoopringIOExchangeOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97be94...b911db`](./contracts/ethereum-1/0x97be94250aef1df307749afaed27f9bc8ab911db/) | NFTFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b740f...553f93`](./contracts/base-8453/0x3b740fee3ed82fa676286938e124a8bb74553f93/) | RabbitWithdrawalAgent | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x199ca6...8ca079`](./contracts/ethereum-1/0x199ca6e284f344210f9a3090d1eaf7d3b88ca079/) | StakingBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
