# Agentic Audit Brief: D2 Finance

## Project Overview

- Project: D2 Finance (`d2-finance`)
- Website: [https://d2.finance/strategies](https://d2.finance/strategies)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-21T16:00:32.588Z
- Pipeline run: v2-pipeline-2026-05-21-ccbc73-fcdb
- Chains: arbitrum, arbitrum, avalanche, base, berachain, ethereum, arbitrum, base, arbitrum, base, berachain, ethereum, arbitrum, berachain, ethereum, arbitrum, ethereum, base, base, ethereum, berachain, ethereum
- Contract surface: 188 unique implementations (714 raw deployments)
- DeFi Llama TVL: $24,574,551.74
- On-chain TVL (included contracts): $14,911,104.92

## Project Description

D2 Finance is an onchain capital allocator that deploys user funds into automated yield strategies. It operates a family of vaults across multiple chains, using whitelisted access and modular strategy contracts to manage deposits and generate returns.

### Architecture

The D2 Finance vaults rely on modular strategy contracts (e.g., TraderV0, Inch_Swap_Module, Aave_Lending_Module) for execution, while governance is handled by Gnosis Safe multisigs. The Sales Contracts distributed the DSQ token, which may be used for vault access or fee discounts, linking the token economy to the vault ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 27/59 (45.8%)
- Verified + Unaudited implementations: 32
- Unverified implementations: 129
- Unique implementations: 188
- Raw deployments: 714
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $11,485,811.71

## Contract Surface

### ✅ Verified + Audited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV3 | core_logic | arbitrum, base, berachain, ethereum | 49 deployments: ethereum `0x07dff4...29daf4`; ethereum `0xd6b5b7...3b152e`; base `0x2406aa...5b6c7e`; arbitrum `0x0178b5...48730f`; arbitrum `0x0cabda...55c08f`; arbitrum `0x100e6b...1f4852`; arbitrum `0x153417...9775a8`; arbitrum `0x1894c9...310816`; arbitrum `0x227497...d289af`; arbitrum `0x5210cc...26c585`; arbitrum `0x563012...02f513`; arbitrum `0x7e746e...eb76e0`; arbitrum `0x834228...080efe`; arbitrum `0xa3fc0c...dd377e`; arbitrum `0xa704b4...5aedf5`; arbitrum `0xac7e8e...2e74f5`; arbitrum `0xb1e866...8fefe1`; arbitrum `0xc027ec...84968c`; arbitrum `0xdb59ee...300777`; arbitrum `0xeb3194...24d6c0`; arbitrum `0xf6c0cf...5d5f63`; arbitrum `0xfddd73...262fab`; berachain [`0x00accd...deb423`](./contracts/berachain-80094/0x00accdc39a84eaf45fc8e302280cc2e7e1deb423/); berachain `0x01e15e...e4d11a`; berachain `0x14ffe3...d7d6e9`; berachain `0x1e15c2...3a61e9`; berachain `0x22093a...21230e`; berachain `0x2b8d04...0aed1e`; berachain `0x2c217c...55de42`; berachain `0x2feb85...ff9071`; berachain `0x36b933...eb706d`; berachain `0x3b565e...803675`; berachain `0x432950...d9dd74`; berachain `0x48b999...02505f`; berachain `0x4c0dc1...d74429`; berachain `0x53517f...3249ed`; berachain `0x7f7375...195758`; berachain `0x8f0415...d6b10f`; berachain `0x8f3ae0...9b8b78`; berachain `0xace42f...214359`; berachain `0xb934d3...f2251e`; berachain `0xbe75c8...1f1f79`; berachain `0xbead29...3e7419`; berachain `0xbf0759...7e941b`; berachain `0xc4fee8...005dd3`; berachain `0xcb81de...49bcac`; berachain `0xcd1800...4fa3ae`; berachain `0xe93972...5c0cbb`; berachain `0xf650ba...307056` | ✅ Audited |
| VaultV0 | core_logic | arbitrum, avalanche, base, berachain, ethereum | 69 deployments: ethereum `0x2feb85...ff9071`; ethereum `0x432950...d9dd74`; ethereum `0xc51971...aa3d1e`; base `0x3b565e...803675`; base `0x41590d...52a685`; base `0x46019a...51f52f`; base `0x7d59a5...7afb53`; base `0x7da637...86df96`; arbitrum `0x1176c3...6b785e`; arbitrum `0x183424...9c9109`; arbitrum `0x1f1fc6...245c9a`; arbitrum `0x35dec0...2f4ef4`; arbitrum `0x3b05e3...332404`; arbitrum `0x41ac1a...a993e2`; arbitrum `0x47ba9c...52dc44`; arbitrum `0x4d8239...73911d`; arbitrum `0x575224...f30d52`; arbitrum `0x57f467...c1791b`; arbitrum `0x5b49d7...bd9a0b`; arbitrum `0x61d911...0078a1`; arbitrum `0x667542...5d209f`; arbitrum `0x80c403...213d36`; arbitrum `0x893e28...e3c908`; arbitrum `0x8ad1c6...bf1ad9`; arbitrum `0x907a9f...2352a9`; arbitrum `0x999a57...6b14fc`; arbitrum `0xa0820f...d1394e`; arbitrum `0xa511c0...dfff2c`; arbitrum `0xac75f0...79ed56`; arbitrum `0xacc811...0cfe28`; arbitrum `0xbb566f...dd67b5`; arbitrum `0xbe68c8...5f407a`; arbitrum `0xbee7a8...9b62fe`; arbitrum `0xc5baff...54dc58`; arbitrum `0xc9a631...b62f44`; arbitrum `0xd0a0c9...c521dd`; arbitrum `0xd0db54...ef54af`; arbitrum `0xdd196c...f9973a`; arbitrum `0xed5ebe...f2df77`; arbitrum `0xee8bbc...ed2b43`; arbitrum `0xf04aec...87a864`; arbitrum `0xfa517c...d73d71`; arbitrum `0xffdd43...74dc75`; avalanche `0x1f1fc6...245c9a`; avalanche `0x53cd01...4e699a`; avalanche `0x757587...6d529f`; avalanche `0x8d4b71...ea80e1`; avalanche `0x9c198c...f27383`; avalanche `0xa0820f...d1394e`; avalanche `0xa28351...815207`; avalanche `0xb501d0...86a8f4`; avalanche `0xf04aec...87a864`; avalanche `0xfa18e0...34712c`; berachain [`0x0446b4...a2c457`](./contracts/berachain-80094/0x0446b41f6c848e6a539703e65d2a4813f2a2c457/); berachain `0x26eca5...53e54b`; berachain `0x2e8482...1cecae`; berachain `0x63388c...2fc62f`; berachain `0x6a4d24...4a1137`; berachain `0x6fc386...749289`; berachain `0x767adf...144633`; berachain `0x7da637...86df96`; berachain `0x7efe92...fe2d61`; berachain `0xa1e6ee...7571e5`; berachain `0xb02aea...0331d9`; berachain `0xc8661c...e540d0`; berachain `0xc9ebd0...262c8c`; berachain `0xccf785...01cbee`; berachain `0xd7c907...a1d066`; berachain `0xdccc41...acaa1b` | ✅ Audited |
| DSQToken | token | arbitrum | 2 deployments: arbitrum [`0x760e31...bd55a0`](./contracts/arbitrum-42161/0x760e31672fe489be1d3cb3447feb493d03bd55a0/); arbitrum `0xdb0c6f...89cd7b` | ✅ Audited |
| Strategy | core_logic | arbitrum, berachain, ethereum | 71 deployments: ethereum `0xa93cf0...c9f667`; ethereum `0xb4e761...aee4c1`; ethereum `0xda68ad...713063`; ethereum `0xea3c67...c9d161`; arbitrum [`0x02b1a7...a4b894`](./contracts/arbitrum-42161/0x02b1a70de2895112623b601ed2e34147dda4b894/); arbitrum `0x03ddd8...f3964c`; arbitrum `0x0ba10b...6a9d0d`; arbitrum `0x0c7dd7...54bc22`; arbitrum `0x10d8e1...d5ef49`; arbitrum `0x128f0c...87f6c9`; arbitrum `0x13679c...517109`; arbitrum `0x1b14a9...f4f16f`; arbitrum `0x269e88...3391f2`; arbitrum `0x35e18a...be8533`; arbitrum `0x372299...7b3e4f`; arbitrum `0x38dc0a...bdae71`; arbitrum `0x3af809...943266`; arbitrum `0x418282...067594`; arbitrum `0x42d28f...e99ca0`; arbitrum `0x58036a...55fa28`; arbitrum `0x5be771...bf9d78`; arbitrum `0x60e609...dbb443`; arbitrum `0x61424d...020fd9`; arbitrum `0x615f32...92ca78`; arbitrum `0x6544e4...bb1205`; arbitrum `0x6e99e6...ecc79e`; arbitrum `0x74cf50...ed641a`; arbitrum `0x918d19...e7616f`; arbitrum `0x97a63f...99bd31`; arbitrum `0x97ea32...175ea0`; arbitrum `0x9c8d23...b5927d`; arbitrum `0x9f943f...8f8df1`; arbitrum `0xa09b31...13de9c`; arbitrum `0xa8519f...813b5d`; arbitrum `0xb2e866...404a78`; arbitrum `0xb4aaa5...8c3d24`; arbitrum `0xb61854...56455b`; arbitrum `0xb7a396...646766`; arbitrum `0xbb74d6...10ce67`; arbitrum `0xbe9ea8...f82f40`; arbitrum `0xc8759a...1ff052`; arbitrum `0xce3240...43bc83`; arbitrum `0xd53759...50fbdf`; arbitrum `0xdb765f...9a9c0b`; arbitrum `0xe5de20...ae719b`; arbitrum `0xeb2024...1424a4`; arbitrum `0xedfdcb...852316`; arbitrum `0xf52cbb...7e3843`; arbitrum `0xf767be...f825b4`; arbitrum `0xf832a7...8fe4a1`; arbitrum `0xfc607e...2d2806`; arbitrum `0xfc756f...ada706`; arbitrum `0xffc0d6...c3969c`; berachain `0x21662b...5e071e`; berachain `0x21f9d8...7a060e`; berachain `0x32fe83...8a7067`; berachain `0x376be6...d10b97`; berachain `0x41590d...52a685`; berachain `0x46019a...51f52f`; berachain `0x4923fc...d90b80`; berachain `0x558460...6a1f18`; berachain `0x644b8e...eca244`; berachain `0x65a6b0...58af78`; berachain `0x756188...895e68`; berachain `0x96c041...75dc2e`; berachain `0xa17912...6228c2`; berachain `0xc0ac5a...e76a0f`; berachain `0xd1dbb5...811e86`; berachain `0xd50e36...f5efc8`; berachain `0xeb065e...e77435`; berachain `0xf336e2...6c4850` | ✅ Audited |
| Aave_Lending_Module | core_logic | arbitrum | 2 deployments: arbitrum [`0x24529d...84f920`](./contracts/arbitrum-42161/0x24529d0825d8ccd6f93fbf516258b9281284f920/); arbitrum `0x7b10df...d3c33b` | ✅ Audited |
| Camelot_LP_Module | unknown | arbitrum | [`0x9a6f5f...485133`](./contracts/arbitrum-42161/0x9a6f5f8363b0a33a8acd806d597a73b8e7485133/) | ✅ Audited |
| Camelot_NFTPool_Module | core_logic | arbitrum | [`0xd0b8a8...d02369`](./contracts/arbitrum-42161/0xd0b8a8803a0e8f3a460538b4ded5963946d02369/) | ✅ Audited |
| Camelot_NitroPool_Module | core_logic | arbitrum | [`0xd8afcf...107f2c`](./contracts/arbitrum-42161/0xd8afcfb5e939a05af3e7faefe52d3f53ee107f2c/) | ✅ Audited |
| Camelot_Storage_Module | unknown | arbitrum | [`0x1777f3...49b4f8`](./contracts/arbitrum-42161/0x1777f3fa45537981602e67b277f7c3be5949b4f8/) | ✅ Audited |
| Camelot_Swap_Module | unknown | arbitrum | [`0x6479d1...d2404d`](./contracts/arbitrum-42161/0x6479d116f1f9904641b47d63da0babac0fd2404d/) | ✅ Audited |
| Camelot_V3LP_Module | unknown | arbitrum | [`0x6e2ba7...f121cd`](./contracts/arbitrum-42161/0x6e2ba75ccf5559390bd0e45e79b1160ad7f121cd/) | ✅ Audited |
| Camelot_V3Swap_Module | unknown | arbitrum | [`0x017790...ba071d`](./contracts/arbitrum-42161/0x01779021cd688f7755648c46c651bf90bfba071d/) | ✅ Audited |
| D2 | unknown | arbitrum | [`0xed7f00...cf6cb8`](./contracts/arbitrum-42161/0xed7f000ee335b8199b004cca1c6f36d188cf6cb8/) | ✅ Audited |
| GMX_GLP_Module | unknown | arbitrum | [`0x31e24a...143da2`](./contracts/arbitrum-42161/0x31e24ab0f3ec6c80ce9a7764f704037da3143da2/) | ✅ Audited |
| GMX_OrderBook_Module | unknown | arbitrum | [`0xb4eb02...9bab28`](./contracts/arbitrum-42161/0xb4eb023f4fb37fa0f4b18e3b2514d8b5dc9bab28/) | ✅ Audited |
| GMX_PositionRouter_Module | adapter | arbitrum | 2 deployments: arbitrum [`0x5cb093...53c290`](./contracts/arbitrum-42161/0x5cb093adbe29be5b16e03c324988e223d753c290/); arbitrum `0x79752c...0916bd` | ✅ Audited |
| GMX_Swap_Module | unknown | arbitrum | 2 deployments: arbitrum [`0x3289fd...96197a`](./contracts/arbitrum-42161/0x3289fd2b940834e902d531f4b98a64a8b596197a/); arbitrum `0xaeb223...2b878f` | ✅ Audited |
| Inch_Swap_Module | unknown | arbitrum, base | 2 deployments: base `0xc2261d...8ca812`; arbitrum [`0x97d8eb...11c39f`](./contracts/arbitrum-42161/0x97d8eb5c7cdced3e80aa8ae5d6a34cc62a11c39f/) | ✅ Audited |
| Lyra_LP_Module | unknown | arbitrum | [`0xefe465...1d41b1`](./contracts/arbitrum-42161/0xefe465692a1c3cbb61d990764dfb3b12ca1d41b1/) | ✅ Audited |
| Lyra_Options_Module | unknown | arbitrum | [`0xb1d294...526c8b`](./contracts/arbitrum-42161/0xb1d29441a145527960c81025c2326949d8526c8b/) | ✅ Audited |
| Lyra_Rewards_Module | unknown | arbitrum | [`0x71b749...6eef7d`](./contracts/arbitrum-42161/0x71b749ec30b1dd7b12a4716402b102a8196eef7d/) | ✅ Audited |
| Lyra_Storage_Module | unknown | arbitrum | [`0x15c220...bc7f75`](./contracts/arbitrum-42161/0x15c22076663f11953ceb9d9631a7df0cd2bc7f75/) | ✅ Audited |
| Router | adapter | arbitrum | [`0x0fecac...8d5410`](./contracts/arbitrum-42161/0x0fecacd06304cde4b3b94073f71a52faff8d5410/) | ✅ Audited |
| TraderJoe_Legacy_LP_Module | unknown | arbitrum | [`0x2bf5e2...01fd1e`](./contracts/arbitrum-42161/0x2bf5e2af85b7c3c4c119c1680a488a9cfb01fd1e/) | ✅ Audited |
| TraderJoe_LP_Module | unknown | arbitrum | [`0x349f73...2db215`](./contracts/arbitrum-42161/0x349f734ff449ef379e437d8bfed89423dc2db215/) | ✅ Audited |
| TraderJoe_Swap_Module | unknown | arbitrum | [`0x486985...17d911`](./contracts/arbitrum-42161/0x4869855b35f69191f0e3a179cf689a675c17d911/) | ✅ Audited |
| TraderV0 | unknown | arbitrum, berachain, ethereum | 9 deployments: ethereum `0xe68f89...6600ba`; arbitrum `0x22cd2f...bc89fd`; arbitrum `0x2edac6...b42bf3`; arbitrum `0x59a259...8d9b68`; arbitrum `0x5daf41...fc0a76`; arbitrum `0x7176a0...1110bf`; berachain [`0x02295e...3e13d7`](./contracts/berachain-80094/0x02295e88bca3c6c1f51b40ef2f43ae31b23e13d7/); berachain `0x796dc3...7c56c9`; berachain `0xe4f460...8dd16f` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV1Whitelisted | core_logic | arbitrum, base | 75 deployments: base `0x6c05a7...548897`; arbitrum [`0x0215ed...359088`](./contracts/arbitrum-42161/0x0215edeecdabe3dfc5ec8d59337ec9b26d359088/); arbitrum `0x043e34...8e8e2d`; arbitrum `0x063b25...3740dc`; arbitrum `0x0864b9...846487`; arbitrum `0x0ab2a1...7d5fea`; arbitrum `0x0f76de...3907d4`; arbitrum `0x111e64...6ec108`; arbitrum `0x13177d...8480f7`; arbitrum `0x1346bb...7af117`; arbitrum `0x13d64b...24d710`; arbitrum `0x14a024...b65758`; arbitrum `0x158e8f...afc312`; arbitrum `0x171e0a...c9f69f`; arbitrum `0x17d7ab...3d4824`; arbitrum `0x184914...1b9e4b`; arbitrum `0x195a9e...352890`; arbitrum `0x1c17a3...b650da`; arbitrum `0x2166a1...ab0032`; arbitrum `0x27d22e...8c6a42`; arbitrum `0x28027e...aeadb4`; arbitrum `0x291344...c52320`; arbitrum `0x2ad14a...b70c58`; arbitrum `0x2c5c50...e2e916`; arbitrum `0x33d5e2...7c89f8`; arbitrum `0x34f0fd...0d760e`; arbitrum `0x36b193...bcf4d0`; arbitrum `0x3a89ab...2621d8`; arbitrum `0x4508e6...514f8f`; arbitrum `0x4ada76...6e76c6`; arbitrum `0x4c0d05...70d17f`; arbitrum `0x526ec6...56d3b4`; arbitrum `0x56f1f2...a2563b`; arbitrum `0x577fcb...80cea2`; arbitrum `0x58bd1b...602241`; arbitrum `0x5ae560...c253d1`; arbitrum `0x5f44a7...2caa43`; arbitrum `0x6b8959...b42e3d`; arbitrum `0x701690...eeefee`; arbitrum `0x71254c...933afb`; arbitrum `0x734892...a3bb7b`; arbitrum `0x752882...3e5004`; arbitrum `0x782f88...0d9f37`; arbitrum `0x8324e4...50a333`; arbitrum `0x856abb...04c6f1`; arbitrum `0x85b197...897e2f`; arbitrum `0x8c1ec7...49cd20`; arbitrum `0x91fa68...cf1b7d`; arbitrum `0x99b0f1...6c5f26`; arbitrum `0x9c3e1d...a6689f`; arbitrum `0xa52027...c5e3ec`; arbitrum `0xa54c23...6af424`; arbitrum `0xa8ee55...ec4468`; arbitrum `0xaae557...180e78`; arbitrum `0xac55d2...4db320`; arbitrum `0xb0730a...895a0f`; arbitrum `0xb2f7a3...0e5871`; arbitrum `0xb74dce...a779f6`; arbitrum `0xbc9585...af7ccf`; arbitrum `0xc56a69...4192df`; arbitrum `0xca169b...99c05c`; arbitrum `0xcb5ca1...b42482`; arbitrum `0xcd59e1...d82c9c`; arbitrum `0xcf3afb...93d733`; arbitrum `0xcfbbea...3f72b3`; arbitrum `0xd1d64d...843a84`; arbitrum `0xd1fc50...aa9cbf`; arbitrum `0xd31ace...c9dea5`; arbitrum `0xda3a00...b36ab6`; arbitrum `0xe4f5ec...213361`; arbitrum `0xed6286...9c91eb`; arbitrum `0xed80c8...f23bda`; arbitrum `0xeee6e1...85dfed`; arbitrum `0xfade87...07bb6e`; arbitrum `0xfd84da...8465b3` | ⚠️ Unaudited |
| Strategy_D2 | core_logic | arbitrum | 5 deployments: arbitrum [`0x31e2bb...33adfb`](./contracts/arbitrum-42161/0x31e2bb25c7cf1260c50a6c53d08541c2ed33adfb/); arbitrum `0x3fdc9d...a49ece`; arbitrum `0x6d619b...cbd235`; arbitrum `0x700a69...aa90ad`; arbitrum `0xe1a4ea...ca26eb` | ⚠️ Unaudited |
| Strategy_Rodeo | core_logic | arbitrum | [`0xe5d14d...2d3844`](./contracts/arbitrum-42161/0xe5d14df00d2b95e796c88d09cda014ba902d3844/) | ⚠️ Unaudited |
| Strategy_ETH | core_logic | arbitrum | 9 deployments: arbitrum [`0x31ff6c...cd3a5e`](./contracts/arbitrum-42161/0x31ff6ccef7f82057c382ee19ca853101bccd3a5e/); arbitrum `0x3e8bbe...55768a`; arbitrum `0x51f340...991ead`; arbitrum `0x760fcb...ad85ad`; arbitrum `0x9718a4...8fa7c7`; arbitrum `0xa66e6f...213930`; arbitrum `0xaa2fca...941e55`; arbitrum `0xe93972...5c0cbb`; arbitrum `0xf00552...daa394` | ⚠️ Unaudited |
| Aave_Module | unknown | base, ethereum | 2 deployments: ethereum `0xfb9378...686651`; base [`0xbdfeef...2ced6c`](./contracts/base-8453/0xbdfeefc7a83de75e906ba29c3f4a6028ea2ced6c/) | ⚠️ Unaudited |
| Bera_Module | unknown | berachain | 6 deployments: berachain [`0x07cfe5...cf00fb`](./contracts/berachain-80094/0x07cfe53c62c3da3f27ff58d5529aea05a0cf00fb/); berachain `0x4d440e...6b655b`; berachain `0x616bcd...e16890`; berachain `0xaf4e7b...891a77`; berachain `0xd841ef...25f285`; berachain `0xf9efcf...480fa2` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | arbitrum | 161 deployments: arbitrum [`0x03357e...eeded5`](./contracts/arbitrum-42161/0x03357e5ac12982b9b23554dbbc4d8faeabeeded5/); arbitrum `0x068846...8959e0`; arbitrum `0x06d973...e402f8`; arbitrum `0x0b54ba...50e918`; arbitrum `0x0beeae...c59592`; arbitrum `0x0cb054...c8b99a`; arbitrum `0x0ec41c...44454a`; arbitrum `0x117181...a033c3`; arbitrum `0x13f0a1...279976`; arbitrum `0x151fcf...7fce28`; arbitrum `0x17ef94...71bc1e`; arbitrum `0x1a6290...e5432f`; arbitrum `0x1cd0b4...6b8b64`; arbitrum `0x1dc2de...d7f7eb`; arbitrum `0x2093c4...5382ca`; arbitrum `0x21d95e...d0318d`; arbitrum `0x21f9fb...290033`; arbitrum `0x2293b3...7714ea`; arbitrum `0x234f20...528f2f`; arbitrum `0x26d3d9...3b448f`; arbitrum `0x2a42ae...5eb33b`; arbitrum `0x2ca7c5...6486c2`; arbitrum `0x2d12e9...11921b`; arbitrum `0x34d8d7...9a5fe4`; arbitrum `0x37b2ed...4deb11`; arbitrum `0x387f65...ebdb9c`; arbitrum `0x38fe70...9f5cd9`; arbitrum `0x398a7f...37be67`; arbitrum `0x3c7a12...37f021`; arbitrum `0x3e8682...7ab103`; arbitrum `0x3edb4e...ab51f3`; arbitrum `0x4065ba...47f7de`; arbitrum `0x40fe3c...98623f`; arbitrum `0x41d803...52a2c7`; arbitrum `0x4243d6...9a7c57`; arbitrum `0x42b3b5...6cd764`; arbitrum `0x43321b...6b878e`; arbitrum `0x440521...808f18`; arbitrum `0x44ad06...043a4a`; arbitrum `0x44ff76...ee9289`; arbitrum `0x45fc2e...45133b`; arbitrum `0x4668ea...b45120`; arbitrum `0x496d0d...77cdd1`; arbitrum `0x4ca12c...a75447`; arbitrum `0x50f5d0...dcf0e9`; arbitrum `0x52f66b...3a51f2`; arbitrum `0x55aa26...9c5f1b`; arbitrum `0x58c856...f15d27`; arbitrum `0x58de20...746df1`; arbitrum `0x5c36ae...30bc47`; arbitrum `0x5c5f0f...511e43`; arbitrum `0x5cd11d...ba67a2`; arbitrum `0x5cedd5...42e74c`; arbitrum `0x5d4dba...e05781`; arbitrum `0x5f5f69...aea52f`; arbitrum `0x605d36...ff5848`; arbitrum `0x61ac59...d19f3a`; arbitrum `0x62b287...da505c`; arbitrum `0x62f791...0573c5`; arbitrum `0x646f2a...285f20`; arbitrum `0x659c47...b1c7b3`; arbitrum `0x673b9d...b43873`; arbitrum `0x675f3c...eaa456`; arbitrum `0x67ccd6...30bce6`; arbitrum `0x68e8ea...7c3f2d`; arbitrum `0x6cb339...41dbfd`; arbitrum `0x6db878...2730dc`; arbitrum `0x7074cc...e889fa`; arbitrum `0x7262c5...8ab60f`; arbitrum `0x732210...26ade8`; arbitrum `0x73399e...ed00f8`; arbitrum `0x75845a...de0f14`; arbitrum `0x75f8c8...89c5a7`; arbitrum `0x76a0a5...0d24fe`; arbitrum `0x792cc5...f7dd90`; arbitrum `0x79e7a6...d585e9`; arbitrum `0x7cf7b9...a41428`; arbitrum `0x7e5c6d...5a0bbf`; arbitrum `0x814ed4...42a3c4`; arbitrum `0x82f697...f22d5d`; arbitrum `0x835af0...c992bd`; arbitrum `0x838573...9312de`; arbitrum `0x83bd7e...7164ca`; arbitrum `0x857137...c7a146`; arbitrum `0x85d023...a653a1`; arbitrum `0x882fa4...e764ee`; arbitrum `0x89a5b2...3ec453`; arbitrum `0x89f01c...0042d3`; arbitrum `0x8a157f...5907e1`; arbitrum `0x8c7c29...fabe4b`; arbitrum `0x8cd533...470166`; arbitrum `0x8f159e...d7a55d`; arbitrum `0x8f83dc...7b2789`; arbitrum `0x905d32...1df4d7`; arbitrum `0x92c50d...64bd4a`; arbitrum `0x936040...a33a29`; arbitrum `0x955d7e...0dffae`; arbitrum `0x957fbb...d68738`; arbitrum `0x977280...22190d`; arbitrum `0x988c53...ec333a`; arbitrum `0x9e2a45...fb52ba`; arbitrum `0x9f8221...979f04`; arbitrum `0xa05c89...8eec17`; arbitrum `0xa0f0a4...4629f6`; arbitrum `0xa464d4...c54185`; arbitrum `0xa4a990...de3b85`; arbitrum `0xa6bbe2...e55550`; arbitrum `0xa70dd7...d43712`; arbitrum `0xa89a83...aa9a70`; arbitrum `0xaa1c46...1af049`; arbitrum `0xac62ad...e9755e`; arbitrum `0xad0263...9b54f0`; arbitrum `0xad5afb...b2f03a`; arbitrum `0xaef225...0fb36c`; arbitrum `0xaf12dc...b26357`; arbitrum `0xb05f5a...7b6d64`; arbitrum `0xb0b10f...d50cd7`; arbitrum `0xb0e312...21cc28`; arbitrum `0xb18aec...722c7d`; arbitrum `0xb2333a...f37e1a`; arbitrum `0xb2542e...e31514`; arbitrum `0xb7e965...3fec65`; arbitrum `0xb8ab3e...5dfaf9`; arbitrum `0xbc4e19...2ae5c9`; arbitrum `0xbddacf...c25fd1`; arbitrum `0xbe547a...c2f7ab`; arbitrum `0xbfaed3...1c9fb7`; arbitrum `0xc017e1...eb17f2`; arbitrum `0xc04893...d63ad3`; arbitrum `0xc21608...df332b`; arbitrum `0xc2a7fd...625bea`; arbitrum `0xc4ebfe...939087`; arbitrum `0xc80a0a...3c0065`; arbitrum `0xc81f76...cc70a3`; arbitrum `0xc9495b...ab0cf8`; arbitrum `0xca90dd...fc9b12`; arbitrum `0xcb748e...0f7e7c`; arbitrum `0xcd5b59...13331a`; arbitrum `0xce11c1...1106a3`; arbitrum `0xd42c87...f18675`; arbitrum `0xda0826...b8f8f0`; arbitrum `0xda5c30...50b21a`; arbitrum `0xdd57e8...a70201`; arbitrum `0xde8f35...0eadb9`; arbitrum `0xe4ff0f...f5a318`; arbitrum `0xe65458...d3d460`; arbitrum `0xe69584...1b2e8c`; arbitrum `0xe6eb2c...e23cc7`; arbitrum `0xea721d...ca804a`; arbitrum `0xea737b...11b870`; arbitrum `0xeaa3f4...92e98d`; arbitrum `0xeaff63...f2f37e`; arbitrum `0xec08cb...0c5a81`; arbitrum `0xec4df8...e83783`; arbitrum `0xf06261...d52d35`; arbitrum `0xf200bd...49338b`; arbitrum `0xf57aa1...4ac04c`; arbitrum `0xfbce17...1c0f5f`; arbitrum `0xfd5041...69a6ba`; arbitrum `0xfef1f4...5ed526`; arbitrum `0xff3c09...a72ca8` | ⚠️ Unaudited |
| D2_Module | unknown | arbitrum, berachain, ethereum | 4 deployments: ethereum `0xd8be08...9cd039`; arbitrum `0xc8071a...a69111`; berachain [`0xaee2d9...2ce3c0`](./contracts/berachain-80094/0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0/); berachain `0xbdfeef...2ced6c` | ⚠️ Unaudited |
| DeployerStrategy | core_logic | arbitrum | 4 deployments: arbitrum [`0x1a0d8e...53b149`](./contracts/arbitrum-42161/0x1a0d8e294d590e246c4202205fa7aa9cad53b149/); arbitrum `0x2aa01f...029d67`; arbitrum `0x9f2179...e88c89`; arbitrum `0xd48c91...f4b875` | ⚠️ Unaudited |
| DeployerV0 | unknown | arbitrum | 2 deployments: arbitrum [`0xb9d9d8...708399`](./contracts/arbitrum-42161/0xb9d9d8632139929a2627150c42159a9b60708399/); arbitrum `0xd64175...b893ce` | ⚠️ Unaudited |
| DeployerV1 | unknown | arbitrum | 4 deployments: arbitrum [`0x19b2a6...33b588`](./contracts/arbitrum-42161/0x19b2a6fdd5315dd87defd7f3e45fd621f433b588/); arbitrum `0x34575d...6a8fd4`; arbitrum `0xb5b272...1ef028`; arbitrum `0xd36f50...77a2c4` | ⚠️ Unaudited |
| Dolomite_Module | unknown | arbitrum | [`0x62ab51...9d38d9`](./contracts/arbitrum-42161/0x62ab51dab0bafc863014ffe15ea3b0f4fc9d38d9/) | ⚠️ Unaudited |
| Fix_Module | unknown | berachain | 3 deployments: berachain [`0x2406aa...5b6c7e`](./contracts/berachain-80094/0x2406aacbdf8463176deb285adaa81768415b6c7e/); berachain `0x2ae031...94c8c6`; berachain `0x7d59a5...7afb53` | ⚠️ Unaudited |
| GMXV2_Module | unknown | arbitrum | 15 deployments: arbitrum [`0x00fa5d...8a2c5b`](./contracts/arbitrum-42161/0x00fa5d0752dd27080c03653590c366013c8a2c5b/); arbitrum `0x05f50b...995bc0`; arbitrum `0x2c963c...70f407`; arbitrum `0x34efd9...31acfc`; arbitrum `0x3b3a8c...ed35a0`; arbitrum `0x51e25e...cab94c`; arbitrum `0x7406d2...3241de`; arbitrum `0x8f6086...ce831e`; arbitrum `0x96e3e8...becddb`; arbitrum `0x9b6cf7...597acc`; arbitrum `0xa8a6c2...7ec0ed`; arbitrum `0xb6770d...da9f9c`; arbitrum `0xbaf966...be46f6`; arbitrum `0xbdd77b...c1322d`; arbitrum `0xeef89d...e887c5` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x439cb6...306aea`](./contracts/ethereum-1/0x439cb6fd76b81334d2951232e9d029018a306aea/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | 3 deployments: arbitrum [`0x3d04fb...7a81d7`](./contracts/arbitrum-42161/0x3d04fbea4e8315846dd8a65bdb2e477a357a81d7/); arbitrum `0x571b8b...e7645d`; arbitrum `0xe7eb92...2f92d6` | ⚠️ Unaudited |
| Inch_LimitOrder_Module | unknown | arbitrum | [`0x399a67...30b6e6`](./contracts/arbitrum-42161/0x399a67d9864a6b3184b9d0ebf93a5c35eb30b6e6/) | ⚠️ Unaudited |
| Inch_Module | unknown | ethereum | [`0x66e0e2...3fddd9`](./contracts/ethereum-1/0x66e0e206ee112635effb925f8c8f1f266e3fddd9/) | ⚠️ Unaudited |
| Option | unknown | arbitrum | 3 deployments: arbitrum [`0x231368...a0f9c3`](./contracts/arbitrum-42161/0x231368d38d25c0a1cfe1c21e72ab564195a0f9c3/); arbitrum `0x5216f6...a892d0`; arbitrum `0x871b84...003afc` | ⚠️ Unaudited |
| Pendle_Module | unknown | arbitrum, ethereum | 7 deployments: ethereum [`0x1adfe5...a51cad`](./contracts/ethereum-1/0x1adfe589b8e91e1a4ab673274bbeb5a1aea51cad/); arbitrum `0x3d22f1...6eb671`; arbitrum `0x55ee0c...5b2ec7`; arbitrum `0x7c5bdc...b608be`; arbitrum `0xcecb42...9d89ed`; arbitrum `0xd496e3...d0bf28`; arbitrum `0xe7373e...1aff93` | ⚠️ Unaudited |
| PrivateContribution | unknown | arbitrum | [`0xa28351...815207`](./contracts/arbitrum-42161/0xa28351c8f8ae1ac0748f47f5f3a791e809815207/) | ⚠️ Unaudited |
| Rodeo_Module | unknown | arbitrum | 2 deployments: arbitrum [`0x324026...8070a7`](./contracts/arbitrum-42161/0x324026080cd6b82b50e6ba703a3093ba468070a7/); arbitrum `0xcdc852...c485c9` | ⚠️ Unaudited |
| Rysk_LP_Module | unknown | arbitrum | [`0x25384d...c1414e`](./contracts/arbitrum-42161/0x25384d61dffeda009fdd47411f7fbd251dc1414e/) | ⚠️ Unaudited |
| Rysk_Options_Module | unknown | arbitrum | [`0xc384e1...260946`](./contracts/arbitrum-42161/0xc384e139c51ccc0ec65c62c5adc88947d0260946/) | ⚠️ Unaudited |
| Silo_Module | unknown | arbitrum | 2 deployments: arbitrum [`0x2b15cc...ca8b3e`](./contracts/arbitrum-42161/0x2b15cc97abe96811eee6bc0b8a569ff6aeca8b3e/); arbitrum `0x60e162...84ef92` | ⚠️ Unaudited |
| TeamVesting | operational_periphery | arbitrum | 30 deployments: arbitrum [`0x1ff0b5...ef40d6`](./contracts/arbitrum-42161/0x1ff0b5d6a56f8c79bdfef3fbb97a36f214ef40d6/); arbitrum `0x27334b...4b303b`; arbitrum `0x277530...e576ba`; arbitrum `0x2a2be0...62a6a8`; arbitrum `0x321a00...5bb405`; arbitrum `0x34da17...eca42f`; arbitrum `0x36302c...b17f13`; arbitrum `0x3b0402...468ade`; arbitrum `0x4522e8...550834`; arbitrum `0x45c5d6...85bcb7`; arbitrum `0x475090...a1a766`; arbitrum `0x5c2704...5c01d9`; arbitrum `0x788f57...4746be`; arbitrum `0x797297...1ebd2c`; arbitrum `0x7f115f...94f8bd`; arbitrum `0x971b0b...8c9850`; arbitrum `0x98c32e...44a623`; arbitrum `0xb3478c...314e59`; arbitrum `0xb62455...440ea8`; arbitrum `0xb799b4...a2b374`; arbitrum `0xbfe409...2df4f8`; arbitrum `0xc9c668...3f00e2`; arbitrum `0xcadb0c...6d11cc`; arbitrum `0xd340e2...3a0af7`; arbitrum `0xd7ec1d...8d4051`; arbitrum `0xd88cdb...550533`; arbitrum `0xeca6b9...29f8d2`; arbitrum `0xf7ee7d...190151`; arbitrum `0xf9f88b...e46642`; arbitrum `0xfc87ab...9b8277` | ⚠️ Unaudited |
| TeamVestingRevocable | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x5cc372...2d908a`](./contracts/arbitrum-42161/0x5cc372f6a9fd1c53564a81e775b1d906792d908a/); arbitrum `0x68c3a0...77b5a0`; arbitrum `0x9c4a83...4db0a2`; arbitrum `0xbfa0b1...82eb15` | ⚠️ Unaudited |
| TokenSale | token | arbitrum | [`0x2c8900...358d2a`](./contracts/arbitrum-42161/0x2c8900d6c800f2f5bc8cb0206625152522358d2a/) | ⚠️ Unaudited |
| TokenSalePhase4 | token | arbitrum | [`0x015974...bf6b8f`](./contracts/arbitrum-42161/0x015974733e5b667ab40cc54c40a835a5bebf6b8f/) | ⚠️ Unaudited |
| TransferHelper | periphery | arbitrum | [`0x8c027d...4353ce`](./contracts/arbitrum-42161/0x8c027d21b0696e9784e97b909694bdabb34353ce/) | ⚠️ Unaudited |
| V3LiquidityHelper | periphery | arbitrum | 2 deployments: arbitrum [`0x9b0b91...c20b20`](./contracts/arbitrum-42161/0x9b0b91d066f3162884389dd3aa1c280252c20b20/); arbitrum `0xce2f9d...a57aa0` | ⚠️ Unaudited |
| WETH_Module | token | arbitrum, ethereum | 5 deployments: ethereum `0x1a7033...133562`; arbitrum [`0x12ce1c...38d9b6`](./contracts/arbitrum-42161/0x12ce1cf72bd684d62be0febc0a571e675a38d9b6/); arbitrum `0x3d7827...17b52d`; arbitrum `0x44eeb0...96b1ee`; arbitrum `0xa7d239...320cda` | ⚠️ Unaudited |

