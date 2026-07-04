# Agentic Audit Brief: D2 Finance

## Project Overview

- Project: D2 Finance (`d2-finance`)
- Website: [https://d2.finance/strategies](https://d2.finance/strategies)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.763Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: arbitrum, base, berachain
- Contract surface: 390 unique implementations (681 raw deployments)
- DeFi Llama TVL: $27,350,234.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 45 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 5 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 32 common project-authored base contract(s) (dsq_common_roles, dsq_trader_storage, strategydiamond). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 681; live-surface contracts included: 681 (336 live, 345 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 21/44 (47.7%)
- Deployed-live implementations: 45 of 390 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 21/45
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 345
- Unique implementations: 390
- Raw deployments: 681
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 21 match-unverified
- Tier 1 coverage: 11.4% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 16 | 35.6% | 2023-09 |
| Cyfrin | Tier 1 | 5 | 11.1% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Camelot_LP_Module | unknown | arbitrum | n/a | [`0x9a6f5f...485133`](./contracts/arbitrum-42161/0x9a6f5f8363b0a33a8acd806d597a73b8e7485133/) | ✅ Audited |
| Camelot_NFTPool_Module | core_logic | arbitrum | n/a | [`0xd0b8a8...d02369`](./contracts/arbitrum-42161/0xd0b8a8803a0e8f3a460538b4ded5963946d02369/) | ✅ Audited |
| Camelot_NitroPool_Module | core_logic | arbitrum | n/a | [`0xd8afcf...107f2c`](./contracts/arbitrum-42161/0xd8afcfb5e939a05af3e7faefe52d3f53ee107f2c/) | ✅ Audited |
| Camelot_Swap_Module | unknown | arbitrum | n/a | [`0x6479d1...d2404d`](./contracts/arbitrum-42161/0x6479d116f1f9904641b47d63da0babac0fd2404d/) | ✅ Audited |
| Camelot_V3LP_Module | unknown | arbitrum | n/a | [`0x6e2ba7...f121cd`](./contracts/arbitrum-42161/0x6e2ba75ccf5559390bd0e45e79b1160ad7f121cd/) | ✅ Audited |
| D2 | unknown | arbitrum | n/a | [`0xed7f00...cf6cb8`](./contracts/arbitrum-42161/0xed7f000ee335b8199b004cca1c6f36d188cf6cb8/) | ✅ Audited |
| DSQToken | token | arbitrum | n/a | [`0xdb0c6f...89cd7b`](./contracts/arbitrum-42161/0xdb0c6fc9e01cd95eb1d3bbae6689962de489cd7b/) | ✅ Audited |
| GMX_GLP_Module | unknown | arbitrum | n/a | [`0x31e24a...143da2`](./contracts/arbitrum-42161/0x31e24ab0f3ec6c80ce9a7764f704037da3143da2/) | ✅ Audited |
| GMX_OrderBook_Module | unknown | arbitrum | n/a | [`0xb4eb02...9bab28`](./contracts/arbitrum-42161/0xb4eb023f4fb37fa0f4b18e3b2514d8b5dc9bab28/) | ✅ Audited |
| GMX_PositionRouter_Module | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x5cb093...53c290`](./contracts/arbitrum-42161/0x5cb093adbe29be5b16e03c324988e223d753c290/); arbitrum `0x79752c...0916bd` | ✅ Audited |
| GMX_Swap_Module | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3289fd...96197a`](./contracts/arbitrum-42161/0x3289fd2b940834e902d531f4b98a64a8b596197a/); arbitrum `0xaeb223...2b878f` | ✅ Audited |
| Inch_Swap_Module | unknown | base | n/a | [`0xc2261d...8ca812`](./contracts/base-8453/0xc2261dc253319cdc45fc2f32dc29e6bb128ca812/) | ✅ Audited |
| Lyra_LP_Module | unknown | arbitrum | n/a | [`0xefe465...1d41b1`](./contracts/arbitrum-42161/0xefe465692a1c3cbb61d990764dfb3b12ca1d41b1/) | ✅ Audited |
| Lyra_Options_Module | unknown | arbitrum | n/a | [`0xb1d294...526c8b`](./contracts/arbitrum-42161/0xb1d29441a145527960c81025c2326949d8526c8b/) | ✅ Audited |
| Lyra_Rewards_Module | unknown | arbitrum | n/a | [`0x71b749...6eef7d`](./contracts/arbitrum-42161/0x71b749ec30b1dd7b12a4716402b102a8196eef7d/) | ✅ Audited |
| Strategy | core_logic | berachain | n/a | 58 deployments: arbitrum `0x35e18a...be8533`; arbitrum `0x372299...7b3e4f`; arbitrum `0x38dc0a...bdae71`; arbitrum `0x3af809...943266`; arbitrum `0x418282...067594`; arbitrum `0x42d28f...e99ca0`; arbitrum `0x58036a...55fa28`; arbitrum `0x5be771...bf9d78`; arbitrum `0x60e609...dbb443`; arbitrum `0x61424d...020fd9`; arbitrum `0x615f32...92ca78`; arbitrum `0x6544e4...bb1205`; arbitrum `0x6e99e6...ecc79e`; arbitrum `0x74cf50...ed641a`; arbitrum `0x918d19...e7616f`; arbitrum `0x97a63f...99bd31`; arbitrum `0x97ea32...175ea0`; arbitrum `0x9c8d23...b5927d`; arbitrum `0x9f943f...8f8df1`; arbitrum `0xa09b31...13de9c`; arbitrum `0xa8519f...813b5d`; arbitrum `0xb2e866...404a78`; arbitrum `0xb4aaa5...8c3d24`; arbitrum `0xb61854...56455b`; arbitrum `0xb7a396...646766`; arbitrum `0xbb74d6...10ce67`; arbitrum `0xbe9ea8...f82f40`; arbitrum `0xc8759a...1ff052`; arbitrum `0xce3240...43bc83`; arbitrum `0xd53759...50fbdf`; arbitrum `0xdb765f...9a9c0b`; arbitrum `0xe5de20...ae719b`; arbitrum `0xeb2024...1424a4`; arbitrum `0xedfdcb...852316`; arbitrum `0xf52cbb...7e3843`; arbitrum `0xf767be...f825b4`; arbitrum `0xf832a7...8fe4a1`; arbitrum `0xfc607e...2d2806`; arbitrum `0xfc756f...ada706`; arbitrum `0xffc0d6...c3969c`; berachain [`0x21662b...5e071e`](./contracts/berachain-80094/0x21662b67c3b319490a6bdb74b54e7241fd5e071e/); berachain `0x21f9d8...7a060e`; berachain `0x32fe83...8a7067`; berachain `0x376be6...d10b97`; berachain `0x41590d...52a685`; berachain `0x46019a...51f52f`; berachain `0x4923fc...d90b80`; berachain `0x558460...6a1f18`; berachain `0x644b8e...eca244`; berachain `0x65a6b0...58af78`; berachain `0x756188...895e68`; berachain `0x96c041...75dc2e`; berachain `0xa17912...6228c2`; berachain `0xc0ac5a...e76a0f`; berachain `0xd1dbb5...811e86`; berachain `0xd50e36...f5efc8`; berachain `0xeb065e...e77435`; berachain `0xf336e2...6c4850` | ✅ Audited |
| TraderJoe_LP_Module | unknown | arbitrum | n/a | [`0x349f73...2db215`](./contracts/arbitrum-42161/0x349f734ff449ef379e437d8bfed89423dc2db215/) | ✅ Audited |
| TraderJoe_Swap_Module | unknown | arbitrum | n/a | [`0x486985...17d911`](./contracts/arbitrum-42161/0x4869855b35f69191f0e3a179cf689a675c17d911/) | ✅ Audited |
| TraderV0 | unknown | berachain | n/a | 2 deployments: arbitrum `0x59a259...8d9b68`; berachain [`0x02295e...3e13d7`](./contracts/berachain-80094/0x02295e88bca3c6c1f51b40ef2f43ae31b23e13d7/) | ✅ Audited |
| VaultV0 | core_logic | berachain | n/a | 48 deployments: base `0x3b565e...803675`; base `0x41590d...52a685`; base `0x46019a...51f52f`; base `0x7d59a5...7afb53`; base `0x7da637...86df96`; arbitrum `0x35dec0...2f4ef4`; arbitrum `0x41ac1a...a993e2`; arbitrum `0x47ba9c...52dc44`; arbitrum `0x57f467...c1791b`; arbitrum `0x5b49d7...bd9a0b`; arbitrum `0x61d911...0078a1`; arbitrum `0x80c403...213d36`; arbitrum `0x893e28...e3c908`; arbitrum `0x8ad1c6...bf1ad9`; arbitrum `0x907a9f...2352a9`; arbitrum `0x999a57...6b14fc`; arbitrum `0xa511c0...dfff2c`; arbitrum `0xac75f0...79ed56`; arbitrum `0xacc811...0cfe28`; arbitrum `0xbb566f...dd67b5`; arbitrum `0xbe68c8...5f407a`; arbitrum `0xbee7a8...9b62fe`; arbitrum `0xc5baff...54dc58`; arbitrum `0xc9a631...b62f44`; arbitrum `0xd0a0c9...c521dd`; arbitrum `0xd0db54...ef54af`; arbitrum `0xdd196c...f9973a`; arbitrum `0xed5ebe...f2df77`; arbitrum `0xee8bbc...ed2b43`; arbitrum `0xf04aec...87a864`; arbitrum `0xfa517c...d73d71`; arbitrum `0xffdd43...74dc75`; berachain [`0x0446b4...a2c457`](./contracts/berachain-80094/0x0446b41f6c848e6a539703e65d2a4813f2a2c457/); berachain `0x26eca5...53e54b`; berachain `0x2e8482...1cecae`; berachain `0x63388c...2fc62f`; berachain `0x6a4d24...4a1137`; berachain `0x6fc386...749289`; berachain `0x767adf...144633`; berachain `0x7da637...86df96`; berachain `0x7efe92...fe2d61`; berachain `0xa1e6ee...7571e5`; berachain `0xb02aea...0331d9`; berachain `0xc8661c...e540d0`; berachain `0xc9ebd0...262c8c`; berachain `0xccf785...01cbee`; berachain `0xd7c907...a1d066`; berachain `0xdccc41...acaa1b` | ✅ Audited |
| VaultV3 | core_logic | berachain | n/a | 42 deployments: base `0x2406aa...5b6c7e`; arbitrum `0x0178b5...48730f`; arbitrum `0x5210cc...26c585`; arbitrum `0x563012...02f513`; arbitrum `0x7e746e...eb76e0`; arbitrum `0x834228...080efe`; arbitrum `0xa3fc0c...dd377e`; arbitrum `0xa704b4...5aedf5`; arbitrum `0xac7e8e...2e74f5`; arbitrum `0xb1e866...8fefe1`; arbitrum `0xc027ec...84968c`; arbitrum `0xdb59ee...300777`; arbitrum `0xeb3194...24d6c0`; arbitrum `0xf6c0cf...5d5f63`; arbitrum `0xfddd73...262fab`; berachain [`0x00accd...deb423`](./contracts/berachain-80094/0x00accdc39a84eaf45fc8e302280cc2e7e1deb423/); berachain `0x01e15e...e4d11a`; berachain `0x14ffe3...d7d6e9`; berachain `0x1e15c2...3a61e9`; berachain `0x22093a...21230e`; berachain `0x2b8d04...0aed1e`; berachain `0x2c217c...55de42`; berachain `0x2feb85...ff9071`; berachain `0x36b933...eb706d`; berachain `0x3b565e...803675`; berachain `0x432950...d9dd74`; berachain `0x48b999...02505f`; berachain `0x4c0dc1...d74429`; berachain `0x53517f...3249ed`; berachain `0x7f7375...195758`; berachain `0x8f0415...d6b10f`; berachain `0x8f3ae0...9b8b78`; berachain `0xace42f...214359`; berachain `0xb934d3...f2251e`; berachain `0xbe75c8...1f1f79`; berachain `0xbead29...3e7419`; berachain `0xbf0759...7e941b`; berachain `0xc4fee8...005dd3`; berachain `0xcb81de...49bcac`; berachain `0xcd1800...4fa3ae`; berachain `0xe93972...5c0cbb`; berachain `0xf650ba...307056` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bera_Module | unknown | berachain | n/a | 6 deployments: berachain [`0x07cfe5...cf00fb`](./contracts/berachain-80094/0x07cfe53c62c3da3f27ff58d5529aea05a0cf00fb/); berachain `0x4d440e...6b655b`; berachain `0x616bcd...e16890`; berachain `0xaf4e7b...891a77`; berachain `0xd841ef...25f285`; berachain `0xf9efcf...480fa2` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | arbitrum | n/a | 38 deployments: arbitrum [`0xbc4e19...2ae5c9`](./contracts/arbitrum-42161/0xbc4e193a26cde63ab664e6dafeec770df82ae5c9/); arbitrum `0xbddacf...c25fd1`; arbitrum `0xbe547a...c2f7ab`; arbitrum `0xbfaed3...1c9fb7`; arbitrum `0xc017e1...eb17f2`; arbitrum `0xc04893...d63ad3`; arbitrum `0xc21608...df332b`; arbitrum `0xc2a7fd...625bea`; arbitrum `0xc4ebfe...939087`; arbitrum `0xc80a0a...3c0065`; arbitrum `0xc81f76...cc70a3`; arbitrum `0xc9495b...ab0cf8`; arbitrum `0xca90dd...fc9b12`; arbitrum `0xcb748e...0f7e7c`; arbitrum `0xcd5b59...13331a`; arbitrum `0xce11c1...1106a3`; arbitrum `0xd42c87...f18675`; arbitrum `0xda0826...b8f8f0`; arbitrum `0xda5c30...50b21a`; arbitrum `0xdd57e8...a70201`; arbitrum `0xde8f35...0eadb9`; arbitrum `0xe4ff0f...f5a318`; arbitrum `0xe65458...d3d460`; arbitrum `0xe69584...1b2e8c`; arbitrum `0xe6eb2c...e23cc7`; arbitrum `0xea721d...ca804a`; arbitrum `0xea737b...11b870`; arbitrum `0xeaa3f4...92e98d`; arbitrum `0xeaff63...f2f37e`; arbitrum `0xec08cb...0c5a81`; arbitrum `0xec4df8...e83783`; arbitrum `0xf06261...d52d35`; arbitrum `0xf200bd...49338b`; arbitrum `0xf57aa1...4ac04c`; arbitrum `0xfbce17...1c0f5f`; arbitrum `0xfd5041...69a6ba`; arbitrum `0xfef1f4...5ed526`; arbitrum `0xff3c09...a72ca8` | ⚠️ Unaudited |
| D2_Module | unknown | berachain | n/a | 3 deployments: arbitrum `0xc8071a...a69111`; berachain [`0xaee2d9...2ce3c0`](./contracts/berachain-80094/0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0/); berachain `0xbdfeef...2ced6c` | ⚠️ Unaudited |
| DeployerStrategy | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x9f2179...e88c89`](./contracts/arbitrum-42161/0x9f21793a4d9dd5dd7c2a14c6dcaeceff8be88c89/); arbitrum `0xd48c91...f4b875` | ⚠️ Unaudited |
| DeployerV0 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb9d9d8...708399`](./contracts/arbitrum-42161/0xb9d9d8632139929a2627150c42159a9b60708399/); arbitrum `0xd64175...b893ce` | ⚠️ Unaudited |
| DeployerV1 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x34575d...6a8fd4`](./contracts/arbitrum-42161/0x34575dff1f86e4856f013ac95be397ba916a8fd4/); arbitrum `0xb5b272...1ef028`; arbitrum `0xd36f50...77a2c4` | ⚠️ Unaudited |
| Dolomite_Module | unknown | arbitrum | n/a | [`0x62ab51...9d38d9`](./contracts/arbitrum-42161/0x62ab51dab0bafc863014ffe15ea3b0f4fc9d38d9/) | ⚠️ Unaudited |
| Fix_Module | unknown | berachain | n/a | 3 deployments: berachain [`0x2406aa...5b6c7e`](./contracts/berachain-80094/0x2406aacbdf8463176deb285adaa81768415b6c7e/); berachain `0x2ae031...94c8c6`; berachain `0x7d59a5...7afb53` | ⚠️ Unaudited |
| GMXV2_Module | unknown | arbitrum | n/a | 12 deployments: arbitrum [`0x34efd9...31acfc`](./contracts/arbitrum-42161/0x34efd9ce9dbb72f34e0e861a40ae89627631acfc/); arbitrum `0x3b3a8c...ed35a0`; arbitrum `0x51e25e...cab94c`; arbitrum `0x7406d2...3241de`; arbitrum `0x8f6086...ce831e`; arbitrum `0x96e3e8...becddb`; arbitrum `0x9b6cf7...597acc`; arbitrum `0xa8a6c2...7ec0ed`; arbitrum `0xb6770d...da9f9c`; arbitrum `0xbaf966...be46f6`; arbitrum `0xbdd77b...c1322d`; arbitrum `0xeef89d...e887c5` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x3d04fb...7a81d7`](./contracts/arbitrum-42161/0x3d04fbea4e8315846dd8a65bdb2e477a357a81d7/); arbitrum `0x571b8b...e7645d`; arbitrum `0xe7eb92...2f92d6` | ⚠️ Unaudited |
| Inch_LimitOrder_Module | unknown | arbitrum | n/a | [`0x399a67...30b6e6`](./contracts/arbitrum-42161/0x399a67d9864a6b3184b9d0ebf93a5c35eb30b6e6/) | ⚠️ Unaudited |
| Inch_Swap_Module | unknown | arbitrum | n/a | [`0x97d8eb...11c39f`](./contracts/arbitrum-42161/0x97d8eb5c7cdced3e80aa8ae5d6a34cc62a11c39f/) | ⚠️ Unaudited |
| Option | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5216f6...a892d0`](./contracts/arbitrum-42161/0x5216f66d3266780d01b0bd847db3976c38a892d0/); arbitrum `0x871b84...003afc` | ⚠️ Unaudited |
| Rodeo_Module | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x324026...8070a7`](./contracts/arbitrum-42161/0x324026080cd6b82b50e6ba703a3093ba468070a7/); arbitrum `0xcdc852...c485c9` | ⚠️ Unaudited |
| Rysk_Options_Module | unknown | arbitrum | n/a | [`0xc384e1...260946`](./contracts/arbitrum-42161/0xc384e139c51ccc0ec65c62c5adc88947d0260946/) | ⚠️ Unaudited |
| Silo_Module | unknown | arbitrum | n/a | [`0x60e162...84ef92`](./contracts/arbitrum-42161/0x60e162b0759b41a61cfda3116d24675e4784ef92/) | ⚠️ Unaudited |
| Strategy_D2 | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x31e2bb...33adfb`](./contracts/arbitrum-42161/0x31e2bb25c7cf1260c50a6c53d08541c2ed33adfb/); arbitrum `0x3fdc9d...a49ece`; arbitrum `0x6d619b...cbd235`; arbitrum `0x700a69...aa90ad`; arbitrum `0xe1a4ea...ca26eb` | ⚠️ Unaudited |
| Strategy_ETH | core_logic | arbitrum | n/a | 9 deployments: arbitrum [`0x31ff6c...cd3a5e`](./contracts/arbitrum-42161/0x31ff6ccef7f82057c382ee19ca853101bccd3a5e/); arbitrum `0x3e8bbe...55768a`; arbitrum `0x51f340...991ead`; arbitrum `0x760fcb...ad85ad`; arbitrum `0x9718a4...8fa7c7`; arbitrum `0xa66e6f...213930`; arbitrum `0xaa2fca...941e55`; arbitrum `0xe93972...5c0cbb`; arbitrum `0xf00552...daa394` | ⚠️ Unaudited |
| Strategy_Rodeo | core_logic | arbitrum | n/a | [`0xe5d14d...2d3844`](./contracts/arbitrum-42161/0xe5d14df00d2b95e796c88d09cda014ba902d3844/) | ⚠️ Unaudited |
| TeamVesting | operational_periphery | arbitrum | n/a | 10 deployments: arbitrum [`0xbfe409...2df4f8`](./contracts/arbitrum-42161/0xbfe409233c7bdfe706e49f31a1185455d12df4f8/); arbitrum `0xc9c668...3f00e2`; arbitrum `0xcadb0c...6d11cc`; arbitrum `0xd340e2...3a0af7`; arbitrum `0xd7ec1d...8d4051`; arbitrum `0xd88cdb...550533`; arbitrum `0xeca6b9...29f8d2`; arbitrum `0xf7ee7d...190151`; arbitrum `0xf9f88b...e46642`; arbitrum `0xfc87ab...9b8277` | ⚠️ Unaudited |
| TeamVestingRevocable | operational_periphery | arbitrum | n/a | [`0xbfa0b1...82eb15`](./contracts/arbitrum-42161/0xbfa0b1966fa06cfb5e18edb4f6b6e2fbb582eb15/) | ⚠️ Unaudited |
| V3LiquidityHelper | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x9b0b91...c20b20`](./contracts/arbitrum-42161/0x9b0b91d066f3162884389dd3aa1c280252c20b20/); arbitrum `0xce2f9d...a57aa0` | ⚠️ Unaudited |
| VaultV1Whitelisted | core_logic | arbitrum | n/a | 55 deployments: base `0x6c05a7...548897`; arbitrum [`0x1c17a3...b650da`](./contracts/arbitrum-42161/0x1c17a39b156189bf40905425170a3ff62fb650da/); arbitrum `0x27d22e...8c6a42`; arbitrum `0x291344...c52320`; arbitrum `0x33d5e2...7c89f8`; arbitrum `0x34f0fd...0d760e`; arbitrum `0x36b193...bcf4d0`; arbitrum `0x3a89ab...2621d8`; arbitrum `0x4508e6...514f8f`; arbitrum `0x4ada76...6e76c6`; arbitrum `0x4c0d05...70d17f`; arbitrum `0x526ec6...56d3b4`; arbitrum `0x56f1f2...a2563b`; arbitrum `0x577fcb...80cea2`; arbitrum `0x58bd1b...602241`; arbitrum `0x5ae560...c253d1`; arbitrum `0x5f44a7...2caa43`; arbitrum `0x6b8959...b42e3d`; arbitrum `0x701690...eeefee`; arbitrum `0x71254c...933afb`; arbitrum `0x734892...a3bb7b`; arbitrum `0x752882...3e5004`; arbitrum `0x782f88...0d9f37`; arbitrum `0x8324e4...50a333`; arbitrum `0x856abb...04c6f1`; arbitrum `0x85b197...897e2f`; arbitrum `0x8c1ec7...49cd20`; arbitrum `0x91fa68...cf1b7d`; arbitrum `0x99b0f1...6c5f26`; arbitrum `0x9c3e1d...a6689f`; arbitrum `0xa52027...c5e3ec`; arbitrum `0xa54c23...6af424`; arbitrum `0xa8ee55...ec4468`; arbitrum `0xaae557...180e78`; arbitrum `0xac55d2...4db320`; arbitrum `0xb0730a...895a0f`; arbitrum `0xb2f7a3...0e5871`; arbitrum `0xb74dce...a779f6`; arbitrum `0xbc9585...af7ccf`; arbitrum `0xc56a69...4192df`; arbitrum `0xca169b...99c05c`; arbitrum `0xcb5ca1...b42482`; arbitrum `0xcd59e1...d82c9c`; arbitrum `0xcf3afb...93d733`; arbitrum `0xcfbbea...3f72b3`; arbitrum `0xd1d64d...843a84`; arbitrum `0xd1fc50...aa9cbf`; arbitrum `0xd31ace...c9dea5`; arbitrum `0xda3a00...b36ab6`; arbitrum `0xe4f5ec...213361`; arbitrum `0xed6286...9c91eb`; arbitrum `0xed80c8...f23bda`; arbitrum `0xeee6e1...85dfed`; arbitrum `0xfade87...07bb6e`; arbitrum `0xfd84da...8465b3` | ⚠️ Unaudited |
| WETH_Module | token | arbitrum | n/a | 3 deployments: arbitrum [`0x3d7827...17b52d`](./contracts/arbitrum-42161/0x3d78271daf904d962cd3015f8e6311b1e917b52d/); arbitrum `0x44eeb0...96b1ee`; arbitrum `0xa7d239...320cda` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (345)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x644b8e...eca244` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f7375...195758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00fa5d...8a2c5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x014333...87610c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x015974...bf6b8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x017790...ba071d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0215ed...359088` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02b1a7...a4b894` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03357e...eeded5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03ddd8...f3964c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x043e34...8e8e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0446b4...a2c457` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04d09b...618b8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0589f7...0ce071` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05f50b...995bc0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x063b25...3740dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x068846...8959e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x068eb1...d950da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06d973...e402f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07b6e3...21c843` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0864b9...846487` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0926cb...6de628` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ab2a1...7d5fea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b54ba...50e918` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ba10b...6a9d0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0beeae...c59592` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c7dd7...54bc22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cabda...55c08f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cb054...c8b99a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e31e0...4748a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ec41c...44454a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f098b...e5d5d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fecac...8d5410` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x100e6b...1f4852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10d8e1...d5ef49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x111e64...6ec108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x117181...a033c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1176c3...6b785e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x128f0c...87f6c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12ce1c...38d9b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13177d...8480f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1346bb...7af117` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13679c...517109` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13d64b...24d710` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13f0a1...279976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14a024...b65758` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x151fcf...7fce28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x153417...9775a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x158e8f...afc312` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15c220...bc7f75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x171e0a...c9f69f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1777f3...49b4f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17d7ab...3d4824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17ef94...71bc1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17fd8c...9573c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1829e4...cc8336` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x183424...9c9109` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x184914...1b9e4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1894c9...310816` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19b2a6...33b588` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a0d8e...53b149` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a6290...e5432f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a7033...133562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1adfe5...a51cad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b14a9...f4f16f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bb7c6...f4a7f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cd0b4...6b8b64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dc2de...d7f7eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e15c2...3a61e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f1fc6...245c9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f691a...d863f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ff0b5...ef40d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x200238...8c399c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2093c4...5382ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20d6ce...afa619` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2166a1...ab0032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2172d0...16fdb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21d95e...d0318d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21f9fb...290033` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x227497...d289af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2293b3...7714ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22cd2f...bc89fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x231368...a0f9c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234f20...528f2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25384d...c1414e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25e2da...fdbbb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x269e88...3391f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26d3d9...3b448f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27334b...4b303b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x277530...e576ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28027e...aeadb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a2be0...62a6a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a42ae...5eb33b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2aa01f...029d67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ad14a...b70c58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b15cc...ca8b3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2bf5e2...01fd1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c5c50...e2e916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c8900...358d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c963c...70f407` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ca7c5...6486c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d00c6...21ac06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d12e9...11921b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ed6b8...f0cdea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2edac6...b42bf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2feb85...ff9071` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x321a00...5bb405` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x332f64...526d84` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34d8d7...9a5fe4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34da17...eca42f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36302c...b17f13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37b2ed...4deb11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3818d2...e8c314` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x387f65...ebdb9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38fe70...9f5cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x398a7f...37be67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b0402...468ade` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b05e3...332404` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bb957...ca8bca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c211e...17a765` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c7a12...37f021` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d6506...00dbfc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e8682...7ab103` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ea266...b86c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3edb4e...ab51f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x400e0b...aec405` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4052c3...de37d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4065ba...47f7de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40ed4d...b1e026` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x40fe3c...98623f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41d803...52a2c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4243d6...9a7c57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42b3b5...6cd764` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x432950...d9dd74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43321b...6b878e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x434ac2...c77f9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x440521...808f18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44ad06...043a4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44ff76...ee9289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4522e8...550834` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45c5d6...85bcb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45fc2e...45133b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4668ea...b45120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x475090...a1a766` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x496d0d...77cdd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c5c98...d9a850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ca12c...a75447` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d8239...73911d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d90bf...8235fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dc8c4...48b198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eba88...0a5321` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50f5d0...dcf0e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52f66b...3a51f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55aa26...9c5f1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5727af...99ee82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x575224...f30d52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x586279...909c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58c856...f15d27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58de20...746df1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c2704...5c01d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c36ae...30bc47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c5f0f...511e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cc372...2d908a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cd11d...ba67a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5cedd5...42e74c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d4dba...e05781` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d77ba...d7470d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5daf41...fc0a76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f5f69...aea52f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x605d36...ff5848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61ac59...d19f3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x624560...f5596c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62b287...da505c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62f791...0573c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6321dd...425779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x646974...a7e983` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x646f2a...285f20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x659c47...b1c7b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66449f...d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x667542...5d209f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66e0e2...3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x673b9d...b43873` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x675f3c...eaa456` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67ccd6...30bce6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68c3a0...77b5a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68e8ea...7c3f2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cb339...41dbfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6db878...2730dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ebaa8...b6fcd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7074cc...e889fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7092d6...66b670` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7176a0...1110bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7262c5...8ab60f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72a019...268bcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x732210...26ade8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73399e...ed00f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73f294...3505d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x743413...513d2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75845a...de0f14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75f8c8...89c5a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x760e31...bd55a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76a0a5...0d24fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77186d...a52e1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77f97f...09dcda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x782c88...580b77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x788f57...4746be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x792cc5...f7dd90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x797297...1ebd2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79e7a6...d585e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b10df...d3c33b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c46be...d426e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cf7b9...a41428` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e5c6d...5a0bbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f115f...94f8bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x811195...5fa433` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x814ed4...42a3c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82f697...f22d5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x835af0...c992bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x838573...9312de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83bd7e...7164ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x857137...c7a146` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85d023...a653a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x861f51...233387` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x866d31...324a7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x871cfc...aaedf0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x882fa4...e764ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8999af...2ed966` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89a5b2...3ec453` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89f01c...0042d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a157f...5907e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa2b6...572e60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c027d...4353ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c7c29...fabe4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cd533...470166` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e09a9...1490c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f159e...d7a55d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f83dc...7b2789` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x905d32...1df4d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92c50d...64bd4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x936040...a33a29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93a008...e2fb9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x955d7e...0dffae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x957fbb...d68738` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x971b0b...8c9850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x977280...22190d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x982b4a...0f1acd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x988c53...ec333a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98c32e...44a623` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c4a83...4db0a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e2a45...fb52ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f8221...979f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa05c89...8eec17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0820f...d1394e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0f0a4...4629f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa28351...815207` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa464d4...c54185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4869c...ac05ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4a990...de3b85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6bbe2...e55550` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa70dd7...d43712` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7be4c...9fc547` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa89a83...aa9a70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9fce0...bab5c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa1c46...1af049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac62ad...e9755e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacf258...1ef600` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad0263...9b54f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad5afb...b2f03a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaee2d9...2ce3c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaef225...0fb36c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf12dc...b26357` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf43e1...8e9c81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb05f5a...7b6d64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0b10f...d50cd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e312...21cc28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb18aec...722c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb18e7c...7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2333a...f37e1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2542e...e31514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3478c...314e59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb62455...440ea8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb799b4...a2b374` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7e965...3fec65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8ab3e...5dfaf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba0e6b...3ffb5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0846e...d023eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc53924...ceeec3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc57c28...1cad28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9ef0c...dd9d95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0e8fe...fb48ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd11380...909805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1b969...385d7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3bd60...5f0cd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6b5b7...3b152e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8be08...9cd039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9e97d...3e3b77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda68ad...713063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdab569...901cd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4f460...8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe68f89...6600ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6e06b...6f3152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe823e4...eaa0b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe98b27...6ebda6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea3c67...c9d161` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee4f3d...2f3ff0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee5983...66bc63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef4a37...f6e736` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf41504...729f44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4ea8e...a39081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf76d53...f6d314` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb9378...686651` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfbfdb5...aab514` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1524aa...ea1de9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1a7033...133562` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1adfe5...a51cad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x29ab97...eedfdf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x36f48b...8629aa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4a1b5c...121c0f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x52f61a...155143` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x66449f...d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x66e0e2...3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x70bb0a...22fb8a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x73caf6...d6bac7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x796dc3...7c56c9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8aa2b6...572e60` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8f7468...3d05fd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9507a5...8d1eed` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa90b42...b784e8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb01049...0a9c98` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb18e7c...7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb4e761...aee4c1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbeb753...75c846` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd09ed4...4e5eb5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd1b969...385d7c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd2e069...206384` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd6b5b7...3b152e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd8be08...9cd039` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xda68ad...713063` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe02e3d...51d5ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe1bd26...fba606` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe4f460...8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe68f89...6600ba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xea3c67...c9d161` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xed38c2...b94100` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf1063e...32f8d5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/d2](https://paladinsec.co/projects/d2) | Paladin | Audit | 2023-09 | stale | Direct | contract_name | 16 | n/a |
| [2025-02-24-cyfrin-d2-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x07cfe5...cf00fb`](./contracts/berachain-80094/0x07cfe53c62c3da3f27ff58d5529aea05a0cf00fb/) | Bera_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbc4e19...2ae5c9`](./contracts/arbitrum-42161/0xbc4e193a26cde63ab664e6dafeec770df82ae5c9/) | ContributorVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xaee2d9...2ce3c0`](./contracts/berachain-80094/0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0/) | D2_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f2179...e88c89`](./contracts/arbitrum-42161/0x9f21793a4d9dd5dd7c2a14c6dcaeceff8be88c89/) | DeployerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb9d9d8...708399`](./contracts/arbitrum-42161/0xb9d9d8632139929a2627150c42159a9b60708399/) | DeployerV0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34575d...6a8fd4`](./contracts/arbitrum-42161/0x34575dff1f86e4856f013ac95be397ba916a8fd4/) | DeployerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62ab51...9d38d9`](./contracts/arbitrum-42161/0x62ab51dab0bafc863014ffe15ea3b0f4fc9d38d9/) | Dolomite_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2406aa...5b6c7e`](./contracts/berachain-80094/0x2406aacbdf8463176deb285adaa81768415b6c7e/) | Fix_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34efd9...31acfc`](./contracts/arbitrum-42161/0x34efd9ce9dbb72f34e0e861a40ae89627631acfc/) | GMXV2_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x399a67...30b6e6`](./contracts/arbitrum-42161/0x399a67d9864a6b3184b9d0ebf93a5c35eb30b6e6/) | Inch_LimitOrder_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97d8eb...11c39f`](./contracts/arbitrum-42161/0x97d8eb5c7cdced3e80aa8ae5d6a34cc62a11c39f/) | Inch_Swap_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5216f6...a892d0`](./contracts/arbitrum-42161/0x5216f66d3266780d01b0bd847db3976c38a892d0/) | Option | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x324026...8070a7`](./contracts/arbitrum-42161/0x324026080cd6b82b50e6ba703a3093ba468070a7/) | Rodeo_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc384e1...260946`](./contracts/arbitrum-42161/0xc384e139c51ccc0ec65c62c5adc88947d0260946/) | Rysk_Options_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60e162...84ef92`](./contracts/arbitrum-42161/0x60e162b0759b41a61cfda3116d24675e4784ef92/) | Silo_Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31e2bb...33adfb`](./contracts/arbitrum-42161/0x31e2bb25c7cf1260c50a6c53d08541c2ed33adfb/) | Strategy_D2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x31ff6c...cd3a5e`](./contracts/arbitrum-42161/0x31ff6ccef7f82057c382ee19ca853101bccd3a5e/) | Strategy_ETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5d14d...2d3844`](./contracts/arbitrum-42161/0xe5d14df00d2b95e796c88d09cda014ba902d3844/) | Strategy_Rodeo | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbfe409...2df4f8`](./contracts/arbitrum-42161/0xbfe409233c7bdfe706e49f31a1185455d12df4f8/) | TeamVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbfa0b1...82eb15`](./contracts/arbitrum-42161/0xbfa0b1966fa06cfb5e18edb4f6b6e2fbb582eb15/) | TeamVestingRevocable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9b0b91...c20b20`](./contracts/arbitrum-42161/0x9b0b91d066f3162884389dd3aa1c280252c20b20/) | V3LiquidityHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c17a3...b650da`](./contracts/arbitrum-42161/0x1c17a39b156189bf40905425170a3ff62fb650da/) | VaultV1Whitelisted | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d7827...17b52d`](./contracts/arbitrum-42161/0x3d78271daf904d962cd3015f8e6311b1e917b52d/) | WETH_Module | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 345 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=21

Fork inheritance lineage and inherited audits are included when available.
