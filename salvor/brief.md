# Agentic Audit Brief: Salvor

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.898Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: avalanche, base
- Contract surface: 267 unique implementations (540 raw deployments)
- DeFi Llama TVL: $542,237.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 126 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 26 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (erc20burnable, erc20permit, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 619; live-surface contracts included: 535 (235 live, 300 unknown).
- Excluded by liveness: 84 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/95 (6.3%)
- Deployed-live implementations: 96 of 267 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/158
- Verified + Unaudited implementations: 152
- Verified by bytecode match: 0
- Unverified implementations: 109
- Unique implementations: 267
- Raw deployments: 540
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 3.8% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrations | unknown | avalanche | n/a | 7 deployments: avalanche [`0x49c3f341106d087490fb6cbad749179dab7ef110`](./contracts/avalanche-43114/0x49c3f341106d087490fb6cbad749179dab7ef110/); avalanche `0x4c8607cf2213f5b86640c09391481801f56c5f40`; avalanche `0x7276e6bd2113d5d58596865a444e68ef81a3edea`; avalanche `0xa457010c6ce2b25a29093ba30914cb008ae33fcd`; avalanche `0xcc4db7943215a3c219055e9071988a9c3908cd10`; avalanche `0xe9affc054f4066a9acaef1f8bea564e5ab3fbbc1`; avalanche `0xf93b7ab02ee9f3cd7d0478352c2d8d7d095cc4a8` | ✅ Audited |
| PaymentManager | unknown | base | n/a | [`0xef4364fe4487353df46eb7c811d4fac78b856c7f`](./contracts/base-8453/0xef4364fe4487353df46eb7c811d4fac78b856c7f/) | ✅ Audited |
| PaymentManager | unknown | avalanche | n/a | 2 deployments: base `0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab`; avalanche [`0x174b0d6b0f4cc58e5c7a223841594052c741df6a`](./contracts/avalanche-43114/0x174b0d6b0f4cc58e5c7a223841594052c741df6a/) | ✅ Audited |
| SalvorGovernanceToken | token | avalanche | n/a | [`0xf99516bc189af00ff8effd5a1f2295b67d70a90e`](./contracts/avalanche-43114/0xf99516bc189af00ff8effd5a1f2295b67d70a90e/) | ✅ Audited |
| VeArt | unknown | avalanche | n/a | [`0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa`](./contracts/avalanche-43114/0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa/) | ✅ Audited |
| Vesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x93640f79cca740bdaaec37cd0eaf553ae5d7dcc5`](./contracts/avalanche-43114/0x93640f79cca740bdaaec37cd0eaf553ae5d7dcc5/); avalanche `0xefac81f709d314604a7daee9ca234da978c2be20` | ✅ Audited |

### ⚠️ Verified + Unaudited (152)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirDropGEC | unknown | avalanche | n/a | 3 deployments: avalanche [`0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59`](./contracts/avalanche-43114/0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59/); avalanche `0xa8700f23b4e13006ea0acd420d51a17400d4941e`; avalanche `0xc0ae43589e7b27cab0c1c56906a3801838006ca4` | ⚠️ Unaudited |
| AntTokenV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5424f5896d80a4f333b35980d15856a34e43e32c`](./contracts/avalanche-43114/0x5424f5896d80a4f333b35980d15856a34e43e32c/); avalanche `0xad25c722994cdabfe40f34548dfa1b0ee14e1262` | ⚠️ Unaudited |
| ApexMaker | unknown | avalanche | n/a | [`0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ⚠️ Unaudited |
| ApexMakerV2 | unknown | avalanche | n/a | [`0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ⚠️ Unaudited |
| ApexPremier | unknown | avalanche | n/a | [`0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ⚠️ Unaudited |
| ApexPremierAccess | unknown | avalanche | n/a | [`0x734d8cfeccd8485df397719e7128ca153dd38f79`](./contracts/avalanche-43114/0x734d8cfeccd8485df397719e7128ca153dd38f79/) | ⚠️ Unaudited |
| ApexPremierFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f`](./contracts/avalanche-43114/0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f/); avalanche `0xe3593df71edd22e8857df0d738db0adfb28f8cfa` | ⚠️ Unaudited |
| ArtifactHardwareProvider | unknown | avalanche | n/a | [`0xc095ece2c0f315381b4bf6de169fbc219b24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ⚠️ Unaudited |
| ArtMarketplace | unknown | avalanche | n/a | [`0x64813357113500b9829fd47956e6fa58ebb56f66`](./contracts/avalanche-43114/0x64813357113500b9829fd47956e6fa58ebb56f66/) | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x37686293c9423a1c5a171aada28ab5c9086b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x456a6e49409f137138e2e0255368a3a37876e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/); avalanche `0xf451171872e9395021316e44d9f5475c90e27848` | ⚠️ Unaudited |
| BellumToken | token | avalanche | n/a | 4 deployments: avalanche [`0x03f77458e1eb9fa72b8186b573e40b106442f155`](./contracts/avalanche-43114/0x03f77458e1eb9fa72b8186b573e40b106442f155/); avalanche `0x4a5bb433132b7e7f75d6a9a3e4136bb85ce6e4d5`; avalanche `0x6ec18092ee47fcc8f1fe15899156ff20c64ab3d7`; avalanche `0xb44b645b5058f7e393f3ae6af58a4cef67006196` | ⚠️ Unaudited |
| BIFKN314 | unknown | avalanche | n/a | 15 deployments: avalanche [`0x1d27713179d379416a22cd28331ccbd19f0e1192`](./contracts/avalanche-43114/0x1d27713179d379416a22cd28331ccbd19f0e1192/); avalanche `0x301946ca3aee999441070816b1d10e9ee437cd6e`; avalanche `0x666a53d7025136be4aa651af20fc5245ff2d1909`; avalanche `0x6aba46fed16d4415ae741f858da7e4975dd788eb`; avalanche `0x80108981f046846b97ab14a3e1b89adf0d8b89e9`; avalanche `0x958704931f5a1dbb6df3c548ed68b9161f486a92`; avalanche `0xa0de70c1240f12a15ada66d408738b21c1ce0a82`; avalanche `0xa558944a38baf2514bd432e62f151375f48d06d1`; avalanche `0xbc47f3bd40635489dbe77600d21c19fe4a09890b`; avalanche `0xc6f99208c411ca9cee00d6448711e09a1d05d89b`; avalanche `0xcbcc3995773c8b54f3302f0a399722014b79d338`; avalanche `0xcffb862299f971121e731422090e318f529363dd`; avalanche `0xd74fd3133bdcac78c437764654343131a7eab9e7`; avalanche `0xe0ee1acf6a85b0c63c20077c6b05d43920ef035e`; avalanche `0xfe47b6f358825fda93ffeee245d096c60ed529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | avalanche | n/a | 3 deployments: avalanche [`0x3d193de151f8e4e3ce1c4cb2977f806663106a87`](./contracts/avalanche-43114/0x3d193de151f8e4e3ce1c4cb2977f806663106a87/); avalanche `0x96a97d36fc007075e300399da892f5cedfdab0f0`; avalanche `0xad22037f1371741fb01bc3ef42cd226f978bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2`](./contracts/avalanche-43114/0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2/); avalanche `0xb392246ffcd4ca16f739f7037704c26fd271e8c9` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 5 deployments: avalanche [`0x4ecd8bdc617d68789ac2afefbab5d24e2859f450`](./contracts/avalanche-43114/0x4ecd8bdc617d68789ac2afefbab5d24e2859f450/); avalanche `0x576fbda4f271551d285b6a7006cc371157da622b`; avalanche `0x58dd219e2ffdcba8dbed71087ff9f9833799eded`; avalanche `0xabfbfed6fa208cf637b1078399abf5b37f345e9a`; avalanche `0xeed4362c7fa7962937b85af811dec81678afb465` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4f70785606938b4ba963feea1bf74a1c80eaf769`](./contracts/avalanche-43114/0x4f70785606938b4ba963feea1bf74a1c80eaf769/); avalanche `0x72cf3a3890b5e5a23539b818aabb18983b7cd315` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x754a0c42c35562ee7a41eb824d14bc1259820f01`](./contracts/avalanche-43114/0x754a0c42c35562ee7a41eb824d14bc1259820f01/); avalanche `0xdcaecebc332c76121af6e89f444630fd3e81f99a` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | avalanche | n/a | [`0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5`](./contracts/avalanche-43114/0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5/) | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2af654340459b0a294f9b441b374e64b9a038306`](./contracts/avalanche-43114/0x2af654340459b0a294f9b441b374e64b9a038306/); avalanche `0xa56b59edcf91bb5a42e14cbb98b95b83858ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | avalanche | n/a | [`0x3aa19b923e93850b093d5c48c4971de0042bc262`](./contracts/avalanche-43114/0x3aa19b923e93850b093d5c48c4971de0042bc262/) | ⚠️ Unaudited |
| BIFKN314Locker | unknown | avalanche | n/a | [`0xdfb8803797b11c64cd8520b611816924ce845802`](./contracts/avalanche-43114/0xdfb8803797b11c64cd8520b611816924ce845802/) | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | avalanche | n/a | 31 deployments: avalanche [`0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/); avalanche `0x19b7cc0af65bd5557c24307e326ed4dfb07f4fed`; avalanche `0x1b923f8b47b4f4b15251cc48c8749745d53b1516`; avalanche `0x1c7b3fc72018ad4688ae7a20f949e8c681aad39a`; avalanche `0x1ff575d0f6600b8b64e3d8e03d379960db914d2f`; avalanche `0x2aaad91c486488ac0e59777f6800305037974761`; avalanche `0x2e3ac2e6bcfcfb120d3defa69bbf57025be536fb`; avalanche `0x463a7e39898c7c8aa893d62fa27da5057ac75e9a`; avalanche `0x490bf7bac47c7a9fe0a1f9eb543e44e32b02e3eb`; avalanche `0x4a88767d7fd1f42d9992fad9499345b9752e6138`; avalanche `0x4ab51ba72b941eed0d0ec4b1c1be5b2cb7404d80`; avalanche `0x4df08c8f17fb7bc1261cd308b049dfce59f5dc9a`; avalanche `0x5b5913eec2031c9d8383e3afcfd269217e481ce1`; avalanche `0x5facc8c76896e1958b2efdb903fb12505fa26461`; avalanche `0x65fcc099643919184946e844ca484f6988e053f0`; avalanche `0x772ebf2767407b6d94d7bc0f0941e28ecf308cdc`; avalanche `0x8360944a284e10fc6d79e65bd6c1c39c85e47cd1`; avalanche `0x8ab6a068cd1e5fb8be5b7225275a94900dc4aa02`; avalanche `0x8bb1e4fb686020363c55755cc0d2dec36d324bed`; avalanche `0x8e02a1e04c8eebbc08fdeb66bdff172facf65d96`; avalanche `0x9a25d82d48766f72abef1ebb3f3225c05af70736`; avalanche `0x9af107a2d06ef9263c27a9f0a536d8a2805d697e`; avalanche `0x9fa9b0fff6aaedf635b9a52e0cc4661eff92c15e`; avalanche `0xb643d98c36b583ee05d9ea75e68f28dbb75b5720`; avalanche `0xbe2ff43bd8cb2454f40cbcf611fddb3dabfc545b`; avalanche `0xbf835b8c4543daee8bb3bdb54ce1af8bceae176d`; avalanche `0xce645071ff749079c07ac9f07d2baba25b616da6`; avalanche `0xcec0b52994b739dedc0d87be5a820fa4940442bd`; avalanche `0xda5d3f44652c6671748ba66efafb8ba18db00947`; avalanche `0xdd4bfa270c5926db781faf9bf8d33998c6956d14`; avalanche `0xeb3dfdc417196957ead466f103336d02e96a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | unknown | avalanche | n/a | 6 deployments: avalanche [`0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96`](./contracts/avalanche-43114/0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96/); avalanche `0x42bff70f10b180b366fe3932f254c2aa74255951`; avalanche `0xa0f24ad183be7e1e358d0f1e524aa69b7e8f5760`; avalanche `0xc04d3af360d0a90fc7cd4304449a54e712c44020`; avalanche `0xca94e291720d06dcdd46a46016cb1f16ae7b38e3`; avalanche `0xf8ac03e4fe64cf036b8bb3a6f9e02b8a74e98df1` | ⚠️ Unaudited |
| BIFKN314Router | unknown | avalanche | n/a | [`0x5f4378a634cc046f12143ee9403d31fd4e03d8cd`](./contracts/avalanche-43114/0x5f4378a634cc046f12143ee9403d31fd4e03d8cd/) | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | avalanche | n/a | 3 deployments: avalanche [`0x5d2dda02280f55a9d4529eadfa45ff032928082b`](./contracts/avalanche-43114/0x5d2dda02280f55a9d4529eadfa45ff032928082b/); avalanche `0x6242c833fe85de19c38b3e280a2ddcee262744fc`; avalanche `0xa6d21c577c218db78f7911019009cde51d11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | avalanche | n/a | 6 deployments: avalanche [`0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00`](./contracts/avalanche-43114/0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00/); avalanche `0x88440014c897cea2ab0b1ca04fc00e2883e2ec61`; avalanche `0x978f58455318c7a0ffa14216d62760b4c8a7e951`; avalanche `0xd153feb87aaec061b6155d58477e33b2608d1e92`; avalanche `0xf43d68e775642f81181061ae10aa3e517533a15e`; avalanche `0xfd3a5aae749ae1b398c4237fddd5ae48881cdee3` | ⚠️ Unaudited |
| BIFKN314WrapperFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4`](./contracts/avalanche-43114/0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4/); avalanche `0xa242da308fc14312e8920a301d5904b49523e8b5` | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x709d667c0f7cb42e6099b1a2b2b71409086315cc`](./contracts/avalanche-43114/0x709d667c0f7cb42e6099b1a2b2b71409086315cc/); avalanche `0xfb68c97424f1e8707a9fcf6cc11d0107d75c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | avalanche | n/a | 31 deployments: avalanche [`0x0133a82c4a2ec404ea61529c45ee15b08d374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/); avalanche `0x0980861fd8088ab937dc4ac9c27aa7685118b3da`; avalanche `0x1a308e46577bce12d23617caa3068fa3e7620f54`; avalanche `0x1f6c7ef97286a4a93deb2ac6c1251628d6f8e50f`; avalanche `0x1fb3f2253783102491b440b1127e7ffe8949c612`; avalanche `0x26ab72d5f5bdcf68e3469ecfe19029e53c3124d5`; avalanche `0x28f699f63324f9fa09515c0d7642108a1fad020c`; avalanche `0x430ddec0dcb2b1505644d3d1f20bcb0e88ab2f46`; avalanche `0x485ea0d10774b0250c66b999763f3ce32dd6ed82`; avalanche `0x52e44b858f6c068e02d8d2b12f62a66a16e119ad`; avalanche `0x5c84b4f2e5a996b3fc71511d64f0b77b36c3e9f9`; avalanche `0x5fe449cec13bc3459f6394f4674f293dd71ac6d6`; avalanche `0x6364839853394084936042c4dc011afe783b8941`; avalanche `0x69e852291ae462abb2fd708d81f4a6a34a87143b`; avalanche `0x6c5d3169b811cc0d40b13d3bf92744985e5f05a2`; avalanche `0x737805fde929e5ded9266c481926c34f076a2e68`; avalanche `0x77cb12d513e120248ce622f08e26e09ffe9e8573`; avalanche `0x7e41260fc1946826a30a2427c7232e3240811b5d`; avalanche `0x9dcde306a41615296a36eb5a93399969d08be6c4`; avalanche `0xa28745ad50870b0acbdb53ab2800675895c00abe`; avalanche `0xae3f013d863a5ce7a3a6652e06c44861e91b47a0`; avalanche `0xb47f0dff0282dd1da22484b5df7512d77c7ce5c3`; avalanche `0xb51dfb6d8daf318fbcc4bf2693d50a40ed361f31`; avalanche `0xbf2b8657d7a44acb5832689d37d63667bc97789e`; avalanche `0xbf88e0d6c50879d6f6adcfb81cdd83bec831bb18`; avalanche `0xc80f887f6ef3ec6683e24a873e0a935f49fc817d`; avalanche `0xd714f26e6d0bb8de4e70e00f77932fca77fba4ec`; avalanche `0xde24686268bb5ddfac35d032e2663c1d700114a1`; avalanche `0xf31856c9c5b890a07eb5a1e6d045205e517d639a`; avalanche `0xfb0cf88aec79024f31c7b64d10bf68019ed29332`; avalanche `0xfc6c9b50554828bf53de0954002f8d7a934e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | avalanche | n/a | [`0x421d0df5f147aefe3819466f6bc93fd278128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x317828cbe7ac8707743bae02a2bab8219aea4573`](./contracts/avalanche-43114/0x317828cbe7ac8707743bae02a2bab8219aea4573/); avalanche `0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3`; avalanche `0x87f07395c5747b45f525fbee289b09e4dc74d66e` | ⚠️ Unaudited |
| BIFKNRewarder | unknown | avalanche | n/a | 38 deployments: avalanche [`0x0d4c97526dc88b7c208b36644d131a7ee7134a4b`](./contracts/avalanche-43114/0x0d4c97526dc88b7c208b36644d131a7ee7134a4b/); avalanche `0x273a7a0bff2c24c0e022d472649dfff961433025`; avalanche `0x3438febe70c367387783a8a5678399a07bbc7c01`; avalanche `0x3f722938182af1bc4a8b65808972b0a1f3a2416a`; avalanche `0x43b6177137a87c2a66905f38b9db796a9af30ddf`; avalanche `0x49070a0f9b040364a46c2d3e58a1ecf983912382`; avalanche `0x4da6c437264dbad9d5dc9783e1294fa3879dd044`; avalanche `0x518a8d2929ff2b2650a42852d54d8669d76715b0`; avalanche `0x59c76d26788f283cc9c7bbb1cbbecbc1acbfb5ac`; avalanche `0x5a2d94b008004aaff11d8de2d79d0ef648b51c64`; avalanche `0x6e33f505428bfdd206a3584975a330f5ea36d041`; avalanche `0x70e5e1a266a151403a31673c7fc2163f4171d058`; avalanche `0x78ce754b4ba099d1932f3090d6018fea1d9ff37b`; avalanche `0x7d84168f0037fff3064bb9e933868d94b74332b0`; avalanche `0x812f7ebedc98f57ab54966ebb2ec017a4ac45248`; avalanche `0x88234236a30db8d521318bc14a00124265aed475`; avalanche `0x8890c465eb3a33853afd9609cafcef2da71aad8b`; avalanche `0x88db874870da9fc77ed4a327577f8728b69d97f3`; avalanche `0x8d794677b63894c31ced45e670cad65ad8fa85b8`; avalanche `0x8df656ef83be5e4d7836b6ef7777c425493cd581`; avalanche `0x982c4710a8db96b973d3f7edb4193f4e2bda4418`; avalanche `0x9a78ecab35d50526242ca9bbbb212e9b5f0bb340`; avalanche `0x9f1908e6e20377c7b869d232a3ff95e8cc745aeb`; avalanche `0xb32f181a0d4bff8d8e410f5223f5895521d8163e`; avalanche `0xb683a33600d9f91fffcd1fc698cfcd6603eff7b0`; avalanche `0xc05d6afa9243b624b8f25b453feff4990be0d70a`; avalanche `0xc158d2d31a854644ac7b1ff13fcb1c1def67194f`; avalanche `0xc36a0b1c3a2313275978d5db1d83fd13117da63d`; avalanche `0xc52749abd40c2d8182e25ca93fc6e991bff37727`; avalanche `0xc9b97d0d5d2bdf203896463f96c77ae0503cc2f7`; avalanche `0xcc5cd9b889792afdd513b47c67f608cb49361da7`; avalanche `0xdc35e5d3c5fcc2d9c82bec32edfc490ca742e34c`; avalanche `0xde7780318f860d8f9cb72fabd77f9c3b2ee015b2`; avalanche `0xe95da219e63fc6547da380b22f749778157c99e8`; avalanche `0xeda36190479ce4f08c00f2f465da74bce9026a71`; avalanche `0xf077768c9742a0be0021e802373902f1ac9296e1`; avalanche `0xf11e82c48568f7bd3941a713b12f0af31c31f7ea`; avalanche `0xfde2ea2a9c0eac38241cdd351345c5337aa81f19` | ⚠️ Unaudited |
| BLS | unknown | avalanche | n/a | [`0x46b9144771cb3195d66e4eda643a7493fadcaf9d`](./contracts/avalanche-43114/0x46b9144771cb3195d66e4eda643a7493fadcaf9d/) | ⚠️ Unaudited |
| BnanaCourt | unknown | avalanche | n/a | [`0x80f5c122df691384199a8b448408b426639e2238`](./contracts/avalanche-43114/0x80f5c122df691384199a8b448408b426639e2238/) | ⚠️ Unaudited |
| Bonez | unknown | avalanche | n/a | [`0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677`](./contracts/avalanche-43114/0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677/) | ⚠️ Unaudited |
| BonezClaim | unknown | avalanche | n/a | [`0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf`](./contracts/avalanche-43114/0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf/) | ⚠️ Unaudited |
| BonezStaking | unknown | avalanche | n/a | [`0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8`](./contracts/avalanche-43114/0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8/) | ⚠️ Unaudited |
| BonezSwapping | unknown | avalanche | n/a | [`0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4`](./contracts/avalanche-43114/0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4/) | ⚠️ Unaudited |
| BpayPortalz | unknown | avalanche | n/a | [`0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4`](./contracts/avalanche-43114/0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4/) | ⚠️ Unaudited |
| BrevUniversity | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcf7b2caee040def16bfa1090c8c9f69d61ee3532`](./contracts/avalanche-43114/0xcf7b2caee040def16bfa1090c8c9f69d61ee3532/); avalanche `0xd13510243226c8182abc11bb2a59fe385b8bf5c8` | ⚠️ Unaudited |
| BSCSNFT | unknown | avalanche | n/a | [`0x66841c6ddb09831c73d1addf0503b958d930cef1`](./contracts/avalanche-43114/0x66841c6ddb09831c73d1addf0503b958d930cef1/) | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x286fab35db995dc26a1d57707cb0faa9ee848205`](./contracts/avalanche-43114/0x286fab35db995dc26a1d57707cb0faa9ee848205/); avalanche `0x2affb6865086608ab53e7fd62f15407a90dcb9bb`; avalanche `0xbb6b570f861646d3fcdfaed1d021eab4f8a7d43a`; avalanche `0xcf5de4fc5d7b9cf3f8d7c6d9a2129c2957e8f857` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7e71e483986b1e87d2c871595201fab9e3ee4813`](./contracts/avalanche-43114/0x7e71e483986b1e87d2c871595201fab9e3ee4813/); avalanche `0x84926d9d604ff16dfa19b783c0a7284127913d8b` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | 4 deployments: avalanche [`0x8ade2c3c04731d382a29d871d67296e15b1d591b`](./contracts/avalanche-43114/0x8ade2c3c04731d382a29d871d67296e15b1d591b/); avalanche `0xc331d7843e92d3b6cc1e448d15fe4fd24c3a9f8b`; avalanche `0xdd4d94efba79f589bf0f092562b65f905291ad42`; avalanche `0xdef6738dd9da7639a4ba29a7628c5f2440ad5ef6` | ⚠️ Unaudited |
| BurstFactory | unknown | avalanche | n/a | [`0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7`](./contracts/avalanche-43114/0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7/) | ⚠️ Unaudited |
| BurstFactoryV2 | unknown | avalanche | n/a | [`0x4a47cd3efb448bbed62a5a290a20928110952c76`](./contracts/avalanche-43114/0x4a47cd3efb448bbed62a5a290a20928110952c76/) | ⚠️ Unaudited |
| BurstFactoryV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6c882394a9fe366de13f2d5229449be81d612602`](./contracts/avalanche-43114/0x6c882394a9fe366de13f2d5229449be81d612602/); avalanche `0xef89a728cd6319f603e266c9b9ad249623276644` | ⚠️ Unaudited |
| BurstFactoryV4 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1f62f42726414ac807d8fd553423c0f55936f1ba`](./contracts/avalanche-43114/0x1f62f42726414ac807d8fd553423c0f55936f1ba/); avalanche `0xce4d396b8ee9a2d24d48466074567244fdd9677b` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e`](./contracts/avalanche-43114/0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e/); avalanche `0xab935686c63933d56a04491aa4623eec430d1ad6`; avalanche `0xb86490dc4897e72ce029919992040122ba0a2b6d`; avalanche `0xdaebd8983c80cd185867a167b14bd1ca7d71b72a` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903`](./contracts/avalanche-43114/0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903/); avalanche `0xb91b66dc436aeb6bbbd2fa74150f01e185f463d1` | ⚠️ Unaudited |
| BurstFactoryV6 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xbc74a3c24d8aa980445adc889577e29089c07cdd`](./contracts/avalanche-43114/0xbc74a3c24d8aa980445adc889577e29089c07cdd/); avalanche `0xde2762aa18fe86dcce4ab89539eaad446cd0c9a7` | ⚠️ Unaudited |
| BurstToken | unknown | avalanche | n/a | 10 deployments: avalanche [`0x1c8df0cae834438de0a301c499078c068e1d0dfc`](./contracts/avalanche-43114/0x1c8df0cae834438de0a301c499078c068e1d0dfc/); avalanche `0x2025ad0f6ae60718691ea0f9ac7f4d1942cffea8`; avalanche `0x52d370e60c8220497da6abff36bb2587a31203b6`; avalanche `0x5410bbf364dcd135d63cccbefcb5e1a61f15c0b6`; avalanche `0x6c0a2976cd2861cbd0d466bcfef5ac0c64b05e98`; avalanche `0x737729ed488a4cde80b4acd244d5efa533ad4893`; avalanche `0x7824ef3b021289a348f4d9e111972d0d3f5e3b5e`; avalanche `0x9e85028b546d9d3ea3b95ba1512f35f140ef486a`; avalanche `0xbb5deb03b4cd369b713428def5d389f969efff66`; avalanche `0xe33d4430a36b6625341b1b0b8a16afdf7cb2928d` | ⚠️ Unaudited |
| ChiknPortalzV3 | unknown | avalanche | n/a | [`0x9cf31e89a2cc500d7cb2396509e674c1701e72a9`](./contracts/avalanche-43114/0x9cf31e89a2cc500d7cb2396509e674c1701e72a9/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4169cf88c7ed811e6f6e61917c5b915bea49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a72282ea701748f56dcfb8a9ffa919bb286c` | ⚠️ Unaudited |
| CloudzPortalz | unknown | avalanche | n/a | [`0xf755a817f9891954c99bf33bb731b8f9e8393754`](./contracts/avalanche-43114/0xf755a817f9891954c99bf33bb731b8f9e8393754/) | ⚠️ Unaudited |
| ColonyGovernanceToken | token | avalanche | n/a | [`0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ⚠️ Unaudited |
| ColonyRouter | adapter | avalanche | n/a | [`0xa2e7ab89a2c59818e1ecd925e718a9d63889a131`](./contracts/avalanche-43114/0xa2e7ab89a2c59818e1ecd925e718a9d63889a131/) | ⚠️ Unaudited |
| CopperOrbMinter | unknown | avalanche | n/a | [`0xae51aa005bb123f211730fed55a5fbf2a620770a`](./contracts/avalanche-43114/0xae51aa005bb123f211730fed55a5fbf2a620770a/) | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/); avalanche `0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | ⚠️ Unaudited |
| DogWifTrainer | unknown | avalanche | n/a | [`0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d`](./contracts/avalanche-43114/0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d/) | ⚠️ Unaudited |
| Doorkeeper | operational_periphery | avalanche | n/a | [`0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56`](./contracts/avalanche-43114/0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56/) | ⚠️ Unaudited |
| EarningsBayV2Token | token | avalanche | n/a | [`0x1c7c53aa86b49a28c627b6450091998e447a42f9`](./contracts/avalanche-43114/0x1c7c53aa86b49a28c627b6450091998e447a42f9/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | avalanche | n/a | [`0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 4 deployments: avalanche [`0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15`](./contracts/avalanche-43114/0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15/); avalanche `0x2542d357c731b07283d71e25b3c9adb51f9a2521`; avalanche `0x31e9a83f5e1070c1950c4805634667a4bad21d4e`; avalanche `0x85d1483d7c39158928a76e471170aac8f805c927` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x143ddb612a40ab9865fdcd9fb96dda2323b4562c`](./contracts/avalanche-43114/0x143ddb612a40ab9865fdcd9fb96dda2323b4562c/); avalanche `0x5974d0a7cab5b7fd7ef4b9493b9c7dddca1be4a8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3fa691e4a0a48c52e0b3e4d7dfd2c2a578691f9d`](./contracts/avalanche-43114/0x3fa691e4a0a48c52e0b3e4d7dfd2c2a578691f9d/); avalanche `0xd52d1e4d0c4065b697765ffc7376ca4d8b0586cb` | ⚠️ Unaudited |
| ERC20Tokensx | token | avalanche | n/a | 3 deployments: avalanche [`0x201d04f88bc9b3bdacdf0519a95e117f25062d38`](./contracts/avalanche-43114/0x201d04f88bc9b3bdacdf0519a95e117f25062d38/); avalanche `0x56b9f5e181550b40472fd8c10a34e4ee6009c304`; avalanche `0x8f56421dc48dcce052d9afc80b696291ddaa832a` | ⚠️ Unaudited |
| GECNFT | unknown | avalanche | n/a | 3 deployments: avalanche [`0x231cb2f2484e9ad123e827fadc26556eaffbc36f`](./contracts/avalanche-43114/0x231cb2f2484e9ad123e827fadc26556eaffbc36f/); avalanche `0x2da215293f66319facdf8fe41d99524a406d4c8f`; avalanche `0x7f3590d488d29bc15ba3cd242b34230977b547e3` | ⚠️ Unaudited |
| GECToken | token | avalanche | n/a | [`0xe8385cecb013561b69beb63ff59f4d10734881f3`](./contracts/avalanche-43114/0xe8385cecb013561b69beb63ff59f4d10734881f3/) | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | avalanche | n/a | [`0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f`](./contracts/avalanche-43114/0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f/) | ⚠️ Unaudited |
| GoGoGasStation | unknown | avalanche | n/a | 2 deployments: avalanche [`0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/); avalanche `0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | ⚠️ Unaudited |
| GoldenOrbSwapper | adapter | avalanche | n/a | [`0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1`](./contracts/avalanche-43114/0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1/) | ⚠️ Unaudited |
| Husky | unknown | avalanche | n/a | [`0x65378b697853568da9ff8eab60c13e1ee9f4a654`](./contracts/avalanche-43114/0x65378b697853568da9ff8eab60c13e1ee9f4a654/) | ⚠️ Unaudited |
| IndexFeeDistributor | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6`](./contracts/avalanche-43114/0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6/); avalanche `0x650a85049d2284a90c28a2c0e48506aebd1fcd41` | ⚠️ Unaudited |
| Juicy | unknown | avalanche | n/a | 4 deployments: avalanche [`0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd`](./contracts/avalanche-43114/0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd/); avalanche `0x9f7051497b3112c64d37fa4ce70670f29ec43146`; avalanche `0xc654721fbf1f374fd9ffa3385bba2f4932a6af55`; avalanche `0xeb00642a73a7c40855a7d33c07f30064d28bc48b` | ⚠️ Unaudited |
| JuicyStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x02d14dd765ee6524bca876b8a203000649314064`](./contracts/avalanche-43114/0x02d14dd765ee6524bca876b8a203000649314064/); avalanche `0x99ac3548ac5654b23282d6fd52c6ec76a07c88a2` | ⚠️ Unaudited |
| JuicySubscriptions | unknown | avalanche | n/a | 2 deployments: avalanche [`0x11522c62712c4791db1258b8a8dc96e2e71453c9`](./contracts/avalanche-43114/0x11522c62712c4791db1258b8a8dc96e2e71453c9/); avalanche `0x37fa512cec716b795a9026f68699f67238e5034e` | ⚠️ Unaudited |
| JuicyTokenSale | unknown | avalanche | n/a | 4 deployments: avalanche [`0x2ce2edcf530caa540c441b61ffc9a80cb350a730`](./contracts/avalanche-43114/0x2ce2edcf530caa540c441b61ffc9a80cb350a730/); avalanche `0x471a489a567a4d3950dc2e40189e8495646de731`; avalanche `0xb1bb873f134896b371cad4475433762e92d0a93d`; avalanche `0xde485a725e70355d0a0ef8786b50d28357ddf650` | ⚠️ Unaudited |
| Ket | unknown | avalanche | n/a | [`0xffff003a6bad9b743d658048742935fffe2b6ed7`](./contracts/avalanche-43114/0xffff003a6bad9b743d658048742935fffe2b6ed7/) | ⚠️ Unaudited |
| KetPfpMinter | unknown | avalanche | n/a | 2 deployments: avalanche [`0x06d75d9001fbf39c2303cd6154ee0419a418435d`](./contracts/avalanche-43114/0x06d75d9001fbf39c2303cd6154ee0419a418435d/); avalanche `0x7b1ccf7874b108ad81f335c3a71037ecd0c75911` | ⚠️ Unaudited |
| KimboCollege | unknown | avalanche | n/a | [`0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c`](./contracts/avalanche-43114/0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c/) | ⚠️ Unaudited |
| KimboTrainer | unknown | avalanche | n/a | [`0xaeb261db831fd11a3f700014f3ace6073da06e22`](./contracts/avalanche-43114/0xaeb261db831fd11a3f700014f3ace6073da06e22/) | ⚠️ Unaudited |
| KONG | unknown | avalanche | n/a | 2 deployments: avalanche [`0xac48e02ac18299e061897345991857a80e5026ba`](./contracts/avalanche-43114/0xac48e02ac18299e061897345991857a80e5026ba/); avalanche `0xebb5d4959b2fba6318fbda7d03cd44ae771fc999` | ⚠️ Unaudited |
| KOVIN | unknown | avalanche | n/a | [`0x694200a68b18232916353250955be220e88c5cbb`](./contracts/avalanche-43114/0x694200a68b18232916353250955be220e88c5cbb/) | ⚠️ Unaudited |
| KovinJeckpot | unknown | avalanche | n/a | [`0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3`](./contracts/avalanche-43114/0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3/) | ⚠️ Unaudited |
| KycProofVerification | unknown | avalanche | n/a | [`0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9`](./contracts/avalanche-43114/0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9/) | ⚠️ Unaudited |
| KycStorage | unknown | avalanche | n/a | [`0x61ec16bb9fa514cfe02766b27dbdbecba9254092`](./contracts/avalanche-43114/0x61ec16bb9fa514cfe02766b27dbdbecba9254092/) | ⚠️ Unaudited |
| Laifu | unknown | avalanche | n/a | [`0x21e32d59b1f9574674006a4101150a004d93c24f`](./contracts/avalanche-43114/0x21e32d59b1f9574674006a4101150a004d93c24f/) | ⚠️ Unaudited |
| Landwolf | unknown | avalanche | n/a | [`0x4f94b8aef08c92fefe416af073f1df1e284438ec`](./contracts/avalanche-43114/0x4f94b8aef08c92fefe416af073f1df1e284438ec/) | ⚠️ Unaudited |
| M1ZPortalz | unknown | avalanche | n/a | [`0xda54f80ddf96fad96be883e349e40b458352e311`](./contracts/avalanche-43114/0xda54f80ddf96fad96be883e349e40b458352e311/) | ⚠️ Unaudited |
| MasterChefColony | unknown | avalanche | n/a | [`0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0`](./contracts/avalanche-43114/0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0/) | ⚠️ Unaudited |
| MemeToken | token | avalanche | n/a | [`0x7a842a6f4580edd3df41c1f31e0395044de6bc75`](./contracts/avalanche-43114/0x7a842a6f4580edd3df41c1f31e0395044de6bc75/) | ⚠️ Unaudited |
| Meow | unknown | avalanche | n/a | [`0x8ad25b0083c9879942a64f00f20a70d3278f6187`](./contracts/avalanche-43114/0x8ad25b0083c9879942a64f00f20a70d3278f6187/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | avalanche | n/a | 3 deployments: avalanche [`0x5463fb623fe9806b78d8ebc41f4671200295a9d0`](./contracts/avalanche-43114/0x5463fb623fe9806b78d8ebc41f4671200295a9d0/); avalanche `0xe3418a4d0c4aba68cac317bf6f5d9062fe79c871`; avalanche `0xf233963521b8e0f581f0e75bba237598c12bc14f` | ⚠️ Unaudited |
| MinipoolManager | unknown | avalanche | n/a | 5 deployments: avalanche [`0x9e6579161c6f53722541edbd5ac96779c5b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08`; avalanche `0xc300bc9b4b690ba7a182126299a0618ece268ee7`; avalanche `0xc8de41c35fb389286546cf4107102a7656da7037`; avalanche `0xe51262211948c338c50640f1d5bdba4f4d208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0a75a480af4adc81b20b1664a1da2bd7caefa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/); avalanche `0x8c05d78066431c3b11bbfb6f3546fd3f1396115c`; avalanche `0xb5f2ed77b7723da56ad58edca5106f07f390e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 2 deployments: avalanche [`0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/); avalanche `0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | avalanche | n/a | [`0xae1e7b06544a13315e6f7301cc161761813ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | ⚠️ Unaudited |
| MultisigManager | unknown | avalanche | n/a | [`0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | avalanche | n/a | [`0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2`](./contracts/avalanche-43114/0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2/) | ⚠️ Unaudited |
| NodeAsAService | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/); avalanche `0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | ⚠️ Unaudited |
| NOODS | unknown | avalanche | n/a | 2 deployments: avalanche [`0x206336c741178d976e9c5444987497bd8fa869e1`](./contracts/avalanche-43114/0x206336c741178d976e9c5444987497bd8fa869e1/); avalanche `0xffdb03050a5ffcfbb2d777623e6608d99622da98` | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9189d18f453b1ec1f02e40a8e3711334f9ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | avalanche | n/a | [`0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb915258d844e9dc420b2c3aa97420aea16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| OrbMerger | unknown | avalanche | n/a | [`0x412cb1580c33c421b2765e91a6c231a246347839`](./contracts/avalanche-43114/0x412cb1580c33c421b2765e91a6c231a246347839/) | ⚠️ Unaudited |
| OrbRedeemer | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1f240def4c98408e22a28daec1e920810ef8b1d2`](./contracts/avalanche-43114/0x1f240def4c98408e22a28daec1e920810ef8b1d2/); avalanche `0xc874be82cb1f5d6842783e21333e76b2e17b565a` | ⚠️ Unaudited |
| Orbs | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62df6e203916617ed20e87babb2105e6df37fcc5`](./contracts/avalanche-43114/0x62df6e203916617ed20e87babb2105e6df37fcc5/); avalanche `0xec18aa29d678f5e5767076e9b5a293e21af8450c` | ⚠️ Unaudited |
| Orbs | unknown | avalanche | n/a | 3 deployments: avalanche [`0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b`](./contracts/avalanche-43114/0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b/); avalanche `0xbca48e3fda5a0f8fb02098ca150b948986626891`; avalanche `0xd491c8b0ccd615c05728cc40de4cd3415c0f9734` | ⚠️ Unaudited |
| PitBonus | unknown | avalanche | n/a | [`0xe6666f6fa8bc1759b9266d30d41cb443025926c9`](./contracts/avalanche-43114/0xe6666f6fa8bc1759b9266d30d41cb443025926c9/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c2586d68229fde47564546784ab3faca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | n/a | 4 deployments: avalanche [`0x41a76343eb93b4790e53c8e2789e09ef41195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0x70fd1a4419cd4436e4d44744c09f09a743fd1b65`; avalanche `0xa008cc1839024a311ad769e4ac302ee35a8ef546`; avalanche `0xfc3ea32c03b4be326bced178431789f7e2d8051a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 10 deployments: avalanche [`0x5313c309cd469b751ad3947568d65d4a70b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd36d51d159209054dadda7f87aa4e1aed940`; avalanche `0x741c5f9778d15910b406e2ebdbe4d9366617690c`; avalanche `0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d`; avalanche `0x9484d5da62664d65744de5d2c148c0ee89416c71`; avalanche `0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190`; avalanche `0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6`; avalanche `0xdbfe1e9feb0e297c2c580a5eb5a97c4f46a56aa7`; avalanche `0xe4d695387e7cfc3dfd388f1cf8bd6eba7e4e3027`; avalanche `0xf4c5626c39570f0637c1785b378b0ef45a1620a9` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| SQRCAT | unknown | avalanche | n/a | [`0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5`](./contracts/avalanche-43114/0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5/) | ⚠️ Unaudited |
| SQRCATMiner | unknown | avalanche | n/a | [`0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9`](./contracts/avalanche-43114/0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | n/a | 4 deployments: avalanche [`0x439776d3786719e1243b628ef05e905679374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/); avalanche `0x5b0d74c78f2588b3c5c49857edb856cc731dc557`; avalanche `0x9946e68490d71fe976951e360f295c4cf8531d00`; avalanche `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` | ⚠️ Unaudited |
| StakingV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc`](./contracts/avalanche-43114/0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc/); avalanche `0xf2501d3da6edfc398270bcfde340f78e12a040f9` | ⚠️ Unaudited |
| StakingV3 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x2b8c3c4d13142d7457dc80c92db4c62f3543751c`](./contracts/avalanche-43114/0x2b8c3c4d13142d7457dc80c92db4c62f3543751c/); avalanche `0x62685d3eaace96d6145d35f3b7540d35f482de5b`; avalanche `0xb9ad5f3f447f2c7902924a575a0441b62ae318e1` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a36f77e4536d95cbb99126640e7cbebc3a4b` | ⚠️ Unaudited |
| Storage | unknown | avalanche | n/a | 9 deployments: avalanche [`0x081b0a036cbf55669685d2ac0f549b386d3e1f35`](./contracts/avalanche-43114/0x081b0a036cbf55669685d2ac0f549b386d3e1f35/); avalanche `0x1bbbfa5685db9ccbb4b996521bb27a99d21f9e72`; avalanche `0x3b961307856dc53a33f7b29cfc1d03ff6a414ea4`; avalanche `0x3e186d38f7529d5a40393c30b9b6b6be68b54b7e`; avalanche `0x46ed333c9c79ff8ff2437cb22c2d98837d79850b`; avalanche `0x6cb35a17bf8c7126b6f3aca0e19602322ac179dd`; avalanche `0x7a1164339336d5b89c2b32d0258f1c9be06d078d`; avalanche `0xd9d021f424fa8855c2d0a5e59d4e6673eeff1dc1`; avalanche `0xe0f912f528c26686690e77d6c78592589b56cca7` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/); avalanche `0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x697d7c12853a59429b62ab4d310975335dba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/); avalanche `0x9bfade56e75798167a84c24704fed6098b590819` | ⚠️ Unaudited |
| ThePit | unknown | avalanche | n/a | 2 deployments: avalanche [`0x96b9058ea3af4c47223d470ac8d20322b719d672`](./contracts/avalanche-43114/0x96b9058ea3af4c47223d470ac8d20322b719d672/); avalanche `0xc9871bf1ee787f2134f69d6c6ed010bd636fa33b` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f1947d532186f3f6aaa93966e3e9c14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | n/a | 4 deployments: avalanche [`0x576d98d26419c5ce9595833403f64d919eca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922`; avalanche `0xd960ce17d15bd0d056bc4aadc491cbb3fa16e584`; avalanche `0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | ⚠️ Unaudited |
| TokenggAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`](./contracts/avalanche-43114/0xa25eaf2906fa1a3a13edac9b9657108af7b703e3/); avalanche `0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | ⚠️ Unaudited |
| TokenGGP | token | avalanche | n/a | [`0x69260b9483f9871ca57f81a90d91e2f96c2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| TokenpstAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x49424f026731af05a7a5ecc25901d0d9841d5586`](./contracts/avalanche-43114/0x49424f026731af05a7a5ecc25901d0d9841d5586/); avalanche `0x5d7dcc7037f38e71d2e995cf15f35d02c0a666fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af`](./contracts/avalanche-43114/0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af/); avalanche `0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0eb749a42ca15d6ee8ad30e789586c09c2c52388`](./contracts/avalanche-43114/0x0eb749a42ca15d6ee8ad30e789586c09c2c52388/); avalanche `0xe6224b21361e6f5ab503a930e6573caae5ff9f08` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1467826e9dadb57db1fb9f1ffeadf01debe1310d`](./contracts/avalanche-43114/0x1467826e9dadb57db1fb9f1ffeadf01debe1310d/); avalanche `0x23904c60c3fe69d70b7dcc629454281c93f8d044` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x17ce2a490cb260b48891ade019a86f4b4a5520d4`](./contracts/avalanche-43114/0x17ce2a490cb260b48891ade019a86f4b4a5520d4/); avalanche `0xad36f6b111bec7f9cbb18688c48fd9bb7a49a86b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be`](./contracts/avalanche-43114/0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be/); avalanche `0xe8f9e15b1ff957b18b047c2b4d42f1d8285140b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5377caf64cf02c1320c66030fbe3773431377dac`](./contracts/avalanche-43114/0x5377caf64cf02c1320c66030fbe3773431377dac/); avalanche `0xe6befa51550148d720cea18b3962f355c733bc55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x60d0a833ceeee90b12cffc8ccb235baae4858096`](./contracts/avalanche-43114/0x60d0a833ceeee90b12cffc8ccb235baae4858096/); avalanche `0x7ccda6e26dced1ba275c67cd20235790ed615a8d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x62b38293896e040e36fe5345f9d30dbfd75c04b9`](./contracts/avalanche-43114/0x62b38293896e040e36fe5345f9d30dbfd75c04b9/); avalanche `0xda88d0fe9edfd38ceffb203c749afc7d4ffb1d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x708e887ab6475466379f6d7b89937add1d858b6e`](./contracts/avalanche-43114/0x708e887ab6475466379f6d7b89937add1d858b6e/); avalanche `0xd071aa359ed1b7776a12c8329f2c337abed157d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x91c5f275afb2ae344687dfcde5354477326a5f3f`](./contracts/avalanche-43114/0x91c5f275afb2ae344687dfcde5354477326a5f3f/); avalanche `0xe9b65e789e2e81eeb0c7226e741608cc2734d9a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba`](./contracts/avalanche-43114/0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba/); avalanche `0xae7bd6628163897c8d2b6c7e55b236a060d1bc93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0xb244b1507d7cfb8de6883fd985ee5e205d3c6c54`](./contracts/avalanche-43114/0xb244b1507d7cfb8de6883fd985ee5e205d3c6c54/); avalanche `0xba239e83c77b2a77b3f5af15fe9d291b2c48885d`; avalanche `0xc2de170463bb17b67f75b83d3f1f789a42de054b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67`](./contracts/avalanche-43114/0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67/); avalanche `0xc54c0c19d762cb4962290bcb1c47d98a464bfad9`; avalanche `0xfa5951dff3c7e22ec9350c05c203771f24b9ab76` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| UniversalClaimer | unknown | avalanche | n/a | [`0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20`](./contracts/avalanche-43114/0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20/) | ⚠️ Unaudited |
| USDCInvestmentPool | operational_periphery | avalanche | n/a | [`0x82d7d932e3e12d18f01838d4c01c1dbb539c4050`](./contracts/avalanche-43114/0x82d7d932e3e12d18f01838d4c01c1dbb539c4050/) | ⚠️ Unaudited |
| Vault | unknown | avalanche | n/a | [`0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc34920e12067de82de2a94cd46544b255d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e`; avalanche `0x472e8266f564d52cba41e50817e3d2b63df56238`; avalanche `0x55eadf68ab32c4f782828148b465a76c54bd8a16`; avalanche `0x87c1b4de866b686e2b44e63521f02026e2b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | avalanche | n/a | 2 deployments: avalanche [`0x61f908d4992a790a2792d3c36850b4b9eb5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/); avalanche `0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | ⚠️ Unaudited |
| xBIFKN314 | unknown | avalanche | n/a | [`0xa43f06724e10561ea416ad7438ccfc94f486374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (109)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x00f9e4d061342c2f18f3b9f10dae856e0807e51a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x019258c48d936d2b50546f76ffca7527ed623001` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04302672bdb4f7b90d99e0f6ea932ef5ad3b4416` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0521fccdfcc574d7dde2d97eac1a8f19b2cc509a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06b9592d429354c5930adf6c46e850d3ba7f7216` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08237fedc96eefc57a8f570f33b3332065fdfeb5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x091e3e6ef5b8a509a036946a24aa449ce99dce7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x096459a23ae5edbc8533b84df41e5f5d6549cef6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x096c04f99442ce80796305189f5252f81e7560b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a00a74f28d1bc24ddf73794fcd594cbbf291641` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c199269d90af02549a71158345fbf4b5fe01244` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cc74884b1173ed918a3bd368973ff8edc43bd45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ea55213cc67d4f48455fba90b780825b0cede12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ff749fbfa72c3c9338ceea280c5647aa74926fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12005b203466a56d1ec4ef3a300e76dc93896754` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12eeef37581bb4c181d23f0ea55a87b1025c7c60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15dbf088ad8b77c5a2b552ecce95fc225968ce47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15e567cb1ccfd6b07737aa5317c4dd1b84798dd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x171c78962fce2c7dac25de41f862b19da31972e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17395ad76b236fabeac3634b78ff8f6970222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18c7a6c59d31c5ab17f2311b42c071f8f4a9f580` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18e3605b13f10016901eac609b9e188cf7c18973` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1988aaddae2c42a05f31a516b4462253b063cd2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19da5d5e16615a354316b792ef91d2dd43d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19fc17f9bf2177c1491645fce8e56479f8fea3d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a5bdc587e84e215e61b87e433c180611e71f4e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c3fa0cdd579b76f62854fe68bf3033062bf6749` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d3d3a3fc86509ffd1beccbb4a27a3b6a05e0bed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e50aec53c29ab12a8696fd711e79116357224d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x202f0c7ebe24e46a72790f33417d5b23aaa15c1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2042f4057c2f95a18dac242a5afdb075c22791fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d33219aa262fccafcb8be8d929a44de42aa064` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x257bff1e38c9ec0a352cbff1782dd16d9a5b6cad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26760c6bcb300b7f006e741ee03c78589611c9ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26a97b44c67b40e126723b6356d664ad6453abba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d1edfb7a2ea80de92454267ea4cba0acffb0341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3db497a9783ebbeda6950d4f1911b3a27d79c071` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41f2c5a2e488e5eefaa867a0987a3d2d3ebfea01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x423d187af15cc5e9a790d97d9c32e19ed820f093` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4bf0c9f164e8b9771220e777199be99e1af23d48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f406eb41fbb2b78674dffe44344f8f7386cab5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x50c496322fdded94ad434589142a8286e7f29e11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x538a28edd91c15002a27188a47461ad46e33dead` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58c4b219bd39d9658efefbab2b90720aeb0740f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5906caf280436ffdfa2eef6ed5cc6f1674ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bfdea6d9f07fb5922e19a4f40b148902d467ea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fb5d0d5476b1ada0d299e2b8e507848caee2666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x602fe156e8c897f095e6da10233978fded4cff1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65b58cd6aa880bdb9bdef645e0b2020d55b9cbc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x662550f6406164684f436906d7954630344ed596` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x686040343861e0f5aada9bab3eb381b84f35c611` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68bc236f957be75441d7c8ce9554623785affbd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6973af4ff3cde147b9e0ca89cb833eb270e3cf3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6aa8811b94e69a15dc750a13dfa6b75e47d0985f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aa41b68d2133b71053837e28bc08cdad9b52fae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b080e227f0c113f38752e882e59743a70d3a344` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d36bd652e2b3bea3359200da263fac140afd168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e997f2493fc0d8a634ee24bda562ead16aa250b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81e54258482e0285aaa0f4a993bd4ad2cf0e6379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x861aab79bac77f329beada45ef29910c64cd386a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d6b7ed1b77ec8d000cb55fb7bda1831f1ce0b31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f81fa7bdda10eec3ea674f3aba98cd34180803d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x950e56d4f45ed678c3564bd7b218c3f85e878dcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96e40a8bcb2aa1c9174c3af60662b4f8e4e78baa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b7f4ca86a12f37d384213ae6e4cc671d1a87f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cbdcb9b7acc1ff2e47c3a6ace428d16527f12d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e1ac58559307a7ce70104810b7d6e43e74bfa1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa043ae24c15dc21395f3baaaad12bea0d6bf8c47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa224dd68e67acd428ac11c462243d67485fc6be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3d17bd9669dc431d75982cf0834f68be9180ee9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4998c1068cbe9f7da89d55f15648a1d122322bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7a9254c826acb54d3a714734ddf73226b1baeab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa915c4fa9cb64069e462ef2d73653a642d205cd9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf85ae10defb731d17bd56eae7c2025d65ed31e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb023ad30088d85e520819e43ac21d7afa484e15b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3b054a5858fad973e333308b21c7ac8ef13d0d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6b70d4dc00cc77169ccd86b22f43a03edc9fd70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb746d18f93b9264ba08d6a38e934329c984e75ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb9207b8bcd7718543d1e4a6c266bdbedb7bdf0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbbc982ec2027a908e153494bdbf15f63f7e9328` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbe885e60742610fc95a178b0e26b8064cf4deec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1e38f40c614cf8404067c7f76210fa1df4df212` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1eedc61a7d92caac341a55d238ebf2626d6adc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc34cbcbf8605af069d724fb015aff1c6b83909c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5d950b1e62a235b37d030dea359746a67deb180` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5f368e6d0192764547c4209a7e622fc05c82fcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6b2858b17285f67596456e3a9a6e18397c93845` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6d0867cdb97d1d48576333ddd7fb1a5461468dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc73aedd4853c6c7dda8a94ca78c5a9d4daef8ee6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7492aee6a52584840094e212c0781a1a49eec20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9fbf1e865eeababe92d47ddb11d580f37ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc42c3fdd8c0400236c7cfa29d3687adb6b1d780` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc4af152766668a8a3d6c49e61268e7f5d3515aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcfdcd719b457bd5c466944e3bb068634e15252ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd1dd6a5c9d747626719be327b82b3ca52c82392b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd40e60ea9487fa1b625321467edcc1d9b422b577` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4fea8ac2f43c2275c1ec13d87b7f445c19d41c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda99615bff7462569e445b68b15a7f1d2e03ad32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc53b24700eec5b9c416b644cfb104fa051bbfdb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc2eca2bb5c9ff431352ac46a4a8b4015fc7768` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc90042d74b9be01689f4c0d256d3a3e39cfbf2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0ea31ef1f3b21e7f40c345258358edbfb30603b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe82b733bb6411d796d97ecd71d84f909eb2f6203` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb0910579b230c845d4426b5e97553a18f247df0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec16d602c2ce6272eaddc9054b5fb89dd760144d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xedd549bff2eafd073f7d82a618a367a8d2c90648` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf13d4374877890c144511a868601975c64e8cad1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe305a89b59a88d54b91a9708f8e37437f116608` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 10 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 1 | n/a |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59`](./contracts/avalanche-43114/0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59/) | AirDropGEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5424f5896d80a4f333b35980d15856a34e43e32c`](./contracts/avalanche-43114/0x5424f5896d80a4f333b35980d15856a34e43e32c/) | AntTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ApexMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ApexMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ApexPremier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x734d8cfeccd8485df397719e7128ca153dd38f79`](./contracts/avalanche-43114/0x734d8cfeccd8485df397719e7128ca153dd38f79/) | ApexPremierAccess | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f`](./contracts/avalanche-43114/0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f/) | ApexPremierFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc095ece2c0f315381b4bf6de169fbc219b24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ArtifactHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x64813357113500b9829fd47956e6fa58ebb56f66`](./contracts/avalanche-43114/0x64813357113500b9829fd47956e6fa58ebb56f66/) | ArtMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x37686293c9423a1c5a171aada28ab5c9086b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/) | AssetLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x456a6e49409f137138e2e0255368a3a37876e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/) | AvalancheHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x03f77458e1eb9fa72b8186b573e40b106442f155`](./contracts/avalanche-43114/0x03f77458e1eb9fa72b8186b573e40b106442f155/) | BellumToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1d27713179d379416a22cd28331ccbd19f0e1192`](./contracts/avalanche-43114/0x1d27713179d379416a22cd28331ccbd19f0e1192/) | BIFKN314 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3d193de151f8e4e3ce1c4cb2977f806663106a87`](./contracts/avalanche-43114/0x3d193de151f8e4e3ce1c4cb2977f806663106a87/) | BIFKN314Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2`](./contracts/avalanche-43114/0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2/) | BIFKN314FactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4ecd8bdc617d68789ac2afefbab5d24e2859f450`](./contracts/avalanche-43114/0x4ecd8bdc617d68789ac2afefbab5d24e2859f450/) | BIFKN314FactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4f70785606938b4ba963feea1bf74a1c80eaf769`](./contracts/avalanche-43114/0x4f70785606938b4ba963feea1bf74a1c80eaf769/) | BIFKN314FactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x754a0c42c35562ee7a41eb824d14bc1259820f01`](./contracts/avalanche-43114/0x754a0c42c35562ee7a41eb824d14bc1259820f01/) | BIFKN314FactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5`](./contracts/avalanche-43114/0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5/) | BIFKN314FactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2af654340459b0a294f9b441b374e64b9a038306`](./contracts/avalanche-43114/0x2af654340459b0a294f9b441b374e64b9a038306/) | BIFKN314FeeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3aa19b923e93850b093d5c48c4971de0042bc262`](./contracts/avalanche-43114/0x3aa19b923e93850b093d5c48c4971de0042bc262/) | BIFKN314FeeHookLegacyFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdfb8803797b11c64cd8520b611816924ce845802`](./contracts/avalanche-43114/0xdfb8803797b11c64cd8520b611816924ce845802/) | BIFKN314Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/) | BIFKN314Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96`](./contracts/avalanche-43114/0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96/) | BIFKN314Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5f4378a634cc046f12143ee9403d31fd4e03d8cd`](./contracts/avalanche-43114/0x5f4378a634cc046f12143ee9403d31fd4e03d8cd/) | BIFKN314Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5d2dda02280f55a9d4529eadfa45ff032928082b`](./contracts/avalanche-43114/0x5d2dda02280f55a9d4529eadfa45ff032928082b/) | BIFKN314RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00`](./contracts/avalanche-43114/0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00/) | BIFKN314Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4`](./contracts/avalanche-43114/0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4/) | BIFKN314WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x709d667c0f7cb42e6099b1a2b2b71409086315cc`](./contracts/avalanche-43114/0x709d667c0f7cb42e6099b1a2b2b71409086315cc/) | BIFKN314WrapperFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0133a82c4a2ec404ea61529c45ee15b08d374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/) | BIFKN314WrapperMintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x421d0df5f147aefe3819466f6bc93fd278128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | BIFKNChefStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x317828cbe7ac8707743bae02a2bab8219aea4573`](./contracts/avalanche-43114/0x317828cbe7ac8707743bae02a2bab8219aea4573/) | BIFKNChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0d4c97526dc88b7c208b36644d131a7ee7134a4b`](./contracts/avalanche-43114/0x0d4c97526dc88b7c208b36644d131a7ee7134a4b/) | BIFKNRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x46b9144771cb3195d66e4eda643a7493fadcaf9d`](./contracts/avalanche-43114/0x46b9144771cb3195d66e4eda643a7493fadcaf9d/) | BLS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x80f5c122df691384199a8b448408b426639e2238`](./contracts/avalanche-43114/0x80f5c122df691384199a8b448408b426639e2238/) | BnanaCourt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677`](./contracts/avalanche-43114/0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677/) | Bonez | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf`](./contracts/avalanche-43114/0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf/) | BonezClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8`](./contracts/avalanche-43114/0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8/) | BonezStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4`](./contracts/avalanche-43114/0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4/) | BonezSwapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4`](./contracts/avalanche-43114/0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4/) | BpayPortalz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcf7b2caee040def16bfa1090c8c9f69d61ee3532`](./contracts/avalanche-43114/0xcf7b2caee040def16bfa1090c8c9f69d61ee3532/) | BrevUniversity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x66841c6ddb09831c73d1addf0503b958d930cef1`](./contracts/avalanche-43114/0x66841c6ddb09831c73d1addf0503b958d930cef1/) | BSCSNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x286fab35db995dc26a1d57707cb0faa9ee848205`](./contracts/avalanche-43114/0x286fab35db995dc26a1d57707cb0faa9ee848205/) | BurstFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7e71e483986b1e87d2c871595201fab9e3ee4813`](./contracts/avalanche-43114/0x7e71e483986b1e87d2c871595201fab9e3ee4813/) | BurstFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8ade2c3c04731d382a29d871d67296e15b1d591b`](./contracts/avalanche-43114/0x8ade2c3c04731d382a29d871d67296e15b1d591b/) | BurstFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7`](./contracts/avalanche-43114/0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7/) | BurstFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4a47cd3efb448bbed62a5a290a20928110952c76`](./contracts/avalanche-43114/0x4a47cd3efb448bbed62a5a290a20928110952c76/) | BurstFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c882394a9fe366de13f2d5229449be81d612602`](./contracts/avalanche-43114/0x6c882394a9fe366de13f2d5229449be81d612602/) | BurstFactoryV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1f62f42726414ac807d8fd553423c0f55936f1ba`](./contracts/avalanche-43114/0x1f62f42726414ac807d8fd553423c0f55936f1ba/) | BurstFactoryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e`](./contracts/avalanche-43114/0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e/) | BurstFactoryV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903`](./contracts/avalanche-43114/0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903/) | BurstFactoryV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbc74a3c24d8aa980445adc889577e29089c07cdd`](./contracts/avalanche-43114/0xbc74a3c24d8aa980445adc889577e29089c07cdd/) | BurstFactoryV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1c8df0cae834438de0a301c499078c068e1d0dfc`](./contracts/avalanche-43114/0x1c8df0cae834438de0a301c499078c068e1d0dfc/) | BurstToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9cf31e89a2cc500d7cb2396509e674c1701e72a9`](./contracts/avalanche-43114/0x9cf31e89a2cc500d7cb2396509e674c1701e72a9/) | ChiknPortalzV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ClaimNodeOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4169cf88c7ed811e6f6e61917c5b915bea49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/) | ClaimProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf755a817f9891954c99bf33bb731b8f9e8393754`](./contracts/avalanche-43114/0xf755a817f9891954c99bf33bb731b8f9e8393754/) | CloudzPortalz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ColonyGovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa2e7ab89a2c59818e1ecd925e718a9d63889a131`](./contracts/avalanche-43114/0xa2e7ab89a2c59818e1ecd925e718a9d63889a131/) | ColonyRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae51aa005bb123f211730fed55a5fbf2a620770a`](./contracts/avalanche-43114/0xae51aa005bb123f211730fed55a5fbf2a620770a/) | CopperOrbMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/) | CoqnetHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d`](./contracts/avalanche-43114/0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d/) | DogWifTrainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56`](./contracts/avalanche-43114/0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56/) | Doorkeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1c7c53aa86b49a28c627b6450091998e447a42f9`](./contracts/avalanche-43114/0x1c7c53aa86b49a28c627b6450091998e447a42f9/) | EarningsBayV2Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | EmissionsToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x201d04f88bc9b3bdacdf0519a95e117f25062d38`](./contracts/avalanche-43114/0x201d04f88bc9b3bdacdf0519a95e117f25062d38/) | ERC20Tokensx | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x231cb2f2484e9ad123e827fadc26556eaffbc36f`](./contracts/avalanche-43114/0x231cb2f2484e9ad123e827fadc26556eaffbc36f/) | GECNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe8385cecb013561b69beb63ff59f4d10734881f3`](./contracts/avalanche-43114/0xe8385cecb013561b69beb63ff59f4d10734881f3/) | GECToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f`](./contracts/avalanche-43114/0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f/) | GEGGSINCUBATOR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/) | GoGoGasStation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1`](./contracts/avalanche-43114/0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1/) | GoldenOrbSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x65378b697853568da9ff8eab60c13e1ee9f4a654`](./contracts/avalanche-43114/0x65378b697853568da9ff8eab60c13e1ee9f4a654/) | Husky | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6`](./contracts/avalanche-43114/0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6/) | IndexFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd`](./contracts/avalanche-43114/0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd/) | Juicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02d14dd765ee6524bca876b8a203000649314064`](./contracts/avalanche-43114/0x02d14dd765ee6524bca876b8a203000649314064/) | JuicyStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x11522c62712c4791db1258b8a8dc96e2e71453c9`](./contracts/avalanche-43114/0x11522c62712c4791db1258b8a8dc96e2e71453c9/) | JuicySubscriptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2ce2edcf530caa540c441b61ffc9a80cb350a730`](./contracts/avalanche-43114/0x2ce2edcf530caa540c441b61ffc9a80cb350a730/) | JuicyTokenSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xffff003a6bad9b743d658048742935fffe2b6ed7`](./contracts/avalanche-43114/0xffff003a6bad9b743d658048742935fffe2b6ed7/) | Ket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06d75d9001fbf39c2303cd6154ee0419a418435d`](./contracts/avalanche-43114/0x06d75d9001fbf39c2303cd6154ee0419a418435d/) | KetPfpMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c`](./contracts/avalanche-43114/0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c/) | KimboCollege | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaeb261db831fd11a3f700014f3ace6073da06e22`](./contracts/avalanche-43114/0xaeb261db831fd11a3f700014f3ace6073da06e22/) | KimboTrainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xac48e02ac18299e061897345991857a80e5026ba`](./contracts/avalanche-43114/0xac48e02ac18299e061897345991857a80e5026ba/) | KONG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x694200a68b18232916353250955be220e88c5cbb`](./contracts/avalanche-43114/0x694200a68b18232916353250955be220e88c5cbb/) | KOVIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3`](./contracts/avalanche-43114/0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3/) | KovinJeckpot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9`](./contracts/avalanche-43114/0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9/) | KycProofVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x61ec16bb9fa514cfe02766b27dbdbecba9254092`](./contracts/avalanche-43114/0x61ec16bb9fa514cfe02766b27dbdbecba9254092/) | KycStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x21e32d59b1f9574674006a4101150a004d93c24f`](./contracts/avalanche-43114/0x21e32d59b1f9574674006a4101150a004d93c24f/) | Laifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4f94b8aef08c92fefe416af073f1df1e284438ec`](./contracts/avalanche-43114/0x4f94b8aef08c92fefe416af073f1df1e284438ec/) | Landwolf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xda54f80ddf96fad96be883e349e40b458352e311`](./contracts/avalanche-43114/0xda54f80ddf96fad96be883e349e40b458352e311/) | M1ZPortalz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0`](./contracts/avalanche-43114/0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0/) | MasterChefColony | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a842a6f4580edd3df41c1f31e0395044de6bc75`](./contracts/avalanche-43114/0x7a842a6f4580edd3df41c1f31e0395044de6bc75/) | MemeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8ad25b0083c9879942a64f00f20a70d3278f6187`](./contracts/avalanche-43114/0x8ad25b0083c9879942a64f00f20a70d3278f6187/) | Meow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5463fb623fe9806b78d8ebc41f4671200295a9d0`](./contracts/avalanche-43114/0x5463fb623fe9806b78d8ebc41f4671200295a9d0/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9e6579161c6f53722541edbd5ac96779c5b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/) | MinipoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a75a480af4adc81b20b1664a1da2bd7caefa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/) | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae1e7b06544a13315e6f7301cc161761813ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | MinipoolStreamlinerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | MultisigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2`](./contracts/avalanche-43114/0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2/) | NFTradeNFTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/) | NodeAsAService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x206336c741178d976e9c5444987497bd8fa869e1`](./contracts/avalanche-43114/0x206336c741178d976e9c5444987497bd8fa869e1/) | NOODS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9189d18f453b1ec1f02e40a8e3711334f9ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/) | Ocyticus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | OonodzHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30fb915258d844e9dc420b2c3aa97420aea16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x412cb1580c33c421b2765e91a6c231a246347839`](./contracts/avalanche-43114/0x412cb1580c33c421b2765e91a6c231a246347839/) | OrbMerger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1f240def4c98408e22a28daec1e920810ef8b1d2`](./contracts/avalanche-43114/0x1f240def4c98408e22a28daec1e920810ef8b1d2/) | OrbRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x62df6e203916617ed20e87babb2105e6df37fcc5`](./contracts/avalanche-43114/0x62df6e203916617ed20e87babb2105e6df37fcc5/) | Orbs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b`](./contracts/avalanche-43114/0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b/) | Orbs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe6666f6fa8bc1759b9266d30d41cb443025926c9`](./contracts/avalanche-43114/0xe6666f6fa8bc1759b9266d30d41cb443025926c9/) | PitBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60781c2586d68229fde47564546784ab3faca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | Png | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x41a76343eb93b4790e53c8e2789e09ef41195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/) | ProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | RewardsPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5`](./contracts/avalanche-43114/0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5/) | SQRCAT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9`](./contracts/avalanche-43114/0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9/) | SQRCATMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x439776d3786719e1243b628ef05e905679374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc`](./contracts/avalanche-43114/0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc/) | StakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2b8c3c4d13142d7457dc80c92db4c62f3543751c`](./contracts/avalanche-43114/0x2b8c3c4d13142d7457dc80c92db4c62f3543751c/) | StakingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/) | StAvaxWavaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x081b0a036cbf55669685d2ac0f549b386d3e1f35`](./contracts/avalanche-43114/0x081b0a036cbf55669685d2ac0f549b386d3e1f35/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/) | SubnetHardwareRentalMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x697d7c12853a59429b62ab4d310975335dba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/) | SubnetStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96b9058ea3af4c47223d470ac8d20322b719d672`](./contracts/avalanche-43114/0x96b9058ea3af4c47223d470ac8d20322b719d672/) | ThePit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcd385f1947d532186f3f6aaa93966e3e9c14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x576d98d26419c5ce9595833403f64d919eca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/) | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`](./contracts/avalanche-43114/0xa25eaf2906fa1a3a13edac9b9657108af7b703e3/) | TokenggAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x69260b9483f9871ca57f81a90d91e2f96c2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | TokenGGP | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/) | TokenpstAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x49424f026731af05a7a5ecc25901d0d9841d5586`](./contracts/avalanche-43114/0x49424f026731af05a7a5ecc25901d0d9841d5586/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | TwapGGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20`](./contracts/avalanche-43114/0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20/) | UniversalClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82d7d932e3e12d18f01838d4c01c1dbb539c4050`](./contracts/avalanche-43114/0x82d7d932e3e12d18f01838d4c01c1dbb539c4050/) | USDCInvestmentPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc34920e12067de82de2a94cd46544b255d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x61f908d4992a790a2792d3c36850b4b9eb5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/) | WithdrawQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa43f06724e10561ea416ad7438ccfc94f486374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | xBIFKN314 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 141 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 115 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
