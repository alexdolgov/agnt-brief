# Agentic Audit Brief: Eventum Bridge

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-24T09:54:50.263Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 74 unique implementations (137 raw deployments)
- DeFi Llama TVL: $2,821,871.26
- On-chain TVL (included contracts): $1,730,756.41
- TVL by chain: Ethereum $1,641,839.82 | Arbitrum $88,916.59

## Project Description

Eventum Bridge is a canonical bridge protocol enabling asset transfers between Ethereum and Arbitrum One. It provides vault-based deposit management, token wrapping (aeWETH), and governance-controlled swap and burn mechanisms.

### Architecture

The Bridge family provides the core cross-chain messaging infrastructure, while the Eventum Bridge family extends it with vault-based asset management, token wrapping, and governance. Both families share proxy patterns and rely on common infrastructure like gateways and routers for asset flow.

## Audit Coverage Summary

- Verified implementations audited: 1/47 (2.1%)
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 74
- Raw deployments: 137
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,730,756.41
- Latest audit: 2025-08 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 1 | 2.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TreasuryV1 | operational_periphery | arbitrum | [`0x0a9591...b5735a`](./contracts/arbitrum-42161/0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DVFDepositContract | core_logic | arbitrum | 4 deployments: ethereum `0xa3db75...b93b47`; ethereum `0xbca303...045afa`; arbitrum [`0x104177...b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/); arbitrum `0x54f315...0e2ec9` | ⚠️ Unaudited |
| VaultV1 | core_logic | arbitrum | 2 deployments: arbitrum [`0x2e8d8b...4ca8fe`](./contracts/arbitrum-42161/0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe/); arbitrum `0xa526c0...0c9684` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | arbitrum | 2 deployments: arbitrum [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/); arbitrum `0x9e43f7...7b984c` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| ArbCommunityNFT | token | arbitrum | 2 deployments: arbitrum [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/); arbitrum `0xca7664...eea019` | ⚠️ Unaudited |
| ArbitrumExtension | adapter | arbitrum | 3 deployments: arbitrum [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/); arbitrum `0xd80a88...fe2642`; arbitrum `0xf31e1a...d39b50` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14`; arbitrum `0xcfc79f...47513f`; arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| ArbUXRNFT | token | arbitrum | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| BadgeV1 | unknown | arbitrum | 20 deployments: arbitrum [`0x026968...3f9af8`](./contracts/arbitrum-42161/0x026968b5ced079eccd6cc78f35a5dfddc13f9af8/); arbitrum `0x050738...83919b`; arbitrum `0x1fdf83...961c01`; arbitrum `0x21f69c...c404e5`; arbitrum `0x372a18...b7b3f8`; arbitrum `0x4b2f4f...13c2bf`; arbitrum `0x6a457a...7ca3a2`; arbitrum `0x6b25e2...ca402e`; arbitrum `0x6c015b...d812e0`; arbitrum `0x7101f6...30d568`; arbitrum `0x77075c...ff8a17`; arbitrum `0x86dc07...2e6197`; arbitrum `0x948c63...3530a2`; arbitrum `0xa4fbdd...7f6880`; arbitrum `0xb8d4b9...fb2945`; arbitrum `0xbe0a8f...6dda52`; arbitrum `0xc6bc0e...40ecfd`; arbitrum `0xdac651...c63dfd`; arbitrum `0xdb5ea5...f0586f`; arbitrum `0xdef2dd...c697de` | ⚠️ Unaudited |
| BadgeV2 | unknown | arbitrum | [`0x1750e2...bb892b`](./contracts/arbitrum-42161/0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b/) | ⚠️ Unaudited |
| BadgeV3 | unknown | arbitrum | 3 deployments: arbitrum [`0x28d509...094b4f`](./contracts/arbitrum-42161/0x28d50933d8e280c2b406501744da510ed0094b4f/); arbitrum `0x6a60af...05a890`; arbitrum `0xa2f387...704825` | ⚠️ Unaudited |
| BeaconProxyFactory | registry | arbitrum | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | [`0xad3026...086b38`](./contracts/arbitrum-42161/0xad3026961087eccec0508d411bb9fb405e086b38/) | ⚠️ Unaudited |
| BridgeMiddleware | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x254e69...35be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/); arbitrum `0x26052f...5fa503`; arbitrum `0x683c48...0e3e40` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/); arbitrum `0x5fbf44...521b82`; arbitrum `0xfdaf74...2826b8` | ⚠️ Unaudited |
| BurnRegistryV1 | registry | arbitrum | [`0xc7defc...1dc36c`](./contracts/arbitrum-42161/0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c/) | ⚠️ Unaudited |
| BurnRegistryV2 | registry | arbitrum | [`0x79cec0...fe79a5`](./contracts/arbitrum-42161/0x79cec02f44c0855be72b2305d42cff486efe79a5/) | ⚠️ Unaudited |
| DepositManager | core_logic | arbitrum | 3 deployments: arbitrum [`0x665842...f8a2d0`](./contracts/arbitrum-42161/0x665842c0ea5e72d985c61faf462cef13a2f8a2d0/); arbitrum `0xc14225...64562e`; arbitrum `0xf6ec90...56d45b` | ⚠️ Unaudited |
| DVFSunset | unknown | ethereum | 2 deployments: ethereum [`0x73699b...bd2704`](./contracts/ethereum-1/0x73699b0c5542472b927dd779f2a1085ac9bd2704/); ethereum `0xec9093...0cf9b5` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 4 deployments: ethereum [`0x14b993...6d8552`](./contracts/ethereum-1/0x14b9932cc9ac8ee03301665a8644a753f46d8552/); ethereum `0x378d87...3c1d8e`; ethereum `0x636915...842a74`; ethereum `0xa78951...c5e4b2` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | arbitrum | [`0x0f4fb9...b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| GovernorMultisig | governance | arbitrum | [`0xeb71a9...291bf8`](./contracts/arbitrum-42161/0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8/) | ⚠️ Unaudited |
| Inbox | unknown | arbitrum | [`0xa0a1b4...a11296`](./contracts/arbitrum-42161/0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296/) | ⚠️ Unaudited |
| L1ERC20Gateway | token | arbitrum | [`0x8d21df...33d4b1`](./contracts/arbitrum-42161/0x8d21dfea9231db85dce72b8d9f18e917d833d4b1/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | arbitrum | [`0x1628ce...59e66a`](./contracts/arbitrum-42161/0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a/) | ⚠️ Unaudited |
| L2AddressRegistry | registry | arbitrum | 2 deployments: arbitrum [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/); arbitrum `0x56c4e9...bda9d3` | ⚠️ Unaudited |
| MasterMinter | unknown | arbitrum | [`0x8aff09...eeab36`](./contracts/arbitrum-42161/0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36/) | ⚠️ Unaudited |
| MinimalProxyFactory | registry | arbitrum | 2 deployments: arbitrum [`0x1ee981...fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/); arbitrum `0x99be07...52977a` | ⚠️ Unaudited |
| Multicall2 | periphery | ethereum | [`0x0dbbd1...fb70a5`](./contracts/ethereum-1/0x0dbbd1bb03ed63ae2bea0ce892567884dffb70a5/) | ⚠️ Unaudited |
| MultiSigWallet | governance | arbitrum | [`0x4a9196...1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | proxy | ethereum | 3 deployments: ethereum [`0x237b7a...5a58f3`](./contracts/ethereum-1/0x237b7aff1af5d9f311f830234792d429355a58f3/); ethereum `0x3a2dd0...d41820`; ethereum `0x90ec5b...342d8c` | ⚠️ Unaudited |
| Outbox | unknown | arbitrum | [`0xec32bd...dbc040`](./contracts/arbitrum-42161/0xec32bd08faf9533371384ad13045116930dbc040/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 9 deployments: ethereum `0x709116...ed87bf`; ethereum `0x92650d...b60175`; arbitrum [`0x38f03b...a036e8`](./contracts/arbitrum-42161/0x38f03b4e740c0b73d857ccd0003362ee4ca036e8/); arbitrum `0x553ec4...6a1b4a`; arbitrum `0x5db54b...3dd797`; arbitrum `0x85ff34...bb940b`; arbitrum `0x934452...97adda`; arbitrum `0xb06fba...cdcf03`; arbitrum `0xed9d63...f21646` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | ethereum | [`0x7ad6d5...ef78be`](./contracts/ethereum-1/0x7ad6d5c9435aa7781a817913b3afec2645ef78be/) | ⚠️ Unaudited |
| PythUpgradable | unknown | ethereum | 3 deployments: ethereum [`0x26dd80...595e85`](./contracts/ethereum-1/0x26dd80569a8b23768a1d80869ed7339e07595e85/); ethereum `0x35a58b...746b13`; ethereum `0xdd24f8...5bbd21` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | [`0xd226bd...1abbbc`](./contracts/arbitrum-42161/0xd226bd8d36725f4ce12961370211dfeeef1abbbc/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | [`0x8696d3...6db025`](./contracts/arbitrum-42161/0x8696d32899e59f8a2ed76463cc0a0b07e56db025/) | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | 4 deployments: arbitrum [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/); arbitrum `0x50e0ca...7f366a`; arbitrum `0x57e915...7aa79b`; arbitrum `0x8f8928...685563` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| Storage | unknown | arbitrum | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | ⚠️ Unaudited |
| SwapManager | governance | arbitrum | 3 deployments: arbitrum [`0x770722...def2f6`](./contracts/arbitrum-42161/0x770722fcaab3c7d46fc1ad679726b232e7def2f6/); arbitrum `0xac3450...a22291`; arbitrum `0xe575f5...75daa4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 2 deployments: arbitrum [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x87047526937246727e4869c5f76a347160e08672) | proxy | ethereum | `0x74f09c...e3e94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19e7e0...04cec1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2880ab...c17b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x438b5a...cfde9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e023c...fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ee2d7...cfec95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c56d1...0afd70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x850af9...104aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x870475...e08672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d289c...d746f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0d4a9...3a7c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc643e5...2d8941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcac639...f167b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd35e56...ff4b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe15357...76f38e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9d69c...5c8adc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf19229...a47a3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1313bb...b51d9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x59d9e1...bd5925` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x71c0af...411d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa297ec...319212` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xed6623...df3106` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | AIP1Point1Target | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | AIP1Point2Action | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ArbCommunityNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ArbitrumExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ArbUXRNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1750e2...bb892b`](./contracts/arbitrum-42161/0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b/) | BadgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x28d509...094b4f`](./contracts/arbitrum-42161/0x28d50933d8e280c2b406501744da510ed0094b4f/) | BadgeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | BeaconProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x254e69...35be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/) | BridgeMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/) | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79cec0...fe79a5`](./contracts/arbitrum-42161/0x79cec02f44c0855be72b2305d42cff486efe79a5/) | BurnRegistryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb71a9...291bf8`](./contracts/arbitrum-42161/0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8/) | GovernorMultisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | L2AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | SetFiveMillionProposalThresholdAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 5 |
| standard_library | 24 |
| needs_review | 26 |

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
