# Agentic Audit Brief: Eventum Bridge

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.652Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum
- Contract surface: 42 unique implementations (81 raw deployments)
- DeFi Llama TVL: $2,518,168.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 36 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 4 ERC721 NFTs, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 3 common project-authored base contract(s) (badgev1, proxysetter, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 80 (60 live, 20 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/29 (3.4%)
- Deployed-live implementations: 30 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/33
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 42
- Raw deployments: 81
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 1 | 3.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TreasuryV1 | unknown | arbitrum | n/a | [`0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a`](./contracts/arbitrum-42161/0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BadgeV1 | unknown | arbitrum | n/a | 20 deployments: arbitrum [`0x026968b5ced079eccd6cc78f35a5dfddc13f9af8`](./contracts/arbitrum-42161/0x026968b5ced079eccd6cc78f35a5dfddc13f9af8/); arbitrum `0x0507389b4cbb043e6d0137b70c40fc2be483919b`; arbitrum `0x1fdf833556d012a7799b22a83bd392e1dc961c01`; arbitrum `0x21f69c75d757164137044b235663fec8bec404e5`; arbitrum `0x372a183192d9f9e978a1c826bc4d3568a2b7b3f8`; arbitrum `0x4b2f4f777e043b470dae9a1bea4874f4be13c2bf`; arbitrum `0x6a457a01b412dfc29c7f48fbdd7cbb35ff7ca3a2`; arbitrum `0x6b25e2f731aae133caa12e43fbe89ec6aaca402e`; arbitrum `0x6c015bf728e36712a30f8ab49659a8045ad812e0`; arbitrum `0x7101f6810ee5af89bc669aff7684e3f3bf30d568`; arbitrum `0x77075c627e51145d54e4edd54afa169da7ff8a17`; arbitrum `0x86dc076bc83044eebb99a03015b9e130d72e6197`; arbitrum `0x948c634086661bda90cd15246ea4fe98b03530a2`; arbitrum `0xa4fbdd48970e4e409da9169767d6b7646b7f6880`; arbitrum `0xb8d4b99b8af66acf4901e44e0b4446ba88fb2945`; arbitrum `0xbe0a8fb9f5943f547d0a3dc06ee5e478c76dda52`; arbitrum `0xc6bc0e2dac704dc823678b78be82d3ce1240ecfd`; arbitrum `0xdac651f7a8eef6cb39106a3fc10227cc3cc63dfd`; arbitrum `0xdb5ea5e5f03a99c6bf4003ab4220d4a293f0586f`; arbitrum `0xdef2dd8108a0db6bf94c47dff49c659671c697de` | ⚠️ Unaudited |
| BadgeV2 | unknown | arbitrum | n/a | [`0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b`](./contracts/arbitrum-42161/0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b/) | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | n/a | [`0xad3026961087eccec0508d411bb9fb405e086b38`](./contracts/arbitrum-42161/0xad3026961087eccec0508d411bb9fb405e086b38/) | ⚠️ Unaudited |
| BridgeMiddleware | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x254e696ae76c17adc4363ae9476ce24ce935be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/); arbitrum `0x26052fb1c47bf499ff67bc966c2aff7a475fa503`; arbitrum `0x683c48770210158d6b2d3b565cf45ae1a10e3e40` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/); arbitrum `0x5fbf447c301e3029b3c3f2a7743a80ae56521b82`; arbitrum `0xfdaf745d7b7ada22028b225d33438419ae2826b8` | ⚠️ Unaudited |
| BurnRegistryV1 | unknown | arbitrum | n/a | [`0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c`](./contracts/arbitrum-42161/0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c/) | ⚠️ Unaudited |
| DepositManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x665842c0ea5e72d985c61faf462cef13a2f8a2d0`](./contracts/arbitrum-42161/0x665842c0ea5e72d985c61faf462cef13a2f8a2d0/); arbitrum `0xc142259aee880250e61272188053a777b064562e`; arbitrum `0xf6ec90fe0e413eab2f09bc8fe3e73b6af756d45b` | ⚠️ Unaudited |
| DVFDepositContract | core_logic | ethereum | n/a | [`0xbca3039a18c0d2f2f84ba8a028c67290bc045afa`](./contracts/ethereum-1/0xbca3039a18c0d2f2f84ba8a028c67290bc045afa/) | ⚠️ Unaudited |
| DVFSunset | unknown | ethereum | n/a | 2 deployments: ethereum [`0x73699b0c5542472b927dd779f2a1085ac9bd2704`](./contracts/ethereum-1/0x73699b0c5542472b927dd779f2a1085ac9bd2704/); ethereum `0xec909352e059930e74dbefd471d16b9a920cf9b5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14b9932cc9ac8ee03301665a8644a753f46d8552`](./contracts/ethereum-1/0x14b9932cc9ac8ee03301665a8644a753f46d8552/); ethereum `0xe15357fb7ab31e091583b9c4b4135bb2f176f38e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x378d8771e9c66a2aad370344dfd4b65d1a3c1d8e`](./contracts/ethereum-1/0x378d8771e9c66a2aad370344dfd4b65d1a3c1d8e/); ethereum `0xd35e56c06320b1ed549a8f85d316fec854ff4b71` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x438b5a03f6460ccffa62d62f4ab554a740cfde9c`](./contracts/ethereum-1/0x438b5a03f6460ccffa62d62f4ab554a740cfde9c/); ethereum `0xa78951b6badc9f4740f6f456e9144705d5c5e4b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x636915338a2f5ff0f332636be44fc124a9842a74`](./contracts/ethereum-1/0x636915338a2f5ff0f332636be44fc124a9842a74/); ethereum `0xcac639d17193b6ebfe8dd23b07a0c0e7bcf167b8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Inbox | unknown | arbitrum | n/a | [`0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296`](./contracts/arbitrum-42161/0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296/) | ⚠️ Unaudited |
| L1ERC20Gateway | token | arbitrum | n/a | [`0x8d21dfea9231db85dce72b8d9f18e917d833d4b1`](./contracts/arbitrum-42161/0x8d21dfea9231db85dce72b8d9f18e917d833d4b1/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | arbitrum | n/a | [`0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a`](./contracts/arbitrum-42161/0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a/) | ⚠️ Unaudited |
| MinimalProxyFactory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/); arbitrum `0x99be07778acd2e8118486eeb6281366eaf52977a` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19e7e0b6dfd215e546e57e0f00a9ab955f04cec1`](./contracts/ethereum-1/0x19e7e0b6dfd215e546e57e0f00a9ab955f04cec1/); ethereum `0x90ec5b8a21349751d0c2654b5f1fbedfd6342d8c` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237b7aff1af5d9f311f830234792d429355a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/); ethereum `0x850af98cfe639bd87f7c5d6366628fab73104aac` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a2dd09b4739d905183d503d594c8fb3e3d41820`](./contracts/ethereum-1/0x3a2dd09b4739d905183d503d594c8fb3e3d41820/); ethereum `0x8d289cdd60e7f73f352f42c8524a06ef1ad746f8` | ⚠️ Unaudited |
| Outbox | unknown | arbitrum | n/a | [`0xec32bd08faf9533371384ad13045116930dbc040`](./contracts/arbitrum-42161/0xec32bd08faf9533371384ad13045116930dbc040/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x70911642e4ea509735e77cba23ce1856abed87bf`](./contracts/ethereum-1/0x70911642e4ea509735e77cba23ce1856abed87bf/); ethereum `0x92650ddc467ed628868bdba23cf81eafaab60175` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | ethereum | n/a | [`0x7ad6d5c9435aa7781a817913b3afec2645ef78be`](./contracts/ethereum-1/0x7ad6d5c9435aa7781a817913b3afec2645ef78be/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | n/a | [`0xd226bd8d36725f4ce12961370211dfeeef1abbbc`](./contracts/arbitrum-42161/0xd226bd8d36725f4ce12961370211dfeeef1abbbc/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | n/a | [`0x8696d32899e59f8a2ed76463cc0a0b07e56db025`](./contracts/arbitrum-42161/0x8696d32899e59f8a2ed76463cc0a0b07e56db025/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| Storage | unknown | arbitrum | n/a | [`0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | ⚠️ Unaudited |
| SwapManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x770722fcaab3c7d46fc1ad679726b232e7def2f6`](./contracts/arbitrum-42161/0x770722fcaab3c7d46fc1ad679726b232e7def2f6/); arbitrum `0xac3450527b49552380c190c22e1bde2912a22291`; arbitrum `0xe575f5dd354dc79a8114071992a2ac379a75daa4` | ⚠️ Unaudited |
| VaultV1 | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe`](./contracts/arbitrum-42161/0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe/); arbitrum `0xa526c07f616cfbf20c8a7d35ac2376b9480c9684` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x87047526937246727e4869c5f76a347160e08672) | unknown | ethereum | n/a | 2 deployments: ethereum `0x74f09cb3c7e2a01865f424fd14f6dc9a14e3e94e`; ethereum `0x87047526937246727e4869c5f76a347160e08672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2880ab155794e7179c9ee2e38200202908c17b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ee2d7398ce35a591c30d736007feda8f4cfec95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c56d119a916da6593e1fd8c1d010161f20afd70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0d4a9640addd415551b6a4fe75403c9f73a7c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc643e55ee8944f3017f4cb8c82aa3db1aa2d8941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9d69cdd6fe41e7b621b4a688c5d1a68cb5c8adc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x026968b5ced079eccd6cc78f35a5dfddc13f9af8`](./contracts/arbitrum-42161/0x026968b5ced079eccd6cc78f35a5dfddc13f9af8/) | BadgeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b`](./contracts/arbitrum-42161/0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b/) | BadgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xad3026961087eccec0508d411bb9fb405e086b38`](./contracts/arbitrum-42161/0xad3026961087eccec0508d411bb9fb405e086b38/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x254e696ae76c17adc4363ae9476ce24ce935be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/) | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/) | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c`](./contracts/arbitrum-42161/0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c/) | BurnRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x665842c0ea5e72d985c61faf462cef13a2f8a2d0`](./contracts/arbitrum-42161/0x665842c0ea5e72d985c61faf462cef13a2f8a2d0/) | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbca3039a18c0d2f2f84ba8a028c67290bc045afa`](./contracts/ethereum-1/0xbca3039a18c0d2f2f84ba8a028c67290bc045afa/) | DVFDepositContract | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73699b0c5542472b927dd779f2a1085ac9bd2704`](./contracts/ethereum-1/0x73699b0c5542472b927dd779f2a1085ac9bd2704/) | DVFSunset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296`](./contracts/arbitrum-42161/0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296/) | Inbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8d21dfea9231db85dce72b8d9f18e917d833d4b1`](./contracts/arbitrum-42161/0x8d21dfea9231db85dce72b8d9f18e917d833d4b1/) | L1ERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a`](./contracts/arbitrum-42161/0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a/) | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/) | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237b7aff1af5d9f311f830234792d429355a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/) | OpenfortUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2dd09b4739d905183d503d594c8fb3e3d41820`](./contracts/ethereum-1/0x3a2dd09b4739d905183d503d594c8fb3e3d41820/) | OpenfortUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xec32bd08faf9533371384ad13045116930dbc040`](./contracts/arbitrum-42161/0xec32bd08faf9533371384ad13045116930dbc040/) | Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ad6d5c9435aa7781a817913b3afec2645ef78be`](./contracts/ethereum-1/0x7ad6d5c9435aa7781a817913b3afec2645ef78be/) | PythAggregatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd226bd8d36725f4ce12961370211dfeeef1abbbc`](./contracts/arbitrum-42161/0xd226bd8d36725f4ce12961370211dfeeef1abbbc/) | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8696d32899e59f8a2ed76463cc0a0b07e56db025`](./contracts/arbitrum-42161/0x8696d32899e59f8a2ed76463cc0a0b07e56db025/) | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x770722fcaab3c7d46fc1ad679726b232e7def2f6`](./contracts/arbitrum-42161/0x770722fcaab3c7d46fc1ad679726b232e7def2f6/) | SwapManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe`](./contracts/arbitrum-42161/0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe/) | VaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
