# Agentic Audit Brief: Alien Base

⚠️ Lifecycle status: DECLINING - TVL dropped 22.6% over 90 days

## Project Overview

- Project: Alien Base (`alien-base`)
- Website: [https://alienbase.xyz/](https://alienbase.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:58:56.693Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base
- Contract surface: 58 unique implementations (113 raw deployments)
- DeFi Llama TVL: $4,725,226.00
- On-chain TVL (included contracts): $2,915,012.41
- TVL by chain: Base $2,915,012.41

## Project Description

Alien Base is a decentralized exchange on Base offering aggregated liquidity and token trading, including V2-style AMM pools, V3-style concentrated liquidity, limit orders, yield farming/staking, and support for token and memecoin trading. StableSwap is one component of the broader exchange rather than the primary current product. The protocol also includes the native ALB token and related distribution and escrow mechanisms.

### Architecture

The 'Contracts' family provides the ALB token and distribution infrastructure, which likely incentivizes liquidity in the 'Alien Base' and 'Alien Base StableSwap' pools. The 'Alien Base' family uses BunniToken for liquidity positions, while the StableSwap pools operate independently with their own flash-loan contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/47 (0.0%)
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 58
- Raw deployments: 113
- Audits discovered: 15
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,915,012.41
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 2 aging, 8 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,915,012.41 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlienBaseToken | token | base | [`0x1dd2d6...0050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | ⚠️ Unaudited |
| AlienbaseLottery | unknown | base | [`0x4384dc...5248ff`](./contracts/base-8453/0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff/) | ⚠️ Unaudited |
| AlienbaseZapV1 | adapter | base | [`0xe0808b...811054`](./contracts/base-8453/0xe0808b8e2bdd70d70e540f977cf40e26e5811054/) | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | base | [`0x52eaec...d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | ⚠️ Unaudited |
| BunniHub | unknown | base | [`0xdc5348...ccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | ⚠️ Unaudited |
| BunniHubA | unknown | base | [`0xd1fac4...e92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | ⚠️ Unaudited |
| BunniHubController | governance | base | [`0x4bcc58...fa0f38`](./contracts/base-8453/0x4bcc584979817219585b6a62a5bb6c15c1fa0f38/) | ⚠️ Unaudited |
| BunniLensV2 | periphery | base | 6 deployments: base [`0x1733c3...339c44`](./contracts/base-8453/0x1733c3043e4964736aafe8660ecc481edf339c44/); base `0x3ceb26...bec9dc`; base `0x519989...6a3014`; base `0x8fcd06...5031c2`; base `0xe8b5b2...4d7e87`; base `0xf71e5e...05b621` | ⚠️ Unaudited |
| BunniToken | token | base | 2 deployments: base [`0x053d11...3d27a4`](./contracts/base-8453/0x053d11735f501199ec64a125498f29ed453d27a4/); base `0x176ca1...a208f0` | ⚠️ Unaudited |
| BunniZap | adapter | base | 2 deployments: base [`0x6947da...16d75d`](./contracts/base-8453/0x6947da282e447a2e9d65ff00aaf80efb5116d75d/); base `0x77c18d...0ab7f0` | ⚠️ Unaudited |
| BurnableTokenFactory | registry | base | [`0xf5a7a6...692c79`](./contracts/base-8453/0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79/) | ⚠️ Unaudited |
| CarbonController | governance | base | 3 deployments: base [`0x0d6e29...b215d0`](./contracts/base-8453/0x0d6e297a73016b437caae65bfe32c59803b215d0/); base `0xe37638...97716e`; base `0xec5c5c...b5a561` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | base | 17 deployments: base [`0x016874...108e26`](./contracts/base-8453/0x016874be39f6780d72599fc9b07873e47d108e26/); base `0x052916...d19d10`; base `0x19f3d2...9ea64e`; base `0x2c629a...1f6766`; base `0x3d4444...987919`; base `0x41ad2d...2b35aa`; base `0x4eb157...a97024`; base `0x970079...70be51`; base `0xb28b0a...b19080`; base `0xb32951...23c74f`; base `0xb772cb...8386a0`; base `0xbdd085...4d5ef1`; base `0xbe9e35...bc1577`; base `0xc0bf69...be382a`; base `0xd46949...8dff6d`; base `0xe27159...fb910c`; base `0xfb7022...d8dfa8` | ⚠️ Unaudited |
| DistributorController | operational_periphery | base | 3 deployments: base [`0x16f1f8...23e4fb`](./contracts/base-8453/0x16f1f80654f2fea97293321675907cfa2e23e4fb/); base `0x68e143...e1c68c`; base `0xb71cc2...77b60e` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | base | 5 deployments: base [`0x392382...5c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/); base `0x3aa57f...30b211`; base `0x3f42d7...252811`; base `0xa720c1...395117`; base `0xbbd0cb...11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | base | 2 deployments: base [`0xd3968a...61ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/); base `0xfea31d...de63d9` | ⚠️ Unaudited |
| EsToken | token | base | 9 deployments: base [`0x1a18d2...3c5af2`](./contracts/base-8453/0x1a18d238b0f43edaa68640f3f537d229e23c5af2/); base `0x365c6d...a54113`; base `0x3d3a5a...6d8ea0`; base `0x4a023e...a36978`; base `0x5c9054...8c5e66`; base `0x93d590...8f529b`; base `0xccb488...c0a124`; base `0xe1afc6...2a4587`; base `0xe2204e...213ac8` | ⚠️ Unaudited |
| EsTokenController | governance | base | 6 deployments: base [`0x154d41...a1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/); base `0x2de715...7f60dc`; base `0x95ff65...2d2819`; base `0x9e27f3...82ac6e`; base `0xf4eb75...da644a`; base `0xf6c0db...ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | base | 2 deployments: base [`0x3f8d11...2dddc1`](./contracts/base-8453/0x3f8d116e99bce42b38989a62394fa9bb532dddc1/); base `0xd3cfcb...df2e7b` | ⚠️ Unaudited |
| LPToken | token | base | [`0xcf1355...c2633a`](./contracts/base-8453/0xcf13556f6181971a23395ec21dce2543bdc2633a/) | ⚠️ Unaudited |
| MintableTokenFactory | registry | base | [`0x6a9668...cc8369`](./contracts/base-8453/0x6a9668c2c6e1fb107021375bacd9d92e79cc8369/) | ⚠️ Unaudited |
| MintBurnTokenFactory | registry | base | [`0x872521...9aaf51`](./contracts/base-8453/0x872521b46095139e70a38ae3e8d95611649aaf51/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | [`0xa54844...c4fde6`](./contracts/base-8453/0xa54844d419d18c4a1d399ad04282415cf2c4fde6/) | ⚠️ Unaudited |
| NFTDescriptor | token | base | [`0x98bbb7...bdedbd`](./contracts/base-8453/0x98bbb71f059f228e7f643ad041b333006bbdedbd/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | [`0xb7996d...4534e5`](./contracts/base-8453/0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | [`0x25225c...b8d9d6`](./contracts/base-8453/0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6/) | ⚠️ Unaudited |
| PredictionETH | unknown | base | [`0xfbe87e...2863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 2 deployments: base [`0xe23f65...4528c1`](./contracts/base-8453/0xe23f656562d56fed9a2650a3e51a2b60124528c1/); base `0xe49273...e704b4` | ⚠️ Unaudited |
| QuoterV2 | periphery | base | [`0x353b1b...93b23a`](./contracts/base-8453/0x353b1bea22dd3b41c0fc529cf72d829f9493b23a/) | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | base | [`0x0bc1a7...2a1a16`](./contracts/base-8453/0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16/) | ⚠️ Unaudited |
| SimpleERC20 | token | base | [`0x8fc786...62d1af`](./contracts/base-8453/0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af/) | ⚠️ Unaudited |
| SimpleTokenFactory | registry | base | [`0x3b0145...10d176`](./contracts/base-8453/0x3b01457255bd6ec460d9ab8f31cfabd8a710d176/) | ⚠️ Unaudited |
| SmartRouter | adapter | base | [`0xb20c41...ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | ⚠️ Unaudited |
| StableSwapViewer | periphery | base | [`0x3db0bc...c28d29`](./contracts/base-8453/0x3db0bc1987427a3ac34518c8968efdd4f9c28d29/) | ⚠️ Unaudited |
| SwapDeployer | unknown | base | [`0x27223e...bd1ef6`](./contracts/base-8453/0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | base | 2 deployments: base [`0x410d28...4f6a2d`](./contracts/base-8453/0x410d28fbcd00c677bae1cce2261546c8db4f6a2d/); base `0x927860...bfbb27` | ⚠️ Unaudited |
| TaxTokenFactory | registry | base | 4 deployments: base [`0x13de15...e96373`](./contracts/base-8453/0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373/); base `0x1b2468...ddb484`; base `0x9f3643...922c9f`; base `0xcbac77...068436` | ⚠️ Unaudited |
| TickLens | periphery | base | [`0xe3b6a5...5fbd8e`](./contracts/base-8453/0xe3b6a547495c84a039d70a81178496220b5fbd8e/) | ⚠️ Unaudited |
| TimelockController | governance | base | [`0x1c7e42...c81e21`](./contracts/base-8453/0x1c7e4284423c1a2362c49b1ea223b73e38c81e21/) | ⚠️ Unaudited |
| TokenGenerator | token | base | [`0xbce754...2ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | ⚠️ Unaudited |
| TokenLock | token | base | [`0x329efd...bf8b0c`](./contracts/base-8453/0x329efd924d39d7916023517b2b3c928dddbf8b0c/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | base | 2 deployments: base [`0x2d5dd5...6de51e`](./contracts/base-8453/0x2d5dd5fa7b8a1bfbdbb0916b42280208ee6de51e/); base `0x3e84d9...c0fde7` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | base | 2 deployments: base [`0x3485f8...bb79e7`](./contracts/base-8453/0x3485f8e155973cc247cbea9e77c0dbbb4bbb79e7/); base `0x8c1a3c...6b37c7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | base | [`0x0fd835...74558c`](./contracts/base-8453/0x0fd83557b2be93617c9c1c1b6fd549401c74558c/) | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | base | [`0x62d58b...c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | base | 2 deployments: base [`0x77ec03...faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/); base `0xf61cc1...c9453d` | ⚠️ Unaudited |
| Voucher | unknown | base | 2 deployments: base [`0x2f3b0d...a72dc9`](./contracts/base-8453/0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9/); base `0x837724...ce534c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x293be4...1b5220` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4c0b9f...444cd2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x783898...3843ee` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7920fb...fea013` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ca63e...6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9e1c24...5b846a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa5263...7c2c24` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb93189...2884f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbd97c8...b84ce2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd54a92...aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf78ac4...c20ff5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2022-10-ERC4626.pdf (also discovered via alternate URL)](https://github.com/alienbase-xyz/Mothership/blob/main/lib/openzeppelin-contracts-upgradeable/audits/2022-10-ERC4626.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [abdk-redstone-eth-contracts-audit-march-2023.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/eth-contracts/audits/abdk-redstone-eth-contracts-audit-march-2023.pdf) | ABDK | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [abdk-redstone-audit-evm-connector-nov-2022.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/evm-connector/audits/abdk-redstone-audit-evm-connector-nov-2022.pdf) | ABDK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [ABDK_RedStone_Oracles_v_2_0.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/on-chain-relayer/audits/ABDK_RedStone_Oracles_v_2_0.pdf) | ABDK | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [abdk-redstone-adapter-contracts-audit-june-2023.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/on-chain-relayer/audits/abdk-redstone-adapter-contracts-audit-june-2023.pdf) | ABDK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [abdk-redstone-merged-adapter-contracts-audit-dec-2023.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/on-chain-relayer/audits/abdk-redstone-merged-adapter-contracts-audit-dec-2023.pdf) | ABDK | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [abdk-redstone-multifeed-contracts-audit-july-2024.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/on-chain-relayer/audits/abdk-redstone-multifeed-contracts-audit-july-2024.pdf) | ABDK | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [auditone-redstone-adapter-contracts-audit-june-2023.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/redstone-oracles-monorepo/packages/on-chain-relayer/audits/auditone-redstone-adapter-contracts-audit-june-2023.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [ackee-blockchain-solady-report.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/solady/audits/ackee-blockchain-solady-report.pdf) | Ackee Blockchain | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [cantina-solady-report.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/solady/audits/cantina-solady-report.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cantina-spearbit-coinbase-solady-report.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/solady/audits/cantina-spearbit-coinbase-solady-report.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [shung-solady-erc721-audit.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/solady/audits/shung-solady-erc721-audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [xuwinnie-solady-cbrt-proof.pdf](https://github.com/alienbase-xyz/Mothership/blob/main/lib/solady/audits/xuwinnie-solady-cbrt-proof.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit.pdf (also discovered via alternate URL)](https://github.com/alienbase-xyz/Mothership/blob/main/lib/v3-core/audits/abdk/audit.pdf) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/alienbase-xyz/Mothership/blob/main/lib/v3-core/audits/tob/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1dd2d6...0050c4`](./contracts/base-8453/0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4/) | AlienBaseToken | token | $2,915,012.41 | Verified native implementation with $2,915,012.41 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4384dc...5248ff`](./contracts/base-8453/0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff/) | AlienbaseLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe0808b...811054`](./contracts/base-8453/0xe0808b8e2bdd70d70e540f977cf40e26e5811054/) | AlienbaseZapV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52eaec...d86590`](./contracts/base-8453/0x52eaecac2402633d98b95213d0b473e069d86590/) | BasedDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc5348...ccac6f`](./contracts/base-8453/0xdc53487e2a6ef468260bc938f645f84caaccac6f/) | BunniHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd1fac4...e92bb9`](./contracts/base-8453/0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9/) | BunniHubA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1733c3...339c44`](./contracts/base-8453/0x1733c3043e4964736aafe8660ecc481edf339c44/) | BunniLensV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x053d11...3d27a4`](./contracts/base-8453/0x053d11735f501199ec64a125498f29ed453d27a4/) | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6947da...16d75d`](./contracts/base-8453/0x6947da282e447a2e9d65ff00aaf80efb5116d75d/) | BunniZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf5a7a6...692c79`](./contracts/base-8453/0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79/) | BurnableTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x016874...108e26`](./contracts/base-8453/0x016874be39f6780d72599fc9b07873e47d108e26/) | ComplexRewarderPerSecV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16f1f8...23e4fb`](./contracts/base-8453/0x16f1f80654f2fea97293321675907cfa2e23e4fb/) | DistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x392382...5c43a6`](./contracts/base-8453/0x3923820118a3b654644d31653bcc650f655c43a6/) | EsComplexRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3968a...61ec88`](./contracts/base-8453/0xd3968a4a07d64c6e16982d45191b9a09a261ec88/) | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a18d2...3c5af2`](./contracts/base-8453/0x1a18d238b0f43edaa68640f3f537d229e23c5af2/) | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x154d41...a1ea99`](./contracts/base-8453/0x154d41a96ad37570a2ad6849063d0b480da1ea99/) | EsTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f8d11...2dddc1`](./contracts/base-8453/0x3f8d116e99bce42b38989a62394fa9bb532dddc1/) | EsVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf1355...c2633a`](./contracts/base-8453/0xcf13556f6181971a23395ec21dce2543bdc2633a/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a9668...cc8369`](./contracts/base-8453/0x6a9668c2c6e1fb107021375bacd9d92e79cc8369/) | MintableTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x872521...9aaf51`](./contracts/base-8453/0x872521b46095139e70a38ae3e8d95611649aaf51/) | MintBurnTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98bbb7...bdedbd`](./contracts/base-8453/0x98bbb71f059f228e7f643ad041b333006bbdedbd/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25225c...b8d9d6`](./contracts/base-8453/0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbe87e...2863e8`](./contracts/base-8453/0xfbe87ee1ee62244a2df80a8093eab829c52863e8/) | PredictionETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0bc1a7...2a1a16`](./contracts/base-8453/0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16/) | RandomNumberGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fc786...62d1af`](./contracts/base-8453/0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af/) | SimpleERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b0145...10d176`](./contracts/base-8453/0x3b01457255bd6ec460d9ab8f31cfabd8a710d176/) | SimpleTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb20c41...ea9411`](./contracts/base-8453/0xb20c411fc84fbb27e78608c24d0056d974ea9411/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3db0bc...c28d29`](./contracts/base-8453/0x3db0bc1987427a3ac34518c8968efdd4f9c28d29/) | StableSwapViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x27223e...bd1ef6`](./contracts/base-8453/0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6/) | SwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x410d28...4f6a2d`](./contracts/base-8453/0x410d28fbcd00c677bae1cce2261546c8db4f6a2d/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13de15...e96373`](./contracts/base-8453/0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373/) | TaxTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbce754...2ad08d`](./contracts/base-8453/0xbce75497d72b25c3509b62ae1a47ccfb502ad08d/) | TokenGenerator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x329efd...bf8b0c`](./contracts/base-8453/0x329efd924d39d7916023517b2b3c928dddbf8b0c/) | TokenLock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62d58b...c8fba9`](./contracts/base-8453/0x62d58b4cdd96b590ff4174e272b5f41693c8fba9/) | UniversalDistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77ec03...faed84`](./contracts/base-8453/0x77ec0394e4edea1997bdb1919bb354d880faed84/) | VestingFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 8 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7753] 2022-10-ERC4626.pdf
- [7777] abdk-redstone-eth-contracts-audit-march-2023.pdf
- [7778] abdk-redstone-audit-evm-connector-nov-2022.pdf
- [7779] ABDK_RedStone_Oracles_v_2_0.pdf
- [7780] abdk-redstone-adapter-contracts-audit-june-2023.pdf
- [7781] abdk-redstone-merged-adapter-contracts-audit-dec-2023.pdf
- [7782] abdk-redstone-multifeed-contracts-audit-july-2024.pdf
- [7783] auditone-redstone-adapter-contracts-audit-june-2023.pdf
- [7784] ackee-blockchain-solady-report.pdf
- [7785] cantina-solady-report.pdf
- [7786] cantina-spearbit-coinbase-solady-report.pdf
- [7787] shung-solady-erc721-audit.pdf
- [7788] xuwinnie-solady-cbrt-proof.pdf
- [7862] audit.pdf
- [7863] README.md

Fork inheritance lineage and inherited audits are included when available.
