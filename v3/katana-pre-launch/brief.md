# Agentic Audit Brief: Katana Pre-Launch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Katana Pre-Launch (`katana-pre-launch`)
- Website: [https://app.katana.network/](https://app.katana.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, sepolia
- Contract surface: 397 unique implementations (522 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $17,262,971.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Katana Pre-Launch in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2c24b57e2ccd1f273045af6a5f632504c432374f`, chain 1)
- UnnamedContract (`0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff`, chain 1)
- UnnamedContract (`0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855`, chain 1)
- UnnamedContract (`0x53e82abbb12638f09d9e624578ccb666217a765e`, chain 1)
- UnnamedContract (`0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc`, chain 1)
- UnnamedContract (`0x8f051ca72a3440d83b18e71c3e59676203ab8f91`, chain 1)
- UnnamedContract (`0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 7 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 379 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 397 unique; 390 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 348
- Unique implementations: 397
- Raw deployments: 522
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgglayerBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a3dd3eb832af982ec71669e178424b10dca2ede` | ⚠️ Unaudited |
| AgoraDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00000000efe302beaa2b3e6e1b18d08d69a9012a` | ⚠️ Unaudited |
| ArcticArchitectureLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0efe934dc4744090e8ef93f1d125e4015a857fe` | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52e523b849c584f86bf460a3cf2962b118ce2506` | ⚠️ Unaudited |
| BoringSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102b3fdb4537df5b15ab91a85bc6f62fbcd06137` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69d210d3b60e939bfa6e87cccc4fab7e8f44c16b`; ethereum `0x75231079973c23e9eb6180fa3d2fc21334565ab5` | ⚠️ Unaudited |
| BridgeExtension | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x64b20eb25aed030fd510ef93b9135278b152f6a6` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 57 deployments: ethereum `0x01346721418045a6c07b71052e452ef8615e9084`; ethereum `0x0428df02c581e605aabf83005b427b1561b587de`; ethereum `0x0d26bae784c8986502e072f4e73b6168e2052045`; ethereum `0x0f254eccc89219cec945bcea48a4681eb5a380d7`; ethereum `0x0f5552d17505dc8f70d6cd65beadfe20f42bbe75`; ethereum `0x0f89c7c0586536b618e0469402e1c8234bc52959`; ethereum `0x10d5611d4e1fbb0eb614c25f14ed6afd6c945c75`; ethereum `0x1807769abe5133c9b41ca6746044b6a1d83f5633`; ethereum `0x1bddba5dc2cd6ed3343a8e94d02023cc720533b9`; ethereum `0x27a4e7ff4a6e28056ac3e39445639876ee9926fb`; ethereum `0x2aa101bf99caef7fc1355d4c493a1fe187a007ce`; ethereum `0x38a806580d93c5b3e295f5181723c11f15c43271`; ethereum `0x3f1c3541b7035ded84e4502e41d5c919da4c4527`; ethereum `0x459154447d3bd41392ea3f49738a887dd3f1e5d0`; ethereum `0x4b50cd4637a8ea94729811201a699f4800ee3282`; ethereum `0x52275dc17f9ed92230c8c4d57fd36d128701f694`; ethereum `0x57b548c9c213ea2bcf60193e3d7fd2d2b53fb9b3`; ethereum `0x57d6cd9cd44770c807b2763dbe4cfda0113dd114`; ethereum `0x5fd81cf5734498467634ed9432aad298022e15ff`; ethereum `0x607c0979c55628680167260ca68e0ef22e8f128c`; ethereum `0x67b972054152e6f4b7434d84439ee225e5a00b90`; ethereum `0x6818278a6e4da0ad588ef4dd04b59bc4e6703248`; ethereum `0x6c8b9672b4482a876168b9415bf8bbea574bf4b9`; ethereum `0x6f4abce0b22343e66c856f28e2d07074c5c5bf75`; ethereum `0x6fe6f73f7cd11e34b6908cdc080683690229d0a4`; ethereum `0x700b6adccfaa4c66638b1ad36bdefe2038794e02`; ethereum `0x70ac0f926a64d82f0cc69a3e505f0ee57e27006a`; ethereum `0x807dd69bc9bc4e9411490f7b79ff30c91e799a04`; ethereum `0x83f3da5aa2c7534d694b0acde7624573c830250d`; ethereum `0x8705f734b7ac1fc0bb2d16f60c6efac5ed646159`; ethereum `0x8a1680fbbdb3da1e0e7ca9078435631beaf8a2cf`; ethereum `0x8d846b1e9032827546b62160c32ade293f77b1ab`; ethereum `0x8fc54e798eac51353e160c9113682714f5e9e262`; ethereum `0x913a2ac13907f29ef2346e21368214b9b3ddc04b`; ethereum `0x95deb0c4bb9168202d50e874865f9a1842b82d64`; ethereum `0x98d0f843ae9ba7c55f6e3941e6660a5947a67ed9`; ethereum `0x9b9ec8e26955c034828bbd78e22ab258d983dcdb`; ethereum `0x9d93d536ced80871bf3da5bb47baede62c794f8a`; ethereum `0x9f592c28590595f3f78a8881e8dbb9984ed705cd`; ethereum `0xa4755cd68ca2092447c8c842659a2931f9110320`; ethereum `0xa48269e5c9a234dabfebe98b82390be705536d1c`; ethereum `0xa58818d1acd8d62ab077a1f79606fcb5ce3741b9`; ethereum `0xa9f9bf2b643348c0884f2eba4f712e833da9a2b8`; ethereum `0xc46890d248a389a40725dbd9fa5e13548b56ad8d`; ethereum `0xc5164af94be6737fe21085edda4e43bcbf224f9f`; ethereum `0xd079265e929c845707e816e3855721d055d40235`; ethereum `0xd2428f8c62fbfea4b44a703cf11e02d7b0a6cd99`; ethereum `0xd8f93aff87dc2aeee0d0b0df347bada861bff802`; ethereum `0xd9d3d90d729f50794741da7a2d54d8b12dc3da72`; ethereum `0xdac3a82cc5e7c137bf28e6ef4f68f29d66205ffe`; ethereum `0xdcf6f209d36d93a26b251d2cfe994bef02954110`; ethereum `0xe41677500b425999cb4133950ca3ab79ea7470a6`; ethereum `0xf191733ea5be14e4a5f381a3c375a4f3f8fd4793`; ethereum `0xf7b343a17445f175f2dd9f5cb29baf0a8de75ed3`; ethereum `0xf7d68ccc92b836316c40b24ea77f6805dcbb8f02`; ethereum `0xfa94e57b12b6c45a3ad3cbb9451ba99a997eb210`; ethereum `0xfe73bccc5b88d22969099ebb4e2eb5e19efb0165` | ⚠️ Unaudited |
| ConduitController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000f9490004c11cef243f5400493c00ad63` | ⚠️ Unaudited |
| CreateX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed` | ⚠️ Unaudited |
| DefaultEmissionManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282fd46e108e40a45e4ce425ba75f80245e6c2e0` | ⚠️ Unaudited |
| DVN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589dedbd617e0cbcb916a9223f4d1300c294236b` | ⚠️ Unaudited |
| Endpoint | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4337084d9e255ff0702461cf8895ce9e3b5ff108` | ⚠️ Unaudited |
| ERC20Predicate | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f4c1e0afbeb5b5b86d7722549274434b29884f6` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 56 deployments: ethereum `0x0f1b1a46adeadf3c0d583ac86f40bc9e0b2e4ba2`; ethereum `0x109c666a021214c96a7ab7cde7e987f4e7dcd9fe`; ethereum `0x26a10137a54f4ea01d20758ac5adbf9326340fc3`; ethereum `0x330349112e13232131da51f9f3b153d825f65e61`; ethereum `0x33276152d082120f5190362e6e5f6783bbcb2b26`; ethereum `0x34eec7eca3ce1e693028255ebe2063728224a604`; ethereum `0x3b45dd27e0cf84f1af98deabdc8f96303475ef58`; ethereum `0x3c5990484d4d7b728ae875d001e97469284210c1`; ethereum `0x3c672f0f9e73cb7984a5ab486c7839f84c8edc09`; ethereum `0x418dcbcf229897d0ccf1b8b464db06c23879fbb4`; ethereum `0x4676537819a87e9d515d654f8bedf45a744cf214`; ethereum `0x49aac6fc36f32ac22867ac0baa23e6f2551f8edd`; ethereum `0x4bc6027cd2da6cb7a105d5ce2d039c4892225419`; ethereum `0x4e4003dafd00ec3b5f17f05950759054051950d6`; ethereum `0x559c3233ae9a0ecd45a6c45ee3b8c2c6dba5f48d`; ethereum `0x562a2025e60aa19aa03ea41d70ea1fd3286d1d3b`; ethereum `0x5b6d2998eef5cbba7e8345b08dd41aecec5eaca5`; ethereum `0x5b859e596c4285bf489e1bfa222b97db431da7ec`; ethereum `0x5e24de8f7ccb3e1e204707573a672823d88c559f`; ethereum `0x5eda6801dbd2bbdbf0401d34c730fa2c3a97c3f4`; ethereum `0x64a5c64945c72bc46df52c82cfce9161b888578b`; ethereum `0x66d84feded0e51aeb47ced1bb2fc0221ae8d7c12`; ethereum `0x6868fefbefdc2b2fb75e6ed216db1bec02563d69`; ethereum `0x6b4b6359dd5b47cdb030e5921456d2a0625a9ebd`; ethereum `0x70c705ff3ecaa04c8c61d581a59a168a1c49c2ec`; ethereum `0x718672076d6d51e4c76142b37bc99e4945d704a3`; ethereum `0x720ea8a2662376b89dee1a7baca95b2eb6b6ff81`; ethereum `0x794ae32b63b8a82a6e2ec5017bbc6bfbdda5ce96`; ethereum `0x7a82d2d3d824f9bac136c31ef8086c673d23666d`; ethereum `0x82dae15e45d63f2ae85b1f0d690685a021d3a0fc`; ethereum `0x8693cda8e6d3aee7c9fc258c3e7f648c8e6580c1`; ethereum `0x8b3eeed4948684c3ec1bb60967820f40285018b8`; ethereum `0x8fee869edd935391b4979f8c79560102a8594b28`; ethereum `0x9a3ed7007809cfd666999e439076b4ce4120528d`; ethereum `0x9cbba13011cd9d9310ff9f1f6515582d6518a90e`; ethereum `0x9de971a8449bc9f31fe7b0f2ccdab3873f711988`; ethereum `0x9f0e818a8dddf48c52d5c94d55079e3617d55181`; ethereum `0xa627f208c5c32e5638c64147d0ac98bb40f758f0`; ethereum `0xa8c12a859225531254ddef7079030f7dd6992a14`; ethereum `0xaa0da3e06f43a5227abb0ea7d6df3d1037b1769b`; ethereum `0xae2a2a088a8f85a2db90a61bd463433985c437f0`; ethereum `0xb0f5b6db1157719795eccd9c6023c66bb2ec414f`; ethereum `0xb45cf8df3aaa50199b7aaabd345119bad1b8d977`; ethereum `0xb57d52f7cb7bbd19a117585bbaf712108e56dd8f`; ethereum `0xc1ecce580b2c96f4fd202fb7c2a259ece19a1bf2`; ethereum `0xc876d50a0ecc147fc0ced194cd2b66210d482f9c`; ethereum `0xcdca3f3aa3a4df41a3daf885e3e25666ee96d7e4`; ethereum `0xd98e80c79a15e4dbaf4c40b6ccdf690fe619bfbb`; ethereum `0xde66080eabe390198b8918cb3f61e1869dbc8079`; ethereum `0xde81f1627ef2f6e23a2c0f338623c78c10ea57ac`; ethereum `0xdf615ef8d4c64d0ed8fd7824bbed2f6a10245ac9`; ethereum `0xdfd8c353044ab175cc96fd4261c2af3e3ab768a4`; ethereum `0xf2eb4ce854c8c0aaea6080ef825efa5a84a8656a`; ethereum `0xf3ac96642f9ba5de3bbc864d609e3f534dd3b7f9`; ethereum `0xf4468e56179e6ef59d6f5b133d9355aad91ea9ae`; ethereum `0xfc92c3b8a374f70cb46cf884d4f02bb120f0f0a3` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8469b5abd81987f9347c0babd47b9eb11da7d0df`; ethereum `0xffbd6b0146c9e16a9f9e77dc8898cbff6e2aa389` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f4d1788e39c87893c980c06edf4b7f686e2938` | ⚠️ Unaudited |
| LayerZeroTellerWithRateLimiting | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739a1effaddb0b07ef1284598819232df4fd8d16` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b3015cefcac84db3efcbb18fbdd50ba5af49de` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ccd6b51e7bea429ba0d4c526c60c4f71852b0f6` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51cdecc111c21bed72ab99f415bab6d35984bfeb` | ⚠️ Unaudited |
| Multicall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x998739bfdaadde7c933b942a68053933098f9eda` | ⚠️ Unaudited |
| MyOVaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6dd022e7ed1dabcf0c3537f710eb5c8f2566e9` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0f70c0bd6fd87dbeb7c10dc692a2a6106817072` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5decbeeefecc5353355cd79a8fecc4c03f61ce8a`; ethereum `0xa7a8e43ef0e579c3d64618d2a34dd456ae14dc0a` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe50a6c887c18c5541d8cf311825016fbbb282c74` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed1a8c49bbd5618fa6cc952c509557f816d2d4f5` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x89063623f00238106c9a60032fae2ab702b8a1fb`; ethereum `0xeb8f9227f5e6012fd4e0d52461a6cd0226a0275f`; base `0x89063623f00238106c9a60032fae2ab702b8a1fb` | ⚠️ Unaudited |
| ProxyMock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xecac9c5f704e954931349da37f60e39f515c11c1` | ⚠️ Unaudited |
| ReadLib1002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f55bc2a79a27a0bf1d1a35db5d0fc36b9fdb9d` | ⚠️ Unaudited |
| ReceiveUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02ab410f0734efa3f14628780e6e695156024c2` | ⚠️ Unaudited |
| RedSnwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4c6e212a361c968f1725b4d055b47e63f80b75` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13022e3e6c77524308bd56aed716e88311b2e533` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd48419bd5cd9d1b097695f2af4ee125aadf84f` | ⚠️ Unaudited |
| RootChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0235dca8fb0d3999685724dcbb9dd00c5d62dfa` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x80226fc0ee2b096224eeac085bb9a8cba1146f7d`; ethereum `0x8c6d31fc27770ebcc5593c9d10adb9211181ed46` | ⚠️ Unaudited |
| Seaport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000068f116a894984e2db1123eb395` | ⚠️ Unaudited |
| SenderCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449ed7c3e6fee6a97311d4b55475df59c44add33` | ⚠️ Unaudited |
| SendUln302 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb2ea70c9e858123480642cf96acbcce1372dce1` | ⚠️ Unaudited |
| SingletonFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0042b868300000d44a59004da54a005ffdcf9f` | ⚠️ Unaudited |
| StakeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97a3500083348a147f419b8a65717909762c389f` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22764f98dd05c789929716d677382df22c05cb6` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50002cdfe7ccb0c41f519c6eb0653158d11cd907` | ⚠️ Unaudited |
| TokenChwomper | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5c2e112783a6854653b4bc7dc22248d3e592559c`; ethereum `0xdbeca8fb948c42634256609bce5a3768c9b3e9eb`; ethereum `0xde7259893af7cdbc9fd806c6ba61d22d581d5667` | ⚠️ Unaudited |
| ValidatorShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7e94d6cabb20114b22a088d828772645f68cc67b`; ethereum `0xfb3a3a64e12fa787a6b709bf57834bdad958d797` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x48c03b6ffd0008460f8657db1037c7e09deedfcb`; ethereum `0x77570cfecf83bc6bb08e2cd9e8537aea9f97ea2f`; ethereum `0xa5dab32dbe68e6fa784e1e50e4f620a0477d3896`; ethereum `0xd8063123bba3b480569244ae66bfe72b6c84b00d`; ethereum `0xe1ac97e2616ad80f69f705ff007a4bbb3655544a`; ethereum `0xf470eb50b4a60c9b069f7fd6032532b8f5cc014d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (348)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000f3df6d732807ef1319fb7b8bb8522d0beac02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031848f9487219cc538c42dac150968f95596447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0330f95a5110e9f72fe0776a1291834ffeacb1e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d08c8525b55c409201289c4ff5a204fa437d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07245eea05826f5984c7c3c8f478b04892e4df89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087cebbd85a161a50f91b9d7743e8b89fc384e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0913da6da4b42f538b445599b46bb4622342cf52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8745a84259ab5a38e89d5cb4db642003d8f874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f04f5d8bb631197845dae519d03d7997f7d20ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dff8847ea170ebb8439ce732c0a14bb49fdd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152442d77e9fb9c210953d583cbb2da88027fcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173272739bd7aa6e4e214714048a9fe699453059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175bfec21a4949c339d1b9b621ad325d9892888f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17bff452dae47e07cea877ff0e1aba17eb62b0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188fffc2562c67acdb9a0cd0b819021ddfc82a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19044ca8bbbabdc30e52d4d60854d968d90274da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ab91437501dbbeee25953cf66fcd153916665ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ace9dd1bc743ad036ef2d92af42ca70a1159df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3f273491759de2f5f143f302d6885d33c06eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8565f454f8239b854fe62c99b90b3fc9298e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2af2b99e253b68d72c76484dd88ffb0ace158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e283d60537dae87bb63cfcae0be574b50ed0bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e45f27f0e96e9757cff938f2c9d697aa8279c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5efca3d0db2c6d5c67a4491845c43253eb9e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203a662b0bd271a6ed5a60edfbd04bfce608fd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203e8740894c8955cb8950759876d7e7e45e04c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204f325fffe2aaca2e5143de021d447e5cac8669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2615a94df961278dcbc41fb0a54fec5f10a693ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2659c6085d26144117d904c46b48b6d180393d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bc65d3cc2f034f5277335ee607ea7e16e0e61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27168981aa1c0b6ce941babcf3579887ec25ddd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a644e5ac685112a7eff0c4d73cd0260546d366f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243840 | `0x2c24b57e2ccd1f273045af6a5f632504c432374f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce29070ee5e65c4191d5efca8e85be181f34b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243842 | `0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dca96907fde857dd3d816880a0df407eeb2d2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319ae539b5ba554b09a46791cdb88b10e4d8f627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35dc3e13469e980c37b6f288bbb9822b1f9bd435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37152ce735896d0ecac1b7797d5eca58c8f1c564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38de71124f7a447a01d67945a51edce9ff491251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eb6da5e88194c82b13491df2e8b3e213ed2412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad88467e40399dc6ae10427f8b0842348d9076c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b01dee1733697b954a7648f7b0bf91acff1eab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ced11c610556e5292fbc2e75d68c3899098c14c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243844 | `0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec70c868c63be49c5da0944302293d2c87fc7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef366d1b8fd85459e8ec0e6d67b03f5e1ba6552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x406f1a8d91956d8d340821cf6744aa74c666836c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x417d01b64ea30c4e163873f3a1f77b727c689e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4224f6c96f15971e5b0e59f71eeebded2fe51d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44289609cc6781fa2c665796b6c5aabf9ffcedc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4474b891bf3d93e61676912f0739e04b86232dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4690f346337ed8737bea462ac71ff16ef95b985e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ce937a70412dfdcf01f29d6d4fe15ada1faeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eacd417cd65421bd34fca054377658bb5e02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a59d3e5994abd5705b63892e1cf2301720d321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1d81a3e627b9294532e990109e4c21d217376c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e341b9cf90514a5b7dfec2c9a1f20aa4514c260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e9ae452290570834c978edf9b3febbcd4938227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e9c57fd2bd0f47c43f2d62642c1b05894fb9ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed3c8bd8fd6c713edb0d81e79244103e59881e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f708c0ae7ded3d74736594c2109c2e3c065b428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8b7a7a346da5c467085377796e91220d904c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519fbc7cceb55255c9d1ff0ce5f9bbf1642a462a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e64b34600c27c67da44f8b86c3fe19a3664fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528e26b25a34a4a5d0dbda1d57d318153d2ed582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243846 | `0x53e82abbb12638f09d9e624578ccb666217a765e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5569796627e8d5d09ac260a0664b2be312ee0c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56651306b2fa0ef5ae7bcdd78aebf3133cf6ef5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5956982345967dbc9648cd133c2fecb1ef132ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa71f09ac4956ed13913767622f7e5e864ddd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac73e0cb5e75b7c550bc59126d34393e3323487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d93bb673d001498e515617ade09904d71929334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e875267f65537768435c3c6c81cd313a570b422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb3f2feaa15271101a927869b3a56837e73056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60adff2adb728f7d3029e43dea8c212f31c2962c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x614f72481bcbcddfd8e12e56bed0bef0ad84261c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ab01ce58d1dff3562bb25870020d555e39d849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d6a123e8d19d06d68cf0d2294f9a3a0362c6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639f13d5f30b47c792b6851238c05d0b623c77de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x667efca143c6a89e384da2d3e7e63e0af4a7cd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66c0499b1df146dbaf4b1dea1df436ba26daff21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678eb53a3bb79111263f47b84989d16d81c36d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x694d1697f6909361775139357d99fb60b5cab683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69cc349932ae18ed406eeb917d79b9b3033fb68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd792911f4b3714e88fbdf32b351632e7d22c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c16e26013f2431e8b2e1ba7067ecccad0db6c52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243848 | `0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7231dbacdfc968e07656d12389ab20de82fbfceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d111b4d6f31b38919ae39779f570b747d6acd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747c741496a507e4b404b50463e691a8d692f6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a15d86fbbe691557c8b7a9c4bebf1d8afe00a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d047fb910bc187c18c81a69e30fa164f8c536ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1f4b4b29f5058fa32cc7a97141b8d7e5abdc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fb4d0f51544f24f385a421db6e7d4fc71ad8e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801f719178d9b85d4948ed146c50596273885a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x807275727dd3e640c5f2b5de7d1ec72b4dd293c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8169e532bc781985e155037db1f96c267a520dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c16f89222c32806daf01f5129937dfe19d525e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8287f469726a95dede7cff1ea3b24a34a12e88f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x839dc0cff5e263f56c9810560adf8ea40e95ab82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b3493fa9b125a8eff1ccc1328bd84d0b4a2dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8775e9d584008f84dafe7abe75a62f6c91491027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d8ee0bae7d352bc05c90b2d3fa3467d6c2357b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d09c41229f07ad098ffb5fad239dd87d2c131d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbbbf4e801774265171d7e101a9f346fa6f56bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243850 | `0x8f051ca72a3440d83b18e71c3e59676203ab8f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f45f7acd4b9fc0b446902790f304d444dff949b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fafc84caea1cef8475cb5cb344658d160c9ce0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901de2f2b8b525a61b7adc3861f1355ab49106b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902f09715b6303d4173037652fa7377e5b98089e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916aa175c36e845db45ff6ddb886ae437d403b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dea23ed1c683940ff1a2f8fe23fe98c5d3041c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93ed061f41fdd0f4dfdb00ef2322b078699a7f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94fe59afaff2d0a8ea6e8158feb7c65410867a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9512a85438606dede54297634ded7c7c0c231874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ed424a833859ba08f588b62cba7edacfe3e763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980205d352f198748b626f6f7c38a8a5663ec981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9893989433e7a383cb313953e4c2365107dc19a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8df6e244526ab5f6e6400d331db28c8fdddb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfac7947fc1b64aa9f12b24ecd519daecef3ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9e25f9fc4e8134313c2a9f5c719f5c9f4fbd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2a805227fbb433f7c05e98af505b04e07ab639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa36797ba947b378aefe5f726cd87766cd3c25ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a34a0d9a08ccddb6ed422ac0a28a06731335aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa658742d33ebd2ce2f0bdff73515aa797fd161d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa681a7be7a87bda505c1a947b172b8a1988e329a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b0db1293144ebe9478b6a84f75dd651e45914a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c5e23c9c0df2b6ff716486c6bbebb6661548c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad132b4d9f364f8b55ea6511d7d238505dbb050a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf34771b16960ea77484a866a34ccdafdc913d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb00aa68b87256e2f22058fb2ba3246eec54a44fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb037347ef306db3b41ab0b250f891887039d9231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0505e5a99abd03d94a1169e638b78edfed26ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e10b768e9d56a51f1c80d70414989ecaf87fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24e3035d1fcbc0e43cf3143c3fd92e53df2009b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25156786248c66a713aca12715e4f9ad8fb4577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ac124db9439edb7de503ef62e3d3d4e29090c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ec4d99c82417257f41b2c8ceda0962c03945f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb360a579dc6f77d6a3e8710a9d983811129c428d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3e790273f0a89e53d2c20dd4dfe82aa00bbf91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb42ab636ac69f073970a94d1ace13379e7621665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bada33542a05395d504a25885e02503a957bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb605ae0d112c117638592ec4f78148e6322a7b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb62ba0719527701309339a175dde3cbf1770dd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb830a5afcbebb936c30c607a18bbba9f5b0a592f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9c62d7a76afb4049e416328d0fc3133629ff744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbec6f0034cb9055b68dc5f02873b45841ab56af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf2e102fb382d6ec52823c8f81a45e9caa951320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0137140b2d2a146d20dbbb0153e5ac1048f30e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03f31fd86a9077785b7bcf6598ce3598fa91113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a4c310f2512a17ac0047cf871acaed3e62bb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ce5497f8dca2481e4fa8fd71c42bea9158c6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f5961f6bf6a60a6d2f9f45ec477e1e46144827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a3139d4afd941f56a0b878eb4906b3d20a9a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc55332b1d758e798a8db1f255b029f045c4958b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dd6399eae419a0a33a8dc307f4c1db26d30e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905e74beb8229e258c3c6e5bc0d6cc54c534688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b435481da1ed5abc895e03535ce0bba3b6905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc0de82d7d520d8d5897d23cf961867bc16fd346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc865b0324121b43728176024f58bdbb3afd6f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccb2d258a53c6137dd762d41af02f01ac3a2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd891c3de90dcdf99549e9b6402bfaa695dec69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea1d25a715ec34adfb2267ace127e8d107778dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcff08a35a5f27f306e2da99ff198db90f13def77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd231084bfb234c107d3ee2b22f97f3346fdaf705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28d733151eb203b0bd440da044ee0e9f5e84092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f39505d0c48afed3549d625982fdc38ea9904b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd50f2dfffd62f94ee4aed9ca05c61d0753268abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd87129c3edbb0a7426f5f815461f0863939859c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e7059e4c6307ee5da088934241754c7762d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9e6caa9f85ae060bccd6a789e0c7d39a33e24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac2d26317c42ae3cb21357b73404120e1da4232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc1a1a26807c687300a63a72ef111f6fe994068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd9acdd3d2aec1c823c51f8389597c6be9779b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe01f3c1cd14f39303d175c31c16f58707b28976b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04f26f3f47b6054aeb15796ac4af3c61f08e832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20403867780129b9b5be8da9a84511b406fc6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe307798ec35136320528b24d35c0bb086f02de80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5971a1df4f2a49570f6632b50fbc2159776cf4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64ae0b202c3876b833a688ed50fdc8c1173e321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d3bd67cfcae26564633eab30e7ea5f3e27ac3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8255b44634b478ab10a649c6c207a654473dbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84c69c1854279230660eb77991cc76505e1ee83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85e8db8522c4a8bfc029fae2d7301a67988c99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9128e672bc08e12deb1c2048e9f91e6d6e08e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb24caa96bcb24fa469cefe0780df0f1b711e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee7d8bcfb72bc1880d0cf19822eb0a2e6577ab62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf641db6860fd5f6643d05bd75405a2586a63a141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6801557e17131da48fd03b2c34172872f936345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82fa86fc412d40d1e9d92606c96a76ccbc4f667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6f20b258f91fbf8cd1d25ab77ce844fcb3e759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaea28b040850144adcfd49eeb4e7e419566f3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9ab78ed4f9f3dbb168d9f5e5213d78605c9805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2331661cbe723aee36d74647137c13ea73bc9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-243875 | `0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb8f9227f5e6012fd4e0d52461a6cd0226a0275f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x018a3eb67fbdd4944e768df31514b60f1d8e44fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04ba50542441e008b62a5e844d03084f2a7cdd96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243852 | `0x04d08c8525b55c409201289c4ff5a204fa437d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x064caabb7ebdfbcc0eb1c5466cc81ad5766eee95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0894a98b57071f9292a6cde54b8ea9511cb0719e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b44c7d3b21806f6aa2c829e939378f626b8af44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f41d7e934bf136498c1e69170ffebc67f6ab86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0f6596d806a1d1940ea8ff6f003a4b38628aec8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0fb3c8f24a63ad44ae5da61f1299082122664031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x106cbb7361c3d3d0a12a8160a714879cc13c5a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10908a9bf610cdd231e2872ce5093eb412a49313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14eb68402291fe1342b8372b6550b1acaca5bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x169f26ac754806ebcf28ef6c9dd1e3558ce5cdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16b46094cb1ee593181ba2d997e77e88d7e9ab8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17b8ee96e3bcb3b04b3e8334de4524520c51cab4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243854 | `0x188fffc2562c67acdb9a0cd0b819021ddfc82a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18fda3c97ea92a04d1636d84948624b414d0058e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a90866cf5ffffef57711a6d0717e4cfa091fab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1bd455c30ad8e2b8df40df44a2ef923d67b33feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2026607f5a4e5198304854238e3eb0ecddb593c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20c5b1bccc3853330c797d55fac028b9fcdd1e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x220ac765417ac674319fc8439e652d036b8f9a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2537f21793e07a66f4a81da99848dd4fb0e32f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27668225983bc053be8febc5d526d160e4d7d7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x29bc79a74287e94870b8c551d3529833f6c22c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b9ca0a8c773bb1b92a3ddae9f882fd14457dacc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243856 | `0x2ce29070ee5e65c4191d5efca8e85be181f34b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2de16d15215a6db2fe1c927e01a5294a833d117b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x363cb057bdc9e77b704723bc060345264571fd66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38d95d932e67260f21b5fd80ff43c2b7c6e67767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3afbd158cf7b1e6be4dac88bc173fa65ebdf2ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3be759169a688a750edd72356d000080661056e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c972e0b70801436362692be646d9739fc87611e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f4e798cb3d72759209d6b972917074bac9dc0dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243858 | `0x406f1a8d91956d8d340821cf6744aa74c666836c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x409834270b6f2591dd6c1e9f351e4194b112da44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40d21bd3d5fea6c1ad7612735091cbee622ee972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45278ddde6e3e7078341db2223489b68c1e84ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a1519035480eedab5e84a487df614f08ece876a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b2a13d633dcd6b9df26de9cfa79f76a6c68bac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ccb4f4731245698a65c824e988cab650bd2b6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4dee319dec02d0320863968b355adadd9c857b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5064f1c5bcfda5922aedb382cd380ef77471e7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5093861357abebda1c6de62802e668d54a3586ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243861 | `0x528e26b25a34a4a5d0dbda1d57d318153d2ed582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5619f87ddf3a7780819ffa504ea848a62eb2fb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x581cf21f7909616c2d0845ca5d597e6346939e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5851a820c6aa6af8691ba108a5bf372a2fbd27ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243863 | `0x5956982345967dbc9648cd133c2fecb1ef132ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59a9ad13d843fd5b74df842288d9340048318ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b1284d74199378c0bbce37c64b5e1e3f45dea22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c4a379c9fcb078c0d2208aba044ff68729c77ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67f79976e1e2afc16ea76899e90f961201a512bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a99f2004044357a80e5d43345229179adc871d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d665587c244f171c691f16cd5d10bfbc47927cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7232afe0212125ebda3672acd34bbc0e3781a756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75932e4e90d7c59804af60b2134e1ddf8fa139df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7886d0deece5aff62b067cb52a1225d733d2a9e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7995b8b819bbcd43086a9d0490730db90e2957b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a02c28081b10d49fff06adbcbe7418919d8be54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7cc0e78a0dcaf10cb3503d7bf85ea7f64d7c50bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85d6766de7b536547065650f10dcd6776bd6b767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243865 | `0x8dbbbf4e801774265171d7e101a9f346fa6f56bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91920abbb38ce9d17f1518e136364dfc10aafc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91c559382d32ae7f5d5710c6c2a687e44dcd85a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98460671c4dd1d808eea4e3c5959fc9a7c0dfd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9954f137ce70db2afea291dfce742b14d1535110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ec98f93cf736fc7cfc5df80946bce140ad6d21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2b5a5d932e5a163069e6f43e64c33440ce47360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2df23a8bc44fe8b05b297c60aa61d0882a9e189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5e69a3350cab6267254575383ed76ba6df89647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7d0cf0afb6fcbeab4c19687eee2d88146706303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa846aa799ea9f933327344d41684346d019d81a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab7cf78f8a75ae2b70c7cd5f53c3e8f2de0d2484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac687378dc3f86c303bcca7e55c4b5371e35aa1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0954dfb7ef5cf217d7ef4aec16fb84675ebfb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4695dff28fe2beecf70794ac1515587c39dfc4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb567390378c304e65139a60d44886f7b0150bbc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243867 | `0xb62ba0719527701309339a175dde3cbf1770dd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb3b33eba8f3c268be693b6a410a4b977c323a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbef347536a2943a28f05f18ced0b1b88266b1d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0be89821c71d05a2d190831c1da0b284f09b3ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4babee541c2fa1ea55ce9af9eb3b5c76b0ce5c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243869 | `0xcea1d25a715ec34adfb2267ace127e8d107778dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf38c5ad04591a936af56a53393eb60f9f469bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd67a804510739c33c578162a26324c83dcfc0a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd6850d2c8bb1c800310c504843ede27ee1203f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd88d7bd174f866d4d1d2955bb16db5a7739e1ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8a986afbb7e44e9f7d71cc529d7b28f7084028c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8ff6825e549ed1060c74d0a52b61423fbfcde7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda029906557c8d654389693b6850d6aa1e2540c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243871 | `0xda9e6caa9f85ae060bccd6a789e0c7d39a33e24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdce6af6e017011d1b79cc4f7592a3815152c9006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-243873 | `0xdd9acdd3d2aec1c823c51f8389597c6be9779b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde4e836617adcfa0f982703e6f1ef7198b171e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe367d95dc4f5cd63ffa83f9045a5cb36d50d0060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe64eea72334e2ed9666b10f2b13ba9fb121e3c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe89c106fd78b2a1b4a73c41a05806985366c6ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee42709151c0a6af35fae6f60757138c97348983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee9bf5069ce00cf106f1bb6fe214b6c0228c65cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1b02e294e38837e03e9cd0de7a58dee0a2aeec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf45f55580971dd654a77e6abb2dd467d0cc4c57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5a675058bbd344a9f1ab1af00576dfb404d57b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5d4000ead1efca61ea9ed31847da494135d0d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfbd0428515be256ec7d0b30e74c2d92cd238cb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc7b006bded8e5d4a55fbac7a91daf3753f085cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd2e985338f896c3724b301ca0d6ce1103435c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe6cd3b79688a39eb6c4a63ce49d42976c21e28c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 252
- Live contracts: 7
- Unknown liveness contracts: 245
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=7, unverified unclassified=245

Showing first 200 of 252 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x2c24b57e2ccd1f273045af6a5f632504c432374f` | project_anchor | unknown | live | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| exact address book overlap | UnnamedContract<br>`0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff` | project_anchor | unknown | live | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| exact address book overlap | UnnamedContract<br>`0x3dd459de96f9c28e3a343b831cbdc2b93c8c4855` | project_anchor | unknown | live | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| exact address book overlap | UnnamedContract<br>`0x53e82abbb12638f09d9e624578ccb666217a765e` | project_anchor | unknown | live | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| exact address book overlap | UnnamedContract<br>`0x6d4f9f9f8f0155509ecd6ac6c544ff27999845cc` | project_anchor | unknown | live | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| exact address book overlap | UnnamedContract<br>`0x8f051ca72a3440d83b18e71c3e59676203ab8f91` | project_anchor | unknown | live | unverified | n/a | `0xf3018d881643734829ce674c95f3699a51c23a74` |
| exact address book overlap | UnnamedContract<br>`0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | project_anchor | unknown | live | unverified | n/a | `0xf3018d881643734829ce674c95f3699a51c23a74` |
| unverified unclassified | UnnamedContract<br>`0x031848f9487219cc538c42dac150968f95596447` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x0330f95a5110e9f72fe0776a1291834ffeacb1e0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x053fa9b934b83e1e0ffc7e98a41aadc3640bb462` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x07245eea05826f5984c7c3c8f478b04892e4df89` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x087cebbd85a161a50f91b9d7743e8b89fc384e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x0ab536262d4d44b0ec1fc7bf4e6dec4b4557ad21` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x0d8745a84259ab5a38e89d5cb4db642003d8f874` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x0f04f5d8bb631197845dae519d03d7997f7d20ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x13dff8847ea170ebb8439ce732c0a14bb49fdd92` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x152442d77e9fb9c210953d583cbb2da88027fcb9` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x153fb4738c2698bbdbf256d0fc90f5503eeb12d4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x16cc4ef7c128d7fea96cf46ffd9dd20f76170347` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x173272739bd7aa6e4e214714048a9fe699453059` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x175bfec21a4949c339d1b9b621ad325d9892888f` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x19044ca8bbbabdc30e52d4d60854d968d90274da` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1ab91437501dbbeee25953cf66fcd153916665ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1ace9dd1bc743ad036ef2d92af42ca70a1159df5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1c3f273491759de2f5f143f302d6885d33c06eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x1c8565f454f8239b854fe62c99b90b3fc9298e80` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x1e283d60537dae87bb63cfcae0be574b50ed0bba` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x1e45f27f0e96e9757cff938f2c9d697aa8279c85` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x245b6e8ffe9ea5fc301e32d16f66bd4c2123eefc` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x26bc65d3cc2f034f5277335ee607ea7e16e0e61e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x27168981aa1c0b6ce941babcf3579887ec25ddd3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x319ae539b5ba554b09a46791cdb88b10e4d8f627` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x37152ce735896d0ecac1b7797d5eca58c8f1c564` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0x38de71124f7a447a01d67945a51edce9ff491251` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3ad88467e40399dc6ae10427f8b0842348d9076c` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x3b01dee1733697b954a7648f7b0bf91acff1eab9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3ced11c610556e5292fbc2e75d68c3899098c14c` | non_address_book | unknown | unknown | unverified | n/a | `0x9616a587c709ccae9f1797e4ec2f9b739ae75652` |
| unverified unclassified | UnnamedContract<br>`0x3ec70c868c63be49c5da0944302293d2c87fc7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x3ef366d1b8fd85459e8ec0e6d67b03f5e1ba6552` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x417d01b64ea30c4e163873f3a1f77b727c689e02` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x4224f6c96f15971e5b0e59f71eeebded2fe51d36` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x44289609cc6781fa2c665796b6c5aabf9ffcedc5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4474b891bf3d93e61676912f0739e04b86232dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4690f346337ed8737bea462ac71ff16ef95b985e` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x46ce937a70412dfdcf01f29d6d4fe15ada1faeb8` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x4a59d3e5994abd5705b63892e1cf2301720d321c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4b4ca2f2ad3a5464cc8c01ece76c2951f3abefb2` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0x4e341b9cf90514a5b7dfec2c9a1f20aa4514c260` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4e9ae452290570834c978edf9b3febbcd4938227` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4e9c57fd2bd0f47c43f2d62642c1b05894fb9ed0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x4ed3c8bd8fd6c713edb0d81e79244103e59881e1` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x4f8b7a7a346da5c467085377796e91220d904c15` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x519fbc7cceb55255c9d1ff0ce5f9bbf1642a462a` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x51e64b34600c27c67da44f8b86c3fe19a3664fae` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5569796627e8d5d09ac260a0664b2be312ee0c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x56651306b2fa0ef5ae7bcdd78aebf3133cf6ef5e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5ac73e0cb5e75b7c550bc59126d34393e3323487` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5d93bb673d001498e515617ade09904d71929334` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x5e875267f65537768435c3c6c81cd313a570b422` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x5ebb3f2feaa15271101a927869b3a56837e73056` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x60adff2adb728f7d3029e43dea8c212f31c2962c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x614f72481bcbcddfd8e12e56bed0bef0ad84261c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x61ab01ce58d1dff3562bb25870020d555e39d849` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x639f13d5f30b47c792b6851238c05d0b623c77de` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x667efca143c6a89e384da2d3e7e63e0af4a7cd81` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x694d1697f6909361775139357d99fb60b5cab683` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x6bd792911f4b3714e88fbdf32b351632e7d22c70` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x6f8a42cf6f3ce657b66a9d5849f1251de7a35168` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x747c741496a507e4b404b50463e691a8d692f6ac` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x76a15d86fbbe691557c8b7a9c4bebf1d8afe00a7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x771d10d0c86e26ea8d3b778ad4d31b30533b9cbf` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x807275727dd3e640c5f2b5de7d1ec72b4dd293c0` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x8169e532bc781985e155037db1f96c267a520dfc` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x81c16f89222c32806daf01f5129937dfe19d525e` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0x8287f469726a95dede7cff1ea3b24a34a12e88f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0x839dc0cff5e263f56c9810560adf8ea40e95ab82` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x8775e9d584008f84dafe7abe75a62f6c91491027` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x87d8ee0bae7d352bc05c90b2d3fa3467d6c2357b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x8d09c41229f07ad098ffb5fad239dd87d2c131d4` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x8f45f7acd4b9fc0b446902790f304d444dff949b` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x8fafc84caea1cef8475cb5cb344658d160c9ce0b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x901de2f2b8b525a61b7adc3861f1355ab49106b3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x902f09715b6303d4173037652fa7377e5b98089e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x93ed061f41fdd0f4dfdb00ef2322b078699a7f24` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0x94fe59afaff2d0a8ea6e8158feb7c65410867a9b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x9512a85438606dede54297634ded7c7c0c231874` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x96ed424a833859ba08f588b62cba7edacfe3e763` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x980205d352f198748b626f6f7c38a8a5663ec981` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x9bfac7947fc1b64aa9f12b24ecd519daecef3ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x9c9e25f9fc4e8134313c2a9f5c719f5c9f4fbd95` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0x9d2a805227fbb433f7c05e98af505b04e07ab639` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0xa36797ba947b378aefe5f726cd87766cd3c25ee3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xa658742d33ebd2ce2f0bdff73515aa797fd161d9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xad132b4d9f364f8b55ea6511d7d238505dbb050a` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xaf34771b16960ea77484a866a34ccdafdc913d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xb00aa68b87256e2f22058fb2ba3246eec54a44fc` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xb037347ef306db3b41ab0b250f891887039d9231` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xb25156786248c66a713aca12715e4f9ad8fb4577` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xb26ac124db9439edb7de503ef62e3d3d4e29090c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xb2ec4d99c82417257f41b2c8ceda0962c03945f5` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xb360a579dc6f77d6a3e8710a9d983811129c428d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xb3e790273f0a89e53d2c20dd4dfe82aa00bbf91b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xb42ab636ac69f073970a94d1ace13379e7621665` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xb5bada33542a05395d504a25885e02503a957bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xb830a5afcbebb936c30c607a18bbba9f5b0a592f` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xbe4fb271cfb7bcbb47ea9573321c7bfe309fc220` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xbec6f0034cb9055b68dc5f02873b45841ab56af7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xbf2e102fb382d6ec52823c8f81a45e9caa951320` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc03f31fd86a9077785b7bcf6598ce3598fa91113` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc3ce5497f8dca2481e4fa8fd71c42bea9158c6b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc4a3139d4afd941f56a0b878eb4906b3d20a9a12` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc55332b1d758e798a8db1f255b029f045c4958b7` | non_address_book | unknown | unknown | unverified | n/a | `0x243e947fc5ec11fe7a32978cf0adf40c55ff8362` |
| unverified unclassified | UnnamedContract<br>`0xc5fd9570ac1a5dab9eda7839bd33229252b0c05d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xc6dd6399eae419a0a33a8dc307f4c1db26d30e45` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xc905e74beb8229e258c3c6e5bc0d6cc54c534688` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xcb566e3b6934fa77258d68ea18e931fa75e1aaaa` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xcb8b435481da1ed5abc895e03535ce0bba3b6905` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xcc0de82d7d520d8d5897d23cf961867bc16fd346` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xcc865b0324121b43728176024f58bdbb3afd6f29` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xccb2d258a53c6137dd762d41af02f01ac3a2e6f7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xcff08a35a5f27f306e2da99ff198db90f13def77` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xd231084bfb234c107d3ee2b22f97f3346fdaf705` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xd28d733151eb203b0bd440da044ee0e9f5e84092` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xd5390300c5db71f80d46f0fa9983fc72d4d1e3da` | non_address_book | unknown | unknown | unverified | n/a | `0xf3018d881643734829ce674c95f3699a51c23a74` |
| unverified unclassified | UnnamedContract<br>`0xd87129c3edbb0a7426f5f815461f0863939859c0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xd9e7059e4c6307ee5da088934241754c7762d0c3` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xdac2d26317c42ae3cb21357b73404120e1da4232` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xdcc1a1a26807c687300a63a72ef111f6fe994068` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xdd55f55cb9a39ef1eed4ee1a84ee1b7411be306a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe01f3c1cd14f39303d175c31c16f58707b28976b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe04f26f3f47b6054aeb15796ac4af3c61f08e832` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe20403867780129b9b5be8da9a84511b406fc6d2` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe307798ec35136320528b24d35c0bb086f02de80` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xe5971a1df4f2a49570f6632b50fbc2159776cf4a` | non_address_book | unknown | unknown | unverified | n/a | `0x12a8983b67a272154c606ef6e872563f7598182d` |
| unverified unclassified | UnnamedContract<br>`0xe64ae0b202c3876b833a688ed50fdc8c1173e321` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe6d3bd67cfcae26564633eab30e7ea5f3e27ac3b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0xe84c69c1854279230660eb77991cc76505e1ee83` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe85e8db8522c4a8bfc029fae2d7301a67988c99b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xe9ae261d3aff7d3fccf38fa2d612dd3897e07b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xedb24caa96bcb24fa469cefe0780df0f1b711e63` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xf641db6860fd5f6643d05bd75405a2586a63a141` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xf6c8bd9229b908dbc54fd5eab7dbca037b18c46d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xf82fa86fc412d40d1e9d92606c96a76ccbc4f667` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xfa6f20b258f91fbf8cd1d25ab77ce844fcb3e759` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xfaea28b040850144adcfd49eeb4e7e419566f3e3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc368cdf07d73fd6ee826be551b87a99a09c2e55` |
| unverified unclassified | UnnamedContract<br>`0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xfe9ab78ed4f9f3dbb168d9f5e5213d78605c9805` | non_address_book | unknown | unknown | unverified | n/a | `0x9f403140bc0574d7d36ea472b82daa1bbd4ef327` |
| unverified unclassified | UnnamedContract<br>`0xff2331661cbe723aee36d74647137c13ea73bc9c` | non_address_book | unknown | unknown | unverified | n/a | `0x32bdc6a4e8c654df65503cbb0edc82b4ce9158e6` |
| unverified unclassified | UnnamedContract<br>`0xeb8f9227f5e6012fd4e0d52461a6cd0226a0275f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3018d881643734829ce674c95f3699a51c23a74` |
| unverified unclassified | UnnamedContract<br>`0x018a3eb67fbdd4944e768df31514b60f1d8e44fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x04ba50542441e008b62a5e844d03084f2a7cdd96` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x064caabb7ebdfbcc0eb1c5466cc81ad5766eee95` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x0894a98b57071f9292a6cde54b8ea9511cb0719e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x0b44c7d3b21806f6aa2c829e939378f626b8af44` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x0f41d7e934bf136498c1e69170ffebc67f6ab86f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x0f6596d806a1d1940ea8ff6f003a4b38628aec8e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x0fb3c8f24a63ad44ae5da61f1299082122664031` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x106cbb7361c3d3d0a12a8160a714879cc13c5a29` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x10908a9bf610cdd231e2872ce5093eb412a49313` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x14eb68402291fe1342b8372b6550b1acaca5bab0` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x169f26ac754806ebcf28ef6c9dd1e3558ce5cdc5` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x16b46094cb1ee593181ba2d997e77e88d7e9ab8f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x17b8ee96e3bcb3b04b3e8334de4524520c51cab4` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x18fda3c97ea92a04d1636d84948624b414d0058e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x1a90866cf5ffffef57711a6d0717e4cfa091fab3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x1bd455c30ad8e2b8df40df44a2ef923d67b33feb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x2026607f5a4e5198304854238e3eb0ecddb593c8` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x20c5b1bccc3853330c797d55fac028b9fcdd1e00` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x220ac765417ac674319fc8439e652d036b8f9a0d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x2537f21793e07a66f4a81da99848dd4fb0e32f03` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x27668225983bc053be8febc5d526d160e4d7d7c4` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x29bc79a74287e94870b8c551d3529833f6c22c19` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x2b9ca0a8c773bb1b92a3ddae9f882fd14457dacc` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x2de16d15215a6db2fe1c927e01a5294a833d117b` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x363cb057bdc9e77b704723bc060345264571fd66` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x38d95d932e67260f21b5fd80ff43c2b7c6e67767` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x3afbd158cf7b1e6be4dac88bc173fa65ebdf2ecd` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x3be759169a688a750edd72356d000080661056e3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x3c972e0b70801436362692be646d9739fc87611e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x3f4e798cb3d72759209d6b972917074bac9dc0dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x409834270b6f2591dd6c1e9f351e4194b112da44` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x40d21bd3d5fea6c1ad7612735091cbee622ee972` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x45278ddde6e3e7078341db2223489b68c1e84ee7` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x4a1519035480eedab5e84a487df614f08ece876a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x4b2a13d633dcd6b9df26de9cfa79f76a6c68bac9` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x4ccb4f4731245698a65c824e988cab650bd2b6fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x4dee319dec02d0320863968b355adadd9c857b2e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x5064f1c5bcfda5922aedb382cd380ef77471e7ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x5093861357abebda1c6de62802e668d54a3586ca` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x5619f87ddf3a7780819ffa504ea848a62eb2fb2e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x581cf21f7909616c2d0845ca5d597e6346939e1a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x5851a820c6aa6af8691ba108a5bf372a2fbd27ee` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x59a9ad13d843fd5b74df842288d9340048318ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |
| unverified unclassified | UnnamedContract<br>`0x5b1284d74199378c0bbce37c64b5e1e3f45dea22` | non_address_book | unknown | unknown | unverified | n/a | `0xf3378fef290cf389418b4ac5ae00cca099ac672f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Polygon-Certora (Kat Token) Final report.pdf](https://github.com/katana-network/kat-token/blob/main/audit/Polygon-Certora%20(Kat%20Token)%20Final%20report.pdf) | Polygon-Certora | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1946] Polygon-Certora (Kat Token) Final report.pdf — no match: Scope section explicitly lists three contracts: KatToken.sol, MerkleMinter.sol, Powutil.sol. Audit date inferred from work period '11.3.2025 to 18.3.2025' as end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Polygon-Certora (Kat Token) Final report.pdf | KatToken | unmatched — not counted | — | listed in scope | no |
| Polygon-Certora (Kat Token) Final report.pdf | MerkleMinter | unmatched — not counted | — | listed in scope | no |
| Polygon-Certora (Kat Token) Final report.pdf | Powutil | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 348 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [1946] Polygon-Certora (Kat Token) Final report.pdf

Fork inheritance lineage and inherited audits are included when available.
