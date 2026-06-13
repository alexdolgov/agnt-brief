# Agentic Audit Brief: Hegic

## Project Overview

- Project: Hegic (`hegic`)
- Website: [https://www.hegic.co](https://www.hegic.co)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-06-13T00:26:24.517Z
- Pipeline run: v2-pipeline-2026-06-13-546062-e35d
- Chains: arbitrum, ethereum
- Contract surface: 76 unique implementations (111 raw deployments)
- DeFi Llama TVL: $8,506,910.82
- On-chain TVL (included contracts): $54,068.48
- TVL by chain: Ethereum $54,068.48

## Project Description

Hegic is a peer-to-pool on-chain options protocol tracked on Arbitrum and Ethereum. The current product lets users trade ETH and WBTC call and put options, including ATM and OTM options, and offers one-click option strategies backed by protocol liquidity pools. Legacy Ethereum HegicCALL/HegicPUT and HegicETHPool/HegicERCPool deployments should be distinguished from the current multi-chain Hegic options system, whose TVL is primarily on Arbitrum.

### Architecture

The Hegic contract acts as a registry or access control layer for the option contracts (HegicCALL and HegicPUT), which in turn draw liquidity from the shared HegicETHPool and HegicERCPool. These pools serve as the common underwriting infrastructure for all option types.

## Audit Coverage Summary

- Verified implementations audited: 9/40 (22.5%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 76
- Raw deployments: 111
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $54,068.48
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 9 | 22.5% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HegicETHPool | core_logic | ethereum | [`0x878f15...4e140b`](./contracts/ethereum-1/0x878f15ffc8b894a1ba7647c7176e4c01f74e140b/) | ✅ Audited |
| CoverPool | core_logic | arbitrum | [`0xd47ef9...b231be`](./contracts/arbitrum-42161/0xd47ef934e301e0ee3b1ce0e3eebcb64de8b231be/) | ✅ Audited |
| HegicERCPool | core_logic | ethereum | [`0x20dd9e...ad5de7`](./contracts/ethereum-1/0x20dd9e22d22dd0a6ef74a520cb08303b5fad5de7/) | ✅ Audited |
| HegicETHOptions | unknown | ethereum | [`0xefc0ee...9ecfa2`](./contracts/ethereum-1/0xefc0eeadc1132a12c9487d800112693bf49ecfa2/) | ✅ Audited |
| HegicStaking | unknown | ethereum | 3 deployments: ethereum [`0x956bed...376f9f`](./contracts/ethereum-1/0x956bed5f95d3cfc16581c3892931c0d110376f9f/); ethereum `0xc9ac1f...b897a2`; ethereum `0xe7e8a2...b47336` | ✅ Audited |
| HegicStakingETH | unknown | ethereum | [`0x1ef61e...c7f69a`](./contracts/ethereum-1/0x1ef61e3e5676ec182eed6f052f8920fd49c7f69a/) | ✅ Audited |
| HegicStakingWBTC | token | ethereum | [`0x840a1a...7e515b`](./contracts/ethereum-1/0x840a1ae46b7364855206eb5b7286ab7e207e515b/) | ✅ Audited |
| HegicWBTCOptions | unknown | ethereum | [`0x396124...8723bd`](./contracts/ethereum-1/0x3961245db602ed7c03eeccda33ea3846bd8723bd/) | ✅ Audited |
| OperationalTreasury | unknown | arbitrum | [`0xec096e...377371`](./contracts/arbitrum-42161/0xec096ea6eb9aa5ea689b0cf00882366e92377371/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WhiteUSDCPool | core_logic | ethereum | [`0xda0606...468629`](./contracts/ethereum-1/0xda0606037834f4279dc590434231f1e01c468629/) | ⚠️ Unaudited |
| HegicCouponPool | core_logic | ethereum | [`0x53fd0e...724731`](./contracts/ethereum-1/0x53fd0e5313f249da94ac19ca1a325585d6724731/) | ⚠️ Unaudited |
| WHERC20v2 | token | ethereum | 2 deployments: ethereum [`0x15088c...fa160d`](./contracts/ethereum-1/0x15088c29cc3106f770ff8f5e5627cb1f62fa160d/); ethereum `0xf19c3f...739dc4` | ⚠️ Unaudited |
| AdaptivePriceCalculator | operational_periphery | ethereum | 2 deployments: ethereum [`0x743839...009b20`](./contracts/ethereum-1/0x74383959d8d80004e3162aaa957fc30e8a009b20/); ethereum `0x764d4d...eae72b` | ⚠️ Unaudited |
| AdaptivePutPriceCalculator | operational_periphery | ethereum | 3 deployments: ethereum [`0x1125e7...71701a`](./contracts/ethereum-1/0x1125e739d117f6044f9be06b0209ba9d8671701a/); ethereum `0x8eac1c...bb3613`; ethereum `0xa611ea...1ee9c7` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | 2 deployments: ethereum [`0x5f4ec3...5b8419`](./contracts/ethereum-1/0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419/); ethereum `0xf40300...bee88c` | ⚠️ Unaudited |
| Exerciser | unknown | ethereum | 2 deployments: ethereum [`0x3ab731...ebd8b2`](./contracts/ethereum-1/0x3ab731de9b2cbbd37122ceeb0ca64db35cebd8b2/); ethereum `0xd8d48a...9a1f02` | ⚠️ Unaudited |
| Facade | unknown | ethereum | [`0xd56b5a...e422dc`](./contracts/ethereum-1/0xd56b5a63dac64990e7eccd046ec7119e38e422dc/) | ⚠️ Unaudited |
| HedgeContract | unknown | ethereum | [`0x27b612...afe016`](./contracts/ethereum-1/0x27b6125328ca57d5d96baaa4f9ca8c5edbafe016/) | ⚠️ Unaudited |
| Hegic | unknown | ethereum | [`0x584bc1...768430`](./contracts/ethereum-1/0x584bc13c7d411c00c01a62e8019472de68768430/) | ⚠️ Unaudited |
| HegicCALL | unknown | ethereum | 4 deployments: ethereum [`0x16171a...c90eea`](./contracts/ethereum-1/0x16171a60b6a523b8fc2250b222862de93fc90eea/); ethereum `0xa8c846...b556d9`; ethereum `0xb9ed94...33fb6d`; ethereum `0xfa77f7...1b215a` | ⚠️ Unaudited |
| HegicCallOptions | unknown | ethereum | 4 deployments: ethereum [`0x0b660d...2ba2f7`](./contracts/ethereum-1/0x0b660d66b05a743df3755058c2e63d5a5f2ba2f7/); ethereum `0x1c4823...838b04`; ethereum `0xd63d91...e2dc53`; ethereum `0xedf3b2...abb938` | ⚠️ Unaudited |
| HegicInitialOffering | unknown | ethereum | [`0x1b8782...e9915d`](./contracts/ethereum-1/0x1b8782d4a7da5b63a934e78a6563fdd122e9915d/) | ⚠️ Unaudited |
| HegicOperationalTreasury | unknown | arbitrum | [`0xb0f9f0...7b4ab3`](./contracts/arbitrum-42161/0xb0f9f032158510cd4a926f9263abc86baf7b4ab3/) | ⚠️ Unaudited |
| HegicPUT | unknown | ethereum | 5 deployments: ethereum [`0x7094e7...9d270b`](./contracts/ethereum-1/0x7094e706e75e13d1e0ea237f71a7c4511e9d270b/); ethereum `0x790e96...82dd8b`; ethereum `0x7a42a6...cc1ab6`; ethereum `0x99066c...29ce16`; ethereum `0xa5b0c4...4415e7` | ⚠️ Unaudited |
| HegicPutOptions | unknown | ethereum | 4 deployments: ethereum [`0x3bd72b...cf2a26`](./contracts/ethereum-1/0x3bd72bbb3262818ae94fc30de674213961cf2a26/); ethereum `0x7e8f16...348152`; ethereum `0xd05a93...334b39`; ethereum `0xd45cc8...80f3be` | ⚠️ Unaudited |
| HegicSoftGovernance | unknown | ethereum | [`0xb6a5ba...fd178c`](./contracts/ethereum-1/0xb6a5bacbb2850ee4650d08f33f93df0160fd178c/) | ⚠️ Unaudited |
| HegicStakeAndCover | unknown | arbitrum | [`0x60898d...9d5d5d`](./contracts/arbitrum-42161/0x60898dfa3c6e8ba4998b5f3be25fb0b0b69d5d5d/) | ⚠️ Unaudited |
| HegicStrategyCall | unknown | arbitrum | [`0x05458b...c87560`](./contracts/arbitrum-42161/0x05458b7d9531ead242290de60beaa3cc10c87560/) | ⚠️ Unaudited |
| HegicStrategyInverseLongCondor | unknown | arbitrum | [`0x87dfcf...e42686`](./contracts/arbitrum-42161/0x87dfcfee4715dad66e8b50f7ebdde8aa66e42686/) | ⚠️ Unaudited |
| HegicStrategyPut | unknown | arbitrum | [`0xaa0dfb...9b22aa`](./contracts/arbitrum-42161/0xaa0dfbfb8da7f45bb41c0fb68b71faeb959b22aa/) | ⚠️ Unaudited |
| HLTPs | unknown | ethereum | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | ⚠️ Unaudited |
| OptionsManager | governance | ethereum | 2 deployments: ethereum [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/); ethereum `0xc4254e...bfc968` | ⚠️ Unaudited |
| PositionsManager | unknown | arbitrum | [`0x5fe380...9a76d5`](./contracts/arbitrum-42161/0x5fe380d68fee022d8acd42dc4d36fbfb249a76d5/) | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | ethereum | 10 deployments: ethereum [`0x011ffe...7c041c`](./contracts/ethereum-1/0x011ffee87ad2fe4c091b0d9a7bd70bfc697c041c/); ethereum `0x25ac03...423136`; ethereum `0x3fcd33...439582`; ethereum `0x4a9662...421d75`; ethereum `0x7fa5d9...018038`; ethereum `0x9ba595...ccc9b9`; ethereum `0xa5e514...9de851`; ethereum `0xb64cef...dbd85b`; ethereum `0xd1508f...baff26`; ethereum `0xe14812...cfb990` | ⚠️ Unaudited |
| PriceProviderInvertor | operational_periphery | ethereum | [`0x22e62d...d9ceee`](./contracts/ethereum-1/0x22e62dabe56fc8ded0e279b823acf1197dd9ceee/) | ⚠️ Unaudited |
| SettlementFeeDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x43023c...66fcda`](./contracts/ethereum-1/0x43023cc5b7160ab38345bf4cfd38e5964866fcda/); ethereum `0xa2f035...180f23`; ethereum `0xbb902b...d3daa0` | ⚠️ Unaudited |
| WHETHv2 | unknown | ethereum | 2 deployments: ethereum [`0x33827d...7cbba0`](./contracts/ethereum-1/0x33827d2d2a0f4533ac26083e6eaae71d417cbba0/); ethereum `0x570438...cf1bdc` | ⚠️ Unaudited |
| WhiteOptionsPricer | operational_periphery | ethereum | 2 deployments: ethereum [`0x364cb8...ccc4cb`](./contracts/ethereum-1/0x364cb8e5cc5740f8bc5c3071a024295966ccc4cb/); ethereum `0x3d079e...bd26ee` | ⚠️ Unaudited |
| WhiteStakingUSDC | unknown | ethereum | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | ⚠️ Unaudited |
| WHSwapRouter | adapter | ethereum | [`0xc1c9a1...bb04df`](./contracts/ethereum-1/0xc1c9a142ce555f650d721212171986ab2dbb04df/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x03d151...c3a3fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x040f5b...7ab916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0493b4...3525a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05ed49...75a680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d1762...18bb32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f01ae...f5ec9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f3865...4dc58b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22cf9e...53f326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24e5e3...c5fe89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x363d62...8cd0e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36d41c...c4d99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a76b9...016675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b7a33...ce2b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x432462...0e8e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5321dd...321285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x604dfd...b140a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6209b2...d63526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6342b5...921ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74a0b1...56e0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76dd5e...906e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x779b22...33ba8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f8000...c6089a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83a1d4...6fbe3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90cefd...51a112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x940284...524bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa4edc6...c87934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae83be...1145f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc31ac2...4f8b0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5cf7d...1cd864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce31d3...a0e302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9effc...dbe72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda1491...a327b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe026bf...254384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec7c2a...747dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1f046...0d30e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff3127...275abe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf](https://github.com/hegic/contracts/blob/main/packages/herge/docs/PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Hegic-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Hegic-v1.0.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xda0606...468629`](./contracts/ethereum-1/0xda0606037834f4279dc590434231f1e01c468629/) | WhiteUSDCPool | core_logic | $40,358.07 | Verified native implementation with $40,358.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53fd0e...724731`](./contracts/ethereum-1/0x53fd0e5313f249da94ac19ca1a325585d6724731/) | HegicCouponPool | core_logic | $13,631.29 | Verified native implementation with $13,631.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15088c...fa160d`](./contracts/ethereum-1/0x15088c29cc3106f770ff8f5e5627cb1f62fa160d/) | WHERC20v2 | token | $79.12 | Verified native implementation with $79.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x743839...009b20`](./contracts/ethereum-1/0x74383959d8d80004e3162aaa957fc30e8a009b20/) | AdaptivePriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1125e7...71701a`](./contracts/ethereum-1/0x1125e739d117f6044f9be06b0209ba9d8671701a/) | AdaptivePutPriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ab731...ebd8b2`](./contracts/ethereum-1/0x3ab731de9b2cbbd37122ceeb0ca64db35cebd8b2/) | Exerciser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd56b5a...e422dc`](./contracts/ethereum-1/0xd56b5a63dac64990e7eccd046ec7119e38e422dc/) | Facade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b612...afe016`](./contracts/ethereum-1/0x27b6125328ca57d5d96baaa4f9ca8c5edbafe016/) | HedgeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584bc1...768430`](./contracts/ethereum-1/0x584bc13c7d411c00c01a62e8019472de68768430/) | Hegic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16171a...c90eea`](./contracts/ethereum-1/0x16171a60b6a523b8fc2250b222862de93fc90eea/) | HegicCALL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b660d...2ba2f7`](./contracts/ethereum-1/0x0b660d66b05a743df3755058c2e63d5a5f2ba2f7/) | HegicCallOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8782...e9915d`](./contracts/ethereum-1/0x1b8782d4a7da5b63a934e78a6563fdd122e9915d/) | HegicInitialOffering | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb0f9f0...7b4ab3`](./contracts/arbitrum-42161/0xb0f9f032158510cd4a926f9263abc86baf7b4ab3/) | HegicOperationalTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7094e7...9d270b`](./contracts/ethereum-1/0x7094e706e75e13d1e0ea237f71a7c4511e9d270b/) | HegicPUT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bd72b...cf2a26`](./contracts/ethereum-1/0x3bd72bbb3262818ae94fc30de674213961cf2a26/) | HegicPutOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6a5ba...fd178c`](./contracts/ethereum-1/0xb6a5bacbb2850ee4650d08f33f93df0160fd178c/) | HegicSoftGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60898d...9d5d5d`](./contracts/arbitrum-42161/0x60898dfa3c6e8ba4998b5f3be25fb0b0b69d5d5d/) | HegicStakeAndCover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05458b...c87560`](./contracts/arbitrum-42161/0x05458b7d9531ead242290de60beaa3cc10c87560/) | HegicStrategyCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x87dfcf...e42686`](./contracts/arbitrum-42161/0x87dfcfee4715dad66e8b50f7ebdde8aa66e42686/) | HegicStrategyInverseLongCondor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa0dfb...9b22aa`](./contracts/arbitrum-42161/0xaa0dfbfb8da7f45bb41c0fb68b71faeb959b22aa/) | HegicStrategyPut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | HLTPs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | OptionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5fe380...9a76d5`](./contracts/arbitrum-42161/0x5fe380d68fee022d8acd42dc4d36fbfb249a76d5/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011ffe...7c041c`](./contracts/ethereum-1/0x011ffee87ad2fe4c091b0d9a7bd70bfc697c041c/) | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22e62d...d9ceee`](./contracts/ethereum-1/0x22e62dabe56fc8ded0e279b823acf1197dd9ceee/) | PriceProviderInvertor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43023c...66fcda`](./contracts/ethereum-1/0x43023cc5b7160ab38345bf4cfd38e5964866fcda/) | SettlementFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33827d...7cbba0`](./contracts/ethereum-1/0x33827d2d2a0f4533ac26083e6eaae71d417cbba0/) | WHETHv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x364cb8...ccc4cb`](./contracts/ethereum-1/0x364cb8e5cc5740f8bc5c3071a024295966ccc4cb/) | WhiteOptionsPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | WhiteStakingUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
