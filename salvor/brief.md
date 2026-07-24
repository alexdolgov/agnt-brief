# Agentic Audit Brief: Salvor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base
- Contract surface: 605 unique implementations (932 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,237.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Salvor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, base. Structural roles: 1 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), infra (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05c1813ec7beb8bf744ac43fea25cafb650ac966`, chain 43114)
- UnnamedContract (`0x0d15f99b6ae10cfa9a6d845b433ef51597c27e00`, chain 43114)
- UnnamedContract (`0x1425d8a410d1bf8bfcf983048070a8ec2fd634d4`, chain 43114)
- UnnamedContract (`0x2266e5664499040cdcd10ca436b4c9e7d8db58ca`, chain 43114)
- UnnamedContract (`0x3deb760dbc6c5e0163d20de3a3c5f9c806932b7d`, chain 43114)
- UnnamedContract (`0x4085fbfc88192e5558aa8d1492106e757d11d6ae`, chain 43114)
- UnnamedContract (`0x44c9613c895b9870175d9a1c29f858852e26feb9`, chain 43114)
- UnnamedContract (`0x607b1d0e50003f697b2d36c0bafc1c72b049b632`, chain 43114)
- UnnamedContract (`0x8cfc37fc972d8fac0602cfe6695dcc6c0f005996`, chain 43114)
- UnnamedContract (`0xa5128fbbd52a6572a8dad43b578bb3d693772447`, chain 43114)
- UnnamedContract (`0xa9fb0a8c21e1e3f85890541de689e77611fe90fa`, chain 43114)
- UnnamedContract (`0xaa7f729f743a09fa16b87276dcff8e3308dc732f`, chain 43114)
- UnnamedContract (`0xab4fe2d136efd7f8dfce3259a5e3c5e4c0130c80`, chain 43114)
- UnnamedContract (`0xacb8ce02e7f158c9e08cd4b58a197308bf37d69a`, chain 43114)
- UnnamedContract (`0xd0996694bc687a3c3e5de6332e6e542ad774dd3f`, chain 43114)
- UnnamedContract (`0xd106ec6e81e9b7f5bd33a6091a3c3e45b6183dc3`, chain 43114)
- UnnamedContract (`0xd86456d9ccc6d4ed7402d041d7e391d145bb9865`, chain 43114)
- UnnamedContract (`0xddde9db9af8f96396937feb33d569af7fe6c82f0`, chain 43114)
- UnnamedContract (`0xf65e9264aab3466b3753c172e6d1b340b485ebd9`, chain 43114)
- SalvorGovernanceToken (`0xf99516bc189af00ff8effd5a1f2295b67d70a90e`, chain 43114)
- TransparentUpgradeableProxy (`0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 584 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 21 of 605 unique; 584 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/184
- Verified + Unaudited implementations: 182
- Verified by bytecode match: 0
- Unverified implementations: 421
- Unique implementations: 605
- Raw deployments: 932
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SCAudit | Tier 2 | 2 | 1.1% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SalvorGovernanceToken | token | project_anchor | own_supporting | 0 | avalanche | unit-392070 | `0xf99516bc189af00ff8effd5a1f2295b67d70a90e` | ✅ Audited |
| VeArt | unknown | project_anchor | own_supporting | 1 | avalanche | unit-392071 | `0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa` | ✅ Audited |

### ⚠️ Verified + Unaudited (182)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDropGEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3cabb887d32fdaa1f9a09ac34d2a48b309bebb59`; avalanche `0xa8700f23b4e13006ea0acd420d51a17400d4941e`; avalanche `0xc0ae43589e7b27cab0c1c56906a3801838006ca4` | ⚠️ Unaudited |
| AIVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09d156f209e0c54d0365d6bb05f8a048649f2542` | ⚠️ Unaudited |
| AntTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5424f5896d80a4f333b35980d15856a34e43e32c`; avalanche `0xad25c722994cdabfe40f34548dfa1b0ee14e1262` | ⚠️ Unaudited |
| ApexMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e` | ⚠️ Unaudited |
| ApexMakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab` | ⚠️ Unaudited |
| ApexPremier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac` | ⚠️ Unaudited |
| ApexPremierAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x734d8cfeccd8485df397719e7128ca153dd38f79` | ⚠️ Unaudited |
| ApexPremierFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f`; avalanche `0xe3593df71edd22e8857df0d738db0adfb28f8cfa` | ⚠️ Unaudited |
| ArtifactHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc095ece2c0f315381b4bf6de169fbc219b24194c` | ⚠️ Unaudited |
| ArtMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3b56c9985ce06934109d4f60c47377f31c389eeb`; avalanche `0x64813357113500b9829fd47956e6fa58ebb56f66` | ⚠️ Unaudited |
| AssetLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x37686293c9423a1c5a171aada28ab5c9086b8853`; avalanche `0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x456a6e49409f137138e2e0255368a3a37876e87b`; avalanche `0xf451171872e9395021316e44d9f5475c90e27848` | ⚠️ Unaudited |
| BellumToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x03f77458e1eb9fa72b8186b573e40b106442f155`; avalanche `0x4a5bb433132b7e7f75d6a9a3e4136bb85ce6e4d5`; avalanche `0x6ec18092ee47fcc8f1fe15899156ff20c64ab3d7`; avalanche `0xb44b645b5058f7e393f3ae6af58a4cef67006196` | ⚠️ Unaudited |
| BIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 15 deployments: avalanche `0x1d27713179d379416a22cd28331ccbd19f0e1192`; avalanche `0x301946ca3aee999441070816b1d10e9ee437cd6e`; avalanche `0x666a53d7025136be4aa651af20fc5245ff2d1909`; avalanche `0x6aba46fed16d4415ae741f858da7e4975dd788eb`; avalanche `0x80108981f046846b97ab14a3e1b89adf0d8b89e9`; avalanche `0x958704931f5a1dbb6df3c548ed68b9161f486a92`; avalanche `0xa0de70c1240f12a15ada66d408738b21c1ce0a82`; avalanche `0xa558944a38baf2514bd432e62f151375f48d06d1`; avalanche `0xbc47f3bd40635489dbe77600d21c19fe4a09890b`; avalanche `0xc6f99208c411ca9cee00d6448711e09a1d05d89b`; avalanche `0xcbcc3995773c8b54f3302f0a399722014b79d338`; avalanche `0xcffb862299f971121e731422090e318f529363dd`; avalanche `0xd74fd3133bdcac78c437764654343131a7eab9e7`; avalanche `0xe0ee1acf6a85b0c63c20077c6b05d43920ef035e`; avalanche `0xfe47b6f358825fda93ffeee245d096c60ed529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3d193de151f8e4e3ce1c4cb2977f806663106a87`; avalanche `0x96a97d36fc007075e300399da892f5cedfdab0f0`; avalanche `0xad22037f1371741fb01bc3ef42cd226f978bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2`; avalanche `0xb392246ffcd4ca16f739f7037704c26fd271e8c9` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x4ecd8bdc617d68789ac2afefbab5d24e2859f450`; avalanche `0x576fbda4f271551d285b6a7006cc371157da622b`; avalanche `0x58dd219e2ffdcba8dbed71087ff9f9833799eded`; avalanche `0xabfbfed6fa208cf637b1078399abf5b37f345e9a`; avalanche `0xeed4362c7fa7962937b85af811dec81678afb465` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4f70785606938b4ba963feea1bf74a1c80eaf769`; avalanche `0x72cf3a3890b5e5a23539b818aabb18983b7cd315` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x754a0c42c35562ee7a41eb824d14bc1259820f01`; avalanche `0xdcaecebc332c76121af6e89f444630fd3e81f99a` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5` | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2af654340459b0a294f9b441b374e64b9a038306`; avalanche `0xa56b59edcf91bb5a42e14cbb98b95b83858ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aa19b923e93850b093d5c48c4971de0042bc262` | ⚠️ Unaudited |
| BIFKN314Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfb8803797b11c64cd8520b611816924ce845802` | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649`; avalanche `0x19b7cc0af65bd5557c24307e326ed4dfb07f4fed`; avalanche `0x1b923f8b47b4f4b15251cc48c8749745d53b1516`; avalanche `0x1c7b3fc72018ad4688ae7a20f949e8c681aad39a`; avalanche `0x1ff575d0f6600b8b64e3d8e03d379960db914d2f`; avalanche `0x2aaad91c486488ac0e59777f6800305037974761`; avalanche `0x2e3ac2e6bcfcfb120d3defa69bbf57025be536fb`; avalanche `0x463a7e39898c7c8aa893d62fa27da5057ac75e9a`; avalanche `0x490bf7bac47c7a9fe0a1f9eb543e44e32b02e3eb`; avalanche `0x4a88767d7fd1f42d9992fad9499345b9752e6138`; avalanche `0x4ab51ba72b941eed0d0ec4b1c1be5b2cb7404d80`; avalanche `0x4df08c8f17fb7bc1261cd308b049dfce59f5dc9a`; avalanche `0x5b5913eec2031c9d8383e3afcfd269217e481ce1`; avalanche `0x5facc8c76896e1958b2efdb903fb12505fa26461`; avalanche `0x65fcc099643919184946e844ca484f6988e053f0`; avalanche `0x772ebf2767407b6d94d7bc0f0941e28ecf308cdc`; avalanche `0x8360944a284e10fc6d79e65bd6c1c39c85e47cd1`; avalanche `0x8ab6a068cd1e5fb8be5b7225275a94900dc4aa02`; avalanche `0x8bb1e4fb686020363c55755cc0d2dec36d324bed`; avalanche `0x8e02a1e04c8eebbc08fdeb66bdff172facf65d96`; avalanche `0x9a25d82d48766f72abef1ebb3f3225c05af70736`; avalanche `0x9af107a2d06ef9263c27a9f0a536d8a2805d697e`; avalanche `0x9fa9b0fff6aaedf635b9a52e0cc4661eff92c15e`; avalanche `0xb643d98c36b583ee05d9ea75e68f28dbb75b5720`; avalanche `0xbe2ff43bd8cb2454f40cbcf611fddb3dabfc545b`; avalanche `0xbf835b8c4543daee8bb3bdb54ce1af8bceae176d`; avalanche `0xce645071ff749079c07ac9f07d2baba25b616da6`; avalanche `0xcec0b52994b739dedc0d87be5a820fa4940442bd`; avalanche `0xda5d3f44652c6671748ba66efafb8ba18db00947`; avalanche `0xdd4bfa270c5926db781faf9bf8d33998c6956d14`; avalanche `0xeb3dfdc417196957ead466f103336d02e96a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96`; avalanche `0x42bff70f10b180b366fe3932f254c2aa74255951`; avalanche `0xa0f24ad183be7e1e358d0f1e524aa69b7e8f5760`; avalanche `0xc04d3af360d0a90fc7cd4304449a54e712c44020`; avalanche `0xca94e291720d06dcdd46a46016cb1f16ae7b38e3`; avalanche `0xf8ac03e4fe64cf036b8bb3a6f9e02b8a74e98df1` | ⚠️ Unaudited |
| BIFKN314Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f4378a634cc046f12143ee9403d31fd4e03d8cd` | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x5d2dda02280f55a9d4529eadfa45ff032928082b`; avalanche `0x6242c833fe85de19c38b3e280a2ddcee262744fc`; avalanche `0xa6d21c577c218db78f7911019009cde51d11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00`; avalanche `0x88440014c897cea2ab0b1ca04fc00e2883e2ec61`; avalanche `0x978f58455318c7a0ffa14216d62760b4c8a7e951`; avalanche `0xd153feb87aaec061b6155d58477e33b2608d1e92`; avalanche `0xf43d68e775642f81181061ae10aa3e517533a15e`; avalanche `0xfd3a5aae749ae1b398c4237fddd5ae48881cdee3` | ⚠️ Unaudited |
| BIFKN314WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4`; avalanche `0xa242da308fc14312e8920a301d5904b49523e8b5` | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x709d667c0f7cb42e6099b1a2b2b71409086315cc`; avalanche `0xfb68c97424f1e8707a9fcf6cc11d0107d75c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x0133a82c4a2ec404ea61529c45ee15b08d374bff`; avalanche `0x0980861fd8088ab937dc4ac9c27aa7685118b3da`; avalanche `0x1a308e46577bce12d23617caa3068fa3e7620f54`; avalanche `0x1f6c7ef97286a4a93deb2ac6c1251628d6f8e50f`; avalanche `0x1fb3f2253783102491b440b1127e7ffe8949c612`; avalanche `0x26ab72d5f5bdcf68e3469ecfe19029e53c3124d5`; avalanche `0x28f699f63324f9fa09515c0d7642108a1fad020c`; avalanche `0x430ddec0dcb2b1505644d3d1f20bcb0e88ab2f46`; avalanche `0x485ea0d10774b0250c66b999763f3ce32dd6ed82`; avalanche `0x52e44b858f6c068e02d8d2b12f62a66a16e119ad`; avalanche `0x5c84b4f2e5a996b3fc71511d64f0b77b36c3e9f9`; avalanche `0x5fe449cec13bc3459f6394f4674f293dd71ac6d6`; avalanche `0x6364839853394084936042c4dc011afe783b8941`; avalanche `0x69e852291ae462abb2fd708d81f4a6a34a87143b`; avalanche `0x6c5d3169b811cc0d40b13d3bf92744985e5f05a2`; avalanche `0x737805fde929e5ded9266c481926c34f076a2e68`; avalanche `0x77cb12d513e120248ce622f08e26e09ffe9e8573`; avalanche `0x7e41260fc1946826a30a2427c7232e3240811b5d`; avalanche `0x9dcde306a41615296a36eb5a93399969d08be6c4`; avalanche `0xa28745ad50870b0acbdb53ab2800675895c00abe`; avalanche `0xae3f013d863a5ce7a3a6652e06c44861e91b47a0`; avalanche `0xb47f0dff0282dd1da22484b5df7512d77c7ce5c3`; avalanche `0xb51dfb6d8daf318fbcc4bf2693d50a40ed361f31`; avalanche `0xbf2b8657d7a44acb5832689d37d63667bc97789e`; avalanche `0xbf88e0d6c50879d6f6adcfb81cdd83bec831bb18`; avalanche `0xc80f887f6ef3ec6683e24a873e0a935f49fc817d`; avalanche `0xd714f26e6d0bb8de4e70e00f77932fca77fba4ec`; avalanche `0xde24686268bb5ddfac35d032e2663c1d700114a1`; avalanche `0xf31856c9c5b890a07eb5a1e6d045205e517d639a`; avalanche `0xfb0cf88aec79024f31c7b64d10bf68019ed29332`; avalanche `0xfc6c9b50554828bf53de0954002f8d7a934e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x421d0df5f147aefe3819466f6bc93fd278128815` | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x317828cbe7ac8707743bae02a2bab8219aea4573`; avalanche `0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3`; avalanche `0x87f07395c5747b45f525fbee289b09e4dc74d66e` | ⚠️ Unaudited |
| BIFKNRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 38 deployments: avalanche `0x0d4c97526dc88b7c208b36644d131a7ee7134a4b`; avalanche `0x273a7a0bff2c24c0e022d472649dfff961433025`; avalanche `0x3438febe70c367387783a8a5678399a07bbc7c01`; avalanche `0x3f722938182af1bc4a8b65808972b0a1f3a2416a`; avalanche `0x43b6177137a87c2a66905f38b9db796a9af30ddf`; avalanche `0x49070a0f9b040364a46c2d3e58a1ecf983912382`; avalanche `0x4da6c437264dbad9d5dc9783e1294fa3879dd044`; avalanche `0x518a8d2929ff2b2650a42852d54d8669d76715b0`; avalanche `0x59c76d26788f283cc9c7bbb1cbbecbc1acbfb5ac`; avalanche `0x5a2d94b008004aaff11d8de2d79d0ef648b51c64`; avalanche `0x6e33f505428bfdd206a3584975a330f5ea36d041`; avalanche `0x70e5e1a266a151403a31673c7fc2163f4171d058`; avalanche `0x78ce754b4ba099d1932f3090d6018fea1d9ff37b`; avalanche `0x7d84168f0037fff3064bb9e933868d94b74332b0`; avalanche `0x812f7ebedc98f57ab54966ebb2ec017a4ac45248`; avalanche `0x88234236a30db8d521318bc14a00124265aed475`; avalanche `0x8890c465eb3a33853afd9609cafcef2da71aad8b`; avalanche `0x88db874870da9fc77ed4a327577f8728b69d97f3`; avalanche `0x8d794677b63894c31ced45e670cad65ad8fa85b8`; avalanche `0x8df656ef83be5e4d7836b6ef7777c425493cd581`; avalanche `0x982c4710a8db96b973d3f7edb4193f4e2bda4418`; avalanche `0x9a78ecab35d50526242ca9bbbb212e9b5f0bb340`; avalanche `0x9f1908e6e20377c7b869d232a3ff95e8cc745aeb`; avalanche `0xb32f181a0d4bff8d8e410f5223f5895521d8163e`; avalanche `0xb683a33600d9f91fffcd1fc698cfcd6603eff7b0`; avalanche `0xc05d6afa9243b624b8f25b453feff4990be0d70a`; avalanche `0xc158d2d31a854644ac7b1ff13fcb1c1def67194f`; avalanche `0xc36a0b1c3a2313275978d5db1d83fd13117da63d`; avalanche `0xc52749abd40c2d8182e25ca93fc6e991bff37727`; avalanche `0xc9b97d0d5d2bdf203896463f96c77ae0503cc2f7`; avalanche `0xcc5cd9b889792afdd513b47c67f608cb49361da7`; avalanche `0xdc35e5d3c5fcc2d9c82bec32edfc490ca742e34c`; avalanche `0xde7780318f860d8f9cb72fabd77f9c3b2ee015b2`; avalanche `0xe95da219e63fc6547da380b22f749778157c99e8`; avalanche `0xeda36190479ce4f08c00f2f465da74bce9026a71`; avalanche `0xf077768c9742a0be0021e802373902f1ac9296e1`; avalanche `0xf11e82c48568f7bd3941a713b12f0af31c31f7ea`; avalanche `0xfde2ea2a9c0eac38241cdd351345c5337aa81f19` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46b9144771cb3195d66e4eda643a7493fadcaf9d` | ⚠️ Unaudited |
| BnanaCourt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1b897682dd07d742b1ae7e0005d9d7d046037389`; avalanche `0x73b425306e7ed698008ab6cf66f0e0fb0574f921`; avalanche `0x80f5c122df691384199a8b448408b426639e2238` | ⚠️ Unaudited |
| Bonez | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d6ec47118f807ace03d3b3a4ee6aa96cb2ab677` | ⚠️ Unaudited |
| BonezClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ccff2d7d97f0577fd79e91c2f28e30bb65a54cf` | ⚠️ Unaudited |
| BonezStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd63bbc7afd3a76da88f42702ec9a7aade7cfdfe8` | ⚠️ Unaudited |
| BonezSwapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a3fb36934a74380e0f28d4bbd4e16a01afda7c4` | ⚠️ Unaudited |
| BpayPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7147f6002cc36e93e6b64f3f9cc82e3e6ac899b4` | ⚠️ Unaudited |
| BrevUniversity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xcf7b2caee040def16bfa1090c8c9f69d61ee3532`; avalanche `0xd13510243226c8182abc11bb2a59fe385b8bf5c8` | ⚠️ Unaudited |
| BSCSNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66841c6ddb09831c73d1addf0503b958d930cef1` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x286fab35db995dc26a1d57707cb0faa9ee848205`; avalanche `0x2affb6865086608ab53e7fd62f15407a90dcb9bb`; avalanche `0xbb6b570f861646d3fcdfaed1d021eab4f8a7d43a`; avalanche `0xcf5de4fc5d7b9cf3f8d7c6d9a2129c2957e8f857` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7e71e483986b1e87d2c871595201fab9e3ee4813`; avalanche `0x84926d9d604ff16dfa19b783c0a7284127913d8b` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x8ade2c3c04731d382a29d871d67296e15b1d591b`; avalanche `0xc331d7843e92d3b6cc1e448d15fe4fd24c3a9f8b`; avalanche `0xdd4d94efba79f589bf0f092562b65f905291ad42`; avalanche `0xdef6738dd9da7639a4ba29a7628c5f2440ad5ef6` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7` | ⚠️ Unaudited |
| BurstFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a47cd3efb448bbed62a5a290a20928110952c76` | ⚠️ Unaudited |
| BurstFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6c882394a9fe366de13f2d5229449be81d612602`; avalanche `0xef89a728cd6319f603e266c9b9ad249623276644` | ⚠️ Unaudited |
| BurstFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1f62f42726414ac807d8fd553423c0f55936f1ba`; avalanche `0xce4d396b8ee9a2d24d48466074567244fdd9677b` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e`; avalanche `0xab935686c63933d56a04491aa4623eec430d1ad6`; avalanche `0xb86490dc4897e72ce029919992040122ba0a2b6d`; avalanche `0xdaebd8983c80cd185867a167b14bd1ca7d71b72a` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903`; avalanche `0xb91b66dc436aeb6bbbd2fa74150f01e185f463d1` | ⚠️ Unaudited |
| BurstFactoryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xbc74a3c24d8aa980445adc889577e29089c07cdd`; avalanche `0xde2762aa18fe86dcce4ab89539eaad446cd0c9a7` | ⚠️ Unaudited |
| BurstToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x1c8df0cae834438de0a301c499078c068e1d0dfc`; avalanche `0x2025ad0f6ae60718691ea0f9ac7f4d1942cffea8`; avalanche `0x52d370e60c8220497da6abff36bb2587a31203b6`; avalanche `0x5410bbf364dcd135d63cccbefcb5e1a61f15c0b6`; avalanche `0x6c0a2976cd2861cbd0d466bcfef5ac0c64b05e98`; avalanche `0x737729ed488a4cde80b4acd244d5efa533ad4893`; avalanche `0x7824ef3b021289a348f4d9e111972d0d3f5e3b5e`; avalanche `0x9e85028b546d9d3ea3b95ba1512f35f140ef486a`; avalanche `0xbb5deb03b4cd369b713428def5d389f969efff66`; avalanche `0xe33d4430a36b6625341b1b0b8a16afdf7cb2928d` | ⚠️ Unaudited |
| Catnip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07a9f59728f7e0403d6b5f6c84d95ee9cb69260c` | ⚠️ Unaudited |
| ChiknPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5a5f0cfdde90adb74d1bc34c67b867cfea3c3209`; avalanche `0xf4a52e4eede1f4f6c3fb6f13e59b2fff5f32b43e` | ⚠️ Unaudited |
| ChiknPortalzV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf31e89a2cc500d7cb2396509e674c1701e72a9` | ⚠️ Unaudited |
| ClaimNodeOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c` | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4169cf88c7ed811e6f6e61917c5b915bea49476c`; avalanche `0x6476a72282ea701748f56dcfb8a9ffa919bb286c` | ⚠️ Unaudited |
| CloudzPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf755a817f9891954c99bf33bb731b8f9e8393754` | ⚠️ Unaudited |
| ColonyGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6` | ⚠️ Unaudited |
| ColonyRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2e7ab89a2c59818e1ecd925e718a9d63889a131` | ⚠️ Unaudited |
| CopperOrbMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xae51aa005bb123f211730fed55a5fbf2a620770a`; avalanche `0xb41b3d801af59b90f69011e67c9a886743536978` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`; avalanche `0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | ⚠️ Unaudited |
| DataGalxe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbee7db10c2d16f27045bf9b1953015dfd278c0ad` | ⚠️ Unaudited |
| DirectDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x837d54af002188045662cc3bff5b30e40247ba53`; avalanche `0x8a34528c3879fbdbf2fa6273c5fc7a6854311ced` | ⚠️ Unaudited |
| DogWifTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e3751e7e4bd1093fddcd68fdb10cc86d785f63d` | ⚠️ Unaudited |
| Doorkeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2598ebdfa5d414695ab6f56efdbc989d8eed1e56` | ⚠️ Unaudited |
| EarningsBayV2Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7c53aa86b49a28c627b6450091998e447a42f9` | ⚠️ Unaudited |
| EarthPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42d6f960c5fcf3f920eb402c8bb165bc3be20653` | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15`; avalanche `0x2542d357c731b07283d71e25b3c9adb51f9a2521`; avalanche `0x31e9a83f5e1070c1950c4805634667a4bad21d4e`; avalanche `0x85d1483d7c39158928a76e471170aac8f805c927` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x143ddb612a40ab9865fdcd9fb96dda2323b4562c`; avalanche `0x5974d0a7cab5b7fd7ef4b9493b9c7dddca1be4a8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3fa691e4a0a48c52e0b3e4d7dfd2c2a578691f9d`; avalanche `0xd52d1e4d0c4065b697765ffc7376ca4d8b0586cb` | ⚠️ Unaudited |
| ERC20Tokensx | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x201d04f88bc9b3bdacdf0519a95e117f25062d38`; avalanche `0x56b9f5e181550b40472fd8c10a34e4ee6009c304`; avalanche `0x8f56421dc48dcce052d9afc80b696291ddaa832a` | ⚠️ Unaudited |
| GECNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x231cb2f2484e9ad123e827fadc26556eaffbc36f`; avalanche `0x2da215293f66319facdf8fe41d99524a406d4c8f`; avalanche `0x7f3590d488d29bc15ba3cd242b34230977b547e3` | ⚠️ Unaudited |
| GECToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8385cecb013561b69beb63ff59f4d10734881f3` | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa2cee2d7f93e38014bcc8d236484712ca6b1c4f` | ⚠️ Unaudited |
| getWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfd6032258ad9470b7877a6e87a85dfa91f11d2d` | ⚠️ Unaudited |
| GGAVAXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3582837738a46985f900e8ab30191198e0af8020` | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f` | ⚠️ Unaudited |
| GoGoGasStation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`; avalanche `0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | ⚠️ Unaudited |
| GoldenOrbSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa2ef728ed07c52c91a5dc2f21f087bf42e04ba1` | ⚠️ Unaudited |
| Husky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65378b697853568da9ff8eab60c13e1ee9f4a654` | ⚠️ Unaudited |
| IndexFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6`; avalanche `0x650a85049d2284a90c28a2c0e48506aebd1fcd41`; avalanche `0x883594f6cd822dc01228f4581b4d1edf1b8bb723` | ⚠️ Unaudited |
| Juicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd`; avalanche `0x9f7051497b3112c64d37fa4ce70670f29ec43146`; avalanche `0xc654721fbf1f374fd9ffa3385bba2f4932a6af55`; avalanche `0xeb00642a73a7c40855a7d33c07f30064d28bc48b` | ⚠️ Unaudited |
| JuicyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5c8f079a48f78a0ee15135cf48b7033cd2c51fdc`; avalanche `0x856ddc26e986b4eca3984e77b8f990e0ed664349` | ⚠️ Unaudited |
| JuicyAirdrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3943c34420f0f174d1b491e8890feb4d52e9504` | ⚠️ Unaudited |
| JuicyStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x02d14dd765ee6524bca876b8a203000649314064`; avalanche `0x58fc11578b37ab6f02a6a15ccf3e3ef20929f5f2`; avalanche `0x99ac3548ac5654b23282d6fd52c6ec76a07c88a2`; avalanche `0xc1c19ffac5320fc5356757bf78f38fb943d8ff1e` | ⚠️ Unaudited |
| JuicySubscriptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x11522c62712c4791db1258b8a8dc96e2e71453c9`; avalanche `0x1f49ddf43d2590811a44210f89552f314ff07b2e`; avalanche `0x37fa512cec716b795a9026f68699f67238e5034e` | ⚠️ Unaudited |
| JuicyTokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x2ce2edcf530caa540c441b61ffc9a80cb350a730`; avalanche `0x471a489a567a4d3950dc2e40189e8495646de731`; avalanche `0xb1bb873f134896b371cad4475433762e92d0a93d`; avalanche `0xde485a725e70355d0a0ef8786b50d28357ddf650` | ⚠️ Unaudited |
| Ket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffff003a6bad9b743d658048742935fffe2b6ed7` | ⚠️ Unaudited |
| KetPfpMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x06d75d9001fbf39c2303cd6154ee0419a418435d`; avalanche `0x7b1ccf7874b108ad81f335c3a71037ecd0c75911` | ⚠️ Unaudited |
| KimboCollege | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6b2a6a282f62d5a1c449c1a52237e913f4590c` | ⚠️ Unaudited |
| KimboTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeb261db831fd11a3f700014f3ace6073da06e22` | ⚠️ Unaudited |
| KONG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xac48e02ac18299e061897345991857a80e5026ba`; avalanche `0xebb5d4959b2fba6318fbda7d03cd44ae771fc999` | ⚠️ Unaudited |
| KOVIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x31166bd16ed20c0ac78930f5e4b7bbb4ad7e27ec`; avalanche `0x694200a68b18232916353250955be220e88c5cbb` | ⚠️ Unaudited |
| KovinButton | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x2c31ea97d6d727ee346cddaa81ed6af4706710eb`; avalanche `0x2e45e0f10cc44b68bf0fa86879463a65d260e839`; avalanche `0x6301643d13718c1e6f600ecc96deefee1986d147`; avalanche `0x736ee8325a5c826d91a28f15531b2eae400dab57`; avalanche `0x8ed6196803395d67367e2d0afe05c3844e5d17e4` | ⚠️ Unaudited |
| kovinBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x284a2c979fe7cd1a9bc5d94b95f1e9ab408d3b89`; avalanche `0x5a2c7bf3c3aaecb33cbb1f2930c058d26c5124b5`; avalanche `0x8e1b68fc2ca776b0147528002d0c2f5ff03445cc`; avalanche `0xe507d2ead1a1503b6d97f8a4623bdfd8924d2f76` | ⚠️ Unaudited |
| KovinJeckpot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: avalanche `0x11032f940848a70a6d50409853a20dddb414a4e0`; avalanche `0x1ec53e32183430631e6b660f67b0affc40bff06c`; avalanche `0x21c183b0a7597f3819da16643befa68a385292b1`; avalanche `0x30648f9842a6ace550a9dd9e40dffcc0d4c1fbbe`; avalanche `0x3d64aa85154a9ba5ec3588204d2989d38c78d81f`; avalanche `0x5f2cccf63185e8272b4d1f73472f166d23cf468e`; avalanche `0x60d912647de10f242e6a8d6e94cf20b1d0d9cf20`; avalanche `0x61ea33990b80907a34b90e1c8bf05d66b76e47d4`; avalanche `0x6fe73770af08ea3a93e679a1ccd331b3e7f3907d`; avalanche `0x70b145d9636747e45fc2fc6245b0f9cd4d7febc3`; avalanche `0x85677d7fa03819d55c3fdff7f34c3caee52eab7e`; avalanche `0x995c599322d52118035b0661395da31b7b92ec1b`; avalanche `0xac956357d7824665cb9d52dc2abcf79f8f8e26ed`; avalanche `0xd03003265df73d9d8f85dd8f246ec7a73b21386f`; avalanche `0xe51e69060fcfcb50bc7ef3b3c666a06c215e52bc`; avalanche `0xe7b25aaa8724a5239abba38c42e9aff3dcb9ac6b` | ⚠️ Unaudited |
| KovinJeckpotData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x10526c0f2da061debad70c4087876bab42d24c77`; avalanche `0x1f060a4cab49d262f78d6020fa4970309e4c7c7c`; avalanche `0x219775d6686d01ea5a4b94df3dd6631b7796ad0b`; avalanche `0x4b2cd139592cc75ff73264a0c6a1e5c200189142`; avalanche `0xc448e3de6101c260882724d001cd8ccdbc43d087`; avalanche `0xda44ffde48244c8ca4423f5726af34813ae64251` | ⚠️ Unaudited |
| KovinVRF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5163308728d99a70956ed12ade644fa2e5e5d7cb` | ⚠️ Unaudited |
| KycProofVerification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9` | ⚠️ Unaudited |
| KycStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ec16bb9fa514cfe02766b27dbdbecba9254092` | ⚠️ Unaudited |
| Laifu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21e32d59b1f9574674006a4101150a004d93c24f` | ⚠️ Unaudited |
| Landwolf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f94b8aef08c92fefe416af073f1df1e284438ec` | ⚠️ Unaudited |
| LitterBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53d573b85a32f3c3cd39d4bea55b116cced0b53e` | ⚠️ Unaudited |
| LPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0ab862653f8ab1f1846e887d7f6a060e6dd01664`; avalanche `0x0f4ee6a202bca16430021fdf1d36fb026cc3dcc5`; avalanche `0x6a945faac1b3db16e93bf916ee5701e264f60805`; avalanche `0xf7326b0d9f211d7b1d3ae81ec9c5ef2d70d5f70a` | ⚠️ Unaudited |
| M1ZPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda54f80ddf96fad96be883e349e40b458352e311` | ⚠️ Unaudited |
| MasterChefColony | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0` | ⚠️ Unaudited |
| MemeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a842a6f4580edd3df41c1f31e0395044de6bc75` | ⚠️ Unaudited |
| Meow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ad25b0083c9879942a64f00f20a70d3278f6187` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x5463fb623fe9806b78d8ebc41f4671200295a9d0`; avalanche `0xe3418a4d0c4aba68cac317bf6f5d9062fe79c871`; avalanche `0xf233963521b8e0f581f0e75bba237598c12bc14f` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x49c3f341106d087490fb6cbad749179dab7ef110`; avalanche `0x4c8607cf2213f5b86640c09391481801f56c5f40`; avalanche `0x7276e6bd2113d5d58596865a444e68ef81a3edea`; avalanche `0xa457010c6ce2b25a29093ba30914cb008ae33fcd`; avalanche `0xcc4db7943215a3c219055e9071988a9c3908cd10`; avalanche `0xe9affc054f4066a9acaef1f8bea564e5ab3fbbc1`; avalanche `0xf93b7ab02ee9f3cd7d0478352c2d8d7d095cc4a8` | ⚠️ Unaudited |
| MinipoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x9e6579161c6f53722541edbd5ac96779c5b280e9`; avalanche `0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08`; avalanche `0xc300bc9b4b690ba7a182126299a0618ece268ee7`; avalanche `0xc8de41c35fb389286546cf4107102a7656da7037`; avalanche `0xe51262211948c338c50640f1d5bdba4f4d208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0a75a480af4adc81b20b1664a1da2bd7caefa430`; avalanche `0x8c05d78066431c3b11bbfb6f3546fd3f1396115c`; avalanche `0xb5f2ed77b7723da56ad58edca5106f07f390e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`; avalanche `0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1e7b06544a13315e6f7301cc161761813ce4b1` | ⚠️ Unaudited |
| MultisigManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b` | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba6a7aa3c1737dedb2f8db71a359fe8dde9e60d2` | ⚠️ Unaudited |
| NodeAsAService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`; avalanche `0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | ⚠️ Unaudited |
| NOODS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x206336c741178d976e9c5444987497bd8fa869e1`; avalanche `0xffdb03050a5ffcfbb2d777623e6608d99622da98` | ⚠️ Unaudited |
| Ocyticus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9189d18f453b1ec1f02e40a8e3711334f9ea210b`; avalanche `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` | ⚠️ Unaudited |
| OgerzPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4962aa90953d913ad5716fb12b9cbb0fa1bcfe0b` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30fb915258d844e9dc420b2c3aa97420aea16db7` | ⚠️ Unaudited |
| OrbMerger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x412cb1580c33c421b2765e91a6c231a246347839` | ⚠️ Unaudited |
| OrbRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1f240def4c98408e22a28daec1e920810ef8b1d2`; avalanche `0xc874be82cb1f5d6842783e21333e76b2e17b565a` | ⚠️ Unaudited |
| Orbs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x62df6e203916617ed20e87babb2105e6df37fcc5`; avalanche `0xec18aa29d678f5e5767076e9b5a293e21af8450c` | ⚠️ Unaudited |
| Orbs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b`; avalanche `0xbca48e3fda5a0f8fb02098ca150b948986626891`; avalanche `0xd491c8b0ccd615c05728cc40de4cd3415c0f9734` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef4364fe4487353df46eb7c811d4fac78b856c7f` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: base `0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab`; avalanche `0x174b0d6b0f4cc58e5c7a223841594052c741df6a` | ⚠️ Unaudited |
| PitBonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6666f6fa8bc1759b9266d30d41cb443025926c9` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c2586d68229fde47564546784ab3faca982` | ⚠️ Unaudited |
| PortalzSquadz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2644daed660c7f78611668458e4905cec1cf29e5` | ⚠️ Unaudited |
| ProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x41a76343eb93b4790e53c8e2789e09ef41195d0b`; avalanche `0x70fd1a4419cd4436e4d44744c09f09a743fd1b65`; avalanche `0xa008cc1839024a311ad769e4ac302ee35a8ef546`; avalanche `0xfc3ea32c03b4be326bced178431789f7e2d8051a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x5313c309cd469b751ad3947568d65d4a70b247cf`; avalanche `0x6e8fd36d51d159209054dadda7f87aa4e1aed940`; avalanche `0x741c5f9778d15910b406e2ebdbe4d9366617690c`; avalanche `0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d`; avalanche `0x9484d5da62664d65744de5d2c148c0ee89416c71`; avalanche `0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190`; avalanche `0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6`; avalanche `0xdbfe1e9feb0e297c2c580a5eb5a97c4f46a56aa7`; avalanche `0xe4d695387e7cfc3dfd388f1cf8bd6eba7e4e3027`; avalanche `0xf4c5626c39570f0637c1785b378b0ef45a1620a9` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d` | ⚠️ Unaudited |
| SalvorGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x623494c7c5dadaaf32f7fa2ca2f0d893183c630a` | ⚠️ Unaudited |
| SalvorPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9928555fb856692004ebcbd4f391e06f69e1bb97` | ⚠️ Unaudited |
| SQRCAT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8e7fb72b53d08c4f95b93b390ed3f132d03f2d5` | ⚠️ Unaudited |
| SQRCATMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9` | ⚠️ Unaudited |
| SquadzV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3136b940bd05d56672d6055d40efd1d296bd8fa9` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x439776d3786719e1243b628ef05e905679374a5f`; avalanche `0x5b0d74c78f2588b3c5c49857edb856cc731dc557`; avalanche `0x9946e68490d71fe976951e360f295c4cf8531d00`; avalanche `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc`; avalanche `0xf2501d3da6edfc398270bcfde340f78e12a040f9` | ⚠️ Unaudited |
| StakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x2b8c3c4d13142d7457dc80c92db4c62f3543751c`; avalanche `0x62685d3eaace96d6145d35f3b7540d35f482de5b`; avalanche `0xb9ad5f3f447f2c7902924a575a0441b62ae318e1` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`; avalanche `0xa582a36f77e4536d95cbb99126640e7cbebc3a4b` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x081b0a036cbf55669685d2ac0f549b386d3e1f35`; avalanche `0x1bbbfa5685db9ccbb4b996521bb27a99d21f9e72`; avalanche `0x3b961307856dc53a33f7b29cfc1d03ff6a414ea4`; avalanche `0x3e186d38f7529d5a40393c30b9b6b6be68b54b7e`; avalanche `0x46ed333c9c79ff8ff2437cb22c2d98837d79850b`; avalanche `0x6cb35a17bf8c7126b6f3aca0e19602322ac179dd`; avalanche `0x7a1164339336d5b89c2b32d0258f1c9be06d078d`; avalanche `0xd9d021f424fa8855c2d0a5e59d4e6673eeff1dc1`; avalanche `0xe0f912f528c26686690e77d6c78592589b56cca7` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`; avalanche `0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x697d7c12853a59429b62ab4d310975335dba2c68`; avalanche `0x9bfade56e75798167a84c24704fed6098b590819` | ⚠️ Unaudited |
| swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7e37a6ca2fcecdbd594cd0d6617b292fbd1050a1`; avalanche `0xac7b33a50f0c7db16641838c0cc4d3799e3817b6` | ⚠️ Unaudited |
| ThePit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x96b9058ea3af4c47223d470ac8d20322b719d672`; avalanche `0xc9871bf1ee787f2134f69d6c6ed010bd636fa33b` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd385f1947d532186f3f6aaa93966e3e9c14af41` | ⚠️ Unaudited |
| tip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: avalanche `0x039f029934356cce9e3637279e8e6e1077caaad3`; avalanche `0x1da7b5e5e6789a5bde12bec92ba90589cf618a53`; avalanche `0x722f29e7fa60e9d49555cf31cee7404234a2d1bc`; avalanche `0x80df4914312982e0209e33efe3f8c636fba604b6`; avalanche `0x9df2f891f693298d563b160bcc588c45afe82840`; avalanche `0xb0c63bb7727ffe77398a4f426e9034e42557e320`; avalanche `0xb85afff031ab2931501f8b86ba0812468c655d9e`; avalanche `0xca2efe9b6caa49df45cd8b7f9df6f01cecd644d3`; avalanche `0xd15bd182481c6291fefaffb066d3ae518850522d`; avalanche `0xd5e8ac004bdea58285ac5eaa15fff8350723bda6`; avalanche `0xf563cb4b20d951a72abca3ea486d32d8b3399106` | ⚠️ Unaudited |
| TokenggAVAX | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x576d98d26419c5ce9595833403f64d919eca7323`; avalanche `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922`; avalanche `0xd960ce17d15bd0d056bc4aadc491cbb3fa16e584`; avalanche `0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | ⚠️ Unaudited |
| TokenggAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`; avalanche `0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | ⚠️ Unaudited |
| TokenGGP | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69260b9483f9871ca57f81a90d91e2f96c2cd11d` | ⚠️ Unaudited |
| TokenpstAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`; avalanche `0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x49424f026731af05a7a5ecc25901d0d9841d5586`; avalanche `0x5d7dcc7037f38e71d2e995cf15f35d02c0a666fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af`; avalanche `0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0eb749a42ca15d6ee8ad30e789586c09c2c52388`; avalanche `0xe6224b21361e6f5ab503a930e6573caae5ff9f08` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1467826e9dadb57db1fb9f1ffeadf01debe1310d`; avalanche `0x23904c60c3fe69d70b7dcc629454281c93f8d044` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x17ce2a490cb260b48891ade019a86f4b4a5520d4`; avalanche `0xad36f6b111bec7f9cbb18688c48fd9bb7a49a86b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be`; avalanche `0xe8f9e15b1ff957b18b047c2b4d42f1d8285140b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5377caf64cf02c1320c66030fbe3773431377dac`; avalanche `0xe6befa51550148d720cea18b3962f355c733bc55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x60d0a833ceeee90b12cffc8ccb235baae4858096`; avalanche `0x7ccda6e26dced1ba275c67cd20235790ed615a8d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x62b38293896e040e36fe5345f9d30dbfd75c04b9`; avalanche `0xda88d0fe9edfd38ceffb203c749afc7d4ffb1d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x708e887ab6475466379f6d7b89937add1d858b6e`; avalanche `0xd071aa359ed1b7776a12c8329f2c337abed157d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x91c5f275afb2ae344687dfcde5354477326a5f3f`; avalanche `0xe9b65e789e2e81eeb0c7226e741608cc2734d9a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba`; avalanche `0xae7bd6628163897c8d2b6c7e55b236a060d1bc93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0xb244b1507d7cfb8de6883fd985ee5e205d3c6c54`; avalanche `0xba239e83c77b2a77b3f5af15fe9d291b2c48885d`; avalanche `0xc2de170463bb17b67f75b83d3f1f789a42de054b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67`; avalanche `0xc54c0c19d762cb4962290bcb1c47d98a464bfad9`; avalanche `0xfa5951dff3c7e22ec9350c05c203771f24b9ab76` | ⚠️ Unaudited |
| Tuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x833d1c982b28df759cbeb2f69a23a8a657b7fde9` | ⚠️ Unaudited |
| TwapGGP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe` | ⚠️ Unaudited |
| UniversalClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20` | ⚠️ Unaudited |
| Unmasker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x00969acae49bd657454efc17e0e2445a31b0b7dd`; avalanche `0x60c175547ed387a95f903aff671c1959a98d2ced` | ⚠️ Unaudited |
| USDCInvestmentPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82d7d932e3e12d18f01838d4c01c1dbb539c4050` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x93640f79cca740bdaaec37cd0eaf553ae5d7dcc5`; avalanche `0xefac81f709d314604a7daee9ca234da978c2be20` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x3dc34920e12067de82de2a94cd46544b255d08e2`; avalanche `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e`; avalanche `0x472e8266f564d52cba41e50817e3d2b63df56238`; avalanche `0x55eadf68ab32c4f782828148b465a76c54bd8a16`; avalanche `0x87c1b4de866b686e2b44e63521f02026e2b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x61f908d4992a790a2792d3c36850b4b9eb5849a3`; avalanche `0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | ⚠️ Unaudited |
| xBIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43f06724e10561ea416ad7438ccfc94f486374f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (421)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x068f5e31d259d4807c66bb647059186a43a1a0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x082cb6e892dd0699b5f0d22f7d2e638bbada5d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c963cce86249b2b694a9f22138841081bd4eac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cd36de47efdb8e032cab9d56d5191fbbb091558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fd537ba21d36fc754bcfcfec9470ff564e1be37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x107c534cefe489019732564cfd37244782b36334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10ee12a5a79988f1b07451fca2c9259867214899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13ee19f627d657db7965c7be02334057ff069950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1480fbabd722f998600ff187999238d0a3eac4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x158d7ccaa23dc3c8861c3323ed546e3d25e74309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17ba20e7a96914eee0be1023e78d8029c1b84cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192df953b317b8aaec96ce48baace2c4087f573f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a540088125d00dd3990f9da45ca0859af4d3b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29dd6413b7a0b6a380326894ff839903c73cd53c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d7a71168f6c2d50f789fddb86c1a2aba9ca9759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fb74722d53dac5290515c477950f4292da06ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31152df61f65fae41d889c397a3cc18e26d941ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33e34b8684565fcf6a9dd52a7e92c4e70211a045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33f8120a17d504609e49c8eed4a0480f09e736af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x342676f14926e40537a2e975e1c51e2b452fcebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x391b803c55c411ece432db81b5f2469edd6bc543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3984023c8389acfe657cf47e209a80e5005a8cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a75de22c7b41b71f2c077de56c9b5ca2454ae56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3eb211d1b64bde1af99bfae95fe5063fd1678743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41a0f5b16b10748d594b471850bd7488f929beba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42b4ebc52f4e1e2d3fa3d9676f86a21dc16bfe5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42f4f5a3389ca0bed694de339f4d432acddb1ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45c60adf130f21d54381be129bbe2abd0c574654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x484f39869b656e33d4002b41e553453d3c76100c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x488db0978b34c6fd901760b9024b565c1117c7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x492d923f9662a0321d3f9374ce919ca8647e7127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49ff03047883c2afb4df9a2129122b4d0d951490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baffdf399f9d6e010622a85fe9952dee6321e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c72d304bb37f7f29c4341dd79591235b19e3070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50725af160260a316b2673c71c8c21469f6732c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x511742959b50826c144aa8715998daa3a92d237f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53b6d4d2fa9dd920f7ddba4376fbed42251e3fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5706d5a36c2cc90a6d46e851efcb3c6ac0372eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579e9c2cf23362f5ac74d876e600c5bcad5aa33a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59e73e09d98974e1dceed4baf264f71fe7844c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c4a1a72c5a11909e318fcc08e52e49299abedaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c621b19c9547274b0105a1f8a84139c84b755b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a203ddcde45fbfb325bdeea93824b5726b4df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614f3123bf1272e9f68800044274e0ec9bda3811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x652bf29626356b7fadc2b5205d4f81be9743da1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a98f48f0bc13471900d4ce7a79dc1ee68ef6514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70b0a7224ef45e2e3aa03743eca86159644630be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71b8efc8bcad65a5d9386d07f2dff57ab4eaf533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x766e0671bbbf59370c35a8882366a2085b46eb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78238ae69a114c41e5ed28868bc307757dc94b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x785a196826b7b54c7baa0eb563739eca331b91f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x788d54649799f3df86486876e959f26d549bd823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79653c9f3efa13dae8b07883a4d1e180c7003a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e26173192d72fd6d75a759f888d61c2cdbb64b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8292b43ab73efac11faf357419c38acf448202c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82dd5f1f9f2ccd4bef8956c98f109ed4784c96d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82f04008b4d080e41273d09de7077899daca1c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8534ed9dcd2e3b407f6b8cddc60f4860c425e7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x854a94f8f2709106ab41c8f876e37e442c7424c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8867eae1b003a6bda5dfeaed80a903a74b109ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8871c219257b0f17a9a20f3c09626161b1a0674b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e299f9124c0c0924f4308d181b51c2690c75a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8c2d2906de2d92548a8bd8f21d34318d74fc1cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e0253da409faf5918fe2a15979fd878f4495d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x917e496ef09fab65f7cd0336121ddf8f1847bdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91ba6e2b41d63e3407cb8589f1a5636ef63d7e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9215e9a88c94b9dcad5b02e32cd5cab2a291458b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9381075774bcf3cdb382c354c8eae22d7dc55fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94bf9622348cf5598d9a491fa809194cf85a0d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95d2bc450913cd7575fcc961e889b12a4e512beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9883a9f1284a1f0187401195dc1309f6cc167147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c690c267f20c385f8a053f62bc8c7e2d4b83744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ce798ec2a95edde3f1c2db603c38369bf1308a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d1a260804c8f28510e6594344abd7c46079817e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e87c7ff211ada0e98dabf47049729ca679b098a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0f0f05ff2298a27ffb38302835bd2c65c188110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1a98f9aa6c56652e4f306d38a78fff554776665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa317137595ae79a31c36fae0012022e12d5603d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa23ac2db26f40282a6f0f559f965c7fe07a84a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e5789f9a1b5d8ead1a154ce22ef15727863ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbadb9f3e99f43f8350b158471a3ac58cee4557c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb1dd90e2550f18d2be10f17bbd5eb5fc39a8c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc8b1e9ea09e278b9cd3e80a287edb5bc348948e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf60e92dc4d0c181e733d6b6901b95eedd62649e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf6fcd76292d23d89949b5e6616ba2571ea5370c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf8c24cafa62bdd5f5cb9773ac64f5d489df44c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc02011a3189d76fe13f767bee0f93baddc73b395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc169a24010fd4d47ca7be4b4c7863b76520442a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3538ddd84619e761b4c03caf2f785f79889958d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc37a4bdced74c34971abb340582685a6ac1b5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc839043dd869eb3496364ee7018144c8a3ebcc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9a91ccacfdc0001e2c41a56a75384598b70b89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca58be70daa08fb793af89561285c1c711794850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad6d6a22c2fa764642d3f682137a99a75f85beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc02f5eadc7a42bb9e0f5edf818cac739a21f9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcefe543c5cb16170228cd5dfe469c24917119246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd34d47236d0b4ab50de793b37ac97adfb21e2089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4f79b9bf2f601e1d40c6fffc34d5e4c6b2fd8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd64c8adcafa71ae3da09b7732d23fe90fd0b80a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7d3c85b4f2e9bee1998cd2e98820e647792d284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdbead79c822f228fbb141a221cabab4687838804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8299ba9a20f6aca7516735fcae3e04f8ba417b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe360abeb3bef5fe23cd5d60e4912c02503f9f67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe561031a2992c3b6e0e5eaf6f19ea04d3a5a6756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8a6cc7fef4df174f22e56effd20eb2331316001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb8a7b0184373550dcaa79156812f5d33e998c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef5318aaaec3850477eb4a97ba34d1dfb8809b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefb56bfbfa06f6964bfdbc27cd4d24a9952eacf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf1942a9b1b0037a20350358c9fe9ffd96821c685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2f2962f02dfdb742acbb0b81ffff58f2a38f621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf66dea7b3e897cd44a5a231c61b6b4423d613259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf73ecd2af764991b5aab59b310e81b6d5916e603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd8c35798eaa6ff8d1902f1b804d3341df09e895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x002f39c3ab41e9cf6482df8411206c05dc50ef3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0033af6c5093a246516f3297e54aa215bed6b229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00f9e4d061342c2f18f3b9f10dae856e0807e51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x019258c48d936d2b50546f76ffca7527ed623001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04302672bdb4f7b90d99e0f6ea932ef5ad3b4416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0521fccdfcc574d7dde2d97eac1a8f19b2cc509a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392051 | `0x05c1813ec7beb8bf744ac43fea25cafb650ac966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x062c862a2a5034a80caebb4cf9f12a30e254c925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06b9592d429354c5930adf6c46e850d3ba7f7216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0776ddce3cb2ad1695beee8654ef1688c6c22a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07af483038354648d145da9c44278b55c9254029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07c72ba993716b16d6d39b06dc665c5ef03c1bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08237fedc96eefc57a8f570f33b3332065fdfeb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0876fda8bcc723e23fc093e45aa1f7319da8e039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08c44acdbd6f8323985f4b053cfa007b30931e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x091e3e6ef5b8a509a036946a24aa449ce99dce7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096459a23ae5edbc8533b84df41e5f5d6549cef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096c04f99442ce80796305189f5252f81e7560b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a00a74f28d1bc24ddf73794fcd594cbbf291641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b43046401a5ba5f20213e6a413299500d71163b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c199269d90af02549a71158345fbf4b5fe01244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cc74884b1173ed918a3bd368973ff8edc43bd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392052 | `0x0d15f99b6ae10cfa9a6d845b433ef51597c27e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e758a443067ab461b9b69a030c223f18dd4f19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ea55213cc67d4f48455fba90b780825b0cede12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f01f54d67e8aa1c5ea4fee43b68f211aee33ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff749fbfa72c3c9338ceea280c5647aa74926fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x113038a22848d3b135b3c2a4bbe4c9f27a1375ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12005b203466a56d1ec4ef3a300e76dc93896754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12eeef37581bb4c181d23f0ea55a87b1025c7c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13b37a0e4be0c1e58f9364cd52e74153f6956004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392053 | `0x1425d8a410d1bf8bfcf983048070a8ec2fd634d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15dbf088ad8b77c5a2b552ecce95fc225968ce47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15e567cb1ccfd6b07737aa5317c4dd1b84798dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16590c91de2021ab81a41ff4217a2e9f6df6db80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16a724f296a20743aac6082fc4055071d72ae250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x171c78962fce2c7dac25de41f862b19da31972e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17395ad76b236fabeac3634b78ff8f6970222199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17b33679a8f1cab84a62e768a647b33a77ac13ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18c7a6c59d31c5ab17f2311b42c071f8f4a9f580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18e3605b13f10016901eac609b9e188cf7c18973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1988aaddae2c42a05f31a516b4462253b063cd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19da5d5e16615a354316b792ef91d2dd43d439f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19fc17f9bf2177c1491645fce8e56479f8fea3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a5bdc587e84e215e61b87e433c180611e71f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b1801c970820ec2b8e083056d0818ce9b5bac83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c0b211d681c24f904f29367b5d02f5b5cdfcc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c371f5a38cdd04a38616c801092e8e074d4dcc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c3fa0cdd579b76f62854fe68bf3033062bf6749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c840be5776f2a8a5dfc54b0f3373df2b8b718d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d3d3a3fc86509ffd1beccbb4a27a3b6a05e0bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e50aec53c29ab12a8696fd711e79116357224d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1eb5941cb0ae20dd392405273b62158179cc5afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fd1ba97b9ff01915b2c689d41d422eb08dbbad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x202f0c7ebe24e46a72790f33417d5b23aaa15c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2042f4057c2f95a18dac242a5afdb075c22791fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x219cc1c64e809535ebfb2716d3b61b08df63b638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x221880263daf6b6394ecd3e8806b4dd914443eae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392054 | `0x2266e5664499040cdcd10ca436b4c9e7d8db58ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22946940faaa617d57249b33574a7d559d3bbea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22e229d14dc80a1ea7ca7637173e8c6c36d60fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2381bd0f5e23492e1ea1e848cd39660b7861f619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x242d4f870f45c7472c0aa2bf63c5af7f63172f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x242f5bbbfd72b49148dbbc5f3592d98eedd79f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24d33219aa262fccafcb8be8d929a44de42aa064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x257bff1e38c9ec0a352cbff1782dd16d9a5b6cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26760c6bcb300b7f006e741ee03c78589611c9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26a97b44c67b40e126723b6356d664ad6453abba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27052aa8b340959924a2943bd711e564a4e63789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2813c91891204eb2a8565197e7e586bdd89b1040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294ac4f977c3f9993a47dae3c1d06df986ae5353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa34d0f4107f2cfb65c2c0773abe8e1a9b1d6ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b9328d83becd4f04de05f129ba56781fa191e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3029c16e1b3d0d8f1695908f7644d43fbaa7d758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30dc53649ccdf38d8c2de8e46e5b7a935ae767d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x312759b4432d86cc17d240bc2205f7b51392ad5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3283a7d2fa39b6199e03c56f87a0945a3ab9c620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35aee63848cae62e089417ddffdad94a131ba618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3732d0e0f1ea380af36bd94836b5026f6ef6a927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39243355dff4da39d2ee2280e170ce7ec4dc347d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39bfa2ebe85d50ba8d4956f8f053b090aca46082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bff6c88e6e2308ec77001b3dd0dbc17e5fa8b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c26d968bb0e4cf2466872338bed9b365674cdba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cfb02c71a1ad18bb0a2649e50a8ed001468d00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d1edfb7a2ea80de92454267ea4cba0acffb0341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3db497a9783ebbeda6950d4f1911b3a27d79c071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392055 | `0x3deb760dbc6c5e0163d20de3a3c5f9c806932b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f4be5a356e66cae7e4944b12cd5a63b969a9540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f741d165876da00f65eacd5c91f9c9a40c0c5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe0794df4b98b1353f0dbf130e4db02b1eea985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4070fc8a70a8f3ebb2c1ea82909573ee71919e8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392056 | `0x4085fbfc88192e5558aa8d1492106e757d11d6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41f2c5a2e488e5eefaa867a0987a3d2d3ebfea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41f6f19be647212fe736c76a7afd82c80d192123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x423d187af15cc5e9a790d97d9c32e19ed820f093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42b7cd69b82210feade772ded2434d5510fe59aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43902ba68a42b0ac01a792da2b8f4a0495a0c7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x443ea0efcf5260fddd510ad44cc41aaf8cba12cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392057 | `0x44c9613c895b9870175d9a1c29f858852e26feb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45f3b982881ad83e3706eae387894417c0024706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b87be756fed58e4bfff27b73ef539a83e404dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bf0c9f164e8b9771220e777199be99e1af23d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f406eb41fbb2b78674dffe44344f8f7386cab5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50183795c391c291c50ccc8750d2832c7e8fdf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x501fb73c6fb3dcc4bd1b5e472ad4d10969471b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c496322fdded94ad434589142a8286e7f29e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51feec9477fe7c2fcf0805ef46c6f17ae2bdc9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52625d588655619e7232939406316b6a7bdaf643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x538a28edd91c15002a27188a47461ad46e33dead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54bb2a280bda1b7a62122694cce434119bd1923d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55c5ed6abd2bc8d7454af09fdcddeae963999296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58c4b219bd39d9658efefbab2b90720aeb0740f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58e3fc3831915ef5d358512d273bdc48066528de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5906caf280436ffdfa2eef6ed5cc6f1674ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59c662fece55ce557064d0a17fc916f6bf8e084e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4b02219a5bcb2c2dfef905ee5a42faa2c47299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bfdea6d9f07fb5922e19a4f40b148902d467ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c6b195a883be54542484923f6378b418b296d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d0873787d1fad0c273325d062fc3bdacc0e3dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d48b9f84d77067183f3365c1ec2de52e79b08d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e3229eb0bdce3d7f081451729334a44dc88549c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fb5d0d5476b1ada0d299e2b8e507848caee2666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x602fe156e8c897f095e6da10233978fded4cff1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392058 | `0x607b1d0e50003f697b2d36c0bafc1c72b049b632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6268934f65993a01c76e054d643af052fcaf2b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64ecb6fb2cd591daddd46a7325493fbdbf01854b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x654c7932b79dbee20f68d71d9bc2d6e8cc5456ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65a4ea30da06eca478e19ddb24185fa673e91736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65b58cd6aa880bdb9bdef645e0b2020d55b9cbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x662550f6406164684f436906d7954630344ed596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x686040343861e0f5aada9bab3eb381b84f35c611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68bc236f957be75441d7c8ce9554623785affbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6973af4ff3cde147b9e0ca89cb833eb270e3cf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a0643208c73877d57f6b93c7f0b1ca46862e02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6aa8811b94e69a15dc750a13dfa6b75e47d0985f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6afafbbb8a952abf00cd703390fd50683482bd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b6e5c76ed49d2f005c83433253d498242aff392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bf260071b85bf2d38200720c1adb8cf4ffe6cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c90eecd08e58622990736ecd111d41d4cf3a68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dbf5fbc4f8a467d9a59b23bc3a94e8d9c638db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dfbd422dd3ddcf9abe3abdde882f50c4a8e19f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f4c9c67b780231c8bc7c86f95d1ec747dad16c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f5d6cd39f698544c4ccd860ebd3cc4d1d71d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f8b4ebe6ef13d1c3bf7248d2cfd82711a08c684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72ec28ea8dfbaf0197d8ca6ca0a2e395fba99ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75d03e1ad56057e3f9c7c7b6deaa71002d1d2ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x776b7496d05d6b996f83a453c5007560ecbe1bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aa41b68d2133b71053837e28bc08cdad9b52fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b080e227f0c113f38752e882e59743a70d3a344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b2f2b117d8c291eba87b797b1936e29abd3b118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b5384aceb57ba5de216cdc9b8b51b84693edf7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c07b29b2367cb53d2f93ec3dd7bb37a72755278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d103fe3b1a771c96c8c3badf98f72e7c95ff05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d36bd652e2b3bea3359200da263fac140afd168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e997f2493fc0d8a634ee24bda562ead16aa250b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fd85fb63cd908ff5fdeba284abc07a2bbcb6e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80e094c826a1bcce4c38ced323209e2ad6b458fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x814ebf333bdaf1d2d364c22a1e2400a812f1f850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81e54258482e0285aaa0f4a993bd4ad2cf0e6379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82a3da75886e3f06e11f08bc0a0de77300df5973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x837b9995dec4637889b5c0bef91b4404f82f097c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861aab79bac77f329beada45ef29910c64cd386a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x870f4996e713670b35cd31cb99fc5e12a44c80d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87d61bc4dfa42e468c0ea179fbdcacdb0cf71bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8844664e9e694141ea7f85259bf3a12bbbc06fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a0315af393386b5f4883caef994ce0ce7c5b1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b6364e92c3f4f73b83f96423957df5e5010bcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ba0276991d33aff98b206496900af8245b95802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392059 | `0x8cfc37fc972d8fac0602cfe6695dcc6c0f005996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d0768bfa76c89917ff535a9a4703d48421292b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d57da692ff6112d71a0b3c10247897f21ccb4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d6b7ed1b77ec8d000cb55fb7bda1831f1ce0b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ea3dd47705202c6af127fdec6f9573a8c9dea37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f81fa7bdda10eec3ea674f3aba98cd34180803d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f90490c3895ffbd8baedc30d9aa32c3c5853913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x906a662a0df562c76a13828b54ffa4f4d01a6912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x920ce787ab79cb6871237c1f1dac0ebfe9ae111b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9276eb916b44b24687a688de4dae3dbda56e11cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93fb86166718a9babf51b065eb1009d4f8030ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x945cc0700b234acac0486e4037e3ec9aec9d478e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x949dbbfab9419fbe94df72989ccbd5445681e237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x950e56d4f45ed678c3564bd7b218c3f85e878dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95e01666bd606f3ada55806845a45f2dc3d95fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e40a8bcb2aa1c9174c3af60662b4f8e4e78baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a25044945b976cabbac9e7bbf096da526061f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b32c450ed0fa7fcd3b7f8c0e9bcf100a922e77e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b7f4ca86a12f37d384213ae6e4cc671d1a87f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cbdcb9b7acc1ff2e47c3a6ace428d16527f12d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d8265aa2b3ebfcdeecca0273b643948d1be8c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e1ac58559307a7ce70104810b7d6e43e74bfa1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e8a3eebf1941ce1cc5262c8b39f3444a8cfaa4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f56ae2211d3f0d987edda24f37880d424679c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa043ae24c15dc21395f3baaaad12bea0d6bf8c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa14505f315143e16b999b3aca083d306b85b803e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa224dd68e67acd428ac11c462243d67485fc6be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3d17bd9669dc431d75982cf0834f68be9180ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4998c1068cbe9f7da89d55f15648a1d122322bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392060 | `0xa5128fbbd52a6572a8dad43b578bb3d693772447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7a9254c826acb54d3a714734ddf73226b1baeab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa915c4fa9cb64069e462ef2d73653a642d205cd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392061 | `0xa9fb0a8c21e1e3f85890541de689e77611fe90fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392062 | `0xaa7f729f743a09fa16b87276dcff8e3308dc732f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392063 | `0xab4fe2d136efd7f8dfce3259a5e3c5e4c0130c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392064 | `0xacb8ce02e7f158c9e08cd4b58a197308bf37d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaced5fe43535f46a71bd0b7c18c76fb1668d777f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad3c038fbe2d8a7a0c7f75dd975ca47479e3101c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf85ae10defb731d17bd56eae7c2025d65ed31e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb023ad30088d85e520819e43ac21d7afa484e15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0e17a63e601b0136aa0ec0fe73a5a19ff03c2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3b054a5858fad973e333308b21c7ac8ef13d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb40c69839d7822d5fd0c1acaa7a90dd1719906b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb48dd9654682c8b0e464600f571e51dbc2d199a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6b70d4dc00cc77169ccd86b22f43a03edc9fd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb746d18f93b9264ba08d6a38e934329c984e75ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb754a4cdfbde059d004ccc61666ed7cc51b2c6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba955db5a734092728714fc581dbf2f29eb45a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb9207b8bcd7718543d1e4a6c266bdbedb7bdf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbbc982ec2027a908e153494bdbf15f63f7e9328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbe885e60742610fc95a178b0e26b8064cf4deec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbeb1ee08b2be8793732055c8a2c1695aec94bd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf0cf4e14c92230bb1b0ec704a4f5f2e1904659e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf6e701ddaf4c144607d80416f429605d95f34a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc14ab5172e27671d6944ec281292962f99d82625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1e38f40c614cf8404067c7f76210fa1df4df212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1eedc61a7d92caac341a55d238ebf2626d6adc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc25301de10bb8601683d2a309612bac99678487d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc34cbcbf8605af069d724fb015aff1c6b83909c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5d950b1e62a235b37d030dea359746a67deb180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5f368e6d0192764547c4209a7e622fc05c82fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6b2858b17285f67596456e3a9a6e18397c93845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6d0867cdb97d1d48576333ddd7fb1a5461468dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc73aedd4853c6c7dda8a94ca78c5a9d4daef8ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7492aee6a52584840094e212c0781a1a49eec20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc823e23e8d540cf59020d4610db1ce7df821097a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9e4516f08dbe49de45a04e33e1d5054a34a64bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fbf1e865eeababe92d47ddb11d580f37ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2b5b174c298d7cb043286978401c5c1016cec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc42c3fdd8c0400236c7cfa29d3687adb6b1d780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc4af152766668a8a3d6c49e61268e7f5d3515aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc68ce514b475c584d40ff9c046e8804531fce51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce0b805a36fc812939203b9875137910291aac43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce3586521d6e9af29f50af5da61183f67383bbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce4fee23ab35d0d9a4b6b644881ddd8adebeb300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf9e5845fb7fa16cbed66ce589b0b146b3c69e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfdcd719b457bd5c466944e3bb068634e15252ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392065 | `0xd0996694bc687a3c3e5de6332e6e542ad774dd3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392066 | `0xd106ec6e81e9b7f5bd33a6091a3c3e45b6183dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd17525ff0c9f9b65de059d65df58ecaf880bbf91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1dd6a5c9d747626719be327b82b3ca52c82392b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd200c979bf55241e22b77475cd584a9debcbaef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3caa4fbb92091aeabad77c54c255a76ef45a9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd40e60ea9487fa1b625321467edcc1d9b422b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4fea8ac2f43c2275c1ec13d87b7f445c19d41c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6664d3840cdbef7545c29798bc277ea418916d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392067 | `0xd86456d9ccc6d4ed7402d041d7e391d145bb9865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda8f9a155c24ced8e2fe62ef6cb041b3ee81643c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda99615bff7462569e445b68b15a7f1d2e03ad32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbc025824743aec2d44e4f1044329f4594998215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc1a689093b53cdfd0784141f81751b3c91871f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc53b24700eec5b9c416b644cfb104fa051bbfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd084505b3b9f2ea75b01975b6dfcaa59bd10ec8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392068 | `0xddde9db9af8f96396937feb33d569af7fe6c82f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde6a7cdf2ba795c6c0adb8d2479db4f52602b69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfc2eca2bb5c9ff431352ac46a4a8b4015fc7768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfc90042d74b9be01689f4c0d256d3a3e39cfbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0d189c913bd141fc862ee95de55c67cd1187c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0ea31ef1f3b21e7f40c345258358edbfb30603b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe418eb285b16c78590d5cd23677955fc72de0a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe43012795e0733fc1c1e221723f0d5e83c1e007b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe51a30d5583cbe7bbb6db9ebdfcb96216c1e56ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54408d1ebf29b3e88a09cfcb08c4732ead8266f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7f34ad47bebfcb692fe97302bf49fdbd52cc50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82b733bb6411d796d97ecd71d84f909eb2f6203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb0910579b230c845d4426b5e97553a18f247df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb24fe07c36e88b5f3a72d2d8b9f3472c83ea284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec16d602c2ce6272eaddc9054b5fb89dd760144d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd549bff2eafd073f7d82a618a367a8d2c90648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf13d4374877890c144511a868601975c64e8cad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1d9946b027f9e924a2cac5e4c8273be80741f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf327c3fe2dd7ec9a80634ae0ba1f3d2d585048d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf35704f3731448f4a18c32359cfa87e8f9f15363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf59da418b1cbd94911e88c0f86a0aaf93528d86b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392069 | `0xf65e9264aab3466b3753c172e6d1b340b485ebd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5ffc5ac0e49859a7ce836d1326349273838ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb12db169b5a0a885704ba4109b1c3b30931a8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfda908b1a5b150979506ee9192d3cb2071b117c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe305a89b59a88d54b91a9708f8e37437f116608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfeba84082a512f650f22b6e7dbff518b360a77ed` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 756
- Live contracts: 0
- Unknown liveness contracts: 756
- Source-verified contracts: 346
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=262, source verified unclassified=84, unverified unclassified=410

Showing first 200 of 756 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | candidate review | BnanaCourt<br>`0x80f5c122df691384199a8b448408b426639e2238` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Juicy<br>`0x480d2e674e3d5f1b4eb3b8a6d0c97860de44c4bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Juicy<br>`0x9f7051497b3112c64d37fa4ce70670f29ec43146` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Juicy<br>`0xeb00642a73a7c40855a7d33c07f30064d28bc48b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyStaking<br>`0x02d14dd765ee6524bca876b8a203000649314064` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyStaking<br>`0x99ac3548ac5654b23282d6fd52c6ec76a07c88a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicySubscriptions<br>`0x11522c62712c4791db1258b8a8dc96e2e71453c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicySubscriptions<br>`0x37fa512cec716b795a9026f68699f67238e5034e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyTokenSale<br>`0x2ce2edcf530caa540c441b61ffc9a80cb350a730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyTokenSale<br>`0x471a489a567a4d3950dc2e40189e8495646de731` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyTokenSale<br>`0xb1bb873f134896b371cad4475433762e92d0a93d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | JuicyTokenSale<br>`0xde485a725e70355d0a0ef8786b50d28357ddf650` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Migrations<br>`0x49c3f341106d087490fb6cbad749179dab7ef110` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Migrations<br>`0x7276e6bd2113d5d58596865a444e68ef81a3edea` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Migrations<br>`0xa457010c6ce2b25a29093ba30914cb008ae33fcd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Migrations<br>`0xcc4db7943215a3c219055e9071988a9c3908cd10` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | Migrations<br>`0xf93b7ab02ee9f3cd7d0478352c2d8d7d095cc4a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | AIVAX<br>`0x09d156f209e0c54d0365d6bb05f8a048649f2542` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | BnanaCourt<br>`0x1b897682dd07d742b1ae7e0005d9d7d046037389` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | BnanaCourt<br>`0x73b425306e7ed698008ab6cf66f0e0fb0574f921` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicyAdapter<br>`0x5c8f079a48f78a0ee15135cf48b7033cd2c51fdc` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicyAdapter<br>`0x856ddc26e986b4eca3984e77b8f990e0ed664349` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicyAirdrops<br>`0xc3943c34420f0f174d1b491e8890feb4d52e9504` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicyStaking<br>`0x58fc11578b37ab6f02a6a15ccf3e3ef20929f5f2` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicyStaking<br>`0xc1c19ffac5320fc5356757bf78f38fb943d8ff1e` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | source verified unclassified | JuicySubscriptions<br>`0x1f49ddf43d2590811a44210f89552f314ff07b2e` | non_address_book | unknown | unknown | verified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0521fccdfcc574d7dde2d97eac1a8f19b2cc509a` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0cc74884b1173ed918a3bd368973ff8edc43bd45` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x12eeef37581bb4c181d23f0ea55a87b1025c7c60` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c3fa0cdd579b76f62854fe68bf3033062bf6749` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x423d187af15cc5e9a790d97d9c32e19ed820f093` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x65b58cd6aa880bdb9bdef645e0b2020d55b9cbc2` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7b080e227f0c113f38752e882e59743a70d3a344` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x861aab79bac77f329beada45ef29910c64cd386a` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d6b7ed1b77ec8d000cb55fb7bda1831f1ce0b31` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x950e56d4f45ed678c3564bd7b218c3f85e878dcd` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x96e40a8bcb2aa1c9174c3af60662b4f8e4e78baa` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa915c4fa9cb64069e462ef2d73653a642d205cd9` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbbbc982ec2027a908e153494bdbf15f63f7e9328` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc6b2858b17285f67596456e3a9a6e18397c93845` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd1dd6a5c9d747626719be327b82b3ca52c82392b` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfe305a89b59a88d54b91a9708f8e37437f116608` | non_address_book | unknown | unknown | unverified | n/a | `0x239f8241fd512938dab29c707196fa1abff3d22c` |
| avalanche | candidate review | ERC1967Proxy<br>`0x3fa691e4a0a48c52e0b3e4d7dfd2c2a578691f9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | ERC1967Proxy<br>`0x7b1ccf7874b108ad81f335c3a71037ecd0c75911` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | ERC1967Proxy<br>`0xec18aa29d678f5e5767076e9b5a293e21af8450c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | OrbRedeemer<br>`0x1f240def4c98408e22a28daec1e920810ef8b1d2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | Orbs<br>`0x9df15bc38d6da2a674c3e9b04c1c32ab34c08e2b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | Orbs<br>`0xbca48e3fda5a0f8fb02098ca150b948986626891` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | Orbs<br>`0xd491c8b0ccd615c05728cc40de4cd3415c0f9734` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | source verified unclassified | CopperOrbMinter<br>`0xb41b3d801af59b90f69011e67c9a886743536978` | non_address_book | unknown | unknown | verified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | source verified unclassified | KetPfpMinter<br>`0x06d75d9001fbf39c2303cd6154ee0419a418435d` | non_address_book | unknown | unknown | verified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | source verified unclassified | Orbs<br>`0x62df6e203916617ed20e87babb2105e6df37fcc5` | non_address_book | unknown | unknown | verified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | source verified unclassified | Unmasker<br>`0x00969acae49bd657454efc17e0e2445a31b0b7dd` | non_address_book | unknown | unknown | verified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | source verified unclassified | Unmasker<br>`0x60c175547ed387a95f903aff671c1959a98d2ced` | non_address_book | unknown | unknown | verified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd52d1e4d0c4065b697765ffc7376ca4d8b0586cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3d0bf786cfc577a103879b8c90bdb1e2a5d77618` |
| avalanche | candidate review | ApexPremierAccess<br>`0x734d8cfeccd8485df397719e7128ca153dd38f79` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ApexPremierFactory<br>`0xd92558cce4a2e23c4685dcdb9c3f5d7aa2c4929f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x1d27713179d379416a22cd28331ccbd19f0e1192` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x301946ca3aee999441070816b1d10e9ee437cd6e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x666a53d7025136be4aa651af20fc5245ff2d1909` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x6aba46fed16d4415ae741f858da7e4975dd788eb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x80108981f046846b97ab14a3e1b89adf0d8b89e9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0x958704931f5a1dbb6df3c548ed68b9161f486a92` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xa0de70c1240f12a15ada66d408738b21c1ce0a82` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xa558944a38baf2514bd432e62f151375f48d06d1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xbc47f3bd40635489dbe77600d21c19fe4a09890b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xc6f99208c411ca9cee00d6448711e09a1d05d89b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xcbcc3995773c8b54f3302f0a399722014b79d338` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xd74fd3133bdcac78c437764654343131a7eab9e7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xe0ee1acf6a85b0c63c20077c6b05d43920ef035e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314<br>`0xfe47b6f358825fda93ffeee245d096c60ed529ee` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Factory<br>`0xad22037f1371741fb01bc3ef42cd226f978bc71d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0x4ecd8bdc617d68789ac2afefbab5d24e2859f450` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0x576fbda4f271551d285b6a7006cc371157da622b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0x58dd219e2ffdcba8dbed71087ff9f9833799eded` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0x72cf3a3890b5e5a23539b818aabb18983b7cd315` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0xabfbfed6fa208cf637b1078399abf5b37f345e9a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0xb392246ffcd4ca16f739f7037704c26fd271e8c9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0xdcaecebc332c76121af6e89f444630fd3e81f99a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FactoryV2<br>`0xeed4362c7fa7962937b85af811dec81678afb465` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FeeHook<br>`0x2af654340459b0a294f9b441b374e64b9a038306` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FeeHook<br>`0xa56b59edcf91bb5a42e14cbb98b95b83858ac70c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314FeeHookLegacyFix<br>`0x3aa19b923e93850b093d5c48c4971de0042bc262` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Mintable<br>`0x772ebf2767407b6d94d7bc0f0941e28ecf308cdc` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Mintable<br>`0x8ab6a068cd1e5fb8be5b7225275a94900dc4aa02` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Mintable<br>`0xb643d98c36b583ee05d9ea75e68f28dbb75b5720` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0x42bff70f10b180b366fe3932f254c2aa74255951` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0xa0f24ad183be7e1e358d0f1e524aa69b7e8f5760` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0xc04d3af360d0a90fc7cd4304449a54e712c44020` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0xca94e291720d06dcdd46a46016cb1f16ae7b38e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Oracle<br>`0xf8ac03e4fe64cf036b8bb3a6f9e02b8a74e98df1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Router<br>`0x5f4378a634cc046f12143ee9403d31fd4e03d8cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0x36ef5bb7050b5edc8cb7f37dcd1c807173624b00` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0x88440014c897cea2ab0b1ca04fc00e2883e2ec61` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0x978f58455318c7a0ffa14216d62760b4c8a7e951` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0xd153feb87aaec061b6155d58477e33b2608d1e92` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0xf43d68e775642f81181061ae10aa3e517533a15e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314Wrapper<br>`0xfd3a5aae749ae1b398c4237fddd5ae48881cdee3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314WrapperFactory<br>`0x39ab4aabad7656f94e32ebd90547c3c4a183f4b4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314WrapperFactory<br>`0xa242da308fc14312e8920a301d5904b49523e8b5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314WrapperFactoryV2<br>`0xfb68c97424f1e8707a9fcf6cc11d0107d75c5bd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314WrapperMintable<br>`0xb51dfb6d8daf318fbcc4bf2693d50a40ed361f31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKN314WrapperMintable<br>`0xf31856c9c5b890a07eb5a1e6d045205e517d639a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNChefV2<br>`0x317828cbe7ac8707743bae02a2bab8219aea4573` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNChefV2<br>`0x87f07395c5747b45f525fbee289b09e4dc74d66e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x0d4c97526dc88b7c208b36644d131a7ee7134a4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x273a7a0bff2c24c0e022d472649dfff961433025` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x3438febe70c367387783a8a5678399a07bbc7c01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x3f722938182af1bc4a8b65808972b0a1f3a2416a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x43b6177137a87c2a66905f38b9db796a9af30ddf` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x49070a0f9b040364a46c2d3e58a1ecf983912382` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x4da6c437264dbad9d5dc9783e1294fa3879dd044` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x518a8d2929ff2b2650a42852d54d8669d76715b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x59c76d26788f283cc9c7bbb1cbbecbc1acbfb5ac` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x5a2d94b008004aaff11d8de2d79d0ef648b51c64` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x6e33f505428bfdd206a3584975a330f5ea36d041` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x70e5e1a266a151403a31673c7fc2163f4171d058` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x78ce754b4ba099d1932f3090d6018fea1d9ff37b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x7d84168f0037fff3064bb9e933868d94b74332b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x812f7ebedc98f57ab54966ebb2ec017a4ac45248` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x88234236a30db8d521318bc14a00124265aed475` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x8890c465eb3a33853afd9609cafcef2da71aad8b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x88db874870da9fc77ed4a327577f8728b69d97f3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x8d794677b63894c31ced45e670cad65ad8fa85b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x8df656ef83be5e4d7836b6ef7777c425493cd581` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x982c4710a8db96b973d3f7edb4193f4e2bda4418` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x9a78ecab35d50526242ca9bbbb212e9b5f0bb340` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0x9f1908e6e20377c7b869d232a3ff95e8cc745aeb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xb32f181a0d4bff8d8e410f5223f5895521d8163e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xb683a33600d9f91fffcd1fc698cfcd6603eff7b0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xc05d6afa9243b624b8f25b453feff4990be0d70a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xc36a0b1c3a2313275978d5db1d83fd13117da63d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xc52749abd40c2d8182e25ca93fc6e991bff37727` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xc9b97d0d5d2bdf203896463f96c77ae0503cc2f7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xcc5cd9b889792afdd513b47c67f608cb49361da7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xdc35e5d3c5fcc2d9c82bec32edfc490ca742e34c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xde7780318f860d8f9cb72fabd77f9c3b2ee015b2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xe95da219e63fc6547da380b22f749778157c99e8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xeda36190479ce4f08c00f2f465da74bce9026a71` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xf077768c9742a0be0021e802373902f1ac9296e1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xf11e82c48568f7bd3941a713b12f0af31c31f7ea` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BIFKNRewarder<br>`0xfde2ea2a9c0eac38241cdd351345c5337aa81f19` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BrevUniversity<br>`0xcf7b2caee040def16bfa1090c8c9f69d61ee3532` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BrevUniversity<br>`0xd13510243226c8182abc11bb2a59fe385b8bf5c8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0x286fab35db995dc26a1d57707cb0faa9ee848205` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0x2affb6865086608ab53e7fd62f15407a90dcb9bb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0x84926d9d604ff16dfa19b783c0a7284127913d8b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0xbb6b570f861646d3fcdfaed1d021eab4f8a7d43a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0xcf5de4fc5d7b9cf3f8d7c6d9a2129c2957e8f857` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactory<br>`0xdef6738dd9da7639a4ba29a7628c5f2440ad5ef6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV2<br>`0x4a47cd3efb448bbed62a5a290a20928110952c76` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV3<br>`0x6c882394a9fe366de13f2d5229449be81d612602` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV3<br>`0xef89a728cd6319f603e266c9b9ad249623276644` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV4<br>`0x1f62f42726414ac807d8fd553423c0f55936f1ba` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV4<br>`0xce4d396b8ee9a2d24d48466074567244fdd9677b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV5<br>`0x27b12fb099fe0881cebb577c2c738b6d9ac84c7e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV5<br>`0xab935686c63933d56a04491aa4623eec430d1ad6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV5<br>`0xb86490dc4897e72ce029919992040122ba0a2b6d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV5<br>`0xdaebd8983c80cd185867a167b14bd1ca7d71b72a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstFactoryV6<br>`0xde2762aa18fe86dcce4ab89539eaad446cd0c9a7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x1c8df0cae834438de0a301c499078c068e1d0dfc` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x2025ad0f6ae60718691ea0f9ac7f4d1942cffea8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x52d370e60c8220497da6abff36bb2587a31203b6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x5410bbf364dcd135d63cccbefcb5e1a61f15c0b6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x6c0a2976cd2861cbd0d466bcfef5ac0c64b05e98` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x737729ed488a4cde80b4acd244d5efa533ad4893` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x7824ef3b021289a348f4d9e111972d0d3f5e3b5e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0x9e85028b546d9d3ea3b95ba1512f35f140ef486a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0xbb5deb03b4cd369b713428def5d389f969efff66` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | BurstToken<br>`0xe33d4430a36b6625341b1b0b8a16afdf7cb2928d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x2542d357c731b07283d71e25b3c9adb51f9a2521` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x2aabaffcf9fdcd8303c073fb1a9747e43a32a2b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x4f70785606938b4ba963feea1bf74a1c80eaf769` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x5974d0a7cab5b7fd7ef4b9493b9c7dddca1be4a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x709d667c0f7cb42e6099b1a2b2b71409086315cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x754a0c42c35562ee7a41eb824d14bc1259820f01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x759a06a75fc8c55876d8fb44ed7959e1afc7a8e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x7e71e483986b1e87d2c871595201fab9e3ee4813` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x85d1483d7c39158928a76e471170aac8f805c927` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0x8ade2c3c04731d382a29d871d67296e15b1d591b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xbc74a3c24d8aa980445adc889577e29089c07cdd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xc331d7843e92d3b6cc1e448d15fe4fd24c3a9f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xd49d18fe6cfa45396e2d4c27b216ccee6dbfb6e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xdd4d94efba79f589bf0f092562b65f905291ad42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ERC1967Proxy<br>`0xe3593df71edd22e8857df0d738db0adfb28f8cfa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | NOODS<br>`0xffdb03050a5ffcfbb2d777623e6608d99622da98` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | PitBonus<br>`0xe6666f6fa8bc1759b9266d30d41cb443025926c9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | SQRCATMiner<br>`0x2c3694eefb67bad9c6a0409f3001d5025ee9d1a9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | candidate review | ThePit<br>`0x96b9058ea3af4c47223d470ac8d20322b719d672` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | source verified unclassified | BurstFactoryV5<br>`0xb91b66dc436aeb6bbbd2fa74150f01e185f463d1` | non_address_book | unknown | unknown | verified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x00f9e4d061342c2f18f3b9f10dae856e0807e51a` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x019258c48d936d2b50546f76ffca7527ed623001` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x04302672bdb4f7b90d99e0f6ea932ef5ad3b4416` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x091e3e6ef5b8a509a036946a24aa449ce99dce7a` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x096459a23ae5edbc8533b84df41e5f5d6549cef6` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x096c04f99442ce80796305189f5252f81e7560b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c199269d90af02549a71158345fbf4b5fe01244` | non_address_book | unknown | unknown | unverified | n/a | `0x5568938bf4188bb868dbf31614091062c4a44b1e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | SCAudit | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | SCAudit | Audit | 2023-03 | stale | Direct | contract_name|n/a | matched | 1 | 1 | 0 | 0 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | SCAudit | Audit | 2023-01 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf — no match: Extracted 16 contracts from initial and second review scope sections. Audit date from cover page: September 28th, 2022.
- [13808] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf — matched: Only one contract (VeArt) is in scope. The report mentions ISalvorMini as an external dependency not in scope.
- [13809] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf — matched: Two contracts in scope: SalvorGovernanceToken and Vesting. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | AuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | BlindAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibBlindAuction | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | DutchAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibShareholder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Marketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | INFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | NFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IPaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | PaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Royalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | ERC721Dummy | unmatched — not counted | — | listed in scope (second review) | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf | VeArt | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x72b73fa1569df9ff1ae9b29cd5b164af6c02ebaa` — deployed 2023-03-09 18:52:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | SalvorGovernanceToken | own contract | SalvorGovernanceToken (selected) `0xf99516bc189af00ff8effd5a1f2295b67d70a90e` — deployed 2023-03-09 17:02:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | Vesting | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 166 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 428 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=4

Zero-match audit list:

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
