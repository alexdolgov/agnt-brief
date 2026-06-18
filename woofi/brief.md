# Agentic Audit Brief: WOOFi

⚠️ Lifecycle status: DECLINING - TVL dropped 76.9% over 90 days

## Project Overview

- Project: WOOFi (`woofi`)
- Website: [https://woofi.com/en/trade?ref=DEFILLAMA](https://woofi.com/en/trade?ref=DEFILLAMA)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T06:41:29.589Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, linea, optimism, polygon, polygon-zkevm, sonic
- Contract surface: 47 unique implementations (116 raw deployments)
- DeFi Llama TVL: $17,349,423.00
- On-chain TVL (included contracts): $9,166,747.59
- TVL by chain: Arbitrum $8,492,683.76 | Polygon $499,676.90 | Bsc $74,053.50 | Base $46,411.37 | Avalanche $34,183.19 | Optimism $19,738.87

## Project Description

WOOFi is a multichain decentralized exchange and trade-and-earn platform offering spot swaps, cross-chain swaps and routing, staking, and single-sided yield products.

### Architecture

Both families share cross-chain infrastructure via AutoFarmV2_CrossChain and proxy patterns like TransparentUpgradeableProxy. WOOFi Swap provides liquidity and token infrastructure that may be utilized by WooFi Pro Perps for settlement or collateral.

## Contract Surface Quality

- Indexed contracts: 742; live-surface contracts included: 116 (110 live, 6 unknown).
- Excluded by liveness: 576 inactive, 50 singleton, 0 uninitialized.
- Deployment units: 4/31 live.
- Detected codebases: none
- Unverified dependencies: 5/19.

## Audit Coverage Summary

- Verified implementations audited: 8/27 (29.6%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 47
- Raw deployments: 116
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/woofi/information))
- ASD (verified + unaudited TVL): $8,699,599.13
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 3 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $8,699,599.13 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 7 | 25.9% | 2024-08 |
| PeckShield | Tier 2 | 2 | 7.4% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WooSuperChargerVaultV2 | core_logic | polygon | n/a | 15 deployments: bsc `0x5cb9ba...fb3158`; bsc `0x7eb8d4...be4cad`; polygon [`0x1109e0...3cf549`](./contracts/polygon-137/0x1109e03516eb25eab2150d0b274b8d4f5f3cf549/); polygon `0x90a2aa...abd085`; polygon `0x9dd5dd...9b0699`; polygon `0xedbb74...1799ac`; base `0x44df09...746cb8`; base `0x8c6030...5736e7`; base `0xb77212...e8cb43`; arbitrum `0x7f3f2a...295bb1`; arbitrum `0xa78043...52f7d8`; arbitrum `0xd2fdab...5b56b1`; avalanche `0x11b29a...da836a`; avalanche `0x1cd7b3...02e6c4`; avalanche `0x866810...c60625` | ✅ Audited |
| WooSuperChargerVault | core_logic | polygon | n/a | 7 deployments: polygon [`0x0ba6c3...0ecb9e`](./contracts/polygon-137/0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e/); polygon `0x404b18...a9d503`; polygon `0x8ea0eb...e07a5c`; arbitrum `0x5a6b07...8cad62`; arbitrum `0xba452b...1c2d08`; avalanche `0x86a639...b9abc7`; avalanche `0xfc0e57...e312af` | ✅ Audited |
| WooLendingManager | core_logic | polygon | n/a | 10 deployments: polygon [`0x01e42c...63f139`](./contracts/polygon-137/0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139/); polygon `0x697c97...6ffccd`; polygon `0x9f46a7...bff18d`; arbitrum `0x5c7ff2...bb7bc5`; arbitrum `0x6fc2c9...8f3f08`; arbitrum `0x79a545...3be767`; arbitrum `0xfeeced...3ac2d6`; avalanche `0x385e06...b10f73`; avalanche `0x697c97...6ffccd`; avalanche `0xc8ec7f...dd9dc7` | ✅ Audited |
| WooracleV2_2 | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x2a8ede...1a8428`](./contracts/polygon-137/0x2a8ede62d0717c8c92b88639ecf603fdf31a8428/); arbitrum `0xcf4ea1...8934ec` | ✅ Audited |
| WooStakingLocal | unknown | arbitrum | n/a | [`0x2cfa72...b7d8e2`](./contracts/arbitrum-42161/0x2cfa72e7f58dc82b990529450ffa83791db7d8e2/) | ✅ Audited |
| WooStakingManager | governance | arbitrum | n/a | [`0xa9e245...2924fb`](./contracts/arbitrum-42161/0xa9e245c1fa7e17263cc7c896488a3da8072924fb/) | ✅ Audited |
| WooStakingProxy | proxy | avalanche | n/a | 4 deployments: ethereum `0xba91ff...a89b13`; optimism `0xba91ff...a89b13`; polygon `0xba91ff...a89b13`; avalanche [`0x3bd968...1386e3`](./contracts/avalanche-43114/0x3bd96847c40de8b0f20da32568bd15462c1386e3/) | ✅ Audited |
| WooWithdrawManagerV2 | operational_periphery | avalanche | n/a | 10 deployments: polygon `0x382a9b...150efb`; polygon `0x3fe2c8...48b3b9`; polygon `0x6f09ae...8dfc01`; polygon `0x7f7821...87fd4c`; arbitrum `0xbfe3d2...9f09ac`; arbitrum `0xd05b95...5d03ac`; arbitrum `0xe76c97...53d3fe`; avalanche [`0x1bb2eb...9602c9`](./contracts/avalanche-43114/0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9/); avalanche `0x755e4a...1b56f6`; avalanche `0xa429b4...a59664` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-35595 | [`0xcafcd8...efd07b`](./contracts/arbitrum-42161/0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-35574 | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x871f2f...a5e527`](./contracts/optimism-10/0x871f2f2ff935fd1ed867842ff2a7bfd051a5e527/) | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x0c9044...4be49e`](./contracts/avalanche-43114/0x0c90447b662c2fcb62dc104dfc4563d0dd4be49e/); avalanche `0xc48ab7...e2e112` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x968d3b...416b22`](./contracts/arbitrum-42161/0x968d3b4faa87864ab19cf2982510b60c2d416b22/); arbitrum `0xc63c64...58b9cb`; arbitrum `0xff0a28...2a86f6` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | unit-35601 | [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | unit-35578 | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MpRewarder | unknown | arbitrum | n/a | [`0xa74bb3...a743d7`](./contracts/arbitrum-42161/0xa74bb3643da439e89010743909d0493abca743d7/) | ⚠️ Unaudited |
| MysteryBox | unknown | arbitrum | n/a | [`0x9d9200...90715e`](./contracts/arbitrum-42161/0x9d9200aabc72c681eec86bb8494ab495ca90715e/) | ⚠️ Unaudited |
| NFTBoosterV2 | core_logic | arbitrum | n/a | [`0x2ebca5...3ee90f`](./contracts/arbitrum-42161/0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f/) | ⚠️ Unaudited |
| QuestTokenRewardManager | governance | arbitrum | n/a | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | ⚠️ Unaudited |
| RewardBooster | core_logic | arbitrum | n/a | [`0xf26eb5...92747b`](./contracts/arbitrum-42161/0xf26eb53367066cde380cd06a5d1469985b92747b/) | ⚠️ Unaudited |
| RewardCampaignManager | core_logic | arbitrum | n/a | [`0x927f8c...8d4234`](./contracts/arbitrum-42161/0x927f8c16c9e802cb3012989fab79eb8c098d4234/) | ⚠️ Unaudited |
| SimpleRewarder | unknown | arbitrum | n/a | [`0xa6000b...e65bd3`](./contracts/arbitrum-42161/0xa6000b7d3634534266a2ecc4d478f5cdc1e65bd3/) | ⚠️ Unaudited |
| WooAccessManager | governance | polygon | n/a | 2 deployments: polygon [`0x925afa...5dd965`](./contracts/polygon-137/0x925afa2318825fcac673ef4ef551208b125dd965/); arbitrum `0xd14a99...caa99e` | ⚠️ Unaudited |
| WooStakingVault | core_logic | arbitrum | n/a | 3 deployments: polygon `0x9bcf8b...9b405b`; arbitrum [`0x932178...3dc99d`](./contracts/arbitrum-42161/0x9321785d257b3f0ef7ff75436a87141c683dc99d/); avalanche `0xcd1b98...e09db0` | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | polygon | n/a | 4 deployments: polygon [`0x39467a...2ec735`](./contracts/polygon-137/0x39467a0debf360a82f83880f13ebdf7f0c2ec735/); polygon `0xcf6ce5...059de5`; arbitrum `0x7de3fc...bca340`; arbitrum `0xe77adf...0ead6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x1416e1...0703d9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x286ab1...f4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6626c4...5e8d8a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01c8f6...624ca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0aed81...5c6ba2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cee55...1df408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x114ff6...2321af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e14ca...0cd7c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3509ff...117b00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cd52e...215c26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f57cb...ae54d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c2db3...d86cb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70ea48...226343` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa254ee...669e29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb1566...9be193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd12087...a7d815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1eeb7...63b875` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes) | Sherlock | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [here](https://audits.sherlock.xyz/contests/277) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://skynet.certik.com/projects/woofiswap) | CertiK | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [here](https://hackmd.io/@verilog/woofi-swap) | Verilog | Audit | 2021-10 | stale | Direct | contract_name | 0 | n/a |
| [WOOFI Stake - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFI%20Stake%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-08 | aging | Direct | contract_name | 36 | high |
| [WOOFi Swap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFi%20Swap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/woofi/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [here](https://github.com/Zellic/publications) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WooFiEarn-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WooFiEarn-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 17 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x0c9044...4be49e`](./contracts/avalanche-43114/0x0c90447b662c2fcb62dc104dfc4563d0dd4be49e/) | WOOFiVaultV2 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x968d3b...416b22`](./contracts/arbitrum-42161/0x968d3b4faa87864ab19cf2982510b60c2d416b22/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa74bb3...a743d7`](./contracts/arbitrum-42161/0xa74bb3643da439e89010743909d0493abca743d7/) | MpRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d9200...90715e`](./contracts/arbitrum-42161/0x9d9200aabc72c681eec86bb8494ab495ca90715e/) | MysteryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ebca5...3ee90f`](./contracts/arbitrum-42161/0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f/) | NFTBoosterV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | QuestTokenRewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf26eb5...92747b`](./contracts/arbitrum-42161/0xf26eb53367066cde380cd06a5d1469985b92747b/) | RewardBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x927f8c...8d4234`](./contracts/arbitrum-42161/0x927f8c16c9e802cb3012989fab79eb8c098d4234/) | RewardCampaignManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa6000b...e65bd3`](./contracts/arbitrum-42161/0xa6000b7d3634534266a2ecc4d478f5cdc1e65bd3/) | SimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x925afa...5dd965`](./contracts/polygon-137/0x925afa2318825fcac673ef4ef551208b125dd965/) | WooAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x932178...3dc99d`](./contracts/arbitrum-42161/0x9321785d257b3f0ef7ff75436a87141c683dc99d/) | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39467a...2ec735`](./contracts/polygon-137/0x39467a0debf360a82f83880f13ebdf7f0c2ec735/) | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=187

Zero-match audit list:

- [3828] here
- [3830] here
- [3831] DL audit link
- [3832] here
- [15004] here

Fork inheritance lineage and inherited audits are included when available.
