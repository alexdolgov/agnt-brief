# Agentic Audit Brief: Aevo

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.1% over 90 days

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: unknown (Tier 0, 84.9% below peak)
- Generated: 2026-07-04T14:52:58.082Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 267 unique implementations (600 raw deployments)
- DeFi Llama TVL: $18,155,501.00
- On-chain TVL (included contracts): $48,794,084.84
- TVL by chain: Ethereum $39,003,115.77 | Arbitrum $9,657,032.31 | Optimism $133,936.76

## Project Description

Options. Structurally: 247 project-authored contract(s) across 4 chain(s); 9 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 30 common project-authored base contract(s) (dsmath, merkledistributorwithdeadline, merkledistributor). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 751; live-surface contracts included: 587 (395 live, 192 unknown).
- Excluded by liveness: 164 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/86 (14.0%)
- Deployed-live implementations: 90 of 267 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/91
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 1
- Unverified implementations: 176
- Unique implementations: 267
- Raw deployments: 600
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): $2,040,695.79
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $2,040,695.79 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 5.5% | 2022-03 |
| Ribbon | Tier 2 | 3 | 3.3% | 2024-01 |
| Quantstamp | Tier 2 | 2 | 2.2% | 2021-05 |
| VAR | Tier 2 | 2 | 2.2% | 2023-10 |
| Unknown | Tier 2 | 1 | 1.1% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonToken | token | ethereum | n/a | [`0x6123b0049f904d730db3c36a31167d9d4121fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| AevoToken | token | ethereum | n/a | [`0xb528edbef013aff855ac3c50b381f253af13b997`](./contracts/ethereum-1/0xb528edbef013aff855ac3c50b381f253af13b997/) | ✅ Audited |
| Vault | unknown | arbitrum | n/a | 46 deployments: optimism `0x2bbc2ed3931234e803618202fe2f060e56625626`; optimism `0x31a7ab5ec48b752f7a4c4e98410203bb474ab9e4`; optimism `0x3ab7b942f6ea66e5ca62e0a27869aa66747a4ec2`; optimism `0x3bb3b7d1ca52c55d93896290b59516372ff35984`; optimism `0x44343ae5e9319b61c9dad7876919efdb03241b02`; optimism `0x4436ba5e61e1e7f9721980741b6403859c576e72`; optimism `0x5c7dd6cb73d93879e94f20d103804c495a10ae7e`; optimism `0x61ce6673b00b2f0281e8b95c6b68c8275865ff34`; optimism `0x7809621a6d7e61e400853c64b61568aa773a28ef`; optimism `0x88ce86d198c8ebeab680dd0350fbaefe298a6965`; optimism `0x9239609eed7c40c6ddcec25d247ef205103590b6`; optimism `0xad7bdd85fda879fe7771a2546939972f202c1bae`; optimism `0xb15f962bbad0015f5a9a51e9ef39aeda45bb83fc`; optimism `0xbb9cf28bc1b41c5c7c76ee1b2722c33ebb8fbd8c`; optimism `0xcbecd69cefa64f55b72f8ac288fc5c452819b608`; optimism `0xd7b09136467d7520828fc675f0b1a9e8cd1d20e8`; optimism `0xdd4c717a69763176d8b7a687728e228597eab86d`; optimism `0xdef0bfbdf7530c75ab3c73f8d2f64d9eaa7aa98e`; optimism `0xe5967877065f111a556850d8f05b8dad88edcec9`; optimism `0xe8fea3de2749ee4fe15fc749d0c31761373dfa99`; optimism `0xe9f2ed94dee821bd23716ed90672d6e3dc9e0415`; optimism `0xfff4a34925301d231ddf42b871c3b199c1e80584`; base `0x5d6689b75a3019712a93ad866f119b66d664e198`; base `0x6ee3907d1b9423584195979812379143b327fb48`; base `0xa8bd0ecb10a83cc6e14fc5381f384dd3c0779e8b`; arbitrum [`0x0825266f72e8841d7fea350b20dd65aa861acee9`](./contracts/arbitrum-42161/0x0825266f72e8841d7fea350b20dd65aa861acee9/); arbitrum `0x087607e5a269290f67274a45ea6cdd09614082c3`; arbitrum `0x11b3a7e08eb2fdea2745e4cb64648b10b28524a8`; arbitrum `0x3d20c6a2b719129af175e0ff7b1875deb360896f`; arbitrum `0x3faf4983db89e651270aea1b15e871236969d990`; arbitrum `0x492baf2d8d9ac9cc7892c1e9924e483f5fe9da07`; arbitrum `0x4ed9ed34ee9e502e4b320b8c2eeefc714e743553`; arbitrum `0x5e027ad442e031424b5a2c0ad6f656662be32882`; arbitrum `0x7711c90bd0a148f3dd3f0e587742dc152c3e9ddb`; arbitrum `0x80d40e32fad8be8da5c6a42b8af1e181984d137c`; arbitrum `0x8e9f58e6c206cb9c98abb9f235e0f02d65dfc922`; arbitrum `0x90bfb3c35ddfbba42d998414f0ff1eadd430e161`; arbitrum `0x9d3e027e3b2283ed577af44114a124c579b4df67`; arbitrum `0xa0e9b6da89bd0303a8163b81b8702388be0fde77`; arbitrum `0xb2cb9ada6e00118da8e83a6a53df1ec6331a60a6`; arbitrum `0xb371300517915190aeb8be5c4ae0b986dbc68901`; arbitrum `0xd7bbe2f6d1b52a27d2dac28298de3974a3d13047`; arbitrum `0xd7e13d13e5a5dabc95d2fc19552697e3a476165d`; arbitrum `0xed902143f4129be7be73bc355e77b67d47df7bc3`; arbitrum `0xf476d94e52da5072993f4b7e1dc59395b01a4b5a`; arbitrum `0xfb7b06538d837e4212d72e2a38e6c074f9076e0b` | ✅ Audited |
| AevoStaking | unknown | ethereum | n/a | [`0x38913051e01d4f6910cb66bb9ac3cb77d746ad81`](./contracts/ethereum-1/0x38913051e01d4f6910cb66bb9ac3cb77d746ad81/) | ✅ Audited |
| Controller | unknown | optimism | n/a | 3 deployments: optimism [`0x5e648e8391b4e7f764b3e79d8a786078c755a6aa`](./contracts/optimism-10/0x5e648e8391b4e7f764b3e79d8a786078c755a6aa/); optimism `0x6dc5f83c405594b9b62caf1057e6432df66b470c`; arbitrum `0x9cf6f370fc5cdf5fb81783f26c064d142aa1bc56` | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x909e51211e959339efb14b36f5a50955a8ae3770`](./contracts/ethereum-1/0x909e51211e959339efb14b36f5a50955a8ae3770/) | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x787a0acab02437c60aafb1a29167a3609801e320`](./contracts/ethereum-1/0x787a0acab02437c60aafb1a29167a3609801e320/) | ✅ Audited |
| OptionsPremiumPricer | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db`](./contracts/ethereum-1/0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db/); ethereum `0x7c24414191e2818a1a8cd995688c9da74faf67a8`; ethereum `0xcf38c16253912a827f38b5b2c08e6059a0194e8c`; ethereum `0xd8bb660a8fcaeadb7a7aef73e57a3a989065dacc`; ethereum `0xec58c11aa55836c896b80a9d8032e39eeb525cbc` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | [`0x1f2077b0a9efb0c6568396a115272401fa7d95f4`](./contracts/ethereum-1/0x1f2077b0a9efb0c6568396a115272401fa7d95f4/) | ✅ Audited |
| Signing | unknown | ethereum | n/a | [`0xd3bb8475c30fd70675f6250fb725e30b3a6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ✅ Audited |
| Swap | unknown | ethereum | n/a | [`0xa37e332ce625429b1978c33eb2f583c469b44b08`](./contracts/ethereum-1/0xa37e332ce625429b1978c33eb2f583c469b44b08/) | ✅ Audited |
| VaultLifecycleTreasury | unknown | ethereum | n/a | [`0xe1d00f9bafea5aa40a2192af12b68af3d390afe2`](./contracts/ethereum-1/0xe1d00f9bafea5aa40a2192af12b68af3d390afe2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x25751853eab4d0eb3652b5eb6ecb102a2789644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/); ethereum `0x65a833afdc250d9d38f8cd9bc2b1e3132db13b2f` | ⚠️ Unaudited |
| RibbonThetaYearnVault | core_logic | ethereum | n/a | [`0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/); ethereum `0xbbb4a58098681cf98e45aa0f4ed60469f4bb02d9`; ethereum `0xeace2615b36b9c9bc54b779f59219d5dcd3b3d2e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c86c20d00aa8491ad20974945d621e40c9e2b0c`](./contracts/ethereum-1/0x5c86c20d00aa8491ad20974945d621e40c9e2b0c/); ethereum `0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e238a03757c7739840a2b3982c5cb85064e6f5e`](./contracts/ethereum-1/0x0e238a03757c7739840a2b3982c5cb85064e6f5e/); ethereum `0x70924eaa9706cc7ebff0123eae355d96c9334f1e` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x665f891c8939255bd862920671c124e419dfeec0`](./contracts/ethereum-1/0x665f891c8939255bd862920671c124e419dfeec0/); ethereum `0xec4f5c8ab7d1fcd2cd9f69f183c83d42c8d8fa69` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a35670172d45324d0a8af00c2926af3ee9f6d3b`](./contracts/ethereum-1/0x7a35670172d45324d0a8af00c2926af3ee9f6d3b/); ethereum `0x8ac509e9cba12cc0fed1c3505d9725fc858f72ad` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd`](./contracts/ethereum-1/0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd/); ethereum `0xdf4061983d12a309b1e68c1a729151a81fa25261` | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x6a4715fc607c9ebda1377563552d45cbd194a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/); arbitrum `0xab2f8c1588aca57bc2909512b645a860c65770d3`; arbitrum `0xd9f45c505d8eba331a9002992742f765bd88a8e8`; arbitrum `0xdff78a949e47c1e90f3dd6dd7fe2fa72b42a75f7`; arbitrum `0xf9a5126d7f3b30fc685f420e00b011bc801400d5` | ⚠️ Unaudited |
| CommonPlug | unknown | optimism | n/a | 2 deployments: optimism [`0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46`](./contracts/optimism-10/0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46/); optimism `0x9d245fdef1164a4d4014c2570fd88855ea9545d0` | ⚠️ Unaudited |
| CommonPlug | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4611a4c47893d57ad2005c9d674f27ddb121919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/); arbitrum `0x765cfbb5efc15a384c24828e782dcffa3f9690fb` | ⚠️ Unaudited |
| ConnectorPlug | unknown | arbitrum | n/a | 45 deployments: optimism `0x0825266f72e8841d7fea350b20dd65aa861acee9`; optimism `0x0fd7856357c294a889a58f2bad74901e32f1d970`; optimism `0x1812ff6bd726934f18159164e2927b34949b16a8`; optimism `0x242b28863be371d5eb9b32692dc642e446064aa5`; optimism `0x27f4b23944e2bb59b1e276aff22fd2be45658f64`; optimism `0x32bf26035754a73eeda80bac0914c1e9ae88174c`; optimism `0x499239cfbe1e4439502b3896e66fb99626b75833`; optimism `0x4bd04af43a5789e6404919b70078e6d1969e24c7`; optimism `0x52ee360b1af2497c8ec88cc6b1122b88c245e493`; optimism `0x55fa0806268ff0a1d9dff19633e37ee5ce5d7671`; optimism `0x5b64ced7509007884e43b2d07b1b9bccbe7aeb6f`; optimism `0x6190855f54deb642c410a2d642a993d454083736`; optimism `0x716206c6ac501315f8b204e1e564b9e0cbc210d4`; optimism `0x906a44daa8bda5599a384264e3811b9bea1109b4`; optimism `0xbc31ec84bd7bc2c97b9413f6e473ce96be153a25`; optimism `0xc0acbb471465fcf848746d1837d8358ab891546c`; optimism `0xeab4999c4debc87516db5a0dee98de145f602572`; optimism `0xecaa2435d99c4987876a0382f1661dbf539700c0`; optimism `0xf0a0b2e99d081ee737496dad5e2267ab12139793`; optimism `0xfd76d8b79c2e2c86ea0814e92d5ca0e4e8096c13`; base `0x1d56e8bf3050ee3ba387e84e399cbeae8974aafe`; base `0x20bdd81fea5a5e6a539be17d2029204b16626624`; base `0xbaf4a260b47544c7f2f44abb7f1aea733f5cb08c`; arbitrum [`0x070feadf2208303d341d1d2da6aa41395f8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/); arbitrum `0x0a206467b372b540d073712519e2be20f0c93b12`; arbitrum `0x17fc4c7ea8267044b6d0acc17a6c049bed6f8b21`; arbitrum `0x2e63d65f31d8a70e5185a3c4bc0edc31a1cf4571`; arbitrum `0x31dbdaf7a388735e95a1f68494621d0d82583c86`; arbitrum `0x3809150509df79d96334c4eb6ba1c386827c3c67`; arbitrum `0x42c846313c37845b9d67bb5c1f4f48e528234afc`; arbitrum `0x5ea1172d7c6bb48fdde560c8cfc6660519e1ff41`; arbitrum `0x6284b30ec9675b4b318f3e2bf8801e6645034516`; arbitrum `0x63d8934c1fc89f57b17ab5e14db52bb07d577c0f`; arbitrum `0x69adf49285c25d9f840c577a0e3cb134caf944d3`; arbitrum `0x7deb2459a366d4f85ab5e89f31be527348a672ca`; arbitrum `0x8752c7aacc4dc3554c08f6f59912f105b1f0a5f7`; arbitrum `0xa451cc3077729ecaeb3ba2cbfd5326a90cbc4ad9`; arbitrum `0xa8eaae220a165c7404abaaae9efc3c32fc72151d`; arbitrum `0xadec92ed5f9b9df814a1e237cca6f1b5e68702eb`; arbitrum `0xb0d57301050710af1145562b3386ff5ecfe9be83`; arbitrum `0xdc56509f941884a0c047413d6973e2f00d763288`; arbitrum `0xe02c751e09a87eab8a09ff109d67d39b4690047e`; arbitrum `0xe0a298922f14ad230218218e75860e9fe4c0b55c`; arbitrum `0xf9715b5518396378596cbc70bea7f8cf4c10d9b2`; arbitrum `0xff17d331174137ccd1c392a77e898b36ddd7ff54` | ⚠️ Unaudited |
| Counter | unknown | optimism | n/a | 10 deployments: optimism [`0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/); optimism `0x29829a795d2a592edd87378e5346f9fc17dd6033`; optimism `0x2f6b39ecfe379053475041c2fc6989d64011538e`; optimism `0x36c4b7a6d8fb2db65c5806f4a81a8723160a8bb7`; optimism `0x7e54f4c0acafec318af1f5d1dcd373cdacc32622`; arbitrum `0x25ffcbc076e946931621e803ac60b560c63e7e59`; arbitrum `0x3603634999bfc14187544700e24cb0bd2e33eb55`; arbitrum `0x44513d2c02e6fdcafa012d53ae767cc5d4a257e3`; arbitrum `0x4fb274909ffeef635270915a729dc40500c7260b`; arbitrum `0xd0bb14b2275ccc44b75bad9ff23ecb47651af15c` | ⚠️ Unaudited |
| ExecutionHelper | unknown | arbitrum | n/a | 15 deployments: optimism `0x16c2d34060c2a0ab2047579e4fb6aae1e92e88df`; optimism `0x4229dddf42b1d05ea0fd4625df5094968b67e528`; optimism `0x66e75b252b1854df4568d5b093d9c9376ca22cb2`; optimism `0x6867fffe1eb0a6b77010c5ea288d126664af3c2f`; optimism `0x922bf6cba04524b6e330bc493673ffc87b9f7d24`; optimism `0xbaec9ebbed690ad3dc46d1a8747a635eeb3468be`; optimism `0xf187265946bfbcff3c538743fa9896070515f56f`; arbitrum [`0x063ce19e9d682f38be70644a5fddae3a2ec380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); arbitrum `0x24686087887f2de94c9481371535e51809564fed`; arbitrum `0x34f86952285673e5d596146ec7de440767743109`; arbitrum `0x811f69eb3cbd4f52e7f5ecfd68e3b20c865886f9`; arbitrum `0xa9d0c013ef86bf49dd7240a6a01fc9064d7025e8`; arbitrum `0xbca7e73a838cb4e69d9f6eda4b9e13358d77b315`; arbitrum `0xc8b6d7c7f5eec48afe9bfc9ba121a749e05c4706`; arbitrum `0xdaadd2fa8ca8985ab407f097cd087c8ed9bda2c8` | ⚠️ Unaudited |
| ExecutionManager | unknown | optimism | n/a | 8 deployments: optimism [`0x052b82b3a096a592f3f28d4736c4796445bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/); optimism `0x10567782c459bc8bf90b89f7da189c754203bfec`; optimism `0x1b74ac5daca01d82a3d2e7688ea30e50fe6ff35e`; optimism `0xf50ed30a7a6951d830bc4e6498b5abc7132a4f6c`; optimism `0xfd1256602f99a8cb2b43114e41af4ca0b4c7e47f`; arbitrum `0x0a1040c23bc8d04669a118a27433d5b379c2d381`; arbitrum `0x7a6edde81cdd9d75bc10d87c490b132c08bd426d`; arbitrum `0xfb9329a7e9ab9eeb5adeda2b18e5a1447b163d57` | ⚠️ Unaudited |
| FastSwitchboard | unknown | optimism | n/a | 12 deployments: optimism [`0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/); optimism `0x1cab023a0cb8178163fb47de7c63c3192767cc26`; optimism `0x60f0cc35b10b8f7754fe7078bad8bf19204739d1`; optimism `0x835531a17d01df9ece37fd197e6b232fcda981b3`; optimism `0xa989d213dd33fe2a3fa93f502054c4e1df9a7220`; optimism `0xccd5a9bf2250070289a719c153390cb001316c6e`; arbitrum `0x1d3695c4d4eec10b813f0c3b97a7fbfb5f5eaa49`; arbitrum `0x2d7660f0cdfa50b5f800694f5aace8830d71c2d4`; arbitrum `0x388b07b1986bc30fc4ee6026407bff39607ff45e`; arbitrum `0x6216c9acb9ace727ed3e1b382dd456fe1db984dd`; arbitrum `0xd5e829827f665c42326eaf68da3360bd59b42f2f`; arbitrum `0xfff4a34925301d231ddf42b871c3b199c1e80584` | ⚠️ Unaudited |
| GasPriceOracle | unknown | optimism | n/a | 5 deployments: optimism [`0x09b471b83b91bdb1aa361f05770cfceff7526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/); optimism `0xd9a317288843d8ae4c80bc78eb9af4ee21aeedf3`; optimism `0xf848907549f27cc5424ee0b0f8fe5238113632af`; arbitrum `0xcff802cca1d506b3c4ac1eeb61233062a1b9f568`; arbitrum `0xd5a83a40f262e2247e6566171f9adc76b745f5cd` | ⚠️ Unaudited |
| Hasher | unknown | arbitrum | n/a | 15 deployments: optimism `0x3e89c061bf570b0678c7792bbffc6baa9d580dc5`; optimism `0x4f04f8ae9fc3a9539d00e5e69c3b262b31220d00`; optimism `0x64b3149a51795e4bd85505087c2aab3d9b50d957`; optimism `0x80b51629e095918bc15c206f1aff5a590cc729f8`; optimism `0x8ac0a7a1f26c6e074c3c063ba5aa5b736db6724b`; optimism `0xae7ab947dc04b2e4965a9d99c109c65b4f0ee139`; optimism `0xb11c04afc9b61ef83658df6062e5f62fe2e0c8af`; optimism `0xdd975f8d5b2f20d574e6777001e236a05f4ae3c4`; optimism `0xdf4ff02e2dde3a08590829d7398cc31b0255bab5`; arbitrum [`0x0266a47314472f295fdb5bb36f784093e69929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/); arbitrum `0x5af497b2794ecb2381ed5bb40df9305a07b3e325`; arbitrum `0xac40199432721467e8d4c3854c2dabdc31c97808`; arbitrum `0xcda819182c2bbe351644ed5d429280ab98004b4e`; arbitrum `0xe595624e36f3ee359cd2b346a9dc8100b33a9a5e`; arbitrum `0xebc6fccca0341241ccb974cf5c9a95c697782781` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x71ac62da06c75b202491e792b1a6d54dc2a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/); ethereum `0x9fa287b2cc05fd4054b18d7004e43bb4321c88a7` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/) | ⚠️ Unaudited |
| L1DepositHelper | periphery | ethereum | n/a | [`0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0`](./contracts/ethereum-1/0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66cee10ba575e889bb3c1f60996164c07c30a748`](./contracts/ethereum-1/0x66cee10ba575e889bb3c1f60996164c07c30a748/); ethereum `0x93314c2a1ed4e8940d2fe01939ad891a19d66630` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x69ce7652f951f275cce848eb661efc9f3f155821`](./contracts/ethereum-1/0x69ce7652f951f275cce848eb661efc9f3f155821/); ethereum `0xe7935c3f1edd3104f4db3539c0d43c5d2330c639` | ⚠️ Unaudited |
| L1SocketDepositHelper | periphery | base | n/a | [`0x6ea58e68d37e523a80a461672e2d32e4ab744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x4082c9647c098a6493fb499eae63b5ce3259c574`](./contracts/ethereum-1/0x4082c9647c098a6493fb499eae63b5ce3259c574/) | ⚠️ Unaudited |
| L1SwapVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6`](./contracts/ethereum-1/0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6/); ethereum `0x60453f697faaf27fcb0d15d6696d5fb2b374aefc` | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14`](./contracts/ethereum-1/0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14/); ethereum `0x9f82b5b72e55a329dab9a79a2d04398c652eb376` | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1`](./contracts/ethereum-1/0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1/); ethereum `0xf482aafa02768165c7ffac590d903dd05ffba567` | ⚠️ Unaudited |
| LimitExecutionHook | unknown | optimism | n/a | 16 deployments: optimism [`0x063ce19e9d682f38be70644a5fddae3a2ec380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); optimism `0x26fde516afbeaf0ac93ecc7179c5f1eec34c9a5f`; optimism `0x40a1b20804410efefb9f93c85f378daa87abc1a3`; optimism `0x5f6f4bcc17a8de36baa4fe5afe0375e2d52caed4`; optimism `0x765222c94266ad8855b380cb8df3f5cca03fbb80`; optimism `0xaf20363cd31420cdcddaaf93603b678096ea2509`; optimism `0xe19dd121a0e5be2a20d126fce6be1270a153d600`; optimism `0xf4eea99899423abcaaf3c36bb0ded334c58cd014`; arbitrum `0x3e3e6ff83a0255dcb3602c0136bb3a0bdd13f807`; arbitrum `0x65f258263acc0857c3eee77c2e997d6ff99b8132`; arbitrum `0x716206c6ac501315f8b204e1e564b9e0cbc210d4`; arbitrum `0x8542813032035617bdd6e85cfdb57e8ad98d3d2a`; arbitrum `0xb39f91e53a7280601d4d7d723f8a1227fb468c98`; arbitrum `0xd34308fb7138716b9a9519e13fb1e0196bfb9d3f`; arbitrum `0xed24b1b69ad58e21bbed6600749b713725407e66`; arbitrum `0xf570f67a1b29de1b301e6c8112fae7779a84cdd8` | ⚠️ Unaudited |
| LimitHook | unknown | base | n/a | 3 deployments: optimism `0x6f9234d3063f1cf7986c4511ef46721f794cf8f7`; base [`0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/); arbitrum `0xe4593ed6f711a298eb05dac61141f4f3ce6fa37a` | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ea2f2367e091525c86f00737bba0aa3b107cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/); ethereum `0x7902e4bfb1eb9f4559d55417aee1dc6e4b8cc1bf` | ⚠️ Unaudited |
| MerkleDistributorAdjustable | unknown | ethereum | n/a | 5 deployments: ethereum [`0x04b47c3b679c588a23e905b8579e4cc9f19ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/); ethereum `0x5c648b8e19f89854351719d34a78fe9ad6184d76`; ethereum `0x778046fec7de9905edee161de4b4b4d8a6f21591`; ethereum `0x80c86bc65df4d29c5cc037d18e02d6172b5de404`; ethereum `0x9946a1abd122353085e70e56a8201cd94fb76769` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f197ccb582179ef4a408f94c78137eeb77d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/); ethereum `0xd4b812dd7134f632c947ca11a2fb0f49082a2483` | ⚠️ Unaudited |
| MerkleDistributorWithStaking | unknown | ethereum | n/a | [`0xce90d5f1f313e25a3e32da3da97a041ee93223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | ⚠️ Unaudited |
| MintableToken | unknown | optimism | n/a | [`0xeb4b088441975a903fcda584aef0e985c721d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | ⚠️ Unaudited |
| OpenExecutionManager | unknown | optimism | n/a | 4 deployments: optimism [`0x4aa89efdd4050dd40c1a3863294b6b148fd297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/); optimism `0xb442582f235cf3d039a81f067b02f5e66f34a57c`; arbitrum `0xb864fbaf80d166a275c6af7c692304436f10db22`; arbitrum `0xca16185a1072e84d74931e605fce0a843445c31e` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246`](./contracts/ethereum-1/0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246/); ethereum `0xbfec86cde6c7a753304452ec05745c13e5dd5af4` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e549caa61f21086eb0a92830b905d2d859ce51c`](./contracts/ethereum-1/0x3e549caa61f21086eb0a92830b905d2d859ce51c/); ethereum `0x4e80ed9109ccac8d3fd581e91b17ecfc65dfe02d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x5dbba17eb2458a05abba79e650df607f0681cc6a`](./contracts/ethereum-1/0x5dbba17eb2458a05abba79e650df607f0681cc6a/) | ⚠️ Unaudited |
| OptimismSwitchboard | unknown | optimism | n/a | 5 deployments: optimism [`0x717facaa298fa151c6ffad47b5e9c51c41bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/); optimism `0x7e6da87fe69306caaed675ffe4e7dc0ffe3bfe4d`; optimism `0x9cf7443685827419b0067fb2471c24969eaa716c`; optimism `0xadbc2c4ffbd5de29e2ef566e4db67f8a839dd66a`; optimism `0xb6c103b76500b262244b9879fe7f7e1c43fcf8c2` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | arbitrum | n/a | 10 deployments: optimism `0x665288be03e0397d5bd9838732fa1ec3189288a7`; optimism `0x929625acce321770c747c38cc989b689ee823d90`; optimism `0x9ba3ff23c5373a9c7f0ceb8b6b5f4c98cec7d922`; optimism `0xb113d72896d4874111af00c9499b5a64e9f1e3f4`; optimism `0xcb473d87a56b4609a695753711f727e5c4335ccf`; arbitrum [`0x1812ff6bd726934f18159164e2927b34949b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/); arbitrum `0x213be4d6c81db7da841fe93c3e19e941fb8d1413`; arbitrum `0x450d3591ea2353a310218ae7a8190f02447ae36c`; arbitrum `0x626674edaad9fd40c2073ce4d874f093381af17c`; arbitrum `0xfe5de884d328cb7094da1117c42188d708a6346d` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | ethereum | n/a | [`0x6221b5e23b137a405f8df9aaa717f1629cb29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x032b3569dc905fb2f8583004c329c4f59df843ca`](./contracts/ethereum-1/0x032b3569dc905fb2f8583004c329c4f59df843ca/); ethereum `0x72cc6efbf1b10e2892a71ef9c0bc5831daac3ab4` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1ace6b2b50816a058456141c9421de1282f41011`](./contracts/ethereum-1/0x1ace6b2b50816a058456141c9421de1282f41011/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x2dd0b693d02eeb6c63239175bdfeb27ad3be58c6`](./contracts/ethereum-1/0x2dd0b693d02eeb6c63239175bdfeb27ad3be58c6/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37ca018b135cdb8dc7edde960143a98b6dd0c1c5`](./contracts/ethereum-1/0x37ca018b135cdb8dc7edde960143a98b6dd0c1c5/); ethereum `0x6bba90e42d5a597347293eb9395e3460f13ce841` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x399bd25d13ac8954222b8c201542f84221be8bb3`](./contracts/ethereum-1/0x399bd25d13ac8954222b8c201542f84221be8bb3/); ethereum `0x8daaf9d3f25b0033e9a3807f0f0d11eaa8b3bcc9` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x495d4470828a78b2eb532c55414237b110f0500f`](./contracts/ethereum-1/0x495d4470828a78b2eb532c55414237b110f0500f/); ethereum `0xc7b404843e37bafbdd86dc0b441b3e3c8a543a3e` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9a89fe274a87ced1db78a76c03a2d8e86b551735`](./contracts/ethereum-1/0x9a89fe274a87ced1db78a76c03a2d8e86b551735/); ethereum `0x9e0b8c6d1be21ecb5b9abbb1a28cf68150315553` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019`](./contracts/ethereum-1/0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019/); ethereum `0x9bd8c9745fe460a801dbd50db220da89a6890f09`; ethereum `0xb145c0bd3385fa3b6ec03507f6a6986728dd0f39` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/); ethereum `0x63cb3511e2ce39a77dc23f7721832a159015b3a9` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/); ethereum `0xf103486d9a098673fad8a5d86e8cfd6bf2fe6f8b` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1c2ee9711592638f7fa3f47181c7eae7606352c2`](./contracts/ethereum-1/0x1c2ee9711592638f7fa3f47181c7eae7606352c2/); ethereum `0xa1457fb1e20fe1399e5d581733bb6ac0e7b7486f`; ethereum `0xeef3d67a608a94e17e5fb669b7270d121fbe196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e80265e821990b8139b43c12c622f64bf928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/); ethereum `0x8e28f2e7334b44c0753df20774683fb004c08d6a` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 9 deployments: ethereum [`0x01f1d8744469da81dbb6b7d3e9811f10029365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/); ethereum `0x1bc5ee65197c54106f9eb02e476191c6991dcffa`; ethereum `0x21438c87e749920625dc3bd2742a3e879caf6c72`; ethereum `0x51a5a8f2487ddd446672868d95347b7cbe041f8b`; ethereum `0x5d4c0a7f6888e80a86c8ee5d2660c216cfea1b51`; ethereum `0x8a0eff819d7e197ee79ff3fef520fe56a2c36ca5`; ethereum `0xbcf89a96f131ad7587fbadc58f9fdb62d68147ad`; ethereum `0xeb74e0ef154f29d7ace73d72b88bf1f28137c733`; ethereum `0xef3c692023ce020316c6be3a0479f87767ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc`](./contracts/ethereum-1/0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc/); ethereum `0xc5f2cf5c4c874c296281e2a73a2e44c9fba55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x24ab80935f568e8032253bef349ca3b6097e24c6`](./contracts/ethereum-1/0x24ab80935f568e8032253bef349ca3b6097e24c6/); ethereum `0x8756ea6c0c07ee3a45e791c6da8fa1ff8205f1f7`; ethereum `0xfc0d9e568f048d0cc4765353c775a2dadd016502` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | [`0x53773e034d9784153471813dacaff53dbbb78e8c`](./contracts/ethereum-1/0x53773e034d9784153471813dacaff53dbbb78e8c/) | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 12 deployments: ethereum [`0x09bd08ce34237df3b935080281e91b2766efb030`](./contracts/ethereum-1/0x09bd08ce34237df3b935080281e91b2766efb030/); ethereum `0x0ff7c2d2a935d31d354bf7ea7fdad39de0141a5a`; ethereum `0x1939f826deaa3e2649dcf2c5234aa20adba08682`; ethereum `0x23b42c4234df12ed025a794abf815e4327f1ff87`; ethereum `0x2a0b88f5e1fba2909843a46877a9369d8ae8b5b5`; ethereum `0x34107ac950eba9568df26b6256953142792eb167`; ethereum `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; ethereum `0x65112b0932c257b821217fcccb783c7e0c227ae0`; ethereum `0x94c8422c2b2e45b3b2c69c6a556e32a37498431a`; ethereum `0xae517e17844c09f2eedf382db0e7943c4c78c7f0`; ethereum `0xbeba74374e7cf9362fdedd0b9e2bc4a04549e4ad`; ethereum `0xd3fe1419708e1ab8bbb2881743eacc3f8968592a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/); ethereum `0xa0db6c4c2906de0158802ba8d98798d04f52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ea9e779dd4d7901c0f5e29645e957c34feb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/); ethereum `0x6779da6f8402dc69ada551bb6cd93fe5040f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ec571bee204dc17ef7cad5547dc9084d28031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/); ethereum `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; ethereum `0xcfcf97f4300afaa94566696fbf116c4d881fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0a54c398baa5e1f0d73b9328263fda296278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/); ethereum `0xc4d1009dff06a63a5548ecfeaf0942d45cf027c5` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x247a937b3294b2c06bbae44cd9cabbb9620e0690`](./contracts/ethereum-1/0x247a937b3294b2c06bbae44cd9cabbb9620e0690/); ethereum `0xe63151a0ed4e5fafdc951d877102cf0977abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3fb82fef405b14c6569dd07f0a673df79f0f1f44`](./contracts/ethereum-1/0x3fb82fef405b14c6569dd07f0a673df79f0f1f44/); ethereum `0x6fc853a8978017381e4bec0da7792f0b46453a8e`; ethereum `0x74e52410aede9a66d0b21eb8658bf27a15fbd421` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | ethereum | n/a | [`0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | ⚠️ Unaudited |
| SignatureVerifier | unknown | arbitrum | n/a | 17 deployments: optimism `0x80e51327a393e6d6777c85c9ac16bad45086ca5c`; optimism `0x8b57c3285a2acc9af1b813fa21ff99264943ff00`; optimism `0x976973618488e452027f4017b088ea8374486fa7`; optimism `0xaa2f2b6cd33eaabb795c6db60aaec599c8450f35`; optimism `0xb568433fe45ca1ea2a7ff98ad0746cea7300c12b`; optimism `0xbb1f202095be99000038d8d207c7e6f0f85a3925`; optimism `0xc94bf98cfe43d8c891d4ee43a47435be361e5d15`; optimism `0xde007c8a9a7fa8676f9a751b7bc1ef38af76757f`; optimism `0xf096fd1b47dfc14d2320571c5f7ecdb5cad219f0`; arbitrum [`0x053407dfa30267f6332f3c94a9e9f704a55e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/); arbitrum `0x2b59d436be18ac668b6d286b92fae0451ff5079a`; arbitrum `0x378a89d135eae28514172a9b83b2a35e4c854b29`; arbitrum `0x4d6b5213fab9c61ef94edcf1d71042c26aeab169`; arbitrum `0x9879a2b15722374243843dddb79e5e6872aa74b8`; arbitrum `0xe63347d6e1c5702a20b5383bc0ede5cdfa956d4c`; arbitrum `0xe88f6b194bd3b43013710a785ddff41454a19537`; arbitrum `0xeaa15fd42d68b8334a3bb1e9bf8ca85babe83790` | ⚠️ Unaudited |
| SimulatorUtils | unknown | optimism | n/a | [`0xba9c93014648fc64a0beac857b95c0ff22da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | ⚠️ Unaudited |
| Socket | unknown | arbitrum | n/a | 10 deployments: optimism `0x1eb392aba52a2d933e58f7e86ca96b9a3e2d8166`; optimism `0x2344621d5aa6e784e8c6f4c54b0b29dd9c3ad4b6`; optimism `0x301bd265f0b3c16a58cbdb886ad87842e3a1c0a4`; optimism `0x91ce463148bd7695d4db41f4aa36088e502428f7`; optimism `0xd10cb28719302698d7fa685d73dccd330b6bf573`; arbitrum [`0x16e4a6af6e81c7997fc784c8e621316e480a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/); arbitrum `0x37cc674582049b579571e2ffd890a4d99355f6ba`; arbitrum `0x9e3e4755411f8529cbed5a974a85fa9a8a13a9d1`; arbitrum `0xbc080a2e2593045fffc1b8c3cafc67732f8306a7`; arbitrum `0xfb6daf96202bd3815b2e602464adc10317634066` | ⚠️ Unaudited |
| SocketBatcher | unknown | arbitrum | n/a | 12 deployments: optimism `0x208cb87549740b4eb32043d0471a153ed1c54408`; optimism `0x2b351e9f1a1970115f5859107af33f1be386fb7b`; optimism `0x2c76dff7f3b5ef99c59c764f97aec71221920b7e`; optimism `0x321767762d66a69a8ccfe07d1b9805d314707b59`; optimism `0x5afa7ddbce8ee8862fdf5fd8c546bf32615d2d9b`; optimism `0xffb09850fab52765b5e48eac1aa3ffad620c8fce`; arbitrum [`0x107e182815c5e164e05f0c2cf478ace44fd468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/); arbitrum `0x1808ca111fbe2473e9fb497c05c1997925c0113b`; arbitrum `0x2ea720ea6b4dd82a31766da2b48300c0a31f4b8e`; arbitrum `0x96fef44d041fc6b2666cbbc86cabcef4e5ae3b0b`; arbitrum `0xd7b2e36f7a23974105683954062a7562d70255f7`; arbitrum `0xfbb3a520f7a9afe05e9b2a247a0dc975e57a8bd7` | ⚠️ Unaudited |
| STETHDepositHelper | unknown | ethereum | n/a | [`0x07f36cf3c834e423536680f560b6bad0319f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | optimism | n/a | [`0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca`](./contracts/ethereum-1/0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca/) | ⚠️ Unaudited |
| TransmitManager | unknown | optimism | n/a | 10 deployments: optimism [`0x0a523d8d8e2ad6f6623b3318a59743546cae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/); optimism `0x48261a0ea65cb1427e24b3119cbc94cba1b752c1`; optimism `0x6fedde12105f47eacde493ee294d207bfe68dce5`; optimism `0x7398da0704ee25025d300a96197788378dcb1470`; optimism `0xd3f39174ee7937381e19d682ffea40968266fa3e`; arbitrum `0x43a9b212b645baef3abe6db03d84169d9b9755ca`; arbitrum `0x63c10c00b47b9b418ec0f651b3763b6a692a0416`; arbitrum `0x6fc8d9764e99095b0c27d7f4c5c0711eb0f8b4b6`; arbitrum `0xbf05724bfdd0e8abb85c8d17bf7325cea2cbb5d4`; arbitrum `0xd648a4f9db4aa872985b35b9abb9be642c0d7f2e` | ⚠️ Unaudited |
| VaultLifecycle | unknown | ethereum | n/a | 14 deployments: ethereum [`0x14cc2c0b624e437202b53e533147982842865511`](./contracts/ethereum-1/0x14cc2c0b624e437202b53e533147982842865511/); ethereum `0x1c3774c538a50db827f7f7b450160e0afcbd41f8`; ethereum `0x25af99ff07575ac55fb3c2d1e6b920ba3bf67b40`; ethereum `0x35a3e0f233587f6e515bce363e0a5e42cd69ecc0`; ethereum `0x4994c95ec14ad03a09e2cc21af15e8894b7d10ee`; ethereum `0x58228f1700ca529b13cd560deab39fb254056d82`; ethereum `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; ethereum `0x93c48f3dc0df467ca9089925bd8256c62af1f522`; ethereum `0x9c24f8138bd1462164e1e11c31ea83fd9ccb9ccf`; ethereum `0xb917ee1d969ee309c5369d022ba202a30207dde3`; ethereum `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df`; ethereum `0xda638703bfa31e412d0e6d47e643afb2016be115`; ethereum `0xe248f69df96b0d397e8b81a592da8766b857d6c7`; ethereum `0xe64524ba73b9e74956f59f137821039254994f36` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/); ethereum `0x2c5dd86b524dde4c9b2d0f36d72bdec7ea089bf1`; ethereum `0x5cbb58fbd5e53a8db156c1261403b14dc618f3db`; ethereum `0x84ff097b9d1a3a32732d36aa2c6b08d4a8c08928`; ethereum `0x92c47ebaf26c7de6d9dfed9c2f6d957860f42836`; ethereum `0xb48c17175ca34c87fad6b34824b6151376ad38ee`; ethereum `0xcf7dd57bbe6cec4f07f1db1ac80b14421b8c8932` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/); ethereum `0xc06944ec6c0ee3f152c284e5df24b42d90169377`; ethereum `0xc7654fd45b96885ba231bb9083d1472e8c9a5e5e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSigWrapper | governance | base | n/a | 11 deployments: base [`0x0c98cb76b36a5b5f723cb11b3a031350583b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/); base `0x1fc216d3c05baa7b603628bed4ae10956bb40633`; base `0x2db2d118272108ea000d70b15e9bd68155c15522`; base `0x4bd2657aff7e2e29f29abb364da2564c23046306`; base `0x65df4cdeff95c4a67ff1c5a93b3cbce22da623b5`; base `0x6ec8ccfcc15b8eba21a68ca7469444fec3db5827`; base `0x7f3163ca8f8343f1c16db8ee541f03564a40f8eb`; base `0xa3a855771816ff1ea7012fc4ba663b1061fd0a6b`; base `0xb6f2ac3a9a52e9b0e524f6c9f46a7047bd70c37d`; base `0xc3213d428f8a63854c7644e0750499132866b1ec`; base `0xc47d1c5c2cead93e75914e52997842978f2ee3fe` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (176)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d79f7dc7065a23fc278a20551b97a236ec81889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336045401b3db35a658498e065f881a80e537fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51a287d1ec1f2e1216ce14aef4c12c43061b1844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x552ffbddfb01b6f7f3a3c39e9d3d0a5fa8436394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67fccb64b26c72c708c716d047ff13b291af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea8fa840b27e588a9e27f7070c7c365ec2f034d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb22af811cff79b89d25570fac31586af7b4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5f729e5c53afd79f4d41160050d8a600113b0a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8d727e03054bae850e8f84413f7e4a98b40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9305e90a4f642370d5bd4ac2ef13877bc9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb7f3baf1d9986760c0a470cd14ceca7544d4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd8c311a1b545da6e385cba7209211faf0ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf22032da47998ea78082abab00bb49e8d990503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd602e05594101fdcf3af0ddcf4775fb1b78f5397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a5288996eb63ed5978ebedea9418a304181563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d30e34c8cd40450072615be0e3d0772caf7f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf513bd4ba753548505a245be1877c39a4f0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x04196c83ce9438f287ae0b2774abab367283c2a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x045c906779cec459e897449af2967be52a71450f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0645095dc03b9546dfdb2fc8e7a52959ec37efa1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a1040c23bc8d04669a118a27433d5b379c2d381` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a3451e8546458dfd60d81f90d2e495398e58f87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0ccfb68fc0e5c6cb84225508b5cdd286a18979b1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0d50d4336df62f86771b2ef5db67be8c1896ace1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18b2379f0b359e2a5962aac884d34f29e1a72a98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18e36589ebfbb0410babd72e9ecdbb11ca764ace` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1dd54500118978c5cd12a6fde0493c03a7ef12bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x20ebdc614abc74386e5eb67a1516edc6ebd32540` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x23d5c2f9e0a2954128340587e2232924084386cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x25aaef700c735db1c7e8f77eb6e4c20878c76262` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x29fd3a2ea3fd84aad21afdd7863e00a1efbae6bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2dff1c101cdae89d838b980d891e316c09b1f4cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x326bbbaca7340be280f997739e4ac9791415b77f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x331d17d86c0989e533516751c1af2a896cdbf46f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3379f120917fb67728d6db6065d9fdbbd1507a7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x37cc674582049b579571e2ffd890a4d99355f6ba` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3c751688261f90369c28b16f3797e623667f69d4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x404e933ffd7ea2b1044a40c0b3c6883cefadf43f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x450aa5c9a0809e5e704254f79cf3452031c01ede` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4793c35f775a4abf2d503278cfeffc04963076b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x48b4f0692eaa84f1961b64342ae746d40d9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x49fd4671dc7f836be12cedef798d094437c8dc00` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b4d63e5044894184e35ae7854d0e0c749e418ae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4bf6e44a27e37f195c15b3075cbac63c46848375` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4c0623ec2cb2b1f1a5a19e18ab9a2df897e1f746` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4fe1addcb348bf191164fb10605c8beec8d42abd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5035d9b44c29b503ebcc1e7d6223ae78a37032d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5333982087c2db4f85d0ed2cde22b22abc0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a21d4f5c1cf7fe5fae9eff8bfda519cd10893f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c1ea29930e052f218634d807667a1387eb4c44f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5dfdff7a95a9a8472e6439afc6b760545692ca1c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x66a1274fff5506c3a69dd35dc5c9a60e63fb3107` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x66ad32f5f3c42c6b8102e998f24936f57997ce18` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6712ce4f5ad375df6301d5010c1039f393904498` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x749f09be3ca34b89f970ff3f594567d072a98e5a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x769874c359e23356a9fecf11d710f05513f033f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ab75ae7f84a5c5d696b619d866e05a27b1f4d7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7b2f652b2da7e0b1077b02d5e629966383d11161` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86a0a4a05b73fc03bec0ef7cfe1cab8cc406ce6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x880997ed94dd2098395d2b3ecdb1c93026894106` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x898aefdf7d1ccb3dc78179bbbf52acede878d7f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e9e34fd67634f33b2e2e49d083fbfd8c064fe9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90b4d987981ad1ded5bbcf9ee2928e811f81e8cc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x91f48c638ab0457fc807ca40300f3acf1688a4d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9879a2b15722374243843dddb79e5e6872aa74b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9a956704888a805c954b2c68d4faeeaf1eb45115` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9e51cdbd0dc54e314b6b17c69ed34a98b8259a16` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa3f9a7a13055f37479ebc28e57c005f5c9a31f68` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xad8cde0f29556c3ecc63fc52c4115376b27fc81a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb2dc051ba9d471dc441755871a5096b291cc364d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb48b743b85bf955c4c039599a3ecdd6175b6787f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb5c4e167b4be4be65052043d4cc0ffb7a73a7b7e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb6170138b6460538cf4daa97f06a16d6bb2ad38f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb7a6dba1d9035cc7fe20a2e40e5b2fb2e8f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbce4cd69fefedb6eb076cf67e55bae858567136a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbd57fa1470145289407992279c684aa42c8c88dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbec1741a51e2b06617bbfb145492109a630e05cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbf47f1b6aec8c1ec47ceba21f3b868567738c8b2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc2bd14fe818c6fc47246bee79f0d91afbebb43e2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc457f777402bd8449dfdd2a3481c4affbef56747` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc972ab9a6cb41b4bc437326af7d2b45cd59d5256` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcda819182c2bbe351644ed5d429280ab98004b4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd23678c7d554cb09ca7892d6521d40bfb02a05c8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd4021383fc5135a7082e6eeb473ae7abf109d024` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd5087ca5f76dc6785ba03dea23adcf41fe228df5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd550ce2bb4cc954542efcf23ea1147143bd8f77c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd648a4f9db4aa872985b35b9abb9be642c0d7f2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd7bbe2f6d1b52a27d2dac28298de3974a3d13047` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xde29948922a62fe77096f06d549da4dc12f3cd33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdfd12c02b718e2a9ec97852a5b22a8f9ae194cd0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe8bfe5106aa542c4fe3158c8e789b1697fa6c70c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe8da130f8844ae66886406c8b5459641bf9375a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xece91f5954f65f4116fd9e854c6b8dd17ef9150b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf004c4c51b6c026247b5910706ee78134299eabd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf19516273aff391293ff79822c08e66932b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf68eaa807c14b74e3fed68ed91a6ac7063f8570b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb0eab1261bb71254d4a8cc6dbf151b53d34781c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xffcbd42167550edb20d64f99278537075723b4c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10c700641f48da53434439bf2da21a4c27091221` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11bf390f6256479cdd6d540a5e118e6385692cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x188b69db174033db0e78af4c5036d0d5d7061f11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1de4928f1305704d069e23efc6eb1fb446cf1135` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3304c48872c4b3b9b0cac1aecab2ab8e8c8aa9d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38d1ff7afc4c32bee9d507652e4e5d639ff83ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43f3dd32d23b551ecbbb7c390368b960d168d063` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2bab5a7df134519368ab78364ea220db1bda26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dc25d9d3ee57018998a50e912f40f6384947ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52b143d34ee40e744358e3735b8fca7785f182ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57ca482c7dc749b2a26747ed2915560c2401262f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a0e01ed2be962a16cf56dfb6c3f252aded4483c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ab1380c9fd9153b2af42f43b13e7b236fdb9421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x687c51d273f8378d71aa825d5d09d0d4578ec5ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eae8a3f4186e3b5abdd712093bcd62115eb7de2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c0d229a3fce97eb3367c98d89040a1d26719286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ce48ddebfccf2ee2cf8ade87547de04dc03ec82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96574902bc1f5742d8eeec4b18d35ead03996bef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0be701078c498821835ccad9778f1b697af6f6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab46c3286018d1f9cadd339c134f260df93ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8ec1142422f4c726b1faf99054a6f616afb2bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5697260ce121cb00bb99f5e7f5ccc59977040a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f534aa1443b947b7b9a09b497b49ffa1b30da9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6a81cc7357584aa2760e1f24c73d1f29e64d60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd134eaee7a655b9fb97ab65fa47fb2285f81e840` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2663f3860bcf042a4333bb02ae3c7ac07220c86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe5909b5eb66aea11aeddc034ae148a21b816908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01de290363e4fa6d8cce26056ac76be5e149a0a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11a418c44494b6e859d5bd0a722effacc5151fb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b74ac5daca01d82a3d2e7688ea30e50fe6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ae62963154fa78d1d00e0a9a2a44660711bdb2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b3a8aba1e055e879594cb2767259e80441e0497` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31a7ab5ec48b752f7a4c4e98410203bb474ab9e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f8f21dd6efe362ef49ecb636824a7a2afc3a26d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49eddb310e91f0afac559ab89a971a497f9416f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bd2a4c0a878cce9b3bd3e2c87a78d43985c0594` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cae6101a2645ae58038aeb04079621458b00753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f04f8ae9fc3a9539d00e5e69c3b262b31220d00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x530654f6e96198bc269074156b321d8b91d10366` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fc8a637f6493c0be2fc900245f1fb39ca9b70ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63ef7df50faf329c2cec0d724be99586fb89574b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66dfb9987c36c4be232156e70b085f664367599a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69ea64de666324e69c3fac63cfc04321862c42c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fedde12105f47eacde493ee294d207bfe68dce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x703f883916535b0f80dc8325cbb7458537c3a039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x717facaa298fa151c6ffad47b5e9c51c41bc2199` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x732f7dce9d4e0f41b7ff093769fdec7d67186afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x762d5f37cb73e3325dcbb6eaeeeaa741ca8820d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x769874c359e23356a9fecf11d710f05513f033f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7de4937420935c7c8767b06ecd7f7dc54e2d7c9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81b9553321a5b583bcd3d292595c348f2892c2c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x858f61b6de2edbf4d79e3b4baeb00b80cc146251` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9216253925d1a22cb375ecef4f33cf93a1d1ff4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b58855524159543ebeeaf4dec9e3b1c3673a76e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ba3ff23c5373a9c7f0ceb8b6b5f4c98cec7d922` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaaeb4b20521ddf5c8c90c2a39d3c28f224e08c52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad0fa55b09ee01d4f69d0c9a9ed6467efe7d23b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb49ddec2cc70fea38c2eaa843031fda7069f8e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbec6222b2ff95735ee83ca20da9f190deaba6489` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2bd14fe818c6fc47246bee79f0d91afbebb43e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc40a22dff476921a7d1fdec6e20ee65f246d72f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccd5a9bf2250070289a719c153390cb001316c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd10cb28719302698d7fa685d73dccd330b6bf573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4fd62ab60794d1bdcb3ecf302fb3c0af9d0fb34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd95c5254df051f378696100a7d7f29505e5cf5c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde007c8a9a7fa8676f9a751b7bc1ef38af76757f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdee306cf6c908d5f4f2c4a92d6dc19035fe552ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf5f7dfdfc26ee5f629949e330bef56906319cae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe00321e336691ac3a9ac2d1a02970d22fe8861cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe11bcf49ecc73d684b802cfdf8c72f07908d7ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed037afbffc65a94e9cc592947e851fb2f730341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed4f75f0c25963d2c61827261c2d7f84bf884c7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf454ad8f5671e2e99dea37f6211060a400aaa9e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf848907549f27cc5424ee0b0f8fe5238113632af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc63fa6d0f1dc6e3b36b19bc3424d349037a5562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcebb7f5f3827f2fb485d24d1342977630e6ac6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffc2d8f660a5cc41273f1db714eaecd19d28d147` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ribbon-report.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | contract_name | 1 | high |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | 3 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 2 | n/a |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [VAR-Ribbon230918.pdf](https://github.com/aevoxyz/audit/blob/main/VAR-Ribbon230918.pdf) | Ribbon | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [VAR_Ribbon.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon.pdf) | Ribbon | Audit | 2022-06 | stale | Direct | contract_name | 1 | high |
| [VAR_Ribbon_230604.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_230604.pdf) | Ribbon | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [VAR_Ribbon_240116_aevo_governance_2-V1.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_240116_aevo_governance_2-V1.pdf) | Ribbon | Audit | 2024-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25751853eab4d0eb3652b5eb6ecb102a2789644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/) | RibbonThetaVaultWithSwap | core_logic | $1,718,109.88 | Verified native implementation with $1,718,109.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | RibbonThetaYearnVault | core_logic | $322,585.91 | Verified native implementation with $322,585.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e238a03757c7739840a2b3982c5cb85064e6f5e`](./contracts/ethereum-1/0x0e238a03757c7739840a2b3982c5cb85064e6f5e/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665f891c8939255bd862920671c124e419dfeec0`](./contracts/ethereum-1/0x665f891c8939255bd862920671c124e419dfeec0/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a35670172d45324d0a8af00c2926af3ee9f6d3b`](./contracts/ethereum-1/0x7a35670172d45324d0a8af00c2926af3ee9f6d3b/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd`](./contracts/ethereum-1/0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a4715fc607c9ebda1377563552d45cbd194a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/) | ArbitrumL2Switchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46`](./contracts/optimism-10/0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4611a4c47893d57ad2005c9d674f27ddb121919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070feadf2208303d341d1d2da6aa41395f8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x063ce19e9d682f38be70644a5fddae3a2ec380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | ExecutionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x052b82b3a096a592f3f28d4736c4796445bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/) | ExecutionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/) | FastSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09b471b83b91bdb1aa361f05770cfceff7526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/) | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0266a47314472f295fdb5bb36f784093e69929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/) | Hasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71ac62da06c75b202491e792b1a6d54dc2a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | L1DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0`](./contracts/ethereum-1/0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66cee10ba575e889bb3c1f60996164c07c30a748`](./contracts/ethereum-1/0x66cee10ba575e889bb3c1f60996164c07c30a748/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69ce7652f951f275cce848eb661efc9f3f155821`](./contracts/ethereum-1/0x69ce7652f951f275cce848eb661efc9f3f155821/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ea58e68d37e523a80a461672e2d32e4ab744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | L1SocketDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4082c9647c098a6493fb499eae63b5ce3259c574`](./contracts/ethereum-1/0x4082c9647c098a6493fb499eae63b5ce3259c574/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6`](./contracts/ethereum-1/0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6/) | L1SwapVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14`](./contracts/ethereum-1/0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1`](./contracts/ethereum-1/0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x063ce19e9d682f38be70644a5fddae3a2ec380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | LimitExecutionHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/) | LimitHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ea2f2367e091525c86f00737bba0aa3b107cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b47c3b679c588a23e905b8579e4cc9f19ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/) | MerkleDistributorAdjustable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f197ccb582179ef4a408f94c78137eeb77d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce90d5f1f313e25a3e32da3da97a041ee93223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | MerkleDistributorWithStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xeb4b088441975a903fcda584aef0e985c721d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | MintableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c98cb76b36a5b5f723cb11b3a031350583b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/) | MultiSigWrapper | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4aa89efdd4050dd40c1a3863294b6b148fd297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/) | OpenExecutionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246`](./contracts/ethereum-1/0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e549caa61f21086eb0a92830b905d2d859ce51c`](./contracts/ethereum-1/0x3e549caa61f21086eb0a92830b905d2d859ce51c/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dbba17eb2458a05abba79e650df607f0681cc6a`](./contracts/ethereum-1/0x5dbba17eb2458a05abba79e650df607f0681cc6a/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x717facaa298fa151c6ffad47b5e9c51c41bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/) | OptimismSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1812ff6bd726934f18159164e2927b34949b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/) | OptimisticSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6221b5e23b137a405f8df9aaa717f1629cb29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/) | PercentStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/) | RibbonDeltaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2ee9711592638f7fa3f47181c7eae7606352c2`](./contracts/ethereum-1/0x1c2ee9711592638f7fa3f47181c7eae7606352c2/) | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e80265e821990b8139b43c12c622f64bf928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/) | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f1d8744469da81dbb6b7d3e9811f10029365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc`](./contracts/ethereum-1/0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ab80935f568e8032253bef349ca3b6097e24c6`](./contracts/ethereum-1/0x24ab80935f568e8032253bef349ca3b6097e24c6/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53773e034d9784153471813dacaff53dbbb78e8c`](./contracts/ethereum-1/0x53773e034d9784153471813dacaff53dbbb78e8c/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09bd08ce34237df3b935080281e91b2766efb030`](./contracts/ethereum-1/0x09bd08ce34237df3b935080281e91b2766efb030/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ea9e779dd4d7901c0f5e29645e957c34feb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ec571bee204dc17ef7cad5547dc9084d28031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a54c398baa5e1f0d73b9328263fda296278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x247a937b3294b2c06bbae44cd9cabbb9620e0690`](./contracts/ethereum-1/0x247a937b3294b2c06bbae44cd9cabbb9620e0690/) | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fb82fef405b14c6569dd07f0a673df79f0f1f44`](./contracts/ethereum-1/0x3fb82fef405b14c6569dd07f0a673df79f0f1f44/) | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | RibbonVaultPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x053407dfa30267f6332f3c94a9e9f704a55e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xba9c93014648fc64a0beac857b95c0ff22da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | SimulatorUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16e4a6af6e81c7997fc784c8e621316e480a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/) | Socket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x107e182815c5e164e05f0c2cf478ace44fd468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/) | SocketBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f36cf3c834e423536680f560b6bad0319f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | STETHDepositHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | SwitchboardSimulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca`](./contracts/ethereum-1/0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a523d8d8e2ad6f6623b3318a59743546cae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/) | TransmitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14cc2c0b624e437202b53e533147982842865511`](./contracts/ethereum-1/0x14cc2c0b624e437202b53e533147982842865511/) | VaultLifecycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/) | VaultLifecycleSTETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/) | VaultLifecycleWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 174 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: contract_name=7, extraction_exact=16

Zero-match audit list:

- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1907] RibbonThetaYearn-18june.pdf

Fork inheritance lineage and inherited audits are included when available.
