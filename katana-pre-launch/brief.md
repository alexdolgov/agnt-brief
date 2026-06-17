# Agentic Audit Brief: Katana Pre-Launch

## Project Overview

- Project: Katana Pre-Launch (`katana-pre-launch`)
- Website: [https://app.katana.network/](https://app.katana.network/)
- Lifecycle: active (Tier 0, 92.6% below peak)
- Generated: 2026-06-17T07:00:43.014Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum
- Contract surface: 53 unique implementations (178 raw deployments)
- DeFi Llama TVL: $17,494,776.38
- On-chain TVL (included contracts): $35,474,536.72
- TVL by chain: Ethereum $35,474,536.72

## Project Description

Katana Pre-Launch is an Ethereum pre-launch deposit/farm product where users deposit eligible tokens into Yearn vaults to earn Krates and a pro-rata KAT allocation. Bridge, swap, perps, chain infrastructure, LayerZero, Agglayer, OP Stack, SP1, and other app or chain components should be treated as dependencies or out-of-scope unless directly tied to the pre-launch deposit contracts.

### Architecture

The Katana Pre-Launch vaults mint yield-bearing tokens that can be bridged via the Vault Bridge or LayerZero adapters, while the Agglayer bridge provides a canonical path to the Katana chain. Shared infrastructure like GnosisSafe and Permit2 supports governance and token approvals across families.

## Contract Surface Quality

- Indexed contracts: 656; live-surface contracts included: 178 (172 live, 6 unknown).
- Excluded by liveness: 411 inactive, 67 singleton, 0 uninitialized.
- Deployment units: 4/38 live.
- Detected codebases: none
- Unverified dependencies: 11/57.

## Audit Coverage Summary

- Verified implementations audited: 0/49 (0.0%)
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 53
- Raw deployments: 178
- Audits discovered: 28
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $35,474,536.72
- Latest audit: 2025-09 (fresh)
- Staleness: 6 fresh, 7 aging, 6 stale, 9 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Yearn V3 Vault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x48c03b...eedfcb`](./contracts/ethereum-1/0x48c03b6ffd0008460f8657db1037c7e09deedfcb/); ethereum `0x77570c...97ea2f`; ethereum `0xa5dab3...7d3896`; ethereum `0xd80631...84b00d`; ethereum `0xe1ac97...55544a`; ethereum `0xf470eb...cc014d` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x69d210...44c16b`](./contracts/ethereum-1/0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b/); ethereum `0x752310...565ab5` | ⚠️ Unaudited |
| TokenChwomper | token | ethereum | n/a | 3 deployments: ethereum [`0x5c2e11...92559c`](./contracts/ethereum-1/0x5c2e112783a6854653b4bc7dc22248d3e592559c/); ethereum `0xdbeca8...b3e9eb`; ethereum `0xde7259...1d5667` | ⚠️ Unaudited |
| AgglayerBridge | operational_periphery | ethereum | unit-26598 | [`0x2a3dd3...ca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | ⚠️ Unaudited |
| AgoraDollar | unknown | ethereum | unit-26593 | [`0x000000...a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | n/a | [`0xe0efe9...a857fe`](./contracts/ethereum-1/0xe0efe934dc4744090e8ef93f1d125e4015a857fe/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | [`0x52e523...ce2506`](./contracts/ethereum-1/0x52e523b849c584f86bf460a3cf2962b118ce2506/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | n/a | [`0x102b3f...d06137`](./contracts/ethereum-1/0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137/) | ⚠️ Unaudited |
| BridgeExtension | operational_periphery | ethereum | unit-26607 | [`0x64b20e...52f6a6`](./contracts/ethereum-1/0x64b20eb25aed030fd510ef93b9135278b152f6a6/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | n/a | 57 deployments: ethereum [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x180776...3f5633`; ethereum `0x1bddba...0533b9`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x38a806...c43271`; ethereum `0x3f1c35...4c4527`; ethereum `0x459154...f1e5d0`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x807dd6...799a04`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8d846b...77b1ab`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| ConduitController | governance | ethereum | n/a | [`0x000000...00ad63`](./contracts/ethereum-1/0x00000000f9490004c11cef243f5400493c00ad63/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DefaultEmissionManager | operational_periphery | ethereum | n/a | [`0x282fd4...e6c2e0`](./contracts/ethereum-1/0x282fd46e108e40a45e4ce425ba75f80245e6c2e0/) | ⚠️ Unaudited |
| DVN | unknown | ethereum | n/a | [`0x589ded...94236b`](./contracts/ethereum-1/0x589dedbd617e0cbcb916a9223f4d1300c294236b/) | ⚠️ Unaudited |
| Endpoint | operational_periphery | ethereum | n/a | [`0x66a71d...5cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x433708...5ff108`](./contracts/ethereum-1/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | n/a | [`0x1f4c1e...9884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | 56 deployments: ethereum [`0x0f1b1a...2e4ba2`](./contracts/ethereum-1/0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2/); ethereum `0x109c66...dcd9fe`; ethereum `0x26a101...340fc3`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x64a5c6...88578b`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8fee86...594b28`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdfd8c3...b768a4`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfc92c3...f0f0a3` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8469b5...a7d0df`](./contracts/ethereum-1/0x8469b5abd81987f9347c0babd47b9eb11da7d0df/); ethereum `0xffbd6b...2aa389` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| LayerZeroTellerWithRateLimiting | core_logic | ethereum | n/a | [`0x739a1e...fd8d16`](./contracts/ethereum-1/0x739a1effaddb0b07ef1284598819232df4fd8d16/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | [`0xd1b301...af49de`](./contracts/ethereum-1/0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | n/a | [`0x2ccd6b...52b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | n/a | [`0x51cdec...84bfeb`](./contracts/ethereum-1/0x51cdecc111c21bed72ab99f415bab6d35984bfeb/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x998739...8f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MyOVaultComposer | core_logic | ethereum | n/a | [`0x7b6dd0...2566e9`](./contracts/ethereum-1/0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | unit-26619 | [`0xb0f70c...817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5decbe...61ce8a`](./contracts/ethereum-1/0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a/); ethereum `0xa7a8e4...14dc0a` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0xe50a6c...282c74`](./contracts/ethereum-1/0xe50a6c887c18c5541d8cf311825016fbbb282c74/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | n/a | [`0xed1a8c...d2d4f5`](./contracts/ethereum-1/0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x890636...b8a1fb`](./contracts/ethereum-1/0x89063623f00238106c9a60032fae2ab702b8a1fb/); ethereum `0xeb8f92...a0275f`; base [`0x890636...b8a1fb`](./contracts/base-8453/0x89063623f00238106c9a60032fae2ab702b8a1fb/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | unit-26629 | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| ReadLib1002 | unknown | ethereum | n/a | [`0x74f55b...9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ⚠️ Unaudited |
| ReceiveUln302 | unknown | ethereum | n/a | [`0xc02ab4...6024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ⚠️ Unaudited |
| RedSnwapper | unknown | ethereum | n/a | [`0xac4c6e...f80b75`](./contracts/ethereum-1/0xac4c6e212a361c968f1725b4d055b47e63f80b75/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0xdcd484...adf84f`](./contracts/ethereum-1/0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | n/a | [`0xf0235d...d62dfa`](./contracts/ethereum-1/0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/); ethereum `0x8c6d31...81ed46` | ⚠️ Unaudited |
| Seaport | unknown | ethereum | n/a | [`0x000000...3eb395`](./contracts/ethereum-1/0x0000000000000068f116a894984e2db1123eb395/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | [`0x449ed7...4add33`](./contracts/ethereum-1/0x449ed7c3e6fee6a97311d4b55475df59c44add33/) | ⚠️ Unaudited |
| SendUln302 | unknown | ethereum | n/a | [`0xbb2ea7...72dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | n/a | [`0xce0042...fdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | n/a | [`0x97a350...2c389f`](./contracts/ethereum-1/0x97a3500083348a147f419b8a65717909762c389f/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | ethereum | n/a | [`0x50002c...1cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e94d6...8cc67b`](./contracts/ethereum-1/0x7e94d6cabb20114b22a088d828772645f68cc67b/); ethereum `0xfb3a3a...58d797` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2af2...ce158c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aa71f...4ddd03` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/cantina.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [code4rena.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/code4rena.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [hypercube-zellic.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/hypercube-zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kalos.md](https://github.com/succinctlabs/sp1/blob/dev/audits/kalos.md) | Kalos | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rkm0959.md](https://github.com/succinctlabs/sp1/blob/dev/audits/rkm0959.md) | rkm0959 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sp1-v4.md](https://github.com/succinctlabs/sp1/blob/dev/audits/sp1-v4.md) | Unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [veridise.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/veridise.pdf) | Veridise | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [zellic.pdf](https://github.com/succinctlabs/sp1/blob/dev/audits/zellic.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf) | Sigma Prime | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf](https://github.com/agglayer/agglayer/blob/main/docs/audits/2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Spearbits-full-agglayer-v0.3.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Spearbits-full-agglayer-v0.3.0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [Polygon-Certora (Kat Token) Final report.pdf](https://github.com/katana-network/kat-token/blob/main/audit/Polygon-Certora%20(Kat%20Token)%20Final%20report.pdf) | Polygon-Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 28
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1919] cantina.pdf
- [1920] code4rena.pdf
- [1921] hypercube-zellic.pdf
- [1922] kalos.md
- [1923] rkm0959.md
- [1924] sp1-v4.md
- [1925] veridise.pdf
- [1926] zellic.pdf
- [1927] 2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_audit.pdf
- [1928] 2024-06_pessimistic-proofs_d9d33885b6_trail-of-bits_response.pdf
- [1929] 2024-12_aggregation-layer_d9d33885b6_sigma-prime_audit.pdf
- [1930] 2025-04_aggregation-layer_d7b3dd1c28_sigma-prime_audit-part-1.pdf
- [1931] 2025-04_aggregation-layer_f084ad78b6_sigma-prime_audit-part-2.pdf
- [1932] 2025-07_aggregation-layer_d7b3dd1_sigma-prime_audit-part-1.pdf
- [1933] 2025-07_aggregation_layer_f084ad7_sigma-prime_audit-part-2.pdf
- [1934] 2025-07_aggregation_layer_f084ad7_sigma-prime_response.pdf
- [1935] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf
- [1936] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf
- [1937] Sigma_Prime_Polygon_AggLayer_v0.3.0_Smart_Contract_Updates_Security_Assessment_Report_v2_1.pdf
- [1938] Sigma_Prime_Polygon_AggOracleCommittee_Contract_Security_Assessment_Report_v2_0.pdf
- [1939] Sigma_Prime_Polygon_Agglayer_Contracts_v0_3_5_Security_Assessment_Report_v2_0.pdf
- [1940] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf
- [1941] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf
- [1942] Sigma_Prime_Polygon_PR_478_Changes_Security_Assessment_Report_v2_0.pdf
- [1943] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf
- [1944] Spearbits-full-agglayer-v0.3.0.pdf
- [1945] zkEVM-bridge-Spearbit-27-March.pdf
- [1946] Polygon-Certora (Kat Token) Final report.pdf

Fork inheritance lineage and inherited audits are included when available.
