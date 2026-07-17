# Agentic Audit Brief: Katana Pre-Launch

## Project Overview

- Project: Katana Pre-Launch (`katana-pre-launch`)
- Website: [https://app.katana.network/](https://app.katana.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.044Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, ethereum
- Contract surface: 208 unique implementations (333 raw deployments)
- DeFi Llama TVL: $17,262,971.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 48 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (executor, eip712, owneriscreator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 333; live-surface contracts included: 333 (174 live, 159 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/41 (0.0%)
- Deployed-live implementations: 49 of 208 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 159
- Unique implementations: 208
- Raw deployments: 333
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
| AgglayerBridge | operational_periphery | ethereum | n/a | [`0x2a3dd3eb832af982ec71669e178424b10dca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | ⚠️ Unaudited |
| AgoraDollar | unknown | ethereum | n/a | [`0x00000000efe302beaa2b3e6e1b18d08d69a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | ethereum | n/a | [`0xe0efe934dc4744090e8ef93f1d125e4015a857fe`](./contracts/ethereum-1/0xe0efe934dc4744090e8ef93f1d125e4015a857fe/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | [`0x52e523b849c584f86bf460a3cf2962b118ce2506`](./contracts/ethereum-1/0x52e523b849c584f86bf460a3cf2962b118ce2506/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | n/a | [`0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137`](./contracts/ethereum-1/0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b`](./contracts/ethereum-1/0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b/); ethereum `0x75231079973c23e9eb6180fa3d2fc21334565ab5` | ⚠️ Unaudited |
| BridgeExtension | operational_periphery | ethereum | n/a | [`0x64b20eb25aed030fd510ef93b9135278b152f6a6`](./contracts/ethereum-1/0x64b20eb25aed030fd510ef93b9135278b152f6a6/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | n/a | 57 deployments: ethereum [`0x01346721418045a6c07b71052e452ef8615e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df02c581e605aabf83005b427b1561b587de`; ethereum `0x0d26bae784c8986502e072f4e73b6168e2052045`; ethereum `0x0f254eccc89219cec945bcea48a4681eb5a380d7`; ethereum `0x0f5552d17505dc8f70d6cd65beadfe20f42bbe75`; ethereum `0x0f89c7c0586536b618e0469402e1c8234bc52959`; ethereum `0x10d5611d4e1fbb0eb614c25f14ed6afd6c945c75`; ethereum `0x1807769abe5133c9b41ca6746044b6a1d83f5633`; ethereum `0x1bddba5dc2cd6ed3343a8e94d02023cc720533b9`; ethereum `0x27a4e7ff4a6e28056ac3e39445639876ee9926fb`; ethereum `0x2aa101bf99caef7fc1355d4c493a1fe187a007ce`; ethereum `0x38a806580d93c5b3e295f5181723c11f15c43271`; ethereum `0x3f1c3541b7035ded84e4502e41d5c919da4c4527`; ethereum `0x459154447d3bd41392ea3f49738a887dd3f1e5d0`; ethereum `0x4b50cd4637a8ea94729811201a699f4800ee3282`; ethereum `0x52275dc17f9ed92230c8c4d57fd36d128701f694`; ethereum `0x57b548c9c213ea2bcf60193e3d7fd2d2b53fb9b3`; ethereum `0x57d6cd9cd44770c807b2763dbe4cfda0113dd114`; ethereum `0x5fd81cf5734498467634ed9432aad298022e15ff`; ethereum `0x607c0979c55628680167260ca68e0ef22e8f128c`; ethereum `0x67b972054152e6f4b7434d84439ee225e5a00b90`; ethereum `0x6818278a6e4da0ad588ef4dd04b59bc4e6703248`; ethereum `0x6c8b9672b4482a876168b9415bf8bbea574bf4b9`; ethereum `0x6f4abce0b22343e66c856f28e2d07074c5c5bf75`; ethereum `0x6fe6f73f7cd11e34b6908cdc080683690229d0a4`; ethereum `0x700b6adccfaa4c66638b1ad36bdefe2038794e02`; ethereum `0x70ac0f926a64d82f0cc69a3e505f0ee57e27006a`; ethereum `0x807dd69bc9bc4e9411490f7b79ff30c91e799a04`; ethereum `0x83f3da5aa2c7534d694b0acde7624573c830250d`; ethereum `0x8705f734b7ac1fc0bb2d16f60c6efac5ed646159`; ethereum `0x8a1680fbbdb3da1e0e7ca9078435631beaf8a2cf`; ethereum `0x8d846b1e9032827546b62160c32ade293f77b1ab`; ethereum `0x8fc54e798eac51353e160c9113682714f5e9e262`; ethereum `0x913a2ac13907f29ef2346e21368214b9b3ddc04b`; ethereum `0x95deb0c4bb9168202d50e874865f9a1842b82d64`; ethereum `0x98d0f843ae9ba7c55f6e3941e6660a5947a67ed9`; ethereum `0x9b9ec8e26955c034828bbd78e22ab258d983dcdb`; ethereum `0x9d93d536ced80871bf3da5bb47baede62c794f8a`; ethereum `0x9f592c28590595f3f78a8881e8dbb9984ed705cd`; ethereum `0xa4755cd68ca2092447c8c842659a2931f9110320`; ethereum `0xa48269e5c9a234dabfebe98b82390be705536d1c`; ethereum `0xa58818d1acd8d62ab077a1f79606fcb5ce3741b9`; ethereum `0xa9f9bf2b643348c0884f2eba4f712e833da9a2b8`; ethereum `0xc46890d248a389a40725dbd9fa5e13548b56ad8d`; ethereum `0xc5164af94be6737fe21085edda4e43bcbf224f9f`; ethereum `0xd079265e929c845707e816e3855721d055d40235`; ethereum `0xd2428f8c62fbfea4b44a703cf11e02d7b0a6cd99`; ethereum `0xd8f93aff87dc2aeee0d0b0df347bada861bff802`; ethereum `0xd9d3d90d729f50794741da7a2d54d8b12dc3da72`; ethereum `0xdac3a82cc5e7c137bf28e6ef4f68f29d66205ffe`; ethereum `0xdcf6f209d36d93a26b251d2cfe994bef02954110`; ethereum `0xe41677500b425999cb4133950ca3ab79ea7470a6`; ethereum `0xf191733ea5be14e4a5f381a3c375a4f3f8fd4793`; ethereum `0xf7b343a17445f175f2dd9f5cb29baf0a8de75ed3`; ethereum `0xf7d68ccc92b836316c40b24ea77f6805dcbb8f02`; ethereum `0xfa94e57b12b6c45a3ad3cbb9451ba99a997eb210`; ethereum `0xfe73bccc5b88d22969099ebb4e2eb5e19efb0165` | ⚠️ Unaudited |
| ConduitController | governance | ethereum | n/a | [`0x00000000f9490004c11cef243f5400493c00ad63`](./contracts/ethereum-1/0x00000000f9490004c11cef243f5400493c00ad63/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DefaultEmissionManager | operational_periphery | ethereum | n/a | [`0x282fd46e108e40a45e4ce425ba75f80245e6c2e0`](./contracts/ethereum-1/0x282fd46e108e40a45e4ce425ba75f80245e6c2e0/) | ⚠️ Unaudited |
| DVN | unknown | ethereum | n/a | [`0x589dedbd617e0cbcb916a9223f4d1300c294236b`](./contracts/ethereum-1/0x589dedbd617e0cbcb916a9223f4d1300c294236b/) | ⚠️ Unaudited |
| Endpoint | operational_periphery | ethereum | n/a | [`0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x4337084d9e255ff0702461cf8895ce9e3b5ff108`](./contracts/ethereum-1/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | n/a | [`0x1f4c1e0afbeb5b5b86d7722549274434b29884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | 56 deployments: ethereum [`0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2`](./contracts/ethereum-1/0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2/); ethereum `0x109c666a021214c96a7ab7cde7e987f4e7dcd9fe`; ethereum `0x26a10137a54f4ea01d20758ac5adbf9326340fc3`; ethereum `0x330349112e13232131da51f9f3b153d825f65e61`; ethereum `0x33276152d082120f5190362e6e5f6783bbcb2b26`; ethereum `0x34eec7eca3ce1e693028255ebe2063728224a604`; ethereum `0x3b45dd27e0cf84f1af98deabdc8f96303475ef58`; ethereum `0x3c5990484d4d7b728ae875d001e97469284210c1`; ethereum `0x3c672f0f9e73cb7984a5ab486c7839f84c8edc09`; ethereum `0x418dcbcf229897d0ccf1b8b464db06c23879fbb4`; ethereum `0x4676537819a87e9d515d654f8bedf45a744cf214`; ethereum `0x49aac6fc36f32ac22867ac0baa23e6f2551f8edd`; ethereum `0x4bc6027cd2da6cb7a105d5ce2d039c4892225419`; ethereum `0x4e4003dafd00ec3b5f17f05950759054051950d6`; ethereum `0x559c3233ae9a0ecd45a6c45ee3b8c2c6dba5f48d`; ethereum `0x562a2025e60aa19aa03ea41d70ea1fd3286d1d3b`; ethereum `0x5b6d2998eef5cbba7e8345b08dd41aecec5eaca5`; ethereum `0x5b859e596c4285bf489e1bfa222b97db431da7ec`; ethereum `0x5e24de8f7ccb3e1e204707573a672823d88c559f`; ethereum `0x5eda6801dbd2bbdbf0401d34c730fa2c3a97c3f4`; ethereum `0x64a5c64945c72bc46df52c82cfce9161b888578b`; ethereum `0x66d84feded0e51aeb47ced1bb2fc0221ae8d7c12`; ethereum `0x6868fefbefdc2b2fb75e6ed216db1bec02563d69`; ethereum `0x6b4b6359dd5b47cdb030e5921456d2a0625a9ebd`; ethereum `0x70c705ff3ecaa04c8c61d581a59a168a1c49c2ec`; ethereum `0x718672076d6d51e4c76142b37bc99e4945d704a3`; ethereum `0x720ea8a2662376b89dee1a7baca95b2eb6b6ff81`; ethereum `0x794ae32b63b8a82a6e2ec5017bbc6bfbdda5ce96`; ethereum `0x7a82d2d3d824f9bac136c31ef8086c673d23666d`; ethereum `0x82dae15e45d63f2ae85b1f0d690685a021d3a0fc`; ethereum `0x8693cda8e6d3aee7c9fc258c3e7f648c8e6580c1`; ethereum `0x8b3eeed4948684c3ec1bb60967820f40285018b8`; ethereum `0x8fee869edd935391b4979f8c79560102a8594b28`; ethereum `0x9a3ed7007809cfd666999e439076b4ce4120528d`; ethereum `0x9cbba13011cd9d9310ff9f1f6515582d6518a90e`; ethereum `0x9de971a8449bc9f31fe7b0f2ccdab3873f711988`; ethereum `0x9f0e818a8dddf48c52d5c94d55079e3617d55181`; ethereum `0xa627f208c5c32e5638c64147d0ac98bb40f758f0`; ethereum `0xa8c12a859225531254ddef7079030f7dd6992a14`; ethereum `0xaa0da3e06f43a5227abb0ea7d6df3d1037b1769b`; ethereum `0xae2a2a088a8f85a2db90a61bd463433985c437f0`; ethereum `0xb0f5b6db1157719795eccd9c6023c66bb2ec414f`; ethereum `0xb45cf8df3aaa50199b7aaabd345119bad1b8d977`; ethereum `0xb57d52f7cb7bbd19a117585bbaf712108e56dd8f`; ethereum `0xc1ecce580b2c96f4fd202fb7c2a259ece19a1bf2`; ethereum `0xc876d50a0ecc147fc0ced194cd2b66210d482f9c`; ethereum `0xcdca3f3aa3a4df41a3daf885e3e25666ee96d7e4`; ethereum `0xd98e80c79a15e4dbaf4c40b6ccdf690fe619bfbb`; ethereum `0xde66080eabe390198b8918cb3f61e1869dbc8079`; ethereum `0xde81f1627ef2f6e23a2c0f338623c78c10ea57ac`; ethereum `0xdf615ef8d4c64d0ed8fd7824bbed2f6a10245ac9`; ethereum `0xdfd8c353044ab175cc96fd4261c2af3e3ab768a4`; ethereum `0xf2eb4ce854c8c0aaea6080ef825efa5a84a8656a`; ethereum `0xf3ac96642f9ba5de3bbc864d609e3f534dd3b7f9`; ethereum `0xf4468e56179e6ef59d6f5b133d9355aad91ea9ae`; ethereum `0xfc92c3b8a374f70cb46cf884d4f02bb120f0f0a3` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8469b5abd81987f9347c0babd47b9eb11da7d0df`](./contracts/ethereum-1/0x8469b5abd81987f9347c0babd47b9eb11da7d0df/); ethereum `0xffbd6b0146c9e16a9f9e77dc8898cbff6e2aa389` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x69f4d1788e39c87893c980c06edf4b7f686e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| LayerZeroTellerWithRateLimiting | core_logic | ethereum | n/a | [`0x739a1effaddb0b07ef1284598819232df4fd8d16`](./contracts/ethereum-1/0x739a1effaddb0b07ef1284598819232df4fd8d16/) | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | [`0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de`](./contracts/ethereum-1/0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | n/a | [`0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | n/a | [`0x51cdecc111c21bed72ab99f415bab6d35984bfeb`](./contracts/ethereum-1/0x51cdecc111c21bed72ab99f415bab6d35984bfeb/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x998739bfdaadde7c933b942a68053933098f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MyOVaultComposer | core_logic | ethereum | n/a | [`0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9`](./contracts/ethereum-1/0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | [`0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a`](./contracts/ethereum-1/0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a/); ethereum `0xa7a8e43ef0e579c3d64618d2a34dd456ae14dc0a` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0xe50a6c887c18c5541d8cf311825016fbbb282c74`](./contracts/ethereum-1/0xe50a6c887c18c5541d8cf311825016fbbb282c74/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | n/a | [`0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5`](./contracts/ethereum-1/0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x89063623f00238106c9a60032fae2ab702b8a1fb`](./contracts/ethereum-1/0x89063623f00238106c9a60032fae2ab702b8a1fb/); ethereum `0xeb8f9227f5e6012fd4e0d52461a6cd0226a0275f`; base [`0x89063623f00238106c9a60032fae2ab702b8a1fb`](./contracts/base-8453/0x89063623f00238106c9a60032fae2ab702b8a1fb/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | n/a | [`0xecac9c5f704e954931349da37f60e39f515c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| ReadLib1002 | unknown | ethereum | n/a | [`0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ⚠️ Unaudited |
| ReceiveUln302 | unknown | ethereum | n/a | [`0xc02ab410f0734efa3f14628780e6e695156024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ⚠️ Unaudited |
| RedSnwapper | unknown | ethereum | n/a | [`0xac4c6e212a361c968f1725b4d055b47e63f80b75`](./contracts/ethereum-1/0xac4c6e212a361c968f1725b4d055b47e63f80b75/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | n/a | [`0x13022e3e6c77524308bd56aed716e88311b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f`](./contracts/ethereum-1/0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | n/a | [`0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa`](./contracts/ethereum-1/0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/); ethereum `0x8c6d31fc27770ebcc5593c9d10adb9211181ed46` | ⚠️ Unaudited |
| Seaport | unknown | ethereum | n/a | [`0x0000000000000068f116a894984e2db1123eb395`](./contracts/ethereum-1/0x0000000000000068f116a894984e2db1123eb395/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | [`0x449ed7c3e6fee6a97311d4b55475df59c44add33`](./contracts/ethereum-1/0x449ed7c3e6fee6a97311d4b55475df59c44add33/) | ⚠️ Unaudited |
| SendUln302 | unknown | ethereum | n/a | [`0xbb2ea70c9e858123480642cf96acbcce1372dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | ⚠️ Unaudited |
| SingletonFactory | registry | ethereum | n/a | [`0xce0042b868300000d44a59004da54a005ffdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | n/a | [`0x97a3500083348a147f419b8a65717909762c389f`](./contracts/ethereum-1/0x97a3500083348a147f419b8a65717909762c389f/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764f98dd05c789929716d677382df22c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | ethereum | n/a | [`0x50002cdfe7ccb0c41f519c6eb0653158d11cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | ⚠️ Unaudited |
| TokenChwomper | token | ethereum | n/a | 3 deployments: ethereum [`0x5c2e112783a6854653b4bc7dc22248d3e592559c`](./contracts/ethereum-1/0x5c2e112783a6854653b4bc7dc22248d3e592559c/); ethereum `0xdbeca8fb948c42634256609bce5a3768c9b3e9eb`; ethereum `0xde7259893af7cdbc9fd806c6ba61d22d581d5667` | ⚠️ Unaudited |
| ValidatorShare | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e94d6cabb20114b22a088d828772645f68cc67b`](./contracts/ethereum-1/0x7e94d6cabb20114b22a088d828772645f68cc67b/); ethereum `0xfb3a3a64e12fa787a6b709bf57834bdad958d797` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x48c03b6ffd0008460f8657db1037c7e09deedfcb`](./contracts/ethereum-1/0x48c03b6ffd0008460f8657db1037c7e09deedfcb/); ethereum `0x77570cfecf83bc6bb08e2cd9e8537aea9f97ea2f`; ethereum `0xa5dab32dbe68e6fa784e1e50e4f620a0477d3896`; ethereum `0xd8063123bba3b480569244ae66bfe72b6c84b00d`; ethereum `0xe1ac97e2616ad80f69f705ff007a4bbb3655544a`; ethereum `0xf470eb50b4a60c9b069f7fd6032532b8f5cc014d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (159)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x031848f9487219cc538c42dac150968f95596447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0330f95a5110e9f72fe0776a1291834ffeacb1e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07245eea05826f5984c7c3c8f478b04892e4df89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087cebbd85a161a50f91b9d7743e8b89fc384e2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d8745a84259ab5a38e89d5cb4db642003d8f874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f04f5d8bb631197845dae519d03d7997f7d20ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13dff8847ea170ebb8439ce732c0a14bb49fdd92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x152442d77e9fb9c210953d583cbb2da88027fcb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x173272739bd7aa6e4e214714048a9fe699453059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x175bfec21a4949c339d1b9b621ad325d9892888f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19044ca8bbbabdc30e52d4d60854d968d90274da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ab91437501dbbeee25953cf66fcd153916665ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ace9dd1bc743ad036ef2d92af42ca70a1159df5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c3f273491759de2f5f143f302d6885d33c06eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c8565f454f8239b854fe62c99b90b3fc9298e80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2af2b99e253b68d72c76484dd88ffb0ace158c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e283d60537dae87bb63cfcae0be574b50ed0bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e45f27f0e96e9757cff938f2c9d697aa8279c85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26bc65d3cc2f034f5277335ee607ea7e16e0e61e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27168981aa1c0b6ce941babcf3579887ec25ddd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c24b57e2ccd1f273045af6a5f632504c432374f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x319ae539b5ba554b09a46791cdb88b10e4d8f627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37152ce735896d0ecac1b7797d5eca58c8f1c564` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38de71124f7a447a01d67945a51edce9ff491251` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad88467e40399dc6ae10427f8b0842348d9076c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b01dee1733697b954a7648f7b0bf91acff1eab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ced11c610556e5292fbc2e75d68c3899098c14c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ec70c868c63be49c5da0944302293d2c87fc7d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ef366d1b8fd85459e8ec0e6d67b03f5e1ba6552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x417d01b64ea30c4e163873f3a1f77b727c689e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4224f6c96f15971e5b0e59f71eeebded2fe51d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44289609cc6781fa2c665796b6c5aabf9ffcedc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4474b891bf3d93e61676912f0739e04b86232dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4690f346337ed8737bea462ac71ff16ef95b985e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46ce937a70412dfdcf01f29d6d4fe15ada1faeb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a59d3e5994abd5705b63892e1cf2301720d321c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e341b9cf90514a5b7dfec2c9a1f20aa4514c260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e9ae452290570834c978edf9b3febbcd4938227` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e9c57fd2bd0f47c43f2d62642c1b05894fb9ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ed3c8bd8fd6c713edb0d81e79244103e59881e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8b7a7a346da5c467085377796e91220d904c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519fbc7cceb55255c9d1ff0ce5f9bbf1642a462a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51e64b34600c27c67da44f8b86c3fe19a3664fae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53e82abbb12638f09d9e624578ccb666217a765e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5569796627e8d5d09ac260a0664b2be312ee0c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56651306b2fa0ef5ae7bcdd78aebf3133cf6ef5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aa71f09ac4956ed13913767622f7e5e864ddd03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ac73e0cb5e75b7c550bc59126d34393e3323487` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d93bb673d001498e515617ade09904d71929334` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e875267f65537768435c3c6c81cd313a570b422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebb3f2feaa15271101a927869b3a56837e73056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60adff2adb728f7d3029e43dea8c212f31c2962c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x614f72481bcbcddfd8e12e56bed0bef0ad84261c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61ab01ce58d1dff3562bb25870020d555e39d849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x639f13d5f30b47c792b6851238c05d0b623c77de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x667efca143c6a89e384da2d3e7e63e0af4a7cd81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x694d1697f6909361775139357d99fb60b5cab683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bd792911f4b3714e88fbdf32b351632e7d22c70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x747c741496a507e4b404b50463e691a8d692f6ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76a15d86fbbe691557c8b7a9c4bebf1d8afe00a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x807275727dd3e640c5f2b5de7d1ec72b4dd293c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8169e532bc781985e155037db1f96c267a520dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81c16f89222c32806daf01f5129937dfe19d525e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8287f469726a95dede7cff1ea3b24a34a12e88f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x839dc0cff5e263f56c9810560adf8ea40e95ab82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8775e9d584008f84dafe7abe75a62f6c91491027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d8ee0bae7d352bc05c90b2d3fa3467d6c2357b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d09c41229f07ad098ffb5fad239dd87d2c131d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f051ca72a3440d83b18e71c3e59676203ab8f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f45f7acd4b9fc0b446902790f304d444dff949b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fafc84caea1cef8475cb5cb344658d160c9ce0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901de2f2b8b525a61b7adc3861f1355ab49106b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x902f09715b6303d4173037652fa7377e5b98089e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93ed061f41fdd0f4dfdb00ef2322b078699a7f24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94fe59afaff2d0a8ea6e8158feb7c65410867a9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9512a85438606dede54297634ded7c7c0c231874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96ed424a833859ba08f588b62cba7edacfe3e763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x980205d352f198748b626f6f7c38a8a5663ec981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bfac7947fc1b64aa9f12b24ecd519daecef3ba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c9e25f9fc4e8134313c2a9f5c719f5c9f4fbd95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2a805227fbb433f7c05e98af505b04e07ab639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa36797ba947b378aefe5f726cd87766cd3c25ee3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa658742d33ebd2ce2f0bdff73515aa797fd161d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad132b4d9f364f8b55ea6511d7d238505dbb050a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf34771b16960ea77484a866a34ccdafdc913d9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00aa68b87256e2f22058fb2ba3246eec54a44fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb037347ef306db3b41ab0b250f891887039d9231` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb25156786248c66a713aca12715e4f9ad8fb4577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb26ac124db9439edb7de503ef62e3d3d4e29090c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ec4d99c82417257f41b2c8ceda0962c03945f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb360a579dc6f77d6a3e8710a9d983811129c428d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3e790273f0a89e53d2c20dd4dfe82aa00bbf91b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb42ab636ac69f073970a94d1ace13379e7621665` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5bada33542a05395d504a25885e02503a957bb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb830a5afcbebb936c30c607a18bbba9f5b0a592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbec6f0034cb9055b68dc5f02873b45841ab56af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf2e102fb382d6ec52823c8f81a45e9caa951320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc03f31fd86a9077785b7bcf6598ce3598fa91113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3ce5497f8dca2481e4fa8fd71c42bea9158c6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a3139d4afd941f56a0b878eb4906b3d20a9a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc55332b1d758e798a8db1f255b029f045c4958b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6dd6399eae419a0a33a8dc307f4c1db26d30e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc905e74beb8229e258c3c6e5bc0d6cc54c534688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8b435481da1ed5abc895e03535ce0bba3b6905` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0de82d7d520d8d5897d23cf961867bc16fd346` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc865b0324121b43728176024f58bdbb3afd6f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccb2d258a53c6137dd762d41af02f01ac3a2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcff08a35a5f27f306e2da99ff198db90f13def77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd231084bfb234c107d3ee2b22f97f3346fdaf705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd28d733151eb203b0bd440da044ee0e9f5e84092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87129c3edbb0a7426f5f815461f0863939859c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e7059e4c6307ee5da088934241754c7762d0c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdac2d26317c42ae3cb21357b73404120e1da4232` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcc1a1a26807c687300a63a72ef111f6fe994068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe01f3c1cd14f39303d175c31c16f58707b28976b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe04f26f3f47b6054aeb15796ac4af3c61f08e832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe20403867780129b9b5be8da9a84511b406fc6d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe307798ec35136320528b24d35c0bb086f02de80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5971a1df4f2a49570f6632b50fbc2159776cf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe64ae0b202c3876b833a688ed50fdc8c1173e321` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6d3bd67cfcae26564633eab30e7ea5f3e27ac3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe84c69c1854279230660eb77991cc76505e1ee83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe85e8db8522c4a8bfc029fae2d7301a67988c99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb24caa96bcb24fa469cefe0780df0f1b711e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf641db6860fd5f6643d05bd75405a2586a63a141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82fa86fc412d40d1e9d92606c96a76ccbc4f667` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa6f20b258f91fbf8cd1d25ab77ce844fcb3e759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaea28b040850144adcfd49eeb4e7e419566f3e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe9ab78ed4f9f3dbb168d9f5e5213d78605c9805` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff2331661cbe723aee36d74647137c13ea73bc9c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb8f9227f5e6012fd4e0d52461a6cd0226a0275f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Polygon-Certora (Kat Token) Final report.pdf](https://github.com/katana-network/kat-token/blob/main/audit/Polygon-Certora%20(Kat%20Token)%20Final%20report.pdf) | Polygon-Certora | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a3dd3eb832af982ec71669e178424b10dca2ede`](./contracts/ethereum-1/0x2a3dd3eb832af982ec71669e178424b10dca2ede/) | AgglayerBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000efe302beaa2b3e6e1b18d08d69a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | AgoraDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0efe934dc4744090e8ef93f1d125e4015a857fe`](./contracts/ethereum-1/0xe0efe934dc4744090e8ef93f1d125e4015a857fe/) | ArcticArchitectureLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52e523b849c584f86bf460a3cf2962b118ce2506`](./contracts/ethereum-1/0x52e523b849c584f86bf460a3cf2962b118ce2506/) | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137`](./contracts/ethereum-1/0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137/) | BoringSolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b`](./contracts/ethereum-1/0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64b20eb25aed030fd510ef93b9135278b152f6a6`](./contracts/ethereum-1/0x64b20eb25aed030fd510ef93b9135278b152f6a6/) | BridgeExtension | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01346721418045a6c07b71052e452ef8615e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/) | CommitStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000f9490004c11cef243f5400493c00ad63`](./contracts/ethereum-1/0x00000000f9490004c11cef243f5400493c00ad63/) | ConduitController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282fd46e108e40a45e4ce425ba75f80245e6c2e0`](./contracts/ethereum-1/0x282fd46e108e40a45e4ce425ba75f80245e6c2e0/) | DefaultEmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x589dedbd617e0cbcb916a9223f4d1300c294236b`](./contracts/ethereum-1/0x589dedbd617e0cbcb916a9223f4d1300c294236b/) | DVN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`](./contracts/ethereum-1/0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675/) | Endpoint | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4337084d9e255ff0702461cf8895ce9e3b5ff108`](./contracts/ethereum-1/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f4c1e0afbeb5b5b86d7722549274434b29884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ERC20Predicate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2`](./contracts/ethereum-1/0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8469b5abd81987f9347c0babd47b9eb11da7d0df`](./contracts/ethereum-1/0x8469b5abd81987f9347c0babd47b9eb11da7d0df/) | EVM2EVMOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de`](./contracts/ethereum-1/0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de/) | LockReleaseTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6`](./contracts/ethereum-1/0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6/) | LockReleaseTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51cdecc111c21bed72ab99f415bab6d35984bfeb`](./contracts/ethereum-1/0x51cdecc111c21bed72ab99f415bab6d35984bfeb/) | ManagerWithMerkleVerification | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9`](./contracts/ethereum-1/0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9/) | MyOVaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072`](./contracts/ethereum-1/0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072/) | NativeLBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a`](./contracts/ethereum-1/0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe50a6c887c18c5541d8cf311825016fbbb282c74`](./contracts/ethereum-1/0xe50a6c887c18c5541d8cf311825016fbbb282c74/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5`](./contracts/ethereum-1/0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5/) | PriceRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecac9c5f704e954931349da37f60e39f515c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ProxyMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d`](./contracts/ethereum-1/0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d/) | ReadLib1002 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02ab410f0734efa3f14628780e6e695156024c2`](./contracts/ethereum-1/0xc02ab410f0734efa3f14628780e6e695156024c2/) | ReceiveUln302 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac4c6e212a361c968f1725b4d055b47e63f80b75`](./contracts/ethereum-1/0xac4c6e212a361c968f1725b4d055b47e63f80b75/) | RedSnwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13022e3e6c77524308bd56aed716e88311b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | RegistryModuleOwnerCustom | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f`](./contracts/ethereum-1/0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f/) | RMN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa`](./contracts/ethereum-1/0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa/) | RootChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000000000068f116a894984e2db1123eb395`](./contracts/ethereum-1/0x0000000000000068f116a894984e2db1123eb395/) | Seaport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x449ed7c3e6fee6a97311d4b55475df59c44add33`](./contracts/ethereum-1/0x449ed7c3e6fee6a97311d4b55475df59c44add33/) | SenderCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb2ea70c9e858123480642cf96acbcce1372dce1`](./contracts/ethereum-1/0xbb2ea70c9e858123480642cf96acbcce1372dce1/) | SendUln302 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce0042b868300000d44a59004da54a005ffdcf9f`](./contracts/ethereum-1/0xce0042b868300000d44a59004da54a005ffdcf9f/) | SingletonFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97a3500083348a147f419b8a65717909762c389f`](./contracts/ethereum-1/0x97a3500083348a147f419b8a65717909762c389f/) | StakeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22764f98dd05c789929716d677382df22c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | TokenAdminRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50002cdfe7ccb0c41f519c6eb0653158d11cd907`](./contracts/ethereum-1/0x50002cdfe7ccb0c41f519c6eb0653158d11cd907/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c2e112783a6854653b4bc7dc22248d3e592559c`](./contracts/ethereum-1/0x5c2e112783a6854653b4bc7dc22248d3e592559c/) | TokenChwomper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e94d6cabb20114b22a088d828772645f68cc67b`](./contracts/ethereum-1/0x7e94d6cabb20114b22a088d828772645f68cc67b/) | ValidatorShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 159 |

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
