# Agentic Audit Brief: Katana Pre-Launch

## Project Overview

- Project: Katana Pre-Launch (`katana-pre-launch`)
- Website: [https://app.katana.network/](https://app.katana.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T06:10:43.044Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, ethereum
- Contract surface: 529 unique implementations (654 raw deployments)
- DeFi Llama TVL: $17,262,971.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 47 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (executor, eip712, owneriscreator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 654; live-surface contracts included: 654 (174 live, 480 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/49 (0.0%)
- Deployed-live implementations: 49 of 529 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 480
- Unique implementations: 529
- Raw deployments: 654
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgglayerBridge | operational_periphery | ethereum | n/a | [`0x2a3dd3...ca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | ⚠️ Unaudited |
| AgoraDollar | unknown | ethereum | n/a | [`0x000000...a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | n/a | [`0xe0efe9...a857fe`](./contracts/ethereum-1/0xe0efe934dc4744090e8ef93f1d125e4015a857fe/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | [`0x52e523...ce2506`](./contracts/ethereum-1/0x52e523b849c584f86bf460a3cf2962b118ce2506/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | n/a | [`0x102b3f...d06137`](./contracts/ethereum-1/0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x69d210...44c16b`](./contracts/ethereum-1/0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b/); ethereum `0x752310...565ab5` | ⚠️ Unaudited |
| BridgeExtension | operational_periphery | ethereum | n/a | [`0x64b20e...52f6a6`](./contracts/ethereum-1/0x64b20eb25aed030fd510ef93b9135278b152f6a6/) | ⚠️ Unaudited |
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
| NativeLBTC | unknown | ethereum | n/a | [`0xb0f70c...817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5decbe...61ce8a`](./contracts/ethereum-1/0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a/); ethereum `0xa7a8e4...14dc0a` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0xe50a6c...282c74`](./contracts/ethereum-1/0xe50a6c887c18c5541d8cf311825016fbbb282c74/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | n/a | [`0xed1a8c...d2d4f5`](./contracts/ethereum-1/0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x890636...b8a1fb`](./contracts/ethereum-1/0x89063623f00238106c9a60032fae2ab702b8a1fb/); ethereum `0xeb8f92...a0275f`; base [`0x890636...b8a1fb`](./contracts/base-8453/0x89063623f00238106c9a60032fae2ab702b8a1fb/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | n/a | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
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
| TokenChwomper | token | ethereum | n/a | 3 deployments: ethereum [`0x5c2e11...92559c`](./contracts/ethereum-1/0x5c2e112783a6854653b4bc7dc22248d3e592559c/); ethereum `0xdbeca8...b3e9eb`; ethereum `0xde7259...1d5667` | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e94d6...8cc67b`](./contracts/ethereum-1/0x7e94d6cabb20114b22a088d828772645f68cc67b/); ethereum `0xfb3a3a...58d797` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x48c03b...eedfcb`](./contracts/ethereum-1/0x48c03b6ffd0008460f8657db1037c7e09deedfcb/); ethereum `0x77570c...97ea2f`; ethereum `0xa5dab3...7d3896`; ethereum `0xd80631...84b00d`; ethereum `0xe1ac97...55544a`; ethereum `0xf470eb...cc014d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (480)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x020082...a81985` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x021078...703679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0238d2...25e2e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x031848...596447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0330f9...acb1e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03af67...362daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03cb4c...b834d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x047204...8e0786` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x053fa9...0bb462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057152...1fe1b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06f981...1da9b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07245e...e4df89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0826b8...83d41b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087ceb...384e2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08b405...7b5abb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08c798...95672d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x093844...8cad63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab48c...c44554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab536...57ad21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0af338...0ee395` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc426...f075b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c291a...c1f4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d7368...521fc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8745...d8f874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dafed...8b2602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f04f5...7d20ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f27c8...d04b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f2bfa...c83127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1175e4...4fa62e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x118a93...6c6bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x123ed4...0ee5ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13dff8...9fdd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x152442...27fcb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153fb4...eb12d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1580c7...092cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a9d7...a7149c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16cc4e...170347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x173272...453059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x175bfe...92888f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17f1ac...9166ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x181314...4cd838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19044c...0274da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a3d58...e35a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a904d...ed7599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ab914...6665ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ace9d...159df5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b9605...7a195d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c207d...b2d12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c3f27...c06eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c8565...298e80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d01e4...a7ef81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2af2...ce158c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e283d...ed0bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e28dd...c9c3d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e45f2...279c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fa3af...45f06b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20718e...411a6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fd5a...b64432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21377f...4df45e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x215a3a...861f0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x245b6e...23eefc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x266e52...717b8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26bc65...e0e61e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26cdfc...c7c520` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x271689...25ddd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x276491...fde73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c1c02...4948f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c24b5...32374f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5c39...25b5b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d1708...ba1c77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d61dc...529aaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dc70f...c34dff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dd317...517470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e3c68...b10f73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x307d03...16bce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x310fdc...f73189` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x319ae5...d8f627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31ee10...2f8d37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31f6ab...0a89ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x333f97...f6264e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33417f...3691a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3455d8...7b07bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34748f...cb4094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35f0ca...5f1b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362a22...ba8187` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37152c...f1c564` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3715d2...cecbc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38ad72...e24286` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38de71...491251` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399949...a3e576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a129e...91c6c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac0d8...a8c6b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad884...d9076c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b01de...f1eab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cb2a8...56fc53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ced11...98c14c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d3467...23144c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d368d...2d7c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d8a95...b90466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd459...8c4855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3df8da...9dd630` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ec70c...7fc7d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ef366...ba6552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40c558...74417f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40f20d...62de26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4109d2...64d5b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411de1...c75e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41627a...7fdab5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x417d01...689e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4224f6...e51d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x442896...fcedc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44622f...c7ff14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4474b8...232dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4545f9...9cbd27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45a103...f84b6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45af36...4f8aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x466a07...4c9b65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4690f3...5b985e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46911f...cbf5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46ce93...1faeb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x475c8f...36e358` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x476eef...240b93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b3c4...e2e116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x485858...db0005` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x486170...f2c44c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f836...e21980` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4913fd...e1f196` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a580c...0df59d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a59d3...0d321c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4af4b4...a79dc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b440d...505b67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b4ca2...abefb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c3aee...fb7709` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cc3d9...5702c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ccd4c...59c17a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ce6f5...bf675c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e341b...14c260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e6300...371ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e9ae4...938227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e9c57...fb9ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ed3c8...9881e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4edc3a...eda56a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8b7a...904c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fb540...8b05c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fdaad...595d6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50f663...a882ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518086...196a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519fbc...2a462a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51e64b...664fae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x522f82...150fff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53d196...c12b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53e82a...7a765e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x542bf6...95be84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x550425...65d451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x551390...5e6808` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55562a...11c1e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x556979...ee0c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x566513...f6ef5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x569940...f75c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57117a...4e8787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5739e5...2025e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57d3bb...28475f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581ced...48c9c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58821e...0949f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aa71f...4ddd03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ac73e...323487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b19bd...a18c1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be290...4f58ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c1667...c57a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d93bb...929334` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e7397...587e04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e8752...70b422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebb3f...e73056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f6e77...16eb3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x608d23...4ab9fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60adff...c2962c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f9b5...4b2c2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61135e...fbaae4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x614f72...84261c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x619ed9...b5924e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61ab01...39d849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b4b8...3148a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61d405...7ef92f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626189...1f78e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62bfc5...9e0fbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x639f13...3c77de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6452d6...3f37a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66114e...4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x667efc...a7cd81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d40e...dedcec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6715ea...4a6b49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6751ca...db4e36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67f4e7...1b1787` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x694d16...cab683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69c24c...78f93a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69ecc4...f2c284` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a888f...31480b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bd792...d22c70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ce8b7...4a28f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1e0c...7d38bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4f9f...9845cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ddf2f...494db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f4756...48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f8a42...a35168` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ff6bf...b6cd7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70b2b3...bca65d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7115f0...5ea175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73aeb5...3d90c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x741599...8e9f90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x747c74...92f6ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74cb66...e77931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7559a8...2128ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a852...0d9799` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75d536...49b84e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x762648...7f190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76a15d...fe00a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x771d10...3b9cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x781964...dad288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7986c9...70a5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79bc41...721d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7afe70...b9171c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b78f8...180a2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c32c6...e18bb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d7c49...2557b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e4c90...91f656` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fb589...fde90b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807275...d293c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80cc10...7de2d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80e2dc...e4cfb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8169e5...520dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81c16f...9d525e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8272db...ba413a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8287f4...2e88f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8291a8...9f3b06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82df5c...db012b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8300e8...a6b12d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x831097...540c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8315bb...27336e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x839dc0...95ab82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86768e...c8d486` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86b47d...5549d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8775e9...491027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87c55d...793d75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d8ee...c2357b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89c903...9a6d04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ac682...a158d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b63b3...91fa1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b858e...f117ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bcd7e...ae9062` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8befca...dc11a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3805...cf8555` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c6028...422e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9015...66b760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9b2e...b958ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d09c4...c131d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc27d...9bae04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e7ebb...3bcaea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ee289...46a4a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8efae6...91f3e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f051c...ab8f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f45f7...ff949b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fafc8...c9ce0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901de2...9106b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x902f09...98089e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x916d7d...866d44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91d25a...ebfa69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x923f27...c3ee81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x925228...44a22c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92fbcf...9da04f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93ed06...9a7f24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948306...0b480d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94fe59...867a9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9512a8...231874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9557b1...9aa1e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96ed42...e3e763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9797e8...d828e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x980205...3ec981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x992470...9946e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b14ae...8a365b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b2eed...1b7749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b8fef...db0dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bfac7...ef3ba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c6a6e...27e1dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c7922...8fe192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c9e25...4fbd95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb0ff...9747d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2a80...7ab639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e72f9...8c75a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ec9f9...ec50f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f02c1...b6d06c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa00853...00cd91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17698...0701e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa27501...a5bbbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32f81...0ebe94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa35304...16c215` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa36797...c25ee3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa370ce...7574da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4d264...e3f194` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ef33...8264ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa65874...d161d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d806...8ccb48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7689c...3a660f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa77c14...dc8f3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa81f4a...0fefda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa82a87...eaf858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa904b9...19d000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96787...9d349b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6066...4a10d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac0c6e...9cfd3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac3453...5bf95b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad132b...bb050a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf3477...913d9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcc99...0bdd1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafd31c...249d8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaffa4f...643e46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00aa6...4a44fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb03734...9d9231` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb09590...f20bf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb25156...fb4577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb26ac1...29090c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ec4d...3945f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb360a5...9c428d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb368c8...d143bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3e790...bbf91b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb42ab6...621665` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5bada...957bb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f146...8e0c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb830a5...0a592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb85453...19d7ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8a882...431937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba0e1c...c824c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba1aa2...653332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbaf669...fc4cb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdcc99...0218b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdd822...93fe72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4fb2...9fc220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbec6f0...b56af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeffef...886c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf2e10...951320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf7cb6...dc0982` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc86c...e63351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03f31...a91113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0c8d7...ef120d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1b15d...dacb36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d8f2...25d91a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22919...570df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ef2f...379979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3ce54...58c6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc43c01...778df2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc456ea...56cd29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46e2f...4abf88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a313...0a9a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4abcd...4f5f58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc55332...4958b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc55d7b...c01b79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc576d8...de5b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5dbe2...ca3fc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5fd95...b0c05d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc62c31...1aad3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6dd63...d30e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc71766...33ee94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc905e7...534688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaea22...d4b133` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb18b1...4be4c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb566e...e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8b43...3b6905` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbe7e5...a4e2c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0de8...6fd346` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc19bc...7780b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc75c8...c8fa14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc865b...fd6f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccb2d2...a2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf971...f3672b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd196d...c73526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd69c1...322733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce6364...f702e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce8342...098fde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfd063...df23c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcff08a...3def77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0b5fc...282cf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0b84f...d48595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1cc3a...cb2ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd23108...daf705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd28d73...e84092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd37a60...beeb76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50836...4dfd46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd53903...d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd54c93...95a89f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd72f70...87c66c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87129...9859c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8e872...b2e252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8f734...66c351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e705...62d0c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaa386...016819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdac2d2...da4232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdafe69...b9b03d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb156e...6e627c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb6ebb...4f19b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc5b57...b50844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc85b5...8641a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdca0a2...add6d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcc1a1...994068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd55f5...be306a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf4b4...0d234b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde04b3...dd19df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde71a0...e86f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdefead...6423cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf1d7f...9f3b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf85c8...cddfb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe01f3c...28976b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04f26...08e832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe20403...6fc6d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2c2ab...4dadf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2eb22...60fe73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2f0da...93e366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe30779...02de80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe31009...291739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe48320...8ae86f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe561d5...9a1476` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58edb...0a6a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5971a...76cf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe64ae0...73e321` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6d3bd...27ac3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe727f7...dad811` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe742e9...c5810e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe79705...962162` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84c69...e1ee83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe85e8d...88c99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8af3b...f09b92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93ec2...7d47d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9ae26...e07b2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9bfb4...ac54ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea5fd7...86ada1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea6d4a...086f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xead31b...26461d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeae89e...669b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed5be9...2e3cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb24c...711e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee2ae...34a8e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefc4a1...286f4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d19c...7be823` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf28f73...a6a62f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50b9a...30f6f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5224e...dcde99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf538da...58cfd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf57fc1...9ee89a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf641db...63a141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c88f...c11b99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c8bd...18c46d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82fa8...c4f667` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf84bf7...15fa72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa6f20...b3e759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacfe8...551fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaea28...66f3e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb0422...e28783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe0b8e...3938fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe7c30...d3a098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe9ab7...5c9805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff2331...73bc9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff31c8...a872db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff51c0...09cd24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffbec4...bc4330` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd53903...d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb8f92...a0275f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Polygon-Certora (Kat Token) Final report.pdf](https://github.com/katana-network/kat-token/blob/main/audit/Polygon-Certora%20(Kat%20Token)%20Final%20report.pdf) | Polygon-Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 529 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1946] Polygon-Certora (Kat Token) Final report.pdf

Fork inheritance lineage and inherited audits are included when available.