### ❓ Unverified (129)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x17fd8c...9573c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c46be...d426e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa4869c...ac05ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaee2d9...2ce3c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4f460...8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x644b8e...eca244` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7f7375...195758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0446b4...a2c457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x04d09b...618b8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x068eb1...d950da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x07b6e3...21c843` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0926cb...6de628` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0e31e0...4748a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0f098b...e5d5d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17fd8c...9573c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1a7033...133562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1adfe5...a51cad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1bb7c6...f4a7f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e15c2...3a61e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x200238...8c399c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20d6ce...afa619` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2172d0...16fdb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25e2da...fdbbb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2d00c6...21ac06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ed6b8...f0cdea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2feb85...ff9071` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x332f64...526d84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3818d2...e8c314` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3bb957...ca8bca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c211e...17a765` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d6506...00dbfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ea266...b86c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x400e0b...aec405` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4052c3...de37d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x40ed4d...b1e026` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x432950...d9dd74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x434ac2...c77f9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4c5c98...d9a850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d90bf...8235fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4eba88...0a5321` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5727af...99ee82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x586279...909c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5d77ba...d7470d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x624560...f5596c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6321dd...425779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66449f...d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x66e0e2...3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6ebaa8...b6fcd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7092d6...66b670` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72a019...268bcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x73f294...3505d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x743413...513d2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77186d...a52e1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x77f97f...09dcda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x782c88...580b77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7c46be...d426e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x811195...5fa433` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x861f51...233387` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x871cfc...aaedf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8999af...2ed966` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8aa2b6...572e60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8e09a9...1490c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x93a008...e2fb9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x982b4a...0f1acd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa4869c...ac05ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa7be4c...9fc547` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa9fce0...bab5c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacf258...1ef600` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaee2d9...2ce3c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaf43e1...8e9c81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb18e7c...7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba0e6b...3ffb5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0846e...d023eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc53924...ceeec3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc57c28...1cad28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc9ef0c...dd9d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd0e8fe...fb48ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd11380...909805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1b969...385d7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd3bd60...5f0cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd6b5b7...3b152e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8be08...9cd039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9e97d...3e3b77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda68ad...713063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdab569...901cd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe4f460...8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe68f89...6600ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe6e06b...6f3152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe823e4...eaa0b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe98b27...6ebda6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xea3c67...c9d161` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee4f3d...2f3ff0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xee5983...66bc63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xef4a37...f6e736` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf41504...729f44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4ea8e...a39081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb9378...686651` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfbfdb5...aab514` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1524aa...ea1de9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1a7033...133562` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1adfe5...a51cad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x29ab97...eedfdf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x36f48b...8629aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4a1b5c...121c0f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x52f61a...155143` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x66449f...d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x66e0e2...3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x70bb0a...22fb8a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x73caf6...d6bac7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8aa2b6...572e60` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8f7468...3d05fd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9507a5...8d1eed` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa90b42...b784e8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb01049...0a9c98` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb18e7c...7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb4e761...aee4c1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbeb753...75c846` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd09ed4...4e5eb5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd1b969...385d7c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd2e069...206384` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd6b5b7...3b152e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd8be08...9cd039` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xda68ad...713063` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe02e3d...51d5ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe1bd26...fba606` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe68f89...6600ba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xea3c67...c9d161` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xed38c2...b94100` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf1063e...32f8d5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| [DL audit link](https://paladinsec.co/projects/d2) | unknown | 2023-09 | Direct | UNKNOWN | 34 | high |
| [2025-02-24-cyfrin-d2-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) | Cyfrin | 2025-02 | Direct | UNKNOWN | 194 | high |
| [GitBook file xLA0XTXKSw9o7o3i8cRd](https://docs.d2.finance/docs/files/xla0xtxksw9o7o3i8crd) | unknown | n/a | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum, base | [`0x0215ed...359088`](./contracts/arbitrum-42161/0x0215edeecdabe3dfc5ec8d59337ec9b26d359088/) | VaultV1Whitelisted | core_logic | $11,485,574.15 | Verified native implementation with $11,485,574.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31e2bb...33adfb`](./contracts/arbitrum-42161/0x31e2bb25c7cf1260c50a6c53d08541c2ed33adfb/) | Strategy_D2 | core_logic | $165.95 | Verified native implementation with $165.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5d14d...2d3844`](./contracts/arbitrum-42161/0xe5d14df00d2b95e796c88d09cda014ba902d3844/) | Strategy_Rodeo | core_logic | $42.59 | Verified native implementation with $42.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31ff6c...cd3a5e`](./contracts/arbitrum-42161/0x31ff6ccef7f82057c382ee19ca853101bccd3a5e/) | Strategy_ETH | core_logic | $29.02 | Verified native implementation with $29.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base, ethereum | [`0xbdfeef...2ced6c`](./contracts/base-8453/0xbdfeefc7a83de75e906ba29c3f4a6028ea2ced6c/) | Aave_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x07cfe5...cf00fb`](./contracts/berachain-80094/0x07cfe53c62c3da3f27ff58d5529aea05a0cf00fb/) | Bera_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03357e...eeded5`](./contracts/arbitrum-42161/0x03357e5ac12982b9b23554dbbc4d8faeabeeded5/) | ContributorVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum, berachain, ethereum | [`0xaee2d9...2ce3c0`](./contracts/berachain-80094/0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0/) | D2_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a0d8e...53b149`](./contracts/arbitrum-42161/0x1a0d8e294d590e246c4202205fa7aa9cad53b149/) | DeployerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb9d9d8...708399`](./contracts/arbitrum-42161/0xb9d9d8632139929a2627150c42159a9b60708399/) | DeployerV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19b2a6...33b588`](./contracts/arbitrum-42161/0x19b2a6fdd5315dd87defd7f3e45fd621f433b588/) | DeployerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62ab51...9d38d9`](./contracts/arbitrum-42161/0x62ab51dab0bafc863014ffe15ea3b0f4fc9d38d9/) | Dolomite_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2406aa...5b6c7e`](./contracts/berachain-80094/0x2406aacbdf8463176deb285adaa81768415b6c7e/) | Fix_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00fa5d...8a2c5b`](./contracts/arbitrum-42161/0x00fa5d0752dd27080c03653590c366013c8a2c5b/) | GMXV2_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x231368...a0f9c3`](./contracts/arbitrum-42161/0x231368d38d25c0a1cfe1c21e72ab564195a0f9c3/) | Option | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa28351...815207`](./contracts/arbitrum-42161/0xa28351c8f8ae1ac0748f47f5f3a791e809815207/) | PrivateContribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ff0b5...ef40d6`](./contracts/arbitrum-42161/0x1ff0b5d6a56f8c79bdfef3fbb97a36f214ef40d6/) | TeamVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5cc372...2d908a`](./contracts/arbitrum-42161/0x5cc372f6a9fd1c53564a81e775b1d906792d908a/) | TeamVestingRevocable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c8900...358d2a`](./contracts/arbitrum-42161/0x2c8900d6c800f2f5bc8cb0206625152522358d2a/) | TokenSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x015974...bf6b8f`](./contracts/arbitrum-42161/0x015974733e5b667ab40cc54c40a835a5bebf6b8f/) | TokenSalePhase4 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c027d...4353ce`](./contracts/arbitrum-42161/0x8c027d21b0696e9784e97b909694bdabb34353ce/) | TransferHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9b0b91...c20b20`](./contracts/arbitrum-42161/0x9b0b91d066f3162884389dd3aa1c280252c20b20/) | V3LiquidityHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum, ethereum | [`0x12ce1c...38d9b6`](./contracts/arbitrum-42161/0x12ce1cf72bd684d62be0febc0a571e675a38d9b6/) | WETH_Module | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 112 |
| upstream | 10 |
| standard_library | 2 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=228

Zero-match audit list:

- [1417] GitBook file xLA0XTXKSw9o7o3i8cRd

Fork inheritance lineage and inherited audits are included when available.
