# Agentic Audit Brief: ZeroSwap

## Project Overview

- Project: ZeroSwap (`zeroswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.888Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 160 unique implementations (161 raw deployments)
- DeFi Llama TVL: $195.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 169; live-surface contracts included: 161 (1 live, 160 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 160 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 158
- Unique implementations: 160
- Raw deployments: 161
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WorkquestStaking | unknown | ethereum | n/a | [`0x6ce9f9e6b011a088ed5bb5b28a97560654bca196`](./contracts/ethereum-1/0x6ce9f9e6b011a088ed5bb5b28a97560654bca196/) | ⚠️ Unaudited |
| ZeroSwapToken | token | ethereum | n/a | [`0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5`](./contracts/ethereum-1/0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (158)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa4751eaa89c5d6ff61384766268cabf25acd1011) | unknown | ethereum | n/a | 2 deployments: ethereum `0xc8f6d7aa75ac9b4cad8452fbd547348be504ac63`; ethereum `0xedf822c90d62ac0557f8c4925725a2d6d6f17769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01544d93f173c945f1d2431d6c47245c0646437a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cf925ebb395a6bdfe929cbab7da77d8608434d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d0060fec39c2a96fbf3da01d90240b3640f4226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d2daa37bec24dff7abf7dcdd6f319c16506c31f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d3c21cae20e252da061d6e47bd3af5301cdcf32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d83dea1f7dfe1fb71c293b830bf1dcb2e124d5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ef0f3aa9dece3a95d9af8e67a6e6fa88d30ab48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f7fc13d4b6288426b6b942a48155ccac41e7ae7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fa2e3d41a43fd11365f2164d37f6dbbdf9c125b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b1dfd2a63e15f8d2a508802939e050f11f3d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c258bc7f97bc56b3d058682e3781cbb50fa736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12ca64fb2735b127466aa1d78cba9749ca90d013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12d9cde8583e466369cd65538fc1d82c303eb677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1369642a6588af67deafb1d8490cff095d98cae1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14c7c1c46ef26d2e47e0dbd47205398373d9326f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a0b1d639c950acd9e7da1139532788abd68b3fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ba9a4627d86507ae8411c997a50d8322f381d07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bbe454f4ec814bfdffc3d0209dfb9092433a2d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ef8baf2dfb0ac6936f101fa3257f7aa14cae132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f40ed5d3102a912d313391a69877672c7bdc3d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x226d61998916bbb42ad8f4cbeee0e0bf8f53bad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2414ea5d2fee7cb61fda7fddb108fd9ca3918506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x284c5934055635f067e7e553c740c3216850c88e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28fc3f7efd8c61100338a7d4d382b01628f4fcc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29da2e4df536eff730b654e036a2bb05060d1af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a82851993ccdd7eefe19afc6f2742c8b34c3a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b09ceef80c3203bbdb60692396d8b4b06fa8acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdc08a8747861b3826666c756a8ea81f47afc23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bf61d85d17eaa3c1534a87e0cd1dee99b4deac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c496a6fb30a28d474e0b8a4fecf0377d2a194a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cf462b68fb95f5d6bf04053f0f9ea52df9d418b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32860fca0da34cad7cff0bdfce3fdcfccd10d5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37598e928d8167d5db0e57b2f34e7fa838256831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37e457d694d80fc5076083e0361577080ef8d880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38a5d07543d79e35b4b083064f31e4a0d5ba6b10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3bc11e71aefc5672c7f738a73028b0acf1267d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d6c04a927ad5e6b0b8e4afd1cf2db6acaedaf07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ed410b075774babff6fc93e3ee14a8f8eba5c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f7c5afe78a12c298064fe9774e6affb7f2fbe26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fde81332fbb94aecd9675c2ff38c443f75e60d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4066f78e827fccaeeb8a6f488394d68e2966885d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x417229eac55d93a9063ed00f132d5367edbd0943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a9422bbdfdc5156779db7f69c5d89992357d60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x444fbc47398220cd253d9d59e2c237a25f158878` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4632aa5cc194682beeebd986a89870bb5031d00a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4681f6b1390742de23e6336b32f9ee3ed93410e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471fe8263c9c5261151e5a628ea286ae66a2250b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f7b754a8bcd244dd4928e51b9c6e446042f076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48fe9ba16cd0f02ee7dfd19937befd0ed94a9d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496218220d79b9ccdef5ffa03a36d3e9774f6536` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b87df0c2ddd3ee55a2bb55187c2619dd5e9ea79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d5be2b13192b09911b2f67bd1aee9ec73e60571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f60134b7b0bb2a414ba8fc7d8e2d8ee7170450a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x515684f824475cfe1a7205e1f318b1988f149d61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545224c89abf593f546f6fd9e30fff7566b8c354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54843d7b115c844d28b671882d5ce59b6a417598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57e95289e36e077ba1abea55e9e5909b92a96ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58200964f4b69761de941a552ecac8d03b4eb4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58d316c68717468b485ad54223613035ce970244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593b0d7bc548251a03dec4ff21535a94f18a9ca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a71255065d77d40823765c55930ec80137a5659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b93271939b416e2959c3f4dc2a6662ffbdcd839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2653d87a7a0f7951aa7dfdec7cbac8cb28f35b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c346f059852be13941c255f81bd2d72e9e83c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c442aa5097499e03985e2fd120fbe9e3e7e12b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d94894ca59457b83532ca0e916863716fb369ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f48f168a671a3a220d3cfe80123d82a292e815f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6048c7cd60c7200d7039a02c23c994ece3a45c12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62a503524e8843e6660096c5f1ff975c0038b5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63e2070949ff85fca06ed23239e5b5b4b75ff1ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64188b7aac92227aad73cfecf8d79952a6db5558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x652addd9310146134e0d9da24a4d7e1ed6aa820a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6743c6a7d0753c30f678533923270f492ac65e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b139724fd3494a1064a331bed4bc9ad8fa52b70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c8c0151da6d7ae583278b89e3f90647105c102d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1228fc05598c98972109f57bcd51d6fa6f4899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d2dc8be771bb09a60b8210debe0b789df61d9c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e7357880190c8097773a5b7e987cd4032bb415f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f28c05b288a129780435db79daa5ffe69f474e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ff067be99a0d25b92eeeb8edffda2298b0af690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70fda3943f467160381cc890f70200f8c78a1825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a2c38bfe22d437c75a4b09f354b6719c94d756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b81acc8a2802eb01ddae7d7c66a1a81a450ee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x814aad913429c42602c066e4752c16c03e21eeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8735534f47b76153d8a721555a6ce1145c583e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877554933b644083c8695298d8f3252f3be7839c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbae24a384c5a31dba3f439135efd5fe1da682c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7b9f19bbcded5e190b162a3b4ce683d66e6433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93049601f87f8c4ea26ef70fed6d76acfe130ed2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x932fd49fdec67ebba886d1150757b67f1638f293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94343d7d76cc0eb41a64f7b052daa4b3feb0e820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950ff797d1c6643a58b2a06c39b9a9fa11338fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9584e802adc2c338cd501492f2fdca99bd58db5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x962372d1682aab9bf59f59af4ecbd3f896067dee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9699477524359d562306d6531000b2788bbc3019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96be2bd86dd4ff53a30cfb45ce13442cfca71043` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1bd268df90da6375524d9b95639be9a7796d52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a6dea75345b4ff1b6876048770abdb40efb2035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad676e55f8c8f2a6fd0ba37f6a167f35831972d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aec329c4dbe05a561d34ec1a6602f876baa80a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9afc614a6610ff469f95e7ea17c627642c0d9c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b87d451373b1d12268d5cf28a324f837ddfae1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b915a7c715190ac327625ad0beb418599870483` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d312d786aa42eed86e13c3689c96d0e11d383c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da2a9677e2e3398b795c136ef72dd6857e67833` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dd357c6da01e033bb865f29c1c47f4c8e71f3bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa02313de9cd098b1a4e414eda375f08d7f1feaf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18382ad91586f96646cd832bdd6ca842c9f8724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1952a7319ff9e9553ea0bc133e174c474292a17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3aaf8b2fc560086765e3014d39ceb8aeda106f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3fae40bc38d44c26af576b4a3ee9e903e1dbc4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa508c66bfa266b3e0b1971d8a2cb84c51c904f02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6947c0fa24499eea25c77f994de753d44676ee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e5b4320606a0eadd26c970eed0bfe3d4b1ad6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8fa65bbd9c273d81bfc7cf6147c1e30e8109957` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9d57265097ccf300b61be607b9bf40fe6ac3e1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa76538b9ba491d71ab5ea2e20c026a16fa79216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa513233a12c33008ad3a33d4ed261eb9c20e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf0d6e61885f95c1ee546ef127c692a30ed1f8a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafd626c29a9c1a0a7416f0b26277a52095280ede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdbe72690bec97a149c634ce3058ef92c7a0c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1226636a99af81a49845eeec10dab6f812285e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a76feb047d521947303eaf9ff0af2169a06ebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb555d63d79fcdbfc35be9e9d2e0c7f9d58c76c7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6bcf15933c90d979fa962a91825f9f45177abc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6ccaf39d9b4d9ac1a9434fa526e8ef42ec8632a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92e40c7d49255acc8febb24e210a07765563fa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9c876838ba3365e25529c5ae7d94e316ffa81aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba77b7b331fc84ef2488262dd339c0165327058b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe985cc8f6956b4be47ab6ec2c47f31ac5de2e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc4173f6a7fe946dd6fc8e611dd25155b9d39de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc07ed9da84d60327d32f7db66b9c0a285bd8a9be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc17f8aa9a48c72f81ca8c1d485f968dd88718ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1e9ce3f8099bc77245378280917a6e7616f725b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63e3657e7c30dc5a8e221b3c3d3d23bf42beb5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc99cc9ea891ea141895d80a6b20167cc53e36238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb6a588caf01985d176c8d3fe66e5bf956900abb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc7854f851e67684c6c55eaa7b2dd0d6be252ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38f3ce960b1dfd4cce8fa714bcc585c344412dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd701c1807e71218cf68297fb6b28173e85ffbe5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9b301bc34bfeae908cd9d04a26abf4bc6a59898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda1a4bbf9839732d1ee9ddfbe56b59ac41ba7368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdae4751a1e8d1a8218695461dcd6362b318180e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0b3222b515be0ee90daba8d6be256c12fabcbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd1b74bc40da0e132c3d83da37e0700976fb20c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd9ea031bfd5d513c2aaa749d042f6a19fb3a823` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe084a6bb51897e20cad02f74592847fab64bae7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe424c58ffca62e011bef17d95cfbf96335416ae5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5ff6a8010d949b63f8c1af7d4c8f3e0e9d50a5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeadf8a28bb7b8269dcedbafefb0a7317ee2250f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebff93561f9a92f1d2368202857167073a82ad08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d14cac9db4fd5461b63cfda97606f5b51bb12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85acd6a98c4f102a64d9aacf12e3a21e91ae154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e3f500d97e2c9cf54d39d9ac96d8db46908f79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa8d9c8826263539624fc57a8d3b539dcfd94bb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacdfb3013bf0c74176161a1d913613afea0078e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfda24cdfb7efa5fa479d5e100885362c4d0d88b0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zeroswap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/October/Zeroswap.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6ce9f9e6b011a088ed5bb5b28a97560654bca196`](./contracts/ethereum-1/0x6ce9f9e6b011a088ed5bb5b28a97560654bca196/) | WorkquestStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5`](./contracts/ethereum-1/0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5/) | ZeroSwapToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 158 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14173] Zeroswap.pdf

Fork inheritance lineage and inherited audits are included when available.
