# Agentic Audit Brief: Moremoney

⚠️ Lifecycle status: DEAD - TVL changed 0.5% over 90 days

## Project Overview

- Project: Moremoney (`moremoney`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T21:36:17.376Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: avalanche
- Contract surface: 50 unique implementations (67 raw deployments)
- DeFi Llama TVL: $7,513.28
- On-chain TVL (included contracts): $18,577,610.45
- TVL by chain: Avalanche $18,577,610.45

## Project Description

Moremoney is a DeFi lending protocol on Avalanche that enables users to deposit collateral and borrow stablecoins. It supports isolated lending markets, yield-bearing strategies, and liquidation mechanisms to manage risk.

### Architecture

All contracts belong to a single product family, sharing a common set of oracles, registries, and governance contracts. Lending markets (StableLending, IsolatedLending) rely on oracles for price feeds and liquidation contracts for risk management, while strategies interact with external protocols to generate yield.

## Contract Surface Quality

- Indexed contracts: 644; live-surface contracts included: 67 (67 live, 0 unknown).
- Excluded by liveness: 565 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 2/6 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 6/144.

## Audit Coverage Summary

- Verified implementations audited: 0/43 (0.0%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 1
- Unverified implementations: 7
- Unique implementations: 50
- Raw deployments: 67
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $18,577,610.45
- Latest audit: 2021-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $18,577,610.45 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| QiErc20Delegate | token | avalanche | unit-40398 | [`0x89a415...129821`](./contracts/avalanche-43114/0x89a415b3d20098e6a6c8f7a59001c67bd3129821/) | ⚠️ Unaudited |
| MaximizerERC20 | token | avalanche | n/a | [`0x7c0841...0f73f0`](./contracts/avalanche-43114/0x7c08413cbf02202a1c13643db173f2694e0f73f0/) | ⚠️ Unaudited |
| Vault | core_logic | avalanche | n/a | [`0x9ab2de...5e8595`](./contracts/avalanche-43114/0x9ab2de34a33fb459b538c43f251eb825645e8595/) | ⚠️ Unaudited |
| YakToken | token | avalanche | n/a | [`0x59414b...776ec7`](./contracts/avalanche-43114/0x59414b3089ce2af0010e7523dea7e2b35d776ec7/) | ⚠️ Unaudited |
| ERC20InterfaceUpgradable | token | avalanche | n/a | [`0xf7d928...965d27`](./contracts/avalanche-43114/0xf7d9281e8e363584973f946201b82ba72c965d27/) | ⚠️ Unaudited |
| MoreToken | token | avalanche | n/a | [`0xd9d90f...718a05`](./contracts/avalanche-43114/0xd9d90f882cddd6063959a9d837b05cb748718a05/) | ⚠️ Unaudited |
| Stablecoin | token | avalanche | n/a | [`0x0f5774...258948`](./contracts/avalanche-43114/0x0f577433bf59560ef2a79c124e9ff99fca258948/) | ⚠️ Unaudited |
| QiErc20Delegator | token | avalanche | n/a | 2 deployments: avalanche [`0x686131...422aff`](./contracts/avalanche-43114/0x6861317b2901ee29ff10ae851af2234380422aff/); avalanche `0xd555c9...4ebccd` | ⚠️ Unaudited |
| BatchSender | periphery | avalanche | n/a | [`0xf0f929...d4957b`](./contracts/avalanche-43114/0xf0f929162751dd723fba5b86a9b3c88dc1d4957b/) | ⚠️ Unaudited |
| Comptroller | unknown | avalanche | unit-40396 | [`0x486af3...8ad9b4`](./contracts/avalanche-43114/0x486af39519b4dc9a7fccd318217352830e8ad9b4/) | ⚠️ Unaudited |
| EsGMX | unknown | avalanche | n/a | [`0xff1489...6ddd17`](./contracts/avalanche-43114/0xff1489227bbaac61a9209a08929e4c2a526ddd17/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0xabbc5f...2f4064`](./contracts/avalanche-43114/0xabbc5f99639c9b6bcb58544ddf04efa6802f4064/); avalanche `0xe547ca...d02fd2` | ⚠️ Unaudited |
| GMX | unknown | avalanche | n/a | [`0x62edc0...11c661`](./contracts/avalanche-43114/0x62edc0692bd897d2295872a9ffcac5425011c661/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 5 deployments: avalanche [`0x454e67...487a15`](./contracts/avalanche-43114/0x454e67025631c065d3cfad6d71e6892f74487a15/); avalanche `0xa389f9...e3ddb1`; avalanche `0xcdfd91...feed23`; avalanche `0xe5e9d6...bbefd0`; avalanche `0xed8cbd...7a6256` | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xd78ded...aa4ef8`](./contracts/avalanche-43114/0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8/) | ⚠️ Unaudited |
| OrderBook | unknown | avalanche | n/a | [`0x4296e3...574ae5`](./contracts/avalanche-43114/0x4296e307f108b2f583ff2f7b7270ee7831574ae5/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| PositionManager | governance | avalanche | n/a | [`0xa21b83...dcb866`](./contracts/avalanche-43114/0xa21b83e579f4315951ba658654c371520bdcb866/) | ⚠️ Unaudited |
| PositionRouter | adapter | avalanche | n/a | [`0xfff6d2...6420f8`](./contracts/avalanche-43114/0xfff6d276bc37c61a23f06410dce4a400f66420f8/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | avalanche | n/a | [`0xca8b5f...b97228`](./contracts/avalanche-43114/0xca8b5f2ff7b8d452be8972b44dc026be96b97228/) | ⚠️ Unaudited |
| Qi | unknown | avalanche | n/a | [`0x872943...76c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | ⚠️ Unaudited |
| QiAvax | unknown | avalanche | n/a | [`0x5c0401...47ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | ⚠️ Unaudited |
| ReferralStorage | token | avalanche | n/a | [`0x827ed0...d322f8`](./contracts/avalanche-43114/0x827ed045002ecdabeb6e2b0d1604cf5fc3d322f8/) | ⚠️ Unaudited |
| ReferralStorageTimelock | governance | avalanche | n/a | [`0x370a34...208ac5`](./contracts/avalanche-43114/0x370a34f6200770d79b54080150b61c0326208ac5/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x1de098...4f5554`](./contracts/avalanche-43114/0x1de098faf30bd74f22753c28db17a2560d4f5554/); avalanche `0x8db453...779064` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | avalanche | n/a | 2 deployments: avalanche [`0x82147c...4ba327`](./contracts/avalanche-43114/0x82147c5a7e850ea4e28155df107f2590fd4ba327/); avalanche `0xb70b91...8eb3b3` | ⚠️ Unaudited |
| RewardTracker | unknown | avalanche | n/a | 3 deployments: avalanche [`0x4d268a...3fea13`](./contracts/avalanche-43114/0x4d268a7d4c16ceb5a606c173bd974984343fea13/); avalanche `0x9e295b...299660`; avalanche `0xd2d116...2a728f` | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x5f719c...b6abe8`](./contracts/avalanche-43114/0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | avalanche | n/a | [`0xd90f33...e03470`](./contracts/avalanche-43114/0xd90f337564609e786a039ee39828e902cae03470/) | ⚠️ Unaudited |
| StableLending2 | core_logic | avalanche | n/a | [`0x55e343...418c50`](./contracts/avalanche-43114/0x55e343c27b794e7fcfebef4bea3de24093418c50/) | ⚠️ Unaudited |
| StakedGlp | token | avalanche | n/a | 3 deployments: avalanche [`0x0b82a1...73d57b`](./contracts/avalanche-43114/0x0b82a1ad2138e9f62454ac41b702b64e0b73d57b/); avalanche `0x5643f4...1bcb9d`; avalanche `0xae64d5...896a69` | ⚠️ Unaudited |
| StakedMaximizerERC20 | token | avalanche | n/a | [`0xece4d1...4076b4`](./contracts/avalanche-43114/0xece4d1b3c2020a312ec41a7271608326894076b4/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | n/a | [`0x6d7ad6...7b82b1`](./contracts/avalanche-43114/0x6d7ad602ec2efdf4b7d34a9a53f92f06d27b82b1/) | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | 3 deployments: avalanche [`0x4b5c3c...ca9587`](./contracts/avalanche-43114/0x4b5c3c2682c44c1c2142fbccbfb38a5bffca9587/); avalanche `0x8a68a0...afca75`; avalanche `0x8ea128...bc3718` | ⚠️ Unaudited |
| TokenManager | governance | avalanche | n/a | 2 deployments: avalanche [`0x7f98d2...d7f653`](./contracts/avalanche-43114/0x7f98d265ba2609c1534d12cf6b0976505ad7f653/); avalanche `0x8b25ba...3b4bc2` | ⚠️ Unaudited |
| Vester | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x472361...18b445`](./contracts/avalanche-43114/0x472361d3ca5f49c8e633fb50385bfad1e018b445/); avalanche `0x62331a...a3154a` | ⚠️ Unaudited |
| Vyper_contract | unknown | avalanche | n/a | [`0xb3f21f...f09a20`](./contracts/avalanche-43114/0xb3f21fc59bc06209d5fb82c474f21582aef09a20/) | ⚠️ Unaudited |
| WrapNativeStableLending | operational_periphery | avalanche | n/a | [`0x973aeb...7fa2d0`](./contracts/avalanche-43114/0x973aebac99c61b0851e7c04cd90925ae227fa2d0/) | ⚠️ Unaudited |
| WrapNativeStableLending2 | operational_periphery | avalanche | n/a | [`0x9f9b3e...a32b1e`](./contracts/avalanche-43114/0x9f9b3eed2ab01cb22547886e20deee0a8ea32b1e/) | ⚠️ Unaudited |
| WrappedStakedMaximizerERC20 | token | avalanche | n/a | [`0x2148d1...a6aad6`](./contracts/avalanche-43114/0x2148d1b21faa7eb251789a51b404fc063ca6aad6/) | ⚠️ Unaudited |
| YieldYakStrategy | core_logic | avalanche | n/a | [`0x888fc8...ffdb17`](./contracts/avalanche-43114/0x888fc8d90177a4097e196ef6bbdc7d2e8cffdb17/) | ⚠️ Unaudited |
| YieldYakStrategy2 | core_logic | avalanche | n/a | [`0x3d8f5e...77228a`](./contracts/avalanche-43114/0x3d8f5e342d5ff24f83abe2646d1a6b744977228a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GmxTimelock | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62f455...d561ad`](./contracts/avalanche-43114/0x62f45504f093ebfcc42a88e7443131898dd561ad/); avalanche `0xe57fe4...1d18b9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x091ed8...ce0630` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x101944...5c58e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3502f9...27836a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60145e...16687a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6d03fa...f29444` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x754ec0...f326f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa252b8...08a45f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Moremoney-1.0.pdf](https://github.com/MoreMoney-Finance/audits/blob/main/PeckShield-Audit-Report-Moremoney-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x7c0841...0f73f0`](./contracts/avalanche-43114/0x7c08413cbf02202a1c13643db173f2694e0f73f0/) | MaximizerERC20 | token | $1,738,378.54 | Verified native implementation with $1,738,378.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ab2de...5e8595`](./contracts/avalanche-43114/0x9ab2de34a33fb459b538c43f251eb825645e8595/) | Vault | core_logic | $1,235,807.85 | Verified native implementation with $1,235,807.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd9d90f...718a05`](./contracts/avalanche-43114/0xd9d90f882cddd6063959a9d837b05cb748718a05/) | MoreToken | token | $175,850.00 | Verified native implementation with $175,850.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f5774...258948`](./contracts/avalanche-43114/0x0f577433bf59560ef2a79c124e9ff99fca258948/) | Stablecoin | token | $28,217.74 | Verified native implementation with $28,217.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf0f929...d4957b`](./contracts/avalanche-43114/0xf0f929162751dd723fba5b86a9b3c88dc1d4957b/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xff1489...6ddd17`](./contracts/avalanche-43114/0xff1489227bbaac61a9209a08929e4c2a526ddd17/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x62edc0...11c661`](./contracts/avalanche-43114/0x62edc0692bd897d2295872a9ffcac5425011c661/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd78ded...aa4ef8`](./contracts/avalanche-43114/0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4296e3...574ae5`](./contracts/avalanche-43114/0x4296e307f108b2f583ff2f7b7270ee7831574ae5/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa21b83...dcb866`](./contracts/avalanche-43114/0xa21b83e579f4315951ba658654c371520bdcb866/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfff6d2...6420f8`](./contracts/avalanche-43114/0xfff6d276bc37c61a23f06410dce4a400f66420f8/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xca8b5f...b97228`](./contracts/avalanche-43114/0xca8b5f2ff7b8d452be8972b44dc026be96b97228/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x827ed0...d322f8`](./contracts/avalanche-43114/0x827ed045002ecdabeb6e2b0d1604cf5fc3d322f8/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x370a34...208ac5`](./contracts/avalanche-43114/0x370a34f6200770d79b54080150b61c0326208ac5/) | ReferralStorageTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82147c...4ba327`](./contracts/avalanche-43114/0x82147c5a7e850ea4e28155df107f2590fd4ba327/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5f719c...b6abe8`](./contracts/avalanche-43114/0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd90f33...e03470`](./contracts/avalanche-43114/0xd90f337564609e786a039ee39828e902cae03470/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x55e343...418c50`](./contracts/avalanche-43114/0x55e343c27b794e7fcfebef4bea3de24093418c50/) | StableLending2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xece4d1...4076b4`](./contracts/avalanche-43114/0xece4d1b3c2020a312ec41a7271608326894076b4/) | StakedMaximizerERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6d7ad6...7b82b1`](./contracts/avalanche-43114/0x6d7ad602ec2efdf4b7d34a9a53f92f06d27b82b1/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4b5c3c...ca9587`](./contracts/avalanche-43114/0x4b5c3c2682c44c1c2142fbccbfb38a5bffca9587/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x472361...18b445`](./contracts/avalanche-43114/0x472361d3ca5f49c8e633fb50385bfad1e018b445/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x973aeb...7fa2d0`](./contracts/avalanche-43114/0x973aebac99c61b0851e7c04cd90925ae227fa2d0/) | WrapNativeStableLending | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9f9b3e...a32b1e`](./contracts/avalanche-43114/0x9f9b3eed2ab01cb22547886e20deee0a8ea32b1e/) | WrapNativeStableLending2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x888fc8...ffdb17`](./contracts/avalanche-43114/0x888fc8d90177a4097e196ef6bbdc7d2e8cffdb17/) | YieldYakStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d8f5e...77228a`](./contracts/avalanche-43114/0x3d8f5e342d5ff24f83abe2646d1a6b744977228a/) | YieldYakStrategy2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=18

Zero-match audit list:

- [13522] PeckShield-Audit-Report-Moremoney-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
