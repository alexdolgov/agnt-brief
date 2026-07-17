# Agentic Audit Brief: Rheo

## Project Overview

- Project: Rheo (`rheo`)
- Website: [https://app.rheo.xyz/](https://app.rheo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.084Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 70 unique implementations (203 raw deployments)
- DeFi Llama TVL: $29,543.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 38 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on chainlink.

### Architecture

The protocol comprises 6 functional families. Its contracts share 17 common project-authored base contract(s) (proxy, accesscontrolupgradeable, contextupgradeable). Dominant framework: chainlink.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 203 (202 live, 1 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/68 (7.4%)
- Deployed-live implementations: 69 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/69
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 70
- Raw deployments: 203
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 10 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 7.4% (Cantina, Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 5.8% | 2025-06 |
| Cantina | Tier 1 | 1 | 1.4% | 2025-02 |
| Chain Defenders | Tier 2 | 1 | 1.4% | 2024-12 |
| Code4rena | Tier 1 | 1 | 1.4% | 2024-06 |
| Omniscia | Tier 2 | 1 | 1.4% | 2025-06 |
| unknown | Tier 2 | 1 | 1.4% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626Adapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x38fa928decafc34072e721ce3ff3d57f5586490c`](./contracts/ethereum-1/0x38fa928decafc34072e721ce3ff3d57f5586490c/); base `0x91e15d24aa84816b6aadc1b206ac41c54474587d` | ✅ Audited |
| PriceFeed | unknown | base | n/a | 2 deployments: base [`0x634160ce49fe29fc086e0b12230bd571c3a4858b`](./contracts/base-8453/0x634160ce49fe29fc086e0b12230bd571c3a4858b/); base `0xd6938e55cc5f4b553948cc153d360e8a8fa0de72` | ✅ Audited |
| Size | unknown | base | n/a | 18 deployments: ethereum `0x05f56aa9b74e21519a2ed19ec3954c8f5ca1a96e`; ethereum `0x0f83c05f6fe3180c345a887aa0c814d678b0ea8e`; ethereum `0x1aba541f403109c34228c3fa188113ecbbaa62fe`; ethereum `0x91e15d24aa84816b6aadc1b206ac41c54474587d`; ethereum `0xb5acd2827c8be97ffe8e5b2baa0235d10f1ead93`; ethereum `0xbd0a29929328f7e9b5439fb33083d86a57eac3e2`; ethereum `0xe0042d39e5d3aa74c22be89953a3e7a2f1ced5b7`; base [`0x032a3bd866eccd067623eef9ed9c28c91a55a52f`](./contracts/base-8453/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/); base `0x38f012d4c7e3140d3a4c2d9ef5ee5fd0808b0311`; base `0x64c6f9601f27f62c0dac167f8a9134ffa412c1a8`; base `0x6f9f928452148a53f9ed604d951e8c004779088c`; base `0x7a374a6f090c03dc19990f6ba5b85037dda3aed6`; base `0x94afc4afa15a4d3973fb02fc989de25d52aadd78`; base `0x9f2e948354e160c6a95b1b078c9ed7b59a71987b`; base `0xac17bd775b59930f7f27978d70b7258399c101c8`; base `0xcd6ca4ac60c932937ee209ab8b7af2941708724a`; base `0xec4a950450755af9e0cf2f47dfcbfa0bf170ad55`; base `0xec81d117d194a323e26d5527e5d555e44cf50fbb` | ✅ Audited |
| SizeFactory | unknown | base | n/a | 12 deployments: ethereum `0x3e275cdce92d1b1a302e5c2e6c37fd5e3420131a`; ethereum `0x5a4ac0b8c4d2eab5601c1265f59bfdb7e158c337`; ethereum `0x9024c43b1e87eaf85d0993a692ef78fcb216cfbc`; ethereum `0xd3e12ebbd94b2b0ec6ae43830cc400ce91b24132`; ethereum `0xe6a6d02f5e2ce66519c8e4855c4673b8f549ff35`; base [`0x282056fc9515ee5622690ce908a84f15b4511b7f`](./contracts/base-8453/0x282056fc9515ee5622690ce908a84f15b4511b7f/); base `0x3281853d11b6adafaa23d01652211f8170c7ef3c`; base `0x5abe9360a9f6403eac59657a28a86f0f4f82e3d3`; base `0x64b8ab92d0fced27c00a0b4ca21488418bea230f`; base `0xa2ab0a146b4284ddadb03540241a9d20e00f159d`; base `0xfa64cc164b87de05382dd7efb3b2236ce8d90709`; base `0xfb70ca565620f7a604e8ec60bdbe32011588bd9b` | ✅ Audited |
| SizeFactory | registry | base | n/a | [`0x330dc31db45672c1f565cf3ec91f9a01f8f3df0b`](./contracts/base-8453/0x330dc31db45672c1f565cf3ec91f9a01f8f3df0b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAdapter | unknown | ethereum | n/a | [`0x5e4b3cddab215960d847cc07eac72fe41e582cfe`](./contracts/ethereum-1/0x5e4b3cddab215960d847cc07eac72fe41e582cfe/) | ⚠️ Unaudited |
| AutoCopyCollection | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6027faf1d22ba4db7bd35acdca98208a61fee6ea`](./contracts/ethereum-1/0x6027faf1d22ba4db7bd35acdca98208a61fee6ea/); ethereum `0xbe36bea50d8dc5ea8e81e29f07bfe85e23b0ef68` | ⚠️ Unaudited |
| AutoRepay | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39a6a99bee40a302334564400f8cd49c61fd80a2`](./contracts/ethereum-1/0x39a6a99bee40a302334564400f8cd49c61fd80a2/); ethereum `0xea024447b6646d6394b8dcbc89d79d5aabc28a50` | ⚠️ Unaudited |
| AutoRepay | unknown | base | n/a | 2 deployments: base [`0x7c059e606a5cebdd458767c255329d8d074d9664`](./contracts/base-8453/0x7c059e606a5cebdd458767c255329d8d074d9664/); base `0xcafbbe6fbb086788647cc776c662961c18640e29` | ⚠️ Unaudited |
| CollectionsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a2853e622947d82c7276c58119cdba21f35977b`](./contracts/ethereum-1/0x0a2853e622947d82c7276c58119cdba21f35977b/); ethereum `0x5f1dcb1c2eef3a4efacb6fd4a55c9a73ad8b07cb` | ⚠️ Unaudited |
| CollectionsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb`](./contracts/ethereum-1/0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb/); ethereum `0xd73961ee0f797316dd904b4279bb3a6416e01db7` | ⚠️ Unaudited |
| CollectionsManager | unknown | base | n/a | 2 deployments: base [`0x1376c898e8bb66c488b98f594d580446c1c9a569`](./contracts/base-8453/0x1376c898e8bb66c488b98f594d580446c1c9a569/); base `0xe2e228d52444fc80fe08b72ea5af0fff57ade926` | ⚠️ Unaudited |
| CollectionsManager | governance | base | n/a | 2 deployments: ethereum `0xe961c219af5806ee02642d181d5571b6b0d027eb`; base [`0x6bba45cfe699a35d6a8f72e43c0702a63822b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | ⚠️ Unaudited |
| FlashLoanLiquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa`](./contracts/ethereum-1/0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa/); ethereum `0x9f9842994daf43261ab3f22ca7a9123ac8853cda` | ⚠️ Unaudited |
| FlashLoanLiquidator | operational_periphery | ethereum | n/a | [`0xb6d6441cb7641829622b435b642a25653c6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | ⚠️ Unaudited |
| FlashLoanLiquidator | unknown | base | n/a | 2 deployments: base [`0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2`](./contracts/base-8453/0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2/); base `0x9bafd017124ade21b383321cc6c767914bb66fd0` | ⚠️ Unaudited |
| FlashLoanLooping | unknown | base | n/a | 15 deployments: ethereum `0x086312cc34cc7e719e84e751864ad46612c5c87c`; ethereum `0x5456d7771dc913ec193d3d09e40170f4011e1e15`; ethereum `0x5e5342727307d34aa372c4ddc2f6f0ccb77bfae2`; ethereum `0x67f65bb92f3ba7394a0a111c082a9f39e8792772`; ethereum `0x6ae1b48f10a629d34a5abc616a1d330b75d7120e`; ethereum `0x8323da7616da493664cb77ce9ea5d5631f66090e`; ethereum `0xf3b60bff862291a7e7903ef55806e54705081bb9`; base [`0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/); base `0x1e080442aa2a59637de16965c08ca26c98551b11`; base `0x437a07d08f0fca0697018951ad989d5da0a8627c`; base `0x8d641530c19dc3359c967c779922d4c67562abce`; base `0xb94958a984fc5f6563d90dc417cf02378df7a844`; base `0xd21e057aa24800e6fd3dc9dae08a7ebc63f8a00a`; base `0xe3499b9f42428581c9056592546b677ef60f4767`; base `0xe518b16f24a3863b53c20776348525aed3035773` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540`](./contracts/ethereum-1/0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540/); ethereum `0xbbf266e1fc206ee2585b7308c202d5053bf17a5f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x032a3bd866eccd067623eef9ed9c28c91a55a52f`](./contracts/ethereum-1/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/); ethereum `0x5abe9360a9f6403eac59657a28a86f0f4f82e3d3` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x17394bb16e522e1661062aa27644fc818cf23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/); base `0xe524c06f8b6213133e05775c69093de63836d02d` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2468210dd658579c4402897efceb533ad852e613`](./contracts/ethereum-1/0x2468210dd658579c4402897efceb533ad852e613/); ethereum `0xf160838c429d2be3572eff10e0fb55652911fd83` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27b68e1e247381d838f4838ac1add711e19bb443`](./contracts/ethereum-1/0x27b68e1e247381d838f4838ac1add711e19bb443/); ethereum `0x59458509133c77c242ce7bb9f65c516099af1757` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x678adc9134db57dfbb275ff82352ce663a0d6bbf`](./contracts/ethereum-1/0x678adc9134db57dfbb275ff82352ce663a0d6bbf/); ethereum `0x7d89dda185baad299f0511210299e53d15db3a61` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a374a6f090c03dc19990f6ba5b85037dda3aed6`](./contracts/ethereum-1/0x7a374a6f090c03dc19990f6ba5b85037dda3aed6/); ethereum `0xc8facfbba2632b65bad04f29abe3b237a1c88907` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c98af7675a7f8c2023a53c67616d63333332c3c`](./contracts/ethereum-1/0x7c98af7675a7f8c2023a53c67616d63333332c3c/); ethereum `0xfd4896b486dad2344b603fb7be2045feab461a5b` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338`](./contracts/ethereum-1/0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338/); ethereum `0xb7cf68bea675e319d3b6330d63cc0106340acc3f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa0e8972de2c15f748e1fffb67f37064774d0b754`](./contracts/ethereum-1/0xa0e8972de2c15f748e1fffb67f37064774d0b754/); ethereum `0xec4a950450755af9e0cf2f47dfcbfa0bf170ad55` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096`](./contracts/ethereum-1/0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096/); ethereum `0xb1286344d7cc72927a97abaf24bfd6fb1171f800` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5`](./contracts/ethereum-1/0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5/); ethereum `0xede7e4c3c282649dd208bd64abf50d305434e2e6` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x1202d4fb67e39d4cdf54feb3df94879cba5978e1`](./contracts/base-8453/0x1202d4fb67e39d4cdf54feb3df94879cba5978e1/); base `0x61106d24bcee7b9b3c7989be1412f08769911d05` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x17f32a5e988800364cb14e0619df6b87cb1928c4`](./contracts/base-8453/0x17f32a5e988800364cb14e0619df6b87cb1928c4/); base `0xf2c769136f1931b8b085fa2b559edb2fdb9a8d77` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x194c21d29a89de064ac2b4dd8029a3509886cff6`](./contracts/base-8453/0x194c21d29a89de064ac2b4dd8029a3509886cff6/); base `0xde62921294377945675233be00f841b7d4911c7f` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x1aba541f403109c34228c3fa188113ecbbaa62fe`](./contracts/base-8453/0x1aba541f403109c34228c3fa188113ecbbaa62fe/); base `0x69be21731939aecf63f8bc27b05a289405e6ce2d` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x3a63ecf29b7276e562679cafde2af728968166c0`](./contracts/base-8453/0x3a63ecf29b7276e562679cafde2af728968166c0/); base `0xb9e869757398cd8de4d3b2c1a6de56f8df4eac2e` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x4344855be7f18456376f5b6d854a9e307f94dbaa`](./contracts/base-8453/0x4344855be7f18456376f5b6d854a9e307f94dbaa/); base `0xaec6f77a75cc2718882bfd04bbff0c00fcf5735a` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x4e9a30bddc69dd1719964be56a8d7122190d5119`](./contracts/base-8453/0x4e9a30bddc69dd1719964be56a8d7122190d5119/); base `0xe89f1092e332130e1f148ffeefbf04f90b595972` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x528c052622dcead6cbfa35d269afa1ec3b32a16b`](./contracts/base-8453/0x528c052622dcead6cbfa35d269afa1ec3b32a16b/); base `0xfeb7c18df01c1936181166f66b92e711f5321a24` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x635f151544ffe33e9ea36595838b97ab0026cade`](./contracts/base-8453/0x635f151544ffe33e9ea36595838b97ab0026cade/); base `0xb4ef25a516a1a4d4f74d5243c50408442af83551` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2`](./contracts/base-8453/0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2/); base `0x923e79213a563941946062920ab8a04a750f9c1e` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | unknown | base | n/a | 2 deployments: base [`0xe0b698a945f597b6425c69b42ca62c725a4056d8`](./contracts/base-8453/0xe0b698a945f597b6425c69b42ca62c725a4056d8/); base `0xf41112919a679b07761d861384f77b2a6f445a29` | ⚠️ Unaudited |
| FlashLoanLoopingV1 | unknown | base | n/a | 12 deployments: ethereum `0x2f5333ae6c062204a5e5a0b1b56d948dd4c316de`; ethereum `0x56087d7094fc29818e68913cf399c71b7a1df311`; ethereum `0xd21e057aa24800e6fd3dc9dae08a7ebc63f8a00a`; ethereum `0xd42839331745739bc91f199a94c1df887cd9dc52`; ethereum `0xd598f79d44ad81926f4eea4890fef1a1ddf4589b`; ethereum `0xe32f8022f8fff65c44e3951369f3f5ede781dd4d`; ethereum `0xfa87fd3d097434c55193f2fca655e834028ebee1`; base [`0x150bec677391a7d6eea27e63cd0be5a2888a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/); base `0xa460c4d66bb78732e79cbc831528f86fa6f158df`; base `0xbd0a29929328f7e9b5439fb33083d86a57eac3e2`; base `0xdc386f46de40776452bf981bec4815f7747e1ed5`; base `0xe291b54be013aab500eea4aeeae1253072a1800c` | ⚠️ Unaudited |
| FlashLoanLoopingV1_7 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1e5a4c1d313219b491af392b4b6fe2d715670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/); ethereum `0x4b356dc596dd508836bd9e8fe5acad81f8cf9019`; ethereum `0x81d941e740cb9105f6ede1259903ae1af7be39df` | ⚠️ Unaudited |
| FlashRepay | unknown | ethereum | n/a | 4 deployments: ethereum [`0x282056fc9515ee5622690ce908a84f15b4511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/); ethereum `0xba8d383f0256b4fc8cb50e626b6c8b1121fe0e88`; base `0x4871d29987bd9714768b188c317dbc504470e85f`; base `0x4b9407c1a2c1e6233af43842f2699426c985f623` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x094bfc54a3db297c3459436b76b2b77f1ca6b05a`](./contracts/ethereum-1/0x094bfc54a3db297c3459436b76b2b77f1ca6b05a/); ethereum `0xd374e0fc1ce85eaa8458fb68d7b1153be7f33be3` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x123e09f8c92928bc102e2fbce03babe1ef176bf4`](./contracts/ethereum-1/0x123e09f8c92928bc102e2fbce03babe1ef176bf4/); ethereum `0x6f306a2dff7963ad68bd2526e647c1a2bb4faee4` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x134534254e293a48b4aa2992dc7839f69c9519eb`](./contracts/ethereum-1/0x134534254e293a48b4aa2992dc7839f69c9519eb/); ethereum `0x6e5edc884e77ed6084630e6bd3b1e51c24f85383` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237bb38a01d5f5ac7429782acef2faff6a62a4b3`](./contracts/ethereum-1/0x237bb38a01d5f5ac7429782acef2faff6a62a4b3/); ethereum `0x6fd7f14d92cc7a3689abafd17873e8b0330c4378` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa89861c51beaac54d68d8e1b3b0faa38587aba50`](./contracts/ethereum-1/0xa89861c51beaac54d68d8e1b3b0faa38587aba50/); ethereum `0xe529d641f6aa878290ed867927a73f0b15eb14d7` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df`](./contracts/base-8453/0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df/); base `0xda5098675eae03fa3423b99ac741d3803977f0fe` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x52f1c10f96b88e19ddeb7369277a4076a094b1d9`](./contracts/base-8453/0x52f1c10f96b88e19ddeb7369277a4076a094b1d9/); base `0x8ceb1514fa3d807cebac0a86d48e7cabc779b20c` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x9b3f2a71becd9ba466894e204b8683bfc6b95687`](./contracts/base-8453/0x9b3f2a71becd9ba466894e204b8683bfc6b95687/); base `0xbf38e7b8e179906c2f8b75c507d45af9951c5f22` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0x9daa11e18513ea2a6cbb926834e8f699b0525eef`](./contracts/base-8453/0x9daa11e18513ea2a6cbb926834e8f699b0525eef/); base `0xc486ec29cabffad20b3c365505461a5221982b29` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0xab4d34e92940c1673e7c12f31418d536f4508774`](./contracts/base-8453/0xab4d34e92940c1673e7c12f31418d536f4508774/); base `0xb780fd6f1c7a07fc4ae66c017eb9f64b92b8aac3` | ⚠️ Unaudited |
| FlashRepayFactory | unknown | base | n/a | 2 deployments: base [`0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101`](./contracts/base-8453/0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101/); base `0xf588336239fb071da2a0abe60e2d6c6b0c30b384` | ⚠️ Unaudited |
| FlashRepayV1 | unknown | base | n/a | 7 deployments: ethereum `0x5091cfd174bfa35324e6fed1cf896c1abbef70b2`; ethereum `0xb80c45d1a6540dc5a29b0eb7861aaf554ae1370d`; ethereum `0xe2bc519c011d5a0e3a9fb4fb7c972f70a570f616`; base [`0x162977f0b19b21ededf3f6e61950d57115070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/); base `0x2cf9d6220298934f15a134d5258d74c3bbd7f995`; base `0x5d3f04327cd373db88a7c775edcbb7c87d69d804`; base `0xe95dc963b21268a1fe1ef864b21ea70ae664abfe` | ⚠️ Unaudited |
| GetMarketShutdownCalldataScript | unknown | ethereum | n/a | [`0x6058cda655ac20b27ceeb1d44ec57311fc751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | ⚠️ Unaudited |
| LeverageUp | unknown | ethereum | n/a | [`0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14`](./contracts/ethereum-1/0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14/) | ⚠️ Unaudited |
| MarketMakerManager | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0ea14b0a1645ef507216709cd96ed87094ca64f3`](./contracts/ethereum-1/0x0ea14b0a1645ef507216709cd96ed87094ca64f3/); ethereum `0x36ba0e7d9184c5bf0b72cf010e7ffd65853d4cda`; ethereum `0x8a0f494f9979f397d2c54eab131989801f0afa54`; ethereum `0x9f2e948354e160c6a95b1b078c9ed7b59a71987b`; base `0x0f83c05f6fe3180c345a887aa0c814d678b0ea8e`; base `0x187f6ed4a23a722557b05aa378498ddb843feff6`; base `0x22ef2837a933cf9a72e21f2dac9b35a530870b82`; base `0xba8d383f0256b4fc8cb50e626b6c8b1121fe0e88` | ⚠️ Unaudited |
| MarketMakerManagerFactory | unknown | base | n/a | 3 deployments: ethereum `0xdd3a78854c7648b4471332e816cdc61cb73565cf`; base [`0x32335c4ea83099dd052ea116b70bf1de6d844ea1`](./contracts/base-8453/0x32335c4ea83099dd052ea116b70bf1de6d844ea1/); base `0x733c4c11e2c03d6cb2dc79ff1d5d3dafc6129a57` | ⚠️ Unaudited |
| MarketMakerManagerFactory | unknown | base | n/a | 2 deployments: base [`0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83`](./contracts/base-8453/0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83/); base `0xc4cca58a764423e4d35e69f974e605383a6f6d78` | ⚠️ Unaudited |
| MorphoPriceFeedV2 | operational_periphery | ethereum | n/a | [`0xc16acb6c66abbe24b70695b77d64422093931567`](./contracts/ethereum-1/0xc16acb6c66abbe24b70695b77d64422093931567/) | ⚠️ Unaudited |
| NonTransferrableRebasingTokenVault | unknown | base | n/a | 2 deployments: ethereum `0xc157c6055085249b0128d4f03177ca3a6e30d808`; base [`0x342a61b10da0e1bdcd3aeef403c5702c3cab8560`](./contracts/base-8453/0x342a61b10da0e1bdcd3aeef403c5702c3cab8560/) | ⚠️ Unaudited |
| PauseAll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57f543adb4fd741e2e508cc06e8e72bdeea13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/); base `0x8e61c4792acb3f3052a980a4cba63fddb70776e0` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4x | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x258982368229bb2b01fec7e68bb92e993709a14d`](./contracts/ethereum-1/0x258982368229bb2b01fec7e68bb92e993709a14d/); ethereum `0x26c1cbdf3de672817541bf96b663b0bd237ba361`; ethereum `0x26c6718bdd1cff22c7d1767222869a77f3f57e6b`; ethereum `0x85daf421c0b39470e29f1cc9f803789cd512eafb`; ethereum `0x9d6ab8979f39f6937fc3fd64dcf3448416c25b81` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4xV2 | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x3a63ecf29b7276e562679cafde2af728968166c0`](./contracts/ethereum-1/0x3a63ecf29b7276e562679cafde2af728968166c0/); ethereum `0xb94958a984fc5f6563d90dc417cf02378df7a844`; ethereum `0xb9e869757398cd8de4d3b2c1a6de56f8df4eac2e`; ethereum `0xe0b698a945f597b6425c69b42ca62c725a4056d8`; ethereum `0xe3499b9f42428581c9056592546b677ef60f4767`; ethereum `0xf41112919a679b07761d861384f77b2a6f445a29` | ⚠️ Unaudited |
| PriceFeedChainlinkUniswapV3TWAPx2 | unknown | ethereum | n/a | [`0x8377724e9fbe497f16abc423e42d365e6d963d34`](./contracts/ethereum-1/0x8377724e9fbe497f16abc423e42d365e6d963d34/) | ⚠️ Unaudited |
| Rheo | unknown | ethereum | n/a | [`0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | ⚠️ Unaudited |
| Size | unknown | base | n/a | 3 deployments: base [`0xa675e5909e29960cf9e8037b39508a45a0564555`](./contracts/base-8453/0xa675e5909e29960cf9e8037b39508a45a0564555/); base `0xb21bbe052f5ce9ae681c59725f0a313765fd016c`; base `0xc2a429681cad7c1ce36442fbf7a4a68b11eff940` | ⚠️ Unaudited |
| SizeFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36e1395237f43158a29a2fbfac395547d917cb3f`](./contracts/ethereum-1/0x36e1395237f43158a29a2fbfac395547d917cb3f/); ethereum `0x3a9c05c3da48e6e26f39928653258d7d4eb594c1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x87e64a9e33bd0dc43ecbeafcf7a79c70d0a6b534` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Size-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Size-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [Audit Report - Size Lending.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Size%20Lending.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [2025-06-23-Omniscia.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-06-23-Omniscia.pdf) | Omniscia | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [2025-06-14-Cantina.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-06-14-Cantina.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 4 | n/a |
| [2025-02-26-Cantina.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-26-Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 3 | n/a |
| [2025-02-12-Custodia-Security.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-12-Custodia-Security.pdf) | Cantina | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-12-10-ChainDefenders.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-12-10-ChainDefenders.pdf) | Cantina | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2024-11-13-Custodia-Security.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-11-13-Custodia-Security.pdf) | Cantina | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-06-10-Code4rena.pdf](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-06-10-Code4rena.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [2025-02-12-Custodia-Security.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-02-12-Custodia-Security.pdf) | Custodia Security | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2024-12-10-ChainDefenders.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-12-10-ChainDefenders.pdf) | Chain Defenders | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [2024-11-13-Custodia-Security.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-11-13-Custodia-Security.pdf) | Custodia Security | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-06-08-Spearbit.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-06-08-Spearbit.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [2024-03-26-Solidified.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-03-26-Solidified.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [2025-09-11-OpenZeppelin.pdf](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-09-11-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-07-26-Obsidian-Audits.pdf](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-07-26-Obsidian-Audits.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5e4b3cddab215960d847cc07eac72fe41e582cfe`](./contracts/ethereum-1/0x5e4b3cddab215960d847cc07eac72fe41e582cfe/) | AaveAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6027faf1d22ba4db7bd35acdca98208a61fee6ea`](./contracts/ethereum-1/0x6027faf1d22ba4db7bd35acdca98208a61fee6ea/) | AutoCopyCollection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a6a99bee40a302334564400f8cd49c61fd80a2`](./contracts/ethereum-1/0x39a6a99bee40a302334564400f8cd49c61fd80a2/) | AutoRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c059e606a5cebdd458767c255329d8d074d9664`](./contracts/base-8453/0x7c059e606a5cebdd458767c255329d8d074d9664/) | AutoRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2853e622947d82c7276c58119cdba21f35977b`](./contracts/ethereum-1/0x0a2853e622947d82c7276c58119cdba21f35977b/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb`](./contracts/ethereum-1/0x24c7d4ba190ece7b812ccd365a4d0d7e88ff3ffb/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1376c898e8bb66c488b98f594d580446c1c9a569`](./contracts/base-8453/0x1376c898e8bb66c488b98f594d580446c1c9a569/) | CollectionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6bba45cfe699a35d6a8f72e43c0702a63822b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | CollectionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa`](./contracts/ethereum-1/0x583b43c1fe7d80a33ca38b25b51b38e9da3ed7aa/) | FlashLoanLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6d6441cb7641829622b435b642a25653c6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | FlashLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2`](./contracts/base-8453/0x35a3b1d398ba7b0d13c70cbf572f426cb48729b2/) | FlashLoanLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/) | FlashLoanLooping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540`](./contracts/ethereum-1/0x026a620be36f9ee9ccdcf4eec7bd34ce7de58540/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x032a3bd866eccd067623eef9ed9c28c91a55a52f`](./contracts/ethereum-1/0x032a3bd866eccd067623eef9ed9c28c91a55a52f/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17394bb16e522e1661062aa27644fc818cf23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/) | FlashLoanLoopingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2468210dd658579c4402897efceb533ad852e613`](./contracts/ethereum-1/0x2468210dd658579c4402897efceb533ad852e613/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b68e1e247381d838f4838ac1add711e19bb443`](./contracts/ethereum-1/0x27b68e1e247381d838f4838ac1add711e19bb443/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x678adc9134db57dfbb275ff82352ce663a0d6bbf`](./contracts/ethereum-1/0x678adc9134db57dfbb275ff82352ce663a0d6bbf/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a374a6f090c03dc19990f6ba5b85037dda3aed6`](./contracts/ethereum-1/0x7a374a6f090c03dc19990f6ba5b85037dda3aed6/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c98af7675a7f8c2023a53c67616d63333332c3c`](./contracts/ethereum-1/0x7c98af7675a7f8c2023a53c67616d63333332c3c/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338`](./contracts/ethereum-1/0x8e8c1403c9e525af0a1f2e3768a6013b4b9a6338/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e8972de2c15f748e1fffb67f37064774d0b754`](./contracts/ethereum-1/0xa0e8972de2c15f748e1fffb67f37064774d0b754/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096`](./contracts/ethereum-1/0xa7035b00d5b1d0edb3c6482767b3d7ddf5a3b096/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5`](./contracts/ethereum-1/0xd9b2aa96a4452e1c541f6a1dc47c96832f485fe5/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1202d4fb67e39d4cdf54feb3df94879cba5978e1`](./contracts/base-8453/0x1202d4fb67e39d4cdf54feb3df94879cba5978e1/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17f32a5e988800364cb14e0619df6b87cb1928c4`](./contracts/base-8453/0x17f32a5e988800364cb14e0619df6b87cb1928c4/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x194c21d29a89de064ac2b4dd8029a3509886cff6`](./contracts/base-8453/0x194c21d29a89de064ac2b4dd8029a3509886cff6/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1aba541f403109c34228c3fa188113ecbbaa62fe`](./contracts/base-8453/0x1aba541f403109c34228c3fa188113ecbbaa62fe/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a63ecf29b7276e562679cafde2af728968166c0`](./contracts/base-8453/0x3a63ecf29b7276e562679cafde2af728968166c0/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4344855be7f18456376f5b6d854a9e307f94dbaa`](./contracts/base-8453/0x4344855be7f18456376f5b6d854a9e307f94dbaa/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e9a30bddc69dd1719964be56a8d7122190d5119`](./contracts/base-8453/0x4e9a30bddc69dd1719964be56a8d7122190d5119/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x528c052622dcead6cbfa35d269afa1ec3b32a16b`](./contracts/base-8453/0x528c052622dcead6cbfa35d269afa1ec3b32a16b/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x635f151544ffe33e9ea36595838b97ab0026cade`](./contracts/base-8453/0x635f151544ffe33e9ea36595838b97ab0026cade/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2`](./contracts/base-8453/0x8ddb7b01d5ae872e6028732feac8d79a1c5a9df2/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe0b698a945f597b6425c69b42ca62c725a4056d8`](./contracts/base-8453/0xe0b698a945f597b6425c69b42ca62c725a4056d8/) | FlashLoanLoopingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x150bec677391a7d6eea27e63cd0be5a2888a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/) | FlashLoanLoopingV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5a4c1d313219b491af392b4b6fe2d715670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/) | FlashLoanLoopingV1_7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282056fc9515ee5622690ce908a84f15b4511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/) | FlashRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094bfc54a3db297c3459436b76b2b77f1ca6b05a`](./contracts/ethereum-1/0x094bfc54a3db297c3459436b76b2b77f1ca6b05a/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123e09f8c92928bc102e2fbce03babe1ef176bf4`](./contracts/ethereum-1/0x123e09f8c92928bc102e2fbce03babe1ef176bf4/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x134534254e293a48b4aa2992dc7839f69c9519eb`](./contracts/ethereum-1/0x134534254e293a48b4aa2992dc7839f69c9519eb/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237bb38a01d5f5ac7429782acef2faff6a62a4b3`](./contracts/ethereum-1/0x237bb38a01d5f5ac7429782acef2faff6a62a4b3/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa89861c51beaac54d68d8e1b3b0faa38587aba50`](./contracts/ethereum-1/0xa89861c51beaac54d68d8e1b3b0faa38587aba50/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df`](./contracts/base-8453/0x1cb5d8c17952e50011e3a411f97e3bfc6ffdf5df/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52f1c10f96b88e19ddeb7369277a4076a094b1d9`](./contracts/base-8453/0x52f1c10f96b88e19ddeb7369277a4076a094b1d9/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9b3f2a71becd9ba466894e204b8683bfc6b95687`](./contracts/base-8453/0x9b3f2a71becd9ba466894e204b8683bfc6b95687/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9daa11e18513ea2a6cbb926834e8f699b0525eef`](./contracts/base-8453/0x9daa11e18513ea2a6cbb926834e8f699b0525eef/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xab4d34e92940c1673e7c12f31418d536f4508774`](./contracts/base-8453/0xab4d34e92940c1673e7c12f31418d536f4508774/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101`](./contracts/base-8453/0xe4fa6f552f07fbe2ed8eecb29ed4ca9c41c94101/) | FlashRepayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x162977f0b19b21ededf3f6e61950d57115070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/) | FlashRepayV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6058cda655ac20b27ceeb1d44ec57311fc751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | GetMarketShutdownCalldataScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14`](./contracts/ethereum-1/0xf4a21ac7e51d17a0e1c8b59f7a98bb7a97806f14/) | LeverageUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea14b0a1645ef507216709cd96ed87094ca64f3`](./contracts/ethereum-1/0x0ea14b0a1645ef507216709cd96ed87094ca64f3/) | MarketMakerManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32335c4ea83099dd052ea116b70bf1de6d844ea1`](./contracts/base-8453/0x32335c4ea83099dd052ea116b70bf1de6d844ea1/) | MarketMakerManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83`](./contracts/base-8453/0x3381aedd39b4fa423af3ecb599f7d9788ff3ff83/) | MarketMakerManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342a61b10da0e1bdcd3aeef403c5702c3cab8560`](./contracts/base-8453/0x342a61b10da0e1bdcd3aeef403c5702c3cab8560/) | NonTransferrableRebasingTokenVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57f543adb4fd741e2e508cc06e8e72bdeea13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/) | PauseAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x258982368229bb2b01fec7e68bb92e993709a14d`](./contracts/ethereum-1/0x258982368229bb2b01fec7e68bb92e993709a14d/) | PriceFeedChainlinkOnly4x | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a63ecf29b7276e562679cafde2af728968166c0`](./contracts/ethereum-1/0x3a63ecf29b7276e562679cafde2af728968166c0/) | PriceFeedChainlinkOnly4xV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8377724e9fbe497f16abc423e42d365e6d963d34`](./contracts/ethereum-1/0x8377724e9fbe497f16abc423e42d365e6d963d34/) | PriceFeedChainlinkUniswapV3TWAPx2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | Rheo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa675e5909e29960cf9e8037b39508a45a0564555`](./contracts/base-8453/0xa675e5909e29960cf9e8037b39508a45a0564555/) | Size | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e1395237f43158a29a2fbfac395547d917cb3f`](./contracts/ethereum-1/0x36e1395237f43158a29a2fbfac395547d917cb3f/) | SizeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=13, extraction_exact=4

Zero-match audit list:

- [13770] 2025-02-12-Custodia-Security.pdf
- [13772] 2024-11-13-Custodia-Security.pdf
- [13776] 2025-02-12-Custodia-Security.pdf
- [13778] 2024-11-13-Custodia-Security.pdf
- [13782] 2025-09-11-OpenZeppelin.pdf
- [13783] 2025-07-26-Obsidian-Audits.pdf

Fork inheritance lineage and inherited audits are included when available.
