# Agentic Audit Brief: YO Protocol

## Project Overview

- Project: YO Protocol (`yo-protocol`)
- Website: [https://app.yo.xyz?ref=defillama](https://app.yo.xyz?ref=defillama)
- Lifecycle: active (Tier 0, 51.7% below peak)
- Generated: 2026-05-26T13:24:09.848Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: arbitrum, base, ethereum
- Contract surface: 32 unique implementations (161 raw deployments)
- DeFi Llama TVL: $42,388,829.38
- On-chain TVL (included contracts): $40,942,586.65
- TVL by chain: Base $30,054,092.56 | Ethereum $10,888,494.10

## Project Description

YO Protocol is a yield aggregator that deploys yield-optimizing vaults across multiple chains. Users deposit stablecoins or other assets into YoVaults, which automatically allocate funds to generate yield, while the protocol uses registries, oracles, and gateways to manage vault strategies and cross-chain operations.

### Architecture

The yoVaults family relies on the Operational Periphery for price data (YoOracle) and efficient withdrawals (RoadrunnerWithdrawer), while the yoGateway family enables cross-chain vault coordination. Protocol Governance controls upgrades and access across all families via the RolesAuthority and TimelockController.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 32
- Raw deployments: 161
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $40,942,586.65
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YoVault_V2 | core_logic | ethereum | 9 deployments: ethereum [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9`; ethereum `0x586675...cc61a1`; ethereum `0xbcbc8c...60bcbc`; base [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43ae...0e9de7`; base `0x50c749...c871e9`; base `0xbcbc8c...60bcbc` | ⚠️ Unaudited |
| yoUSDT | token | ethereum | 3 deployments: ethereum [`0x0a09e9...df9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/); ethereum `0xb9a7da...5b721e`; ethereum `0xcbb008...14435f` | ⚠️ Unaudited |
| DaoModule | unknown | ethereum | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | 5 deployments: ethereum [`0xbc6197...b684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/); ethereum `0xd80a88...fe2642`; ethereum `0xe522b3...b6ce94`; ethereum `0xec1fa5...fe24cc`; ethereum `0xed9d63...f21646` | ⚠️ Unaudited |
| DVFInterface3 | unknown | ethereum | [`0xa297ec...319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | ⚠️ Unaudited |
| DVFInterface4 | unknown | ethereum | [`0x7de1f0...645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | ⚠️ Unaudited |
| Escrow | operational_periphery | base | 2 deployments: base [`0xc5da2b...70ebca`](./contracts/base-8453/0xc5da2b9174234f34c5857295776f5ea1fe70ebca/); base `0xfe4196...891e10` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | 5 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48`; base `0x60a3e3...1adb42`; base `0x833589...a02913`; arbitrum `0xaf88d0...8e5831` | ⚠️ Unaudited |
| NectarController | governance | ethereum | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 3 deployments: ethereum [`0x856fcc...fb873e`](./contracts/ethereum-1/0x856fcc085290ac1e40392442211e6a333afb873e/); ethereum `0x963c3c...a8eaa0`; ethereum `0xba4eee...133a7e` | ⚠️ Unaudited |
| RevokableVester | operational_periphery | ethereum | 20 deployments: ethereum [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/); ethereum `0x17c3ad...52baef`; ethereum `0x392113...cbbf17`; ethereum `0x46ab89...d42c00`; ethereum `0x48e0d5...22baa6`; ethereum `0x4ca751...02b506`; ethereum `0x4d05fa...903d84`; ethereum `0x540df7...1cc737`; ethereum `0x542ba6...25bcbe`; ethereum `0x735162...9a2552`; ethereum `0x771366...6ea387`; ethereum `0x9a45dc...dfa838`; ethereum `0xaaa46f...1d1e07`; ethereum `0xabe2ac...4ed887`; ethereum `0xb05ad4...523179`; ethereum `0xb9a5d8...848e96`; ethereum `0xb9fe6b...88a676`; ethereum `0xdf79be...bf80a3`; ethereum `0xf1f61f...6107d9`; ethereum `0xf55809...8ad347` | ⚠️ Unaudited |
| RoadrunnerWithdrawer | operational_periphery | base | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | ⚠️ Unaudited |
| RolesAuthority | governance | ethereum | [`0x9524e2...02d44d`](./contracts/ethereum-1/0x9524e25079b1b04d904865704783a5aa0202d44d/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 2 deployments: ethereum [`0x67b6f6...44fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e526...fd5927` | ⚠️ Unaudited |
| SupporterVester | operational_periphery | ethereum | 53 deployments: ethereum [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/); ethereum `0x09de35...cfa232`; ethereum `0x140dca...1a1c49`; ethereum `0x153db9...747cb2`; ethereum `0x174da6...ea128b`; ethereum `0x1f3473...1082ed`; ethereum `0x216cef...c7a1e1`; ethereum `0x21ea8b...b4621d`; ethereum `0x273e9a...25d087`; ethereum `0x2f76a1...f29f49`; ethereum `0x333c5c...77bf92`; ethereum `0x4e1adf...1abe02`; ethereum `0x4f1130...8fd0ba`; ethereum `0x59fbb8...e5e7cd`; ethereum `0x5a6d53...f2fbd9`; ethereum `0x5adc09...10ac42`; ethereum `0x5c6a76...d488cf`; ethereum `0x5d1504...07b4b0`; ethereum `0x5e0f9b...5a3e32`; ethereum `0x6a9a90...1f06a6`; ethereum `0x6cba14...a3d956`; ethereum `0x6d9fa9...6d2f32`; ethereum `0x6ed13b...4c584c`; ethereum `0x773b66...ea7744`; ethereum `0x7a06b2...c8cede`; ethereum `0x839fd7...e33d66`; ethereum `0x8aa593...c49a56`; ethereum `0x93a70c...429cf2`; ethereum `0x997793...ecb31f`; ethereum `0x9b1ab2...ecd0c0`; ethereum `0x9cc127...8ec3b0`; ethereum `0x9dda29...245c16`; ethereum `0x9f99e8...3e0c66`; ethereum `0xa7675e...d297bb`; ethereum `0xa8e1b7...d5e9da`; ethereum `0xad8a04...920aa2`; ethereum `0xbe48fb...490164`; ethereum `0xc2391b...4f075c`; ethereum `0xc6441c...73d157`; ethereum `0xcc3eb6...8c30ab`; ethereum `0xcfffbd...a463ab`; ethereum `0xd6acca...7c773f`; ethereum `0xe05685...413ab8`; ethereum `0xe711a0...a75d95`; ethereum `0xe7ef4a...aa6423`; ethereum `0xef0d12...a338d3`; ethereum `0xef98e4...4c587b`; ethereum `0xf12de0...68312e`; ethereum `0xf1b866...6a2b6f`; ethereum `0xf2748c...03c0e0`; ethereum `0xf42326...1e4f22`; ethereum `0xfa1807...498ed7`; ethereum `0xfc19ce...b4cd09` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 4 deployments: ethereum [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/); ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3`; ethereum `0xdac17f...831ec7` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x38ce5e...186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | 23 deployments: ethereum [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/); ethereum `0x0d3cc7...5fea9c`; ethereum `0x137b7b...51700b`; ethereum `0x14c219...5ce481`; ethereum `0x1590d9...4b3c09`; ethereum `0x1f8a9d...ae5c39`; ethereum `0x29706d...3c330b`; ethereum `0x3280b4...36a006`; ethereum `0x337923...1a0075`; ethereum `0x5bdc9b...19cdc1`; ethereum `0x61abc1...7dba37`; ethereum `0x6abb43...66ae0b`; ethereum `0x76dc64...4b8fc9`; ethereum `0x79b2aa...330896`; ethereum `0x94dc11...ce921a`; ethereum `0xa4f32c...6ed11c`; ethereum `0xb28cde...3ff2f8`; ethereum `0xb4da3d...9448c7`; ethereum `0xd3518f...43b578`; ethereum `0xdc5c30...9347e8`; ethereum `0xdf9b32...efcf43`; ethereum `0xe6f3fd...9bab87`; ethereum `0xfd48c0...659751` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | ⚠️ Unaudited |
| WETH9 | token | base | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| YoEscrow | operational_periphery | ethereum | [`0x05584e...7a0efb`](./contracts/ethereum-1/0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb/) | ⚠️ Unaudited |
| YoGateway | unknown | base | 5 deployments: base [`0x0cf9a8...7bb0cf`](./contracts/base-8453/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); base `0xc33660...6f903e`; base `0xecd62a...3c816e`; base `0xf1eee0...4969fa`; base `0xf5ebf5...556cae` | ⚠️ Unaudited |
| YoOracle | operational_periphery | ethereum | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ⚠️ Unaudited |
| YoRegistry | registry | base | 2 deployments: base [`0x542d29...bc8ae8`](./contracts/base-8453/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/); base `0x56c311...502232` | ⚠️ Unaudited |
| YoVault | core_logic | base | 6 deployments: ethereum `0xa9c5f1...443052`; ethereum `0xda92d2...2dc169`; base [`0x32578e...d123f7`](./contracts/base-8453/0x32578ee59e91028216f5e9f1a5ee77d298d123f7/); base `0x957c92...792358`; base `0xd6e282...ed4c44`; base `0xda92d2...2dc169` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x96c4bf...00159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9abc25...0f4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4fc47...8e7562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde7f57...071e5e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeecc4c...48acf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/) | YoVault_V2 | core_logic | $40,930,015.27 | Verified native implementation with $40,930,015.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a09e9...df9716`](./contracts/ethereum-1/0x0a09e980cae64d8840fd9c92f165aba4bfdf9716/) | yoUSDT | token | $12,571.38 | Verified native implementation with $12,571.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | DaoModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc5da2b...70ebca`](./contracts/base-8453/0xc5da2b9174234f34c5857295776f5ea1fe70ebca/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | NectarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | RevokableVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4fd9f5...e7d7da`](./contracts/base-8453/0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da/) | RoadrunnerWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9524e2...02d44d`](./contracts/ethereum-1/0x9524e25079b1b04d904865704783a5aa0202d44d/) | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | SupporterVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05584e...7a0efb`](./contracts/ethereum-1/0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb/) | YoEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cf9a8...7bb0cf`](./contracts/base-8453/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/) | YoGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | YoOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x542d29...bc8ae8`](./contracts/base-8453/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/) | YoRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32578e...d123f7`](./contracts/base-8453/0x32578ee59e91028216f5e9f1a5ee77d298d123f7/) | YoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
