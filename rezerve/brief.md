# Agentic Audit Brief: Rezerve

## Project Overview

- Project: Rezerve (`rezerve`)
- Website: [https://rezerve.money](https://rezerve.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.077Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, bsc, ethereum, sonic
- Contract surface: 105 unique implementations (370 raw deployments)
- DeFi Llama TVL: $2,425,835.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 92 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 9 ERC20 tokens, 4 ERC721 NFTs, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 22 common project-authored base contract(s) (appaccesscontrolled, univ4positionhelper, baseadapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 533; live-surface contracts included: 370 (339 live, 31 unknown).
- Excluded by liveness: 163 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/72 (1.4%)
- Deployed-live implementations: 74 of 105 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/74
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 105
- Raw deployments: 370
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 1.4% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AppTreasury | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x00ff05abab62c88d5fa50583b08e35908b70db99`](./contracts/ethereum-1/0x00ff05abab62c88d5fa50583b08e35908b70db99/); ethereum `0x41d1cedaaa770ec7e1041a6f6c827a795bc85585`; sonic `0x374fc873e4f8c8c43aa4bacf2110eee62dac1f0e`; sonic `0x5728b5f4c53604dc2d29641ac2e9c474ccb2936d`; sonic `0x953142e69402854e9925a497bac31ab10b23fa9a`; sonic `0x9ccab5d967cf834932ef9b22aa961392dc42e43f`; sonic `0xdbaffaaa15d908afbbdfd74e154cf1d53fc1af58`; sonic `0xfb114366487570b2daa6a2bcc4019e0e52d58a6d` | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Adapter4626Oracle | operational_periphery | sonic | n/a | 6 deployments: ethereum `0xb34d5ffe8ba8e476e981ce4e7d241dcd668a871b`; sonic [`0x20bee53adb73440c7d4f9c9a015997ff548ed4c2`](./contracts/sonic-146/0x20bee53adb73440c7d4f9c9a015997ff548ed4c2/); sonic `0x7d280422779f7ebbd132614b659e721168a6337f`; sonic `0xe8ee6a87dacdbeeeea3f6159d4a797702d0c07d7`; sonic `0xe90a0ef0e246e284a0c7a51d8ee0429dba22537a`; sonic `0xf576c9cccb0244b4f0b11a99ecb357ce692d1ebc` | ⚠️ Unaudited |
| Adapter4626OracleModified | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec`](./contracts/sonic-146/0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec/); sonic `0xae494c2381de5e638ea605f151ecee345e6a73a8`; sonic `0xbab9e6c125569427c6688df56ab6d42a4b8e6be8` | ⚠️ Unaudited |
| AggWithStalenessOracle | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x19e771531621b9132b93dcefcef3d048650827d3`](./contracts/sonic-146/0x19e771531621b9132b93dcefcef3d048650827d3/); sonic `0xd19fe4626d516c365749a3ab437177100deef229` | ⚠️ Unaudited |
| AppAuthority | governance | sonic | n/a | 5 deployments: ethereum `0x43a38a7ba3417d675b7a78bf026a9cf6fa45417d`; ethereum `0xd4f70cd28a0fa5d4761dfdef4ee8adb56c03d8c0`; ethereum `0xd9af866add1ae78c5541a5592a693742e8bed0a2`; sonic [`0x07249bd92625641f9e3dba360967c3b18ee28af2`](./contracts/sonic-146/0x07249bd92625641f9e3dba360967c3b18ee28af2/); sonic `0xf06b937708b9a20a62130b79a67f229ea65ef309` | ⚠️ Unaudited |
| AppBondDepository | unknown | sonic | n/a | 4 deployments: sonic [`0x401d83457951ef2c195d56e7d4a8f2d72c43bde8`](./contracts/sonic-146/0x401d83457951ef2c195d56e7d4a8f2d72c43bde8/); sonic `0x978c79056e655638866c5eba277d988a60be7afe`; sonic `0xabb67712d92d775202ff748b90f7ff9365239ec5`; sonic `0xca36616ffc16eae1f33783a8cd082f46d9f2d993` | ⚠️ Unaudited |
| AppBurner | unknown | ethereum | n/a | 5 deployments: ethereum [`0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b`](./contracts/ethereum-1/0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b/); ethereum `0x864f47e5a0407307e62e094601c73af378ea2e1a`; ethereum `0x9e84acb1a4c54f0ee44b80dc7d3f59743feb68a8`; sonic `0x635ad38f96aed1242dbb0dbb5e9125f560d87270`; sonic `0xb379b46a59ee581f56bf1e960ca8a8f849d2a9d4` | ⚠️ Unaudited |
| AppConvertibles | unknown | ethereum | n/a | [`0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3`](./contracts/ethereum-1/0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3/) | ⚠️ Unaudited |
| AppOptions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13eea2582b9e3964a260452e08f580ce199bb056`](./contracts/ethereum-1/0x13eea2582b9e3964a260452e08f580ce199bb056/); ethereum `0xf3590da00658e3d1682a92bc4736b5d85690090a` | ⚠️ Unaudited |
| AppOracle | unknown | ethereum | n/a | 5 deployments: ethereum [`0x220774755570147101bdcd995386f8f27654f1fc`](./contracts/ethereum-1/0x220774755570147101bdcd995386f8f27654f1fc/); ethereum `0x438f98ef0df5520d1f81105f5ceed54919f69b66`; bsc `0x953e6bcccccf01ae151a627b4c77718ac8cfaa34`; sonic `0x2da785461180ebb25c211e03f10e3ce5099973ea`; sonic `0x82884801428895c2550ed1ca96997bd60f74b5cc` | ⚠️ Unaudited |
| AppProxy | unknown | sonic | n/a | 5 deployments: sonic [`0x2d707598b1541a6096adaedefdefdd5f33f1194e`](./contracts/sonic-146/0x2d707598b1541a6096adaedefdefdd5f33f1194e/); sonic `0x37dcfa2f774d9037839deaca5a8f0a22e69e4c13`; sonic `0x56ee21c18759c9280891556028a2d116cbbc779a`; sonic `0x5ec084ca20bb4370a5940855387bb165265426c4`; sonic `0xf9fadee36b85ae08b7c639d4fb7b0d0ad6c0ae3e` | ⚠️ Unaudited |
| AppReferrals | unknown | sonic | n/a | 4 deployments: sonic [`0x076d210be0faf9df327f286822c93acfe38ef95b`](./contracts/sonic-146/0x076d210be0faf9df327f286822c93acfe38ef95b/); sonic `0x4286862cd6cefe4c523fb3ff3b43cfd04ed243fb`; sonic `0x53476ae05dc51e640a1228f4629fc85fd58d7616`; sonic `0x62ed7494f658bcb74cc58612b94bbb1887ba1802` | ⚠️ Unaudited |
| AppStaking | unknown | sonic | n/a | 10 deployments: ethereum `0x21dd4a4647c09f5662a7e764d167d65812dae56c`; ethereum `0x47c9f37ba07b63d17c609b87196fae77bc373f1d`; ethereum `0x57d105a5188a4df488abae8b9d648df35cf97867`; sonic [`0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a`](./contracts/sonic-146/0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a/); sonic `0x0d0210ac2da3c8fde507712f785d16ea9cafe5e3`; sonic `0x2927f095003d5961a51394330f344fa6911b78bf`; sonic `0x5813a080792346497366b38d69a6577c7a59b1df`; sonic `0x5da4626179d040606da61cd62aeff7a31f0a7443`; sonic `0xca07863b815e9f73d5651ab90308980cffab93e8`; sonic `0xccb2e996deb0a5da69c1a2435e2e59a5b34a19b7` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | ethereum | n/a | 2 deployments: ethereum [`0x926680fac98c264f11f1d61849354f927a59606a`](./contracts/ethereum-1/0x926680fac98c264f11f1d61849354f927a59606a/); ethereum `0xe7a5777d6685fb126d209a39cc3da77fb2fab1aa` | ⚠️ Unaudited |
| AppTimelock | governance | sonic | n/a | [`0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7`](./contracts/sonic-146/0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7/) | ⚠️ Unaudited |
| AppUIHelperRead | periphery | sonic | n/a | 39 deployments: ethereum `0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3`; ethereum `0x1bb0c2447d5ed9f2eff69ed720fc64b2c3385298`; ethereum `0x1d5c9be907b1de0383e57e38778a5135c508aabd`; ethereum `0x2d707598b1541a6096adaedefdefdd5f33f1194e`; ethereum `0x2eafbc78c6d5e65db7b36249a716b5c45c35ebc2`; ethereum `0x344f23409ac5cbc55ff0b218784fc74b39f14379`; ethereum `0x45bc62b1f84edc10c31b6b6ca59e9ff0de46d1e0`; ethereum `0x49a7ed898edff24240b10f891fb9bcb8dcc4d34c`; ethereum `0x5b92233368f35b9cdf31b56901c38fce2e4dd0eb`; ethereum `0x71f5df4ae8d81c13ef99d32fc50a753711c946a8`; ethereum `0x88cc350f428f44de7665936e26ea68868c338c68`; ethereum `0xab6a743e3a9a39c6b8ce23bf3c32c9d5acfc107c`; ethereum `0xaf6053939e23f3d75ad35c3c6b529b3a3791aae2`; ethereum `0xb64c1ae74a3e51ee6cc0792807744b9eccb17f4a`; ethereum `0xc47d5010064987d17f825557bf85b4eac3da2b4b`; sonic [`0x03658cbe90390308b2fe946b6feaa9d2e3150ebf`](./contracts/sonic-146/0x03658cbe90390308b2fe946b6feaa9d2e3150ebf/); sonic `0x157b01510ae8099094608553795db07b479ebd99`; sonic `0x36e1ade990ad99cf4a260f23908d3cdf0687296f`; sonic `0x372e22d4e71b7dce355f7bf30174685603ea7722`; sonic `0x3df95195bad8f48228f490f8591852502d50195d`; sonic `0x4853cd30fc3cc5a0a6426160031f11f4fd337e40`; sonic `0x4d5af9ff74acb67a3948f40d39c417c1d6c9aa5e`; sonic `0x5e67509db796588112b2992ccde55c55ebc70526`; sonic `0x6e984d738acc06fa1a2c5d6ee3e0930e669e8720`; sonic `0x6f94b2581d36348002a2fefabdf1fe8a05a061bb`; sonic `0x739119e444d50b079de993bdb684ee47df384e3b`; sonic `0x77b22066ab639892baece5986395002cc897fdfd`; sonic `0x80ea1f8c2035f29441dca5fb40a43ada0fefe434`; sonic `0x831c2a6448825e1eab6eb318bdf9c8e0d1203899`; sonic `0x8763b7216ca413517d6e3bcc164fc8906938ae71`; sonic `0x9181a1142d983e4f6ea3328c32fc8e975e5ae96a`; sonic `0x9426ca24a0060b7393aa9c65580c4a1b91721003`; sonic `0x9fb8fbff1cdf809cb967764270edcbef1a29e52b`; sonic `0xa2806674dcd29be2bc037cc23bdd6f4577860f44`; sonic `0xb377d3b9df69bc42b0cf1c68bccfa4fd81b4eba9`; sonic `0xda2056619a32d266b5132ae3ea1499d0d26fa9d6`; sonic `0xdaa8572d9155c28457cde5c2235aeaf29372aa1b`; sonic `0xe70de19cee299399017c63172a6b704e92d9b376`; sonic `0xfef330c27c348a4ceb053dff9b1bb9f19d117788` | ⚠️ Unaudited |
| AppUIHelperWrite | periphery | sonic | n/a | 37 deployments: ethereum `0x057dd3c385dea0a0268345c60ebf2065261d2df3`; ethereum `0x1ebcc99cea90ad9c64829672a64efb0e7992d849`; ethereum `0x34b05b58f29b304f38b48e092a77eafb64b493bc`; ethereum `0x4e3e26b7854c90a69aa4d09723225cdfacfe19bf`; ethereum `0x634f070da61d26bb51d1658df368657fa04ac479`; ethereum `0x66d7cee1fae41ffe755d3b9f2e8394643e1bab03`; ethereum `0x798c50bcd9979e1effbe83f142a224080dc297e1`; ethereum `0x82c874026b47875a70431f14afc65419c12a9ef8`; ethereum `0x833bce7273e980e999bf5ce0ea2ea0bf2b81e827`; ethereum `0x87fe4fa422edffc0e9e1a8bc0b9ece4009e34184`; ethereum `0x99a619ce54749926e2d248e84a818e7bb1c3b42b`; ethereum `0xabb67712d92d775202ff748b90f7ff9365239ec5`; ethereum `0xcad00c4862abcc1f76ffda846f5ccbc2de101849`; ethereum `0xce73b5cbedb469e5cb412f1786bba8fa7db94e69`; ethereum `0xe4c8c2b109b9e3c7ca2de7c898147479872d11d9`; ethereum `0xeaf22783d06c91a32f9856f142eca8aed6698557`; sonic [`0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1`](./contracts/sonic-146/0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1/); sonic `0x18162cd345548f793ee8b8ca6651559ad1b49078`; sonic `0x3b9663d16bc6582a87d6a8c3204a50e3b8622f4a`; sonic `0x4eec8b0c51a974eaa01bd7a5ac7765c4176e8da5`; sonic `0x5023a2472244a60904bdc135eb5b2fe9f6e7464f`; sonic `0x56e50cd5d4fc7a74127324daf321dd6818157c18`; sonic `0x5ad70179e88384ef75d63cd032d8df68afe3f7e3`; sonic `0x66eea73b2f1a6a9ea05f8c395a43721fb4c0ba5d`; sonic `0x7f65db983bc52ff3fa126c5f2b121fb234d7799a`; sonic `0x84a0b59457ede0fb5fbb21e15b7a52b6f27d6c5d`; sonic `0x9638eee6d491d1848f4f417fa90c2017ef9d89be`; sonic `0x970df89c13b0eef9c1e1fc5a1927e15e7b3e5dd3`; sonic `0x99a619ce54749926e2d248e84a818e7bb1c3b42b`; sonic `0x99e50a30cd5de21c1c72e79fc486a799fa7925db`; sonic `0xa7dbf3a19e6fd6f27e4045c06df811e01625ef27`; sonic `0xc5fcd90c83a09eba24d321eb2ad961c6fdd4e21c`; sonic `0xe236f3c0a1fc905615bc1f8b421ce0f5b55680ce`; sonic `0xeb6cde8ecdf053587689db8d0bebc34cd8808e25`; sonic `0xebb64c3c4d249d428fd470ba955f1cda56029d65`; sonic `0xed8ab58f036666b8843c811ea990055c49fadc39`; sonic `0xfd4ad1c79fe271167ff1096bd317f034ade2412a` | ⚠️ Unaudited |
| BalancerBorrowAndAdd | core_logic | ethereum | n/a | [`0x03a33ded69e1c154267f1e6082804e901ded5cdc`](./contracts/ethereum-1/0x03a33ded69e1c154267f1e6082804e901ded5cdc/) | ⚠️ Unaudited |
| BeaconOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x3df3004635eebd70644ae2c8e11e604d86f2fdcb`](./contracts/ethereum-1/0x3df3004635eebd70644ae2c8e11e604d86f2fdcb/); ethereum `0xaa131b06baa5a1ed2c998c9978b4a3f4039169e4`; ethereum `0xb6cb302710592ffca18f2b09e4fb5fd4dcd0cb2d`; ethereum `0xc06091b8d134cfb06807724c737f719a7b5ee6f5` | ⚠️ Unaudited |
| BeaconOracleV2CL | operational_periphery | ethereum | n/a | [`0xc46e157ef92cde37c0f8044b65d892cbcdacaf10`](./contracts/ethereum-1/0xc46e157ef92cde37c0f8044b65d892cbcdacaf10/) | ⚠️ Unaudited |
| BlackholeLP | unknown | sonic | n/a | 2 deployments: sonic [`0x5369135d0f9e661d7647d3b24b906d5fe9d4839c`](./contracts/sonic-146/0x5369135d0f9e661d7647d3b24b906d5fe9d4839c/); sonic `0xa063f97e1878f492c6104188ff99281caf760878` | ⚠️ Unaudited |
| BlankProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa597e758b25bd077dbab880c712f49df170b803c`](./contracts/ethereum-1/0xa597e758b25bd077dbab880c712f49df170b803c/); sonic `0xc80e1eddd78e9c4238b19c4a41225a780b78f9fc` | ⚠️ Unaudited |
| BoostedBalanceChecker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a41ec2c6477fd7943397790ae5fc3a09876b14a`](./contracts/ethereum-1/0x3a41ec2c6477fd7943397790ae5fc3a09876b14a/); ethereum `0x7441236d4832f4abae20c69ffd311848400d0e7c` | ⚠️ Unaudited |
| BridgeL1 | operational_periphery | ethereum | n/a | [`0x507427db12766d70445c85e683efd30143bf99df`](./contracts/ethereum-1/0x507427db12766d70445c85e683efd30143bf99df/) | ⚠️ Unaudited |
| BridgeL1Reader | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x53f996129f35c456f2d4993c66382b2cb02fa879`](./contracts/ethereum-1/0x53f996129f35c456f2d4993c66382b2cb02fa879/); ethereum `0x5aa0bd971fbf458ec04477a3ac92f191aebe3a38`; ethereum `0x73fe952052dbb01b51e19b73a4e56a0d4d82c1c1`; ethereum `0x9096e14681ec9d4024982668a6b9c47b72862f32`; ethereum `0xaae0f787f9a0b50cd13253d9659cd9b906aac097`; ethereum `0xb0c897f8f8842a719453da4d5a5ed6b2ce79b51b`; ethereum `0xc38115d85392b1b26b8061c78a4d0ac64ff92f56`; ethereum `0xf818d606a968c28a887c924e1c0997b45390be5b` | ⚠️ Unaudited |
| BridgeL2 | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7`](./contracts/sonic-146/0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7/); sonic `0x978dd68672fd97596e6775e2011a5e992936f105`; sonic `0xa48b9220a3673a83f9202e0d73659eb09da2a036` | ⚠️ Unaudited |
| BridgeL2Reader | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x0082191c9cb127f69411ca49286a7c5ced67af7a`](./contracts/sonic-146/0x0082191c9cb127f69411ca49286a7c5ced67af7a/); sonic `0x3253010d394b7b464e7aff1a0f68df111ae5c421`; sonic `0x4d174511d7e8191c463c8e3d6ff5027e0c65975c`; sonic `0xb2bbdbe693dc69ee909bc787466176c7f8ecae6a`; sonic `0xb49dd7086f8945648da3df0687dd253910c04328`; sonic `0xdcd067bf5dc1b4b854b4ec858fb8afd23da20506` | ⚠️ Unaudited |
| BridgeUpdateExecutor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x2f0a4803811db8bf12d92e3322343d5e6e790b2b`](./contracts/ethereum-1/0x2f0a4803811db8bf12d92e3322343d5e6e790b2b/); ethereum `0x406cd1af62eea6bd0294d5a9a578f96462f12057`; ethereum `0xdb8668faecb7997797d713215f40affa683a9418` | ⚠️ Unaudited |
| CappedOracle | operational_periphery | sonic | n/a | 13 deployments: sonic [`0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b`](./contracts/sonic-146/0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b/); sonic `0x2c23ece71d543468980603d0fab656174578be5d`; sonic `0x6cfbedaa40f3e9564553964449e0cf60990fcbd2`; sonic `0x7c52458a269c7716ac434107df469f90592e872b`; sonic `0x88da96f84a293727fe42a3ddf9ebbabcecb8e887`; sonic `0x894d52760ffc1863967f3246a5e44adda2723a73`; sonic `0x906a4ebc008fd24ac92690ec1faef30c45a65897`; sonic `0x98f1af60d0c75a870b38efecc4106d6967bce929`; sonic `0x9e65fda235603b6b9dc2e8cb60f0ec45c638296a`; sonic `0xa13584e2181e0cdf0dd413ef78f3d00585274fd6`; sonic `0xbaeb5800f47462283b2da273a5688246fdc31fe4`; sonic `0xc5050f7827f793f3b35dbb48478b58ef1c4bcc4a`; sonic `0xe0c7eed135092fe5535bfa3be4fecebb59bc2423` | ⚠️ Unaudited |
| CrossAdapter | adapter | sonic | n/a | 5 deployments: ethereum `0x55b3e08c4cebdc50dbfa013c0c4760a52bd74328`; ethereum `0x8d5c278be06f7d3fc676ab2cb7278446306c78cd`; sonic [`0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4`](./contracts/sonic-146/0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4/); sonic `0xdbe8006b72f415d70d1884e569fe618f3f465a48`; sonic `0xf83b913f7c1c396d454922d8af9423894b395a21` | ⚠️ Unaudited |
| DiaAdapterOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9`](./contracts/ethereum-1/0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9/); sonic `0xd38199e00905062c0953e1da403d1c748af066a1` | ⚠️ Unaudited |
| DiaAdapterOracleCapped | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x114fd46ca2e90ca723f578ffdb76023e27cc77ee`](./contracts/ethereum-1/0x114fd46ca2e90ca723f578ffdb76023e27cc77ee/); ethereum `0xce849e6defeb0759aa5d7c9db013a0de6ef7d373` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | ethereum | n/a | 3 deployments: ethereum [`0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9`](./contracts/ethereum-1/0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9/); ethereum `0xe1fd04511671e43617e9c7e9759a7e11c8fb6a51`; ethereum `0xfb180068950d6d7a075051b314a0e0426c83702a` | ⚠️ Unaudited |
| Euler4626Oracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x57e67762c06b4ba665c6d93eac4d74bfb3906524`](./contracts/ethereum-1/0x57e67762c06b4ba665c6d93eac4d74bfb3906524/); ethereum `0x72545e019956d05acecdb6c36ca940bcb01a84f4` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad`](./contracts/ethereum-1/0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad/); ethereum `0xbafc1a885e25c6f594e06f12edaeb46858547724`; ethereum `0xc42d337861878baa4dc820d9e6b6c667c2b57e8a` | ⚠️ Unaudited |
| FixedOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x05710c203c00a0a1325436930deb4d1edf1b24ff`](./contracts/ethereum-1/0x05710c203c00a0a1325436930deb4d1edf1b24ff/); ethereum `0x25d77a9850374d5781ef5b998328cafbade451a8`; ethereum `0x56fe1dc3a15efa761c4584726f0cda7f7c36a1d7`; sonic `0xa26e1e01150abc562323253c109e5b265f7578ca` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37`](./contracts/ethereum-1/0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37/); ethereum `0x7cefd682139d9c2f6b645eab75f509378e3a83b5`; sonic `0x6811c1411de6c702975d4410fee2ae62119e1749`; sonic `0xc3ff0862dc9bac0c6638e3cf449b30d5e98af153`; sonic `0xdb7cb0e0f0d374a0c3b5a1270a4ce6fce603367b` | ⚠️ Unaudited |
| HoldersAnalysis | unknown | ethereum | n/a | 4 deployments: ethereum [`0x62006cf760bf38c00a0cabf8cef9b1d85fb65345`](./contracts/ethereum-1/0x62006cf760bf38c00a0cabf8cef9b1d85fb65345/); ethereum `0x8d0e2796c7308241a3ce118d2221cd5a3e49dc01`; ethereum `0xa43f77ce428057cb9de49891e169d2e1d6193f22`; sonic `0xc24c31ebd2445535ebb4a7e67711d7e3638a2a58` | ⚠️ Unaudited |
| LoyaltyList | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e`](./contracts/ethereum-1/0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e/); sonic `0xf4254e1699035571a9d061870c677b75fb443318` | ⚠️ Unaudited |
| lstRZROFTAdapter | adapter | ethereum | n/a | [`0xd3e536636ac493b9bf1f80de59dacf120bd74652`](./contracts/ethereum-1/0xd3e536636ac493b9bf1f80de59dacf120bd74652/) | ⚠️ Unaudited |
| lstRZRSpotAggregator | token | sonic | n/a | [`0x424229c11707dbebb48d855d0fbaa8432f3f12c0`](./contracts/sonic-146/0x424229c11707dbebb48d855d0fbaa8432f3f12c0/) | ⚠️ Unaudited |
| ManualOracle4626E18 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x149f01cb92a8291fea2d81a3f9eca31c4a375200`](./contracts/ethereum-1/0x149f01cb92a8291fea2d81a3f9eca31c4a375200/); ethereum `0xa34d67567db0b2961fea30bc9ee9308825cb606c` | ⚠️ Unaudited |
| ManualOracleE18 | operational_periphery | sonic | n/a | 15 deployments: ethereum `0x61e3af572a90943022e158a39d3d4b4eb03748ca`; ethereum `0x7ca0244dfc7c4cd024e66e805c9fcaae45588357`; ethereum `0xa54088ffd9f543a33d1383ac96390db35f00c6f5`; ethereum `0xfedfeaf9223e3b9343489aa1b9d0b414e417418b`; sonic [`0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6`](./contracts/sonic-146/0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6/); sonic `0x501e10bfd3ef0f5d68c7cd520028001c5b7fe84e`; sonic `0x55c06ba2782ab623b0c9ff5164fbff50a0d65cbf`; sonic `0x5c2c88a9eb75e2b853b706c63446e3227597923f`; sonic `0x6fbd094e01c3ce638bec3b402ddc0c49bcde00c6`; sonic `0x77b98aeca6e3937873a9c4ff02c3e020cdf698ba`; sonic `0x7bb3e8a5767f3d5776da3c4270f649910a975f89`; sonic `0x8a6493b6d39c8515ca0ecdabc67e9b736ded0ac7`; sonic `0xa08c57f9a504d7de0a234d07228c5f5247438724`; sonic `0xb15a7ec9184b6945906afe016e00403d2a4fb46c`; sonic `0xd693dc5e77101ead6b3cd13fc931e5fd85bee79e` | ⚠️ Unaudited |
| MoveTreasuryPosition | operational_periphery | sonic | n/a | [`0x3568b8a04611328ff525705a18e4f5ae2677937e`](./contracts/sonic-146/0x3568b8a04611328ff525705a18e4f5ae2677937e/) | ⚠️ Unaudited |
| OracleV2CL | operational_periphery | ethereum | n/a | [`0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75`](./contracts/ethereum-1/0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75/) | ⚠️ Unaudited |
| PermissionedERC20 | token | ethereum | n/a | 10 deployments: ethereum [`0x00eec211868718f67b1d414fb8607afb7e3dea69`](./contracts/ethereum-1/0x00eec211868718f67b1d414fb8607afb7e3dea69/); ethereum `0x34abce2dd540b7ad93aa68beb3754f47273c7314`; ethereum `0x3ab51ef452a9dafa7a11505f47c0d9455e6686ce`; ethereum `0x45e5f6c194f7ab9b47dcf83f7521a6bcb726fb20`; ethereum `0x63e52e207eb293a39d16448e3b08512f60337d10`; ethereum `0x70c52a805cc47b17959990c56e45ba97c967ea14`; ethereum `0x9a7ba73c6466d22272698882c2d1a2b843b2998c`; ethereum `0xa599be93507e7e3509b14db1fd2e69e504649f16`; ethereum `0xc3a45e6a0478de0aba0c58572b825bb50d45e1c6`; ethereum `0xda51cc269b840a1a02acbd263751d9e2283df0d0` | ⚠️ Unaudited |
| PermissionedERC20Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x0df76fe19b0f9e1603df6f7381e57014dc74494f`](./contracts/ethereum-1/0x0df76fe19b0f9e1603df6f7381e57014dc74494f/); ethereum `0x26d6edd1d9b5255208ad88ef3aca47e9abf0f3c3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 4 deployments: ethereum `0x33812b28d85aaaf53e2661694199e512f3e08982`; bsc `0x9e7a07869bbb8408d50316c63c210a689a10772b`; sonic `0xd9af866add1ae78c5541a5592a693742e8bed0a2`; base [`0x07249bd92625641f9e3dba360967c3b18ee28af2`](./contracts/base-8453/0x07249bd92625641f9e3dba360967c3b18ee28af2/) | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | sonic | n/a | 6 deployments: ethereum `0x3a6ab92992b60d63fe624a2eb08a98e102b9a176`; ethereum `0x51e1e58a28b4b493ebe00b3c26c8fce55542504b`; ethereum `0x7d2ed26f30aa2a920ac0657ec735c05b9220fef4`; ethereum `0xe2fbda05bdd706750676bebfc95821a0e4bf33d0`; sonic [`0x379b70ef4af6cbb548b210730082841eeee30805`](./contracts/sonic-146/0x379b70ef4af6cbb548b210730082841eeee30805/); sonic `0x5547ed11d6b782eaf720a91344cc8d0cd444caab` | ⚠️ Unaudited |
| RebaseController | governance | ethereum | n/a | 10 deployments: ethereum [`0x01c8afb4dd61821f8ce88b3739493ffde6948095`](./contracts/ethereum-1/0x01c8afb4dd61821f8ce88b3739493ffde6948095/); ethereum `0x096bb245a46ec8ceaa7e0fdd6c0faad754b53276`; ethereum `0x18162cd345548f793ee8b8ca6651559ad1b49078`; ethereum `0x2aee5c406b3c4e06e30105f25a44d180b6db66e6`; ethereum `0x4c7e55437699cf832a9d2449c7737dbd6700eb13`; ethereum `0x92a65e26f7801755c71984b3ff0f9bad1c78b563`; sonic `0x1be068f726107cb66ab611cf18ab68bbf1147440`; sonic `0x1ebcc99cea90ad9c64829672a64efb0e7992d849`; sonic `0x2f567cef93e73e625892d563444c9cea0ea9ac54`; sonic `0xcad00c4862abcc1f76ffda846f5ccbc2de101849` | ⚠️ Unaudited |
| RZR | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`](./contracts/ethereum-1/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/); sonic [`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`](./contracts/sonic-146/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/) | ⚠️ Unaudited |
| RZROFTAdapter | adapter | sonic | n/a | 2 deployments: ethereum `0xe97493f0999f14d0f38293b55a316cf22af0b53c`; sonic [`0x6419f05d56944dd140954be8ad9907304abb2f3a`](./contracts/sonic-146/0x6419f05d56944dd140954be8ad9907304abb2f3a/) | ⚠️ Unaudited |
| RZRSpotAggregator | unknown | sonic | n/a | [`0x61720115a507d7903e5b5cdf9d4644a6b90847bb`](./contracts/sonic-146/0x61720115a507d7903e5b5cdf9d4644a6b90847bb/) | ⚠️ Unaudited |
| RZRTWAPOracle | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x81707a5ce2139df7f7d768b4d581fd82bd800609`](./contracts/sonic-146/0x81707a5ce2139df7f7d768b4d581fd82bd800609/); sonic `0xb8cdaf01385ab75464cc5b0e9441ae823dc75c99` | ⚠️ Unaudited |
| ShadowAdapter | adapter | sonic | n/a | 2 deployments: sonic [`0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3`](./contracts/sonic-146/0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3/); sonic `0x641cac894b2fa76ffd8446a3f4014e3db0e287cc` | ⚠️ Unaudited |
| ShadowLPOracleSecondary | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x41f145701a711d87ddc07e210dff6d751dcc8284`](./contracts/sonic-146/0x41f145701a711d87ddc07e210dff6d751dcc8284/); sonic `0xa1ef32e1c9c67d0509c6918a89d41096a1bf908d` | ⚠️ Unaudited |
| SpectraLPOracle | operational_periphery | sonic | n/a | 3 deployments: ethereum `0x8a3f01002570337846ea7f2d867638e3d60f9333`; sonic [`0x4825c54beeb5f4d6110126fa48025316723ebcaf`](./contracts/sonic-146/0x4825c54beeb5f4d6110126fa48025316723ebcaf/); sonic `0x69357b8880cc7b9aa89feb477216cbcd868ffb37` | ⚠️ Unaudited |
| sRZR | unknown | sonic | n/a | 3 deployments: ethereum `0x5de77ccabc90b4681e83d0588fb91a54f8f70aaf`; sonic [`0x33812b28d85aaaf53e2661694199e512f3e08982`](./contracts/sonic-146/0x33812b28d85aaaf53e2661694199e512f3e08982/); sonic `0x470ce7efcd7a259cec1b0391a99d812ae9f96710` | ⚠️ Unaudited |
| Staking4626 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc`](./contracts/ethereum-1/0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc/); ethereum `0x5aac502fbdc87622585640bd0b5f4fe2b5dfe3cc`; ethereum `0x6521fa2602d0722c6a02b009732ec0001a029f05`; sonic `0x73bc7877fccff37bbdd2c47a4924b66c607cf0e6` | ⚠️ Unaudited |
| Staking4626L2 | unknown | sonic | n/a | 2 deployments: sonic [`0x5ed69d02b9675613e411b48dc9140bd31992f7ba`](./contracts/sonic-146/0x5ed69d02b9675613e411b48dc9140bd31992f7ba/); sonic `0xa8a29393c9b998d2224781be86ce0b857c0defda` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3e4df75d89c21a76718b1613a2967a3cd9b6e802`](./contracts/ethereum-1/0x3e4df75d89c21a76718b1613a2967a3cd9b6e802/); sonic `0x7c8b59f84d040e14676a7aad90fb1c8b8d944552`; sonic `0x8ae8373006cd91ee0468e537214053d8588d2cb5` | ⚠️ Unaudited |
| TokenList | token | base | n/a | 6 deployments: ethereum `0xb68b2bed621dce656ddcc607769fb6aac3f67b5c`; bsc `0x3b3c534d22deed568813afa1b75996b8241126e0`; sonic `0x09639de0f3b1da19ed12d5dfc9b172dc932fe363`; sonic `0x1e3e7b6d9d999e1b1e957e70ed659f47d25ed9c7`; sonic `0xe8cb54f2523aba0fbd2bbd11f979be75bdfd9917`; base [`0x06f9617e604019af5e28c9e2e75f0886bbdc03ae`](./contracts/base-8453/0x06f9617e604019af5e28c9e2e75f0886bbdc03ae/) | ⚠️ Unaudited |
| TotalReservesOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7f65db983bc52ff3fa126c5f2b121fb234d7799a`](./contracts/ethereum-1/0x7f65db983bc52ff3fa126c5f2b121fb234d7799a/); ethereum `0xfeab180e36bf0bb30c02548ddfc8347d249f9159` | ⚠️ Unaudited |
| TotalSupplyOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1`](./contracts/ethereum-1/0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1/); ethereum `0x5deb69f40542d95688ef05b0abacbcf12aec79c0` | ⚠️ Unaudited |
| TwapOracleV3 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xbaeb5800f47462283b2da273a5688246fdc31fe4`](./contracts/ethereum-1/0xbaeb5800f47462283b2da273a5688246fdc31fe4/); ethereum `0xe90a0ef0e246e284a0c7a51d8ee0429dba22537a` | ⚠️ Unaudited |
| UnbackedAccounting | unknown | sonic | n/a | [`0x44421a71a55b684c11b85880b61377df6598f423`](./contracts/sonic-146/0x44421a71a55b684c11b85880b61377df6598f423/) | ⚠️ Unaudited |
| UniV2LPOracle | operational_periphery | sonic | n/a | 12 deployments: ethereum `0x5d4dcae73261c02ae1bffc24056bc809608f5137`; sonic [`0x1ec695a8571140dfb35b28769b60ca7d8ea84951`](./contracts/sonic-146/0x1ec695a8571140dfb35b28769b60ca7d8ea84951/); sonic `0x1fc91c7b63e84696e62edf04787a9ce64ffea5bc`; sonic `0x273ac3d92ee85c8c7319befeb9c79a5a4cc8f4e0`; sonic `0x4cbe17b6304460a76bc227831ad62d89fbfb499e`; sonic `0x5e7c3efb5ba307ec9f7e2a75b0470101c5e9ecd9`; sonic `0x8478a89fefeb978ed2c6bb074b593ba2c34ebf6f`; sonic `0x91cac1a184dc3ba3a342fe8c9b390ef2ee73b8ce`; sonic `0xb059938764f5cbdb7eadc7c4a80fc2900c3953b0`; sonic `0xb0b59bf818d349eeb2c6efb853d441a66ce37f00`; sonic `0xb17878140f6de300fd57e2637d797dde5918e03d`; sonic `0xef6eb7704050f44cbccf43cda6df39b1d84d85aa` | ⚠️ Unaudited |
| UniV4LPOracle | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x097a20fc1f4e604371ec85eaca10adaf77246c59`](./contracts/ethereum-1/0x097a20fc1f4e604371ec85eaca10adaf77246c59/); ethereum `0x1e884f830afba3e8a11e43a471a11bc2a4021571`; ethereum `0xb0c7b4330af8d66a4529239658d739018d0314d9` | ⚠️ Unaudited |
| UniV4LPPosOracle | operational_periphery | ethereum | n/a | [`0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f`](./contracts/ethereum-1/0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f/) | ⚠️ Unaudited |
| UniV4LPSpotOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4e91f8334833587c542e40d6f9a4c6590bb289d6`](./contracts/ethereum-1/0x4e91f8334833587c542e40d6f9a4c6590bb289d6/); ethereum `0x9802886903dba085fe6d7f62d866536ab2d287bf` | ⚠️ Unaudited |
| USD69Treasury | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8`](./contracts/ethereum-1/0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8/); ethereum `0xf83b913f7c1c396d454922d8af9423894b395a21` | ⚠️ Unaudited |
| USDTreasury | operational_periphery | ethereum | n/a | [`0xa7085039fdba2c3c30af5dcc41465da027e85530`](./contracts/ethereum-1/0xa7085039fdba2c3c30af5dcc41465da027e85530/) | ⚠️ Unaudited |
| UserRoleChecker | unknown | sonic | n/a | 6 deployments: ethereum `0x1ae9d2a791bbc41cd3e756d009dd95b6f6226bd4`; ethereum `0x1b5b6730b34d067176e89037852a0daf75e87af8`; ethereum `0xa4ca1692cf1c93b8a4054eb6f874154bb2be2d77`; ethereum `0xdb47274592645a209ac1bc21c8b9d2e3140372e3`; ethereum `0xfe64ec37394b7625aed1f0b24cfd165aef233d92`; sonic [`0x11d3ada3bc874500c1e4e15e79c4b924edde3b21`](./contracts/sonic-146/0x11d3ada3bc874500c1e4e15e79c4b924edde3b21/) | ⚠️ Unaudited |
| YieldLogic | unknown | sonic | n/a | 3 deployments: ethereum `0x739f4941b06ab58feb2415f6b9d4615308dc1b2c`; sonic [`0x53bdc57b2da05cd6047428b1e0fa573aa22662cd`](./contracts/sonic-146/0x53bdc57b2da05cd6047428b1e0fa573aa22662cd/); sonic `0xc47d5010064987d17f825557bf85b4eac3da2b4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x249219266a026323fbefdc6b0b494230666ac924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8977f19f143687d0f3c9cb2bbbc9396211bee05d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13584e2181e0cdf0dd413ef78f3d00585274fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3751859cae1c3563b05660543632ced3b9f7d7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf96a878c78510f3ac81f69cb98c203c09d5aea0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe94637dc4a2815693df9e8f9a06a4e92be1f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d3e89c1007b0861099c0adcebe682c94c3116f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb8922afb956397bd30322b1e4d648f1d92bb874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x397c754691db1d66b668d85ef9adbcb5937d0b0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b1fc5bf99e8700f5fbb33d535e76c475e47ea21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95186ff046c2eb1dd0c79bd04d77acb0ef2f8383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd055895cdf0b8ed7a5c9e53532988c03053f5513` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe10abdfa3522bd0c369d92b0bd4e8298edfe885a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3faa8c264e41058e771f1a4746a2e79337b404` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00cf23c0af5f8f652394d211f4f20b1146156a38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1426ad004ad6ce86f89e06bcabe5a00c1b898db3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x14df434e43cec4981b48f67aa62dc149669f94cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17b58ab2585e6d46bc5ff27202c89d4faa1b5392` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ae19f6c617065d95f3541f80566fea11d29ad3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34648a55fd54206bdedb6b811f6ea14243c733ca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5754067c71fbccb6287bf49b2dcd446b085f52a1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x60b4e24339e24f1324c219450a677997d479916b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67a2b9ace404051346212ee9ec3752bd0d8c96fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7198f22775a7530b51ef5b90789fac5a3aa81426` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8c7f6be8252049771ae8d159542d49b6e0fa6b89` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0946a96f285be8249202fbad5c53423749d5a69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb3e63498d81a9b3806de6da5d8f7ca4ec6361c32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xce78cad42c701d5369b7376a558302b433e57412` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd57e1cbc727b4473b29458acf1e6a176c68462f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf6a15f4acfffd52ee6aba08ab6c453da33283229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe377bf8d0479ef337cc4c6bf6b3cb4459cbb23c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-21-halborn.pdf](https://github.com/rezervemoney/code/blob/main/audits/2025-06-21-halborn.pdf) | Halborn | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-OlympusDAO-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OlympusDAO-v1.0.pdf) | PeckShield | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/olympus-dao-protocol-v2](https://omniscia.io/reports/olympus-dao-protocol-v2) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x20bee53adb73440c7d4f9c9a015997ff548ed4c2`](./contracts/sonic-146/0x20bee53adb73440c7d4f9c9a015997ff548ed4c2/) | Adapter4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec`](./contracts/sonic-146/0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec/) | Adapter4626OracleModified | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19e771531621b9132b93dcefcef3d048650827d3`](./contracts/sonic-146/0x19e771531621b9132b93dcefcef3d048650827d3/) | AggWithStalenessOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x07249bd92625641f9e3dba360967c3b18ee28af2`](./contracts/sonic-146/0x07249bd92625641f9e3dba360967c3b18ee28af2/) | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x401d83457951ef2c195d56e7d4a8f2d72c43bde8`](./contracts/sonic-146/0x401d83457951ef2c195d56e7d4a8f2d72c43bde8/) | AppBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b`](./contracts/ethereum-1/0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b/) | AppBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3`](./contracts/ethereum-1/0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3/) | AppConvertibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13eea2582b9e3964a260452e08f580ce199bb056`](./contracts/ethereum-1/0x13eea2582b9e3964a260452e08f580ce199bb056/) | AppOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220774755570147101bdcd995386f8f27654f1fc`](./contracts/ethereum-1/0x220774755570147101bdcd995386f8f27654f1fc/) | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2d707598b1541a6096adaedefdefdd5f33f1194e`](./contracts/sonic-146/0x2d707598b1541a6096adaedefdefdd5f33f1194e/) | AppProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x076d210be0faf9df327f286822c93acfe38ef95b`](./contracts/sonic-146/0x076d210be0faf9df327f286822c93acfe38ef95b/) | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a`](./contracts/sonic-146/0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a/) | AppStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x926680fac98c264f11f1d61849354f927a59606a`](./contracts/ethereum-1/0x926680fac98c264f11f1d61849354f927a59606a/) | AppStakingMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7`](./contracts/sonic-146/0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7/) | AppTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03658cbe90390308b2fe946b6feaa9d2e3150ebf`](./contracts/sonic-146/0x03658cbe90390308b2fe946b6feaa9d2e3150ebf/) | AppUIHelperRead | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1`](./contracts/sonic-146/0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1/) | AppUIHelperWrite | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df3004635eebd70644ae2c8e11e604d86f2fdcb`](./contracts/ethereum-1/0x3df3004635eebd70644ae2c8e11e604d86f2fdcb/) | BeaconOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc46e157ef92cde37c0f8044b65d892cbcdacaf10`](./contracts/ethereum-1/0xc46e157ef92cde37c0f8044b65d892cbcdacaf10/) | BeaconOracleV2CL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5369135d0f9e661d7647d3b24b906d5fe9d4839c`](./contracts/sonic-146/0x5369135d0f9e661d7647d3b24b906d5fe9d4839c/) | BlackholeLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa597e758b25bd077dbab880c712f49df170b803c`](./contracts/ethereum-1/0xa597e758b25bd077dbab880c712f49df170b803c/) | BlankProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a41ec2c6477fd7943397790ae5fc3a09876b14a`](./contracts/ethereum-1/0x3a41ec2c6477fd7943397790ae5fc3a09876b14a/) | BoostedBalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507427db12766d70445c85e683efd30143bf99df`](./contracts/ethereum-1/0x507427db12766d70445c85e683efd30143bf99df/) | BridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f996129f35c456f2d4993c66382b2cb02fa879`](./contracts/ethereum-1/0x53f996129f35c456f2d4993c66382b2cb02fa879/) | BridgeL1Reader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7`](./contracts/sonic-146/0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7/) | BridgeL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0082191c9cb127f69411ca49286a7c5ced67af7a`](./contracts/sonic-146/0x0082191c9cb127f69411ca49286a7c5ced67af7a/) | BridgeL2Reader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f0a4803811db8bf12d92e3322343d5e6e790b2b`](./contracts/ethereum-1/0x2f0a4803811db8bf12d92e3322343d5e6e790b2b/) | BridgeUpdateExecutor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b`](./contracts/sonic-146/0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b/) | CappedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4`](./contracts/sonic-146/0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9`](./contracts/ethereum-1/0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9/) | DiaAdapterOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114fd46ca2e90ca723f578ffdb76023e27cc77ee`](./contracts/ethereum-1/0x114fd46ca2e90ca723f578ffdb76023e27cc77ee/) | DiaAdapterOracleCapped | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9`](./contracts/ethereum-1/0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9/) | ERC4626RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57e67762c06b4ba665c6d93eac4d74bfb3906524`](./contracts/ethereum-1/0x57e67762c06b4ba665c6d93eac4d74bfb3906524/) | Euler4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad`](./contracts/ethereum-1/0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05710c203c00a0a1325436930deb4d1edf1b24ff`](./contracts/ethereum-1/0x05710c203c00a0a1325436930deb4d1edf1b24ff/) | FixedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37`](./contracts/ethereum-1/0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62006cf760bf38c00a0cabf8cef9b1d85fb65345`](./contracts/ethereum-1/0x62006cf760bf38c00a0cabf8cef9b1d85fb65345/) | HoldersAnalysis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e`](./contracts/ethereum-1/0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e/) | LoyaltyList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3e536636ac493b9bf1f80de59dacf120bd74652`](./contracts/ethereum-1/0xd3e536636ac493b9bf1f80de59dacf120bd74652/) | lstRZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x424229c11707dbebb48d855d0fbaa8432f3f12c0`](./contracts/sonic-146/0x424229c11707dbebb48d855d0fbaa8432f3f12c0/) | lstRZRSpotAggregator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x149f01cb92a8291fea2d81a3f9eca31c4a375200`](./contracts/ethereum-1/0x149f01cb92a8291fea2d81a3f9eca31c4a375200/) | ManualOracle4626E18 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6`](./contracts/sonic-146/0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6/) | ManualOracleE18 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3568b8a04611328ff525705a18e4f5ae2677937e`](./contracts/sonic-146/0x3568b8a04611328ff525705a18e4f5ae2677937e/) | MoveTreasuryPosition | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75`](./contracts/ethereum-1/0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75/) | OracleV2CL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00eec211868718f67b1d414fb8607afb7e3dea69`](./contracts/ethereum-1/0x00eec211868718f67b1d414fb8607afb7e3dea69/) | PermissionedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df76fe19b0f9e1603df6f7381e57014dc74494f`](./contracts/ethereum-1/0x0df76fe19b0f9e1603df6f7381e57014dc74494f/) | PermissionedERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x379b70ef4af6cbb548b210730082841eeee30805`](./contracts/sonic-146/0x379b70ef4af6cbb548b210730082841eeee30805/) | RateProviderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c8afb4dd61821f8ce88b3739493ffde6948095`](./contracts/ethereum-1/0x01c8afb4dd61821f8ce88b3739493ffde6948095/) | RebaseController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`](./contracts/ethereum-1/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/) | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6419f05d56944dd140954be8ad9907304abb2f3a`](./contracts/sonic-146/0x6419f05d56944dd140954be8ad9907304abb2f3a/) | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61720115a507d7903e5b5cdf9d4644a6b90847bb`](./contracts/sonic-146/0x61720115a507d7903e5b5cdf9d4644a6b90847bb/) | RZRSpotAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x81707a5ce2139df7f7d768b4d581fd82bd800609`](./contracts/sonic-146/0x81707a5ce2139df7f7d768b4d581fd82bd800609/) | RZRTWAPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3`](./contracts/sonic-146/0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3/) | ShadowAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x41f145701a711d87ddc07e210dff6d751dcc8284`](./contracts/sonic-146/0x41f145701a711d87ddc07e210dff6d751dcc8284/) | ShadowLPOracleSecondary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4825c54beeb5f4d6110126fa48025316723ebcaf`](./contracts/sonic-146/0x4825c54beeb5f4d6110126fa48025316723ebcaf/) | SpectraLPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33812b28d85aaaf53e2661694199e512f3e08982`](./contracts/sonic-146/0x33812b28d85aaaf53e2661694199e512f3e08982/) | sRZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc`](./contracts/ethereum-1/0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc/) | Staking4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ed69d02b9675613e411b48dc9140bd31992f7ba`](./contracts/sonic-146/0x5ed69d02b9675613e411b48dc9140bd31992f7ba/) | Staking4626L2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e4df75d89c21a76718b1613a2967a3cd9b6e802`](./contracts/ethereum-1/0x3e4df75d89c21a76718b1613a2967a3cd9b6e802/) | StakingDistributionLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06f9617e604019af5e28c9e2e75f0886bbdc03ae`](./contracts/base-8453/0x06f9617e604019af5e28c9e2e75f0886bbdc03ae/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f65db983bc52ff3fa126c5f2b121fb234d7799a`](./contracts/ethereum-1/0x7f65db983bc52ff3fa126c5f2b121fb234d7799a/) | TotalReservesOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1`](./contracts/ethereum-1/0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1/) | TotalSupplyOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaeb5800f47462283b2da273a5688246fdc31fe4`](./contracts/ethereum-1/0xbaeb5800f47462283b2da273a5688246fdc31fe4/) | TwapOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x44421a71a55b684c11b85880b61377df6598f423`](./contracts/sonic-146/0x44421a71a55b684c11b85880b61377df6598f423/) | UnbackedAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ec695a8571140dfb35b28769b60ca7d8ea84951`](./contracts/sonic-146/0x1ec695a8571140dfb35b28769b60ca7d8ea84951/) | UniV2LPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097a20fc1f4e604371ec85eaca10adaf77246c59`](./contracts/ethereum-1/0x097a20fc1f4e604371ec85eaca10adaf77246c59/) | UniV4LPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f`](./contracts/ethereum-1/0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f/) | UniV4LPPosOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e91f8334833587c542e40d6f9a4c6590bb289d6`](./contracts/ethereum-1/0x4e91f8334833587c542e40d6f9a4c6590bb289d6/) | UniV4LPSpotOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8`](./contracts/ethereum-1/0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8/) | USD69Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7085039fdba2c3c30af5dcc41465da027e85530`](./contracts/ethereum-1/0xa7085039fdba2c3c30af5dcc41465da027e85530/) | USDTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11d3ada3bc874500c1e4e15e79c4b924edde3b21`](./contracts/sonic-146/0x11d3ada3bc874500c1e4e15e79c4b924edde3b21/) | UserRoleChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x53bdc57b2da05cd6047428b1e0fa573aa22662cd`](./contracts/sonic-146/0x53bdc57b2da05cd6047428b1e0fa573aa22662cd/) | YieldLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [2809] PeckShield-Audit-Report-OlympusDAO-v1.0.pdf
- [2810] omniscia.io/reports/olympus-dao-protocol-v2

Fork inheritance lineage and inherited audits are included when available.
