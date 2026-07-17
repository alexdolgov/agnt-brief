# Agentic Audit Brief: Synthetix

## Project Overview

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.412Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 68 unique implementations (167 raw deployments)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 76 project-authored contract(s) across 4 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (eip712, externstatetoken, selfdestructible). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 267; live-surface contracts included: 166 (137 live, 29 unknown).
- Excluded by liveness: 101 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/34 (55.9%)
- Deployed-live implementations: 39 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/39
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 68
- Raw deployments: 167
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| iosiro | Tier 2 | 19 | 48.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountModule | unknown | optimism | n/a | 7 deployments: optimism [`0x1628476203829db18e4df095d3c67e9344f4712b`](./contracts/optimism-10/0x1628476203829db18e4df095d3c67e9344f4712b/); optimism `0x3b078d6c1b6d114815c495c99b177200a4872649`; optimism `0x435358abcfd3e85563ae88665fbb2033c1a003ec`; optimism `0x786e8e0d0c9da1cf9379c27b037d3ae6b0a78923`; optimism `0xd007f8832c34c0c203d127103d588bc31085ce2d`; base `0x35606ad42990c243175590312791c3e24fc69a8d`; base `0xd5fccd43205cef11fbaf9b38df15adbe1b186869` | ✅ Audited |
| AccountTokenModule | unknown | base | n/a | 2 deployments: base [`0xd10cd91683301c8c15eda40f59e73d1b0bcfecdd`](./contracts/base-8453/0xd10cd91683301c8c15eda40f59e73d1b0bcfecdd/); base `0xf28e37715ed3587197e993d0c6cac7d4ecbc11a1` | ✅ Audited |
| AssociateDebtModule | unknown | optimism | n/a | 11 deployments: optimism [`0x12e3f8d1d01f8534c685fa4d99cbc31597dc9332`](./contracts/optimism-10/0x12e3f8d1d01f8534c685fa4d99cbc31597dc9332/); optimism `0x1588fc106e9c0d7fed56844e0fc05f7a050a36b2`; optimism `0x1a122d3c4269470c767c5ead22ed09d1f387a0f4`; optimism `0x2436703abb814dff0f5b394fd28eb5dd1e7da400`; optimism `0x7782a4d1d211fa34cedacff8fb4269167a93ca30`; optimism `0xc09a31d7fcade6d48ad37ab72833a34600c21b9b`; optimism `0xd57521750a45a78d656c0ebbcce92299c302d025`; optimism `0xe4895414f246b26fbf62bf391784c8ff7d523135`; optimism `0xef35b98d2e2bba6717fbf12130f741e573dde7cb`; base `0x2f9158edc43d5a0c78215de7b02680a35af231aa`; base `0x3091acaeaf27985f33a8a4b0eefea49dc60c8506` | ✅ Audited |
| AssociatedSystemsModule | unknown | base | n/a | 2 deployments: base [`0x0daea0367d7b82644c4db4d992cf4ba39c8a359c`](./contracts/base-8453/0x0daea0367d7b82644c4db4d992cf4ba39c8a359c/); base `0xdae65a48f9885b8bbf7d6c4f9dc472b65a917515` | ✅ Audited |
| CollateralConfigurationModule | unknown | optimism | n/a | 3 deployments: optimism [`0x7c67fe1ca0a66faad30046cb9492ac13ffa4b08b`](./contracts/optimism-10/0x7c67fe1ca0a66faad30046cb9492ac13ffa4b08b/); base `0xb16a8b06318c78c274f3bbc5cc5c9191b0d0c1a3`; base `0xfc10ce0c846b990bf02864eb61e6e2d050643a41` | ✅ Audited |
| CollateralModule | unknown | optimism | n/a | 12 deployments: optimism [`0x3caa810450ce5473a1a0d386e29a03f4a3c18e36`](./contracts/optimism-10/0x3caa810450ce5473a1a0d386e29a03f4a3c18e36/); optimism `0x5c4909b982a106f9f59bd8d6b44c4d38b18e064e`; optimism `0x5e528cb7cfe590e05785132f98aa7027214e9381`; optimism `0x8e4461e20efe5356ece53ebf6765539bacf11ec5`; optimism `0x91727101c1dfa8ef96dd7c7ba9af6a8c9a3df1a3`; optimism `0x9476e8882b8dec9ddc598501b5bdd5c9c3ad9d9e`; optimism `0xbdef7a8a2ca34d51eb2ff3bfac65e17e9b421b64`; optimism `0xcbcdab832df1c5257cefbb55850bc4c90c944ea6`; optimism `0xeb30f42da93c20e921247a56bbf09859a2626d26`; optimism `0xef738d5590e25fccb696205984e6e3551a9a81f9`; base `0x7ea002b383e875bf522031cbbde09f2b27e1ca5d`; base `0xe082bd0ac75c78196f312150a298ade27aebecb0` | ✅ Audited |
| CoreRouter | adapter | base | n/a | [`0x32c222a9a159782afd7529c87fa34b96ca72c696`](./contracts/base-8453/0x32c222a9a159782afd7529c87fa34b96ca72c696/) | ✅ Audited |
| FeatureFlagModule | unknown | base | n/a | 6 deployments: base [`0x27a64e368cf200c4d106b3f225cdbb2d02448376`](./contracts/base-8453/0x27a64e368cf200c4d106b3f225cdbb2d02448376/); base `0x569e1a3ca9ae30416d2cbfe9a8e43538f35bdc8d`; base `0x6a8a998a0c4a7c687cee4e362f64481b2bd8bee5`; base `0x7e23088eebf14489a3c57419eee809e65b42faee`; base `0xd966c6382cc0f2ae1980e3cec040d5a725f58d70`; base `0xe00ce119a2be16c88299fb96859f969030deddbc` | ✅ Audited |
| InitialModuleBundle | unknown | optimism | n/a | [`0x6dff970f25f7dcb049a9f9688ed8b537a528bc34`](./contracts/optimism-10/0x6dff970f25f7dcb049a9f9688ed8b537a528bc34/) | ✅ Audited |
| IssueUSDModule | unknown | optimism | n/a | 10 deployments: optimism [`0x0a1708b3a55dbbae213fdd1ef46b8553c0660400`](./contracts/optimism-10/0x0a1708b3a55dbbae213fdd1ef46b8553c0660400/); optimism `0x3a6061c7642f1df8503e6eb8a599d7d8b4317524`; optimism `0x5c68b59302362549672b09b779e34017a933776d`; optimism `0x608bb88f181232b54e0da1158cadf6bfcf201718`; optimism `0x7beac3243bdb6c2420fc1a930e5632dd4f21670c`; optimism `0xcf195ee68bd6cae922e37ea5c0a9e885fb360fa2`; optimism `0xe63606f6bf674ff9ddc1cfb1175becefa13d59a4`; optimism `0xf02b4c1db13210bfe792def4d6f700c7d2727f92`; base `0xb3da45dea391b0be38f41c6214ff3c0530baa25c`; base `0xe8f3c0a64fa3d76942521923352f9ddfbb3763b9` | ✅ Audited |
| LiquidationModule | unknown | optimism | n/a | 14 deployments: optimism [`0x23e1614f360ca09fd1c431df52d44abcd1b65d10`](./contracts/optimism-10/0x23e1614f360ca09fd1c431df52d44abcd1b65d10/); optimism `0x4cb44de9e943347e701e9a1d3d80004ee1e9159e`; optimism `0x6e045e3ad60755e5c97a4d15332e4088520b8424`; optimism `0x7a135113253b6ae26af65e6bdcab94ddcdd2ba67`; optimism `0x93ee4d85c5029d4120ee0ad3d7f1691205f5d677`; optimism `0x973e9acd09a47b2e375fcc7ee4112a6e3adc354f`; optimism `0xaa2c0b23517a0ca1b58fac3aed3ffce29b8e95f9`; optimism `0xd5603b6e20eb04cb7b73af3746f69d010f11d74a`; optimism `0xe1ba4af6e3b76af365a391d9d1ed75caecbdc965`; base `0x661a88b7720391d199b1dfbebaf01fe49fd6f9ba`; base `0x6f7e8eb502cefe31a0565390cf6a17e50a237a02`; base `0x72e13c7c96b6bf4825e9f61350b0a4f22fd807d2`; base `0x94433f0da8b5bfb473ea8cd7ad10d9c8aef4ab7b`; base `0xbc4804f67fd066724aaba67a732b97a0ad07088b` | ✅ Audited |
| MarketCollateralModule | unknown | optimism | n/a | 5 deployments: optimism [`0x8b9b5a5b9c438729a8ade38a0432a3f3ab3497f1`](./contracts/optimism-10/0x8b9b5a5b9c438729a8ade38a0432a3f3ab3497f1/); optimism `0x91b6181977a0eb4089e1bdee34734454a21ac9e9`; optimism `0xbb46f9fb7bb2c73c9486148bfc70bcdf6a2beaaf`; base `0xa29c7b06ffe455f7fe20c1a080204ee5c9b729f0`; base `0xf326af86ff32b430d7ba01e9bce198246ef2b027` | ✅ Audited |
| MarketManagerModule | unknown | base | n/a | 2 deployments: base [`0x758a399e97d9d7f0253a854af451e6d1275e72e4`](./contracts/base-8453/0x758a399e97d9d7f0253a854af451e6d1275e72e4/); base `0xf273aa2e230e317fc13b93e6a65ebccbe89dd93e` | ✅ Audited |
| PoolConfigurationModule | unknown | optimism | n/a | 2 deployments: optimism [`0x3093cbba626e60e4164975f5b15dd1c0d03bf927`](./contracts/optimism-10/0x3093cbba626e60e4164975f5b15dd1c0d03bf927/); base `0x3f10b7157c1da14d5429790959eba750c17a8c46` | ✅ Audited |
| PoolModule | unknown | base | n/a | 3 deployments: optimism `0x600f30c285c11f1a94f282a933b24fb5fda13cf3`; base [`0x02696911702740f85ed8ad8b6de6c37e44026b03`](./contracts/base-8453/0x02696911702740f85ed8ad8b6de6c37e44026b03/); base `0xbcc471ec390e59f3d5f77e9a8bb24cd26d29bfb7` | ✅ Audited |
| RewardsManagerModule | unknown | optimism | n/a | 10 deployments: optimism [`0x17996f2047f3ca1cbc1d7a2820d5f31b68f541c8`](./contracts/optimism-10/0x17996f2047f3ca1cbc1d7a2820d5f31b68f541c8/); optimism `0x3d3161d5fe1c14b9734cdc41b8d442ea360e43a9`; optimism `0x69052d205b5ccea2dd30a0b9f9d1e0d40621968a`; optimism `0x7cea62f6191e7990c55a218d1874e40629feec27`; optimism `0xcb3707d3fd182679d1a61ed5f30d94bff532e144`; optimism `0xd0683ad37bc83c4fc489cdda5b9434280651ac63`; optimism `0xe4cf03d9104b73feeaf4c8c9e245056899a36ce2`; optimism `0xf93e4094cd4a99f53dbd7610c5cba56a3af42788`; base `0x184f59ee143d01dd3fb1c14363c8fac99a7f2477`; base `0xa51b344beb72bb9dac84a70cb9b77ca33db1675b` | ✅ Audited |
| USDTokenModule | unknown | base | n/a | 2 deployments: optimism `0xdaf89f5a0125e7eba36cd01b5a3c40b76f697b91`; base [`0x6e78b99d441bd1a78c7fbb61195e58e07e9601c4`](./contracts/base-8453/0x6e78b99d441bd1a78c7fbb61195e58e07e9601c4/) | ✅ Audited |
| UtilsModule | unknown | optimism | n/a | 2 deployments: optimism [`0x750714ec1357042e2102bc25e20e5359c27168d3`](./contracts/optimism-10/0x750714ec1357042e2102bc25e20e5359c27168d3/); base `0xfcad0ff92f4854a467c28bd98fbb40f8352f127a` | ✅ Audited |
| VaultModule | unknown | optimism | n/a | 11 deployments: optimism [`0x0dce5804aaf8ededf133d87785e65af718a093a8`](./contracts/optimism-10/0x0dce5804aaf8ededf133d87785e65af718a093a8/); optimism `0x255fd9cdf297ffe30f62bcc39fd2f1cd71414e7d`; optimism `0x52c89f12b1c42ae3d23af3a9dae435279a4ca334`; optimism `0xa49ef964876b802454cd2ec11ac6a23f7ca01158`; optimism `0xa861ed94cc5b74962a293b58a71a692104e06f63`; optimism `0xae3d2a51b53c0ea85ce14123621ddfae8ec3514d`; optimism `0xdb83d867a20d4d76815ac54077b2c1becf9a32af`; optimism `0xec09d3d435c4b236d339df71981fce6d12a36a9b`; optimism `0xf69845397cdef05f08a2ca4e37107ab85829faa0`; base `0xd9f3956055092cb4b2c0ec67b0182723dfcb8783`; base `0xebe6f4cc763ba847608d45c967f8807405d2a7c2` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CoreRouter | adapter | ethereum | n/a | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | optimism | n/a | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| CoreRouter | adapter | arbitrum | n/a | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xeb3107117fead7de89cd14d463d340a2e6917769`](./contracts/ethereum-1/0xeb3107117fead7de89cd14d463d340a2e6917769/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82`](./contracts/base-8453/0xbb63ca5554dc4ccaca4edd6ecc2837d5efe83c82/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b`](./contracts/arbitrum-42161/0xd3dfa13cdc7c133b1700c243f03a8c6df513a93b/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | [`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LegacyMarket | unknown | ethereum | n/a | [`0x3acf163b9e6a384d539e10dac7e11213c638b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | ⚠️ Unaudited |
| LegacyMarket | unknown | optimism | n/a | 2 deployments: optimism [`0x19f03fcf06204df85b2593145b87134d3366170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/); optimism `0xa9056e68fabeb1cfaecb5a223c25eb02d13348ab` | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | base | n/a | [`0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 10 deployments: ethereum [`0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0`](./contracts/ethereum-1/0x29a904eecbcab49b667b2f5a1e5d5ad72065f7d0/); ethereum `0x3eb064766109d150e4362222df80638bce00e037`; ethereum `0x559e848a1b6a7afc69ee27f8d20280a42628b2cf`; ethereum `0x62492f15cf60c5847d3053e482cade8c5c29af88`; ethereum `0x64d5df8fe2b69031c136ab515e504394d0f09a99`; ethereum `0xb440dd674e1243644791a4adfe3a2abb0a92d309`; ethereum `0xdce506b196b0df677d07e718f872cac9bc368a33`; ethereum `0xe05d803fa0c5832fa2262465290abb25d6c2bfa3`; ethereum `0xed4699f180a14b5974c26f494483f9c327fd381a`; ethereum `0xf48129784a3f4bc39d66874b45585dd08a713258` | ⚠️ Unaudited |
| ProxyERC20 | token | optimism | n/a | [`0x8700daec35af8ff88c16bdf0418774cb3d7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | base | n/a | [`0x9cb0b428632fc7dc56fdf453aed890ba55b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | ⚠️ Unaudited |
| RetiredSynthsUSD | unknown | optimism | n/a | [`0x9614b0d381c3c08449b4e569f0e280252cdcb1c3`](./contracts/optimism-10/0x9614b0d381c3c08449b4e569f0e280252cdcb1c3/) | ⚠️ Unaudited |
| SafeDecimalMath | unknown | ethereum | n/a | [`0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | ⚠️ Unaudited |
| SpotMarketFactoryModule | unknown | base | n/a | 2 deployments: base [`0x3400f899ee37db540681fbf0fb49bef2bc7f351b`](./contracts/base-8453/0x3400f899ee37db540681fbf0fb49bef2bc7f351b/); base `0x6a7921414b9b84c5bc3074a34987c717a72fc7e0` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | base | n/a | [`0x18141523403e2595d31b22604acb8fc06a4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | ethereum | n/a | [`0xd62595c3c23b690baee0935e107a209cb1dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | base | n/a | 2 deployments: base [`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/); arbitrum [`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`](./contracts/arbitrum-42161/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x00e0479e842cef0d8c4320034836753e94433134` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0588502c322222586d367a80683988ad09eef8c9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1b748465c781fa8b5c43d433cbd709121e509c07` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x228f4a2c8bdc984a82757d599a4c73edc1086494` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x26d4ffd582d79dac494fba213c37ed80047587b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x299ece651329d2c028519432be740c28bcbe312c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b75d303a15b9badd951650e95fa00ac67e1699d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b59404592815cfe55fe4b5a8cb165ff625db619` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3ee05e8ee216f30e946fe116c63f696e1b34c94b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3f053568da231eaf31df881aa84f473296dbbac4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x46eaf2ceeba9e96fafd84d8fcce426adeea67102` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4e2d8de6b555c87294a6dfafec47fda2082bfc64` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x514130b6655add6a03eaf1cce07094263e73b542` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5764bab5f0d16103f9c11325963f6389f007e130` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d379c208efd5b328f6b808616a56a725ccc7c9f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x683a665d67346667181fd21b878faa1ab2c3221f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x70da0e86a9f9fcc19ceaf774e15250be0ee52ad4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a610256b313473bcf4d5835cf993487f5d16585` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90e42b97188f4e99466a06d1419b5a7fb367fe38` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa7ae6d9199ece7df03f685485abc73821fef672f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa99616ae1dd17377a2ef5a3e13e988a5cfce4a0b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb363932c7c56f2b6b684abbd63cc4515f015416a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb606f2c570a30e9d01fcba7dbe103a5ed7b57e1a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb87b56863f9b55751cbf5e4417117f7de1671e91` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe0385f82323f11ba611eae3d822054ac63e21cf8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe7f85bd60662a4f11242e0123a52b36f9ae7c2bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfcb6e46e60ca842b27a3a74b80a233b0baf2c78e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfdb10bc5758bdf9f8d2b58d5b562af28728b0643` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe46d0fe3c97446c4911d4c1d2685e4a58f5bbed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | 2023-04 | stale | Direct | contract_name | 106 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/ethereum-1/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/optimism-10/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xffffffaeff0b96ea8e4f94b2253f31abdd875847`](./contracts/arbitrum-42161/0xffffffaeff0b96ea8e4f94b2253f31abdd875847/) | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3acf163b9e6a384d539e10dac7e11213c638b2f5`](./contracts/ethereum-1/0x3acf163b9e6a384d539e10dac7e11213c638b2f5/) | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x19f03fcf06204df85b2593145b87134d3366170c`](./contracts/optimism-10/0x19f03fcf06204df85b2593145b87134d3366170c/) | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce`](./contracts/base-8453/0x0a2af931effd34b81ebcc57e3d3c9b1e1de1c9ce/) | PerpsMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8700daec35af8ff88c16bdf0418774cb3d7599b4`](./contracts/optimism-10/0x8700daec35af8ff88c16bdf0418774cb3d7599b4/) | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9cb0b428632fc7dc56fdf453aed890ba55b1953a`](./contracts/base-8453/0x9cb0b428632fc7dc56fdf453aed890ba55b1953a/) | PythERC7412Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9614b0d381c3c08449b4e569f0e280252cdcb1c3`](./contracts/optimism-10/0x9614b0d381c3c08449b4e569f0e280252cdcb1c3/) | RetiredSynthsUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b`](./contracts/ethereum-1/0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b/) | SafeDecimalMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3400f899ee37db540681fbf0fb49bef2bc7f351b`](./contracts/base-8453/0x3400f899ee37db540681fbf0fb49bef2bc7f351b/) | SpotMarketFactoryModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18141523403e2595d31b22604acb8fc06a4caa61`](./contracts/base-8453/0x18141523403e2595d31b22604acb8fc06a4caa61/) | SpotMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd62595c3c23b690baee0935e107a209cb1dbd37b`](./contracts/ethereum-1/0xd62595c3c23b690baee0935e107a209cb1dbd37b/) | SynthetixDepositContract | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe2c5658cc5c448b48141168f3e475df8f65a1e3e`](./contracts/base-8453/0xe2c5658cc5c448b48141168f3e475df8f65a1e3e/) | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=106

Fork inheritance lineage and inherited audits are included when available.
