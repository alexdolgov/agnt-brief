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
| RibbonToken | token | ethereum | n/a | [`0x6123b0...21fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| AevoToken | token | ethereum | n/a | [`0xb528ed...13b997`](./contracts/ethereum-1/0xb528edbef013aff855ac3c50b381f253af13b997/) | ✅ Audited |
| Vault | unknown | arbitrum | n/a | 46 deployments: optimism `0x2bbc2e...625626`; optimism `0x31a7ab...4ab9e4`; optimism `0x3ab7b9...7a4ec2`; optimism `0x3bb3b7...f35984`; optimism `0x44343a...241b02`; optimism `0x4436ba...576e72`; optimism `0x5c7dd6...10ae7e`; optimism `0x61ce66...65ff34`; optimism `0x780962...3a28ef`; optimism `0x88ce86...8a6965`; optimism `0x923960...3590b6`; optimism `0xad7bdd...2c1bae`; optimism `0xb15f96...bb83fc`; optimism `0xbb9cf2...8fbd8c`; optimism `0xcbecd6...19b608`; optimism `0xd7b091...1d20e8`; optimism `0xdd4c71...eab86d`; optimism `0xdef0bf...7aa98e`; optimism `0xe59678...edcec9`; optimism `0xe8fea3...3dfa99`; optimism `0xe9f2ed...9e0415`; optimism `0xfff4a3...e80584`; base `0x5d6689...64e198`; base `0x6ee390...27fb48`; base `0xa8bd0e...779e8b`; arbitrum [`0x082526...1acee9`](./contracts/arbitrum-42161/0x0825266f72e8841d7fea350b20dd65aa861acee9/); arbitrum `0x087607...4082c3`; arbitrum `0x11b3a7...8524a8`; arbitrum `0x3d20c6...60896f`; arbitrum `0x3faf49...69d990`; arbitrum `0x492baf...e9da07`; arbitrum `0x4ed9ed...743553`; arbitrum `0x5e027a...e32882`; arbitrum `0x7711c9...3e9ddb`; arbitrum `0x80d40e...4d137c`; arbitrum `0x8e9f58...dfc922`; arbitrum `0x90bfb3...30e161`; arbitrum `0x9d3e02...b4df67`; arbitrum `0xa0e9b6...0fde77`; arbitrum `0xb2cb9a...1a60a6`; arbitrum `0xb37130...c68901`; arbitrum `0xd7bbe2...d13047`; arbitrum `0xd7e13d...76165d`; arbitrum `0xed9021...df7bc3`; arbitrum `0xf476d9...1a4b5a`; arbitrum `0xfb7b06...076e0b` | ✅ Audited |
| AevoStaking | unknown | ethereum | n/a | [`0x389130...46ad81`](./contracts/ethereum-1/0x38913051e01d4f6910cb66bb9ac3cb77d746ad81/) | ✅ Audited |
| Controller | unknown | optimism | n/a | 3 deployments: optimism [`0x5e648e...55a6aa`](./contracts/optimism-10/0x5e648e8391b4e7f764b3e79d8a786078c755a6aa/); optimism `0x6dc5f8...6b470c`; arbitrum `0x9cf6f3...a1bc56` | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x909e51...ae3770`](./contracts/ethereum-1/0x909e51211e959339efb14b36f5a50955a8ae3770/) | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x787a0a...01e320`](./contracts/ethereum-1/0x787a0acab02437c60aafb1a29167a3609801e320/) | ✅ Audited |
| OptionsPremiumPricer | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0a1b63...0975db`](./contracts/ethereum-1/0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db/); ethereum `0x7c2441...af67a8`; ethereum `0xcf38c1...194e8c`; ethereum `0xd8bb66...65dacc`; ethereum `0xec58c1...525cbc` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | [`0x1f2077...7d95f4`](./contracts/ethereum-1/0x1f2077b0a9efb0c6568396a115272401fa7d95f4/) | ✅ Audited |
| Signing | unknown | ethereum | n/a | [`0xd3bb84...6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ✅ Audited |
| Swap | unknown | ethereum | n/a | [`0xa37e33...b44b08`](./contracts/ethereum-1/0xa37e332ce625429b1978c33eb2f583c469b44b08/) | ✅ Audited |
| VaultLifecycleTreasury | unknown | ethereum | n/a | [`0xe1d00f...90afe2`](./contracts/ethereum-1/0xe1d00f9bafea5aa40a2192af12b68af3d390afe2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x257518...89644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/); ethereum `0x65a833...b13b2f` | ⚠️ Unaudited |
| RibbonThetaYearnVault | core_logic | ethereum | n/a | [`0xcc3235...cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ⚠️ Unaudited |
| AddressManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7a616b...28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/); ethereum `0xbbb4a5...bb02d9`; ethereum `0xeace26...3b3d2e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c86c2...9e2b0c`](./contracts/ethereum-1/0x5c86c20d00aa8491ad20974945d621e40c9e2b0c/); ethereum `0xa5b117...e1c23d` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e238a...4e6f5e`](./contracts/ethereum-1/0x0e238a03757c7739840a2b3982c5cb85064e6f5e/); ethereum `0x70924e...334f1e` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x665f89...dfeec0`](./contracts/ethereum-1/0x665f891c8939255bd862920671c124e419dfeec0/); ethereum `0xec4f5c...d8fa69` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a3567...9f6d3b`](./contracts/ethereum-1/0x7a35670172d45324d0a8af00c2926af3ee9f6d3b/); ethereum `0x8ac509...8f72ad` | ⚠️ Unaudited |
| AevoStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f9c5d...3551cd`](./contracts/ethereum-1/0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd/); ethereum `0xdf4061...a25261` | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x6a4715...94a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/); arbitrum `0xab2f8c...5770d3`; arbitrum `0xd9f45c...88a8e8`; arbitrum `0xdff78a...2a75f7`; arbitrum `0xf9a512...1400d5` | ⚠️ Unaudited |
| CommonPlug | unknown | optimism | n/a | 2 deployments: optimism [`0x6a8be0...bc1e46`](./contracts/optimism-10/0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46/); optimism `0x9d245f...9545d0` | ⚠️ Unaudited |
| CommonPlug | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4611a4...21919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/); arbitrum `0x765cfb...9690fb` | ⚠️ Unaudited |
| ConnectorPlug | unknown | arbitrum | n/a | 45 deployments: optimism `0x082526...1acee9`; optimism `0x0fd785...f1d970`; optimism `0x1812ff...9b16a8`; optimism `0x242b28...064aa5`; optimism `0x27f4b2...658f64`; optimism `0x32bf26...88174c`; optimism `0x499239...b75833`; optimism `0x4bd04a...9e24c7`; optimism `0x52ee36...45e493`; optimism `0x55fa08...5d7671`; optimism `0x5b64ce...7aeb6f`; optimism `0x619085...083736`; optimism `0x716206...c210d4`; optimism `0x906a44...1109b4`; optimism `0xbc31ec...153a25`; optimism `0xc0acbb...91546c`; optimism `0xeab499...602572`; optimism `0xecaa24...9700c0`; optimism `0xf0a0b2...139793`; optimism `0xfd76d8...096c13`; base `0x1d56e8...74aafe`; base `0x20bdd8...626624`; base `0xbaf4a2...5cb08c`; arbitrum [`0x070fea...8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/); arbitrum `0x0a2064...c93b12`; arbitrum `0x17fc4c...6f8b21`; arbitrum `0x2e63d6...cf4571`; arbitrum `0x31dbda...583c86`; arbitrum `0x380915...7c3c67`; arbitrum `0x42c846...234afc`; arbitrum `0x5ea117...e1ff41`; arbitrum `0x6284b3...034516`; arbitrum `0x63d893...577c0f`; arbitrum `0x69adf4...f944d3`; arbitrum `0x7deb24...a672ca`; arbitrum `0x8752c7...f0a5f7`; arbitrum `0xa451cc...bc4ad9`; arbitrum `0xa8eaae...72151d`; arbitrum `0xadec92...8702eb`; arbitrum `0xb0d573...e9be83`; arbitrum `0xdc5650...763288`; arbitrum `0xe02c75...90047e`; arbitrum `0xe0a298...c0b55c`; arbitrum `0xf9715b...10d9b2`; arbitrum `0xff17d3...d7ff54` | ⚠️ Unaudited |
| Counter | unknown | optimism | n/a | 10 deployments: optimism [`0x1c2ec0...0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/); optimism `0x29829a...dd6033`; optimism `0x2f6b39...11538e`; optimism `0x36c4b7...0a8bb7`; optimism `0x7e54f4...c32622`; arbitrum `0x25ffcb...3e7e59`; arbitrum `0x360363...33eb55`; arbitrum `0x44513d...a257e3`; arbitrum `0x4fb274...c7260b`; arbitrum `0xd0bb14...1af15c` | ⚠️ Unaudited |
| ExecutionHelper | unknown | arbitrum | n/a | 15 deployments: optimism `0x16c2d3...2e88df`; optimism `0x4229dd...67e528`; optimism `0x66e75b...a22cb2`; optimism `0x6867ff...af3c2f`; optimism `0x922bf6...9f7d24`; optimism `0xbaec9e...3468be`; optimism `0xf18726...15f56f`; arbitrum [`0x063ce1...c380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); arbitrum `0x246860...564fed`; arbitrum `0x34f869...743109`; arbitrum `0x811f69...5886f9`; arbitrum `0xa9d0c0...7025e8`; arbitrum `0xbca7e7...77b315`; arbitrum `0xc8b6d7...5c4706`; arbitrum `0xdaadd2...bda2c8` | ⚠️ Unaudited |
| ExecutionManager | unknown | optimism | n/a | 8 deployments: optimism [`0x052b82...bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/); optimism `0x105677...03bfec`; optimism `0x1b74ac...6ff35e`; optimism `0xf50ed3...2a4f6c`; optimism `0xfd1256...c7e47f`; arbitrum `0x0a1040...c2d381`; arbitrum `0x7a6edd...bd426d`; arbitrum `0xfb9329...163d57` | ⚠️ Unaudited |
| FastSwitchboard | unknown | optimism | n/a | 12 deployments: optimism [`0x09a6e7...2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/); optimism `0x1cab02...67cc26`; optimism `0x60f0cc...4739d1`; optimism `0x835531...a981b3`; optimism `0xa989d2...9a7220`; optimism `0xccd5a9...316c6e`; arbitrum `0x1d3695...5eaa49`; arbitrum `0x2d7660...71c2d4`; arbitrum `0x388b07...7ff45e`; arbitrum `0x6216c9...b984dd`; arbitrum `0xd5e829...b42f2f`; arbitrum `0xfff4a3...e80584` | ⚠️ Unaudited |
| GasPriceOracle | unknown | optimism | n/a | 5 deployments: optimism [`0x09b471...526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/); optimism `0xd9a317...aeedf3`; optimism `0xf84890...3632af`; arbitrum `0xcff802...b9f568`; arbitrum `0xd5a83a...45f5cd` | ⚠️ Unaudited |
| Hasher | unknown | arbitrum | n/a | 15 deployments: optimism `0x3e89c0...580dc5`; optimism `0x4f04f8...220d00`; optimism `0x64b314...50d957`; optimism `0x80b516...c729f8`; optimism `0x8ac0a7...b6724b`; optimism `0xae7ab9...0ee139`; optimism `0xb11c04...e0c8af`; optimism `0xdd975f...4ae3c4`; optimism `0xdf4ff0...55bab5`; arbitrum [`0x0266a4...9929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/); arbitrum `0x5af497...b3e325`; arbitrum `0xac4019...c97808`; arbitrum `0xcda819...004b4e`; arbitrum `0xe59562...3a9a5e`; arbitrum `0xebc6fc...782781` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x71ac62...a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/); ethereum `0x9fa287...1c88a7` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x11dd2d...4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/) | ⚠️ Unaudited |
| L1DepositHelper | periphery | ethereum | n/a | [`0xc3bb52...7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x2e7d7b...d676f0`](./contracts/ethereum-1/0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66cee1...30a748`](./contracts/ethereum-1/0x66cee10ba575e889bb3c1f60996164c07c30a748/); ethereum `0x93314c...d66630` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x69ce76...155821`](./contracts/ethereum-1/0x69ce7652f951f275cce848eb661efc9f3f155821/); ethereum `0xe7935c...30c639` | ⚠️ Unaudited |
| L1SocketDepositHelper | periphery | base | n/a | [`0x6ea58e...744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x4082c9...59c574`](./contracts/ethereum-1/0x4082c9647c098a6493fb499eae63b5ce3259c574/) | ⚠️ Unaudited |
| L1SwapVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x426d1f...aecbe6`](./contracts/ethereum-1/0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6/); ethereum `0x60453f...74aefc` | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e5209...2f5b14`](./contracts/ethereum-1/0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14/); ethereum `0x9f82b5...2eb376` | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x94c0d6...08e4f1`](./contracts/ethereum-1/0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1/); ethereum `0xf482aa...fba567` | ⚠️ Unaudited |
| LimitExecutionHook | unknown | optimism | n/a | 16 deployments: optimism [`0x063ce1...c380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/); optimism `0x26fde5...4c9a5f`; optimism `0x40a1b2...abc1a3`; optimism `0x5f6f4b...2caed4`; optimism `0x765222...3fbb80`; optimism `0xaf2036...ea2509`; optimism `0xe19dd1...53d600`; optimism `0xf4eea9...8cd014`; arbitrum `0x3e3e6f...13f807`; arbitrum `0x65f258...9b8132`; arbitrum `0x716206...c210d4`; arbitrum `0x854281...8d3d2a`; arbitrum `0xb39f91...468c98`; arbitrum `0xd34308...fb9d3f`; arbitrum `0xed24b1...407e66`; arbitrum `0xf570f6...84cdd8` | ⚠️ Unaudited |
| LimitHook | unknown | base | n/a | 3 deployments: optimism `0x6f9234...4cf8f7`; base [`0x1a0dfd...9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/); arbitrum `0xe4593e...6fa37a` | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ea2f2...07cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/); ethereum `0x7902e4...8cc1bf` | ⚠️ Unaudited |
| MerkleDistributorAdjustable | unknown | ethereum | n/a | 5 deployments: ethereum [`0x04b47c...9ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/); ethereum `0x5c648b...184d76`; ethereum `0x778046...f21591`; ethereum `0x80c86b...5de404`; ethereum `0x9946a1...b76769` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f197c...7d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/); ethereum `0xd4b812...2a2483` | ⚠️ Unaudited |
| MerkleDistributorWithStaking | unknown | ethereum | n/a | [`0xce90d5...3223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | ⚠️ Unaudited |
| MintableToken | unknown | optimism | n/a | [`0xeb4b08...21d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | ⚠️ Unaudited |
| OpenExecutionManager | unknown | optimism | n/a | 4 deployments: optimism [`0x4aa89e...d297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/); optimism `0xb44258...34a57c`; arbitrum `0xb864fb...10db22`; arbitrum `0xca1618...45c31e` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d46c8...a8e246`](./contracts/ethereum-1/0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246/); ethereum `0xbfec86...dd5af4` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e549c...9ce51c`](./contracts/ethereum-1/0x3e549caa61f21086eb0a92830b905d2d859ce51c/); ethereum `0x4e80ed...dfe02d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x5dbba1...81cc6a`](./contracts/ethereum-1/0x5dbba17eb2458a05abba79e650df607f0681cc6a/) | ⚠️ Unaudited |
| OptimismSwitchboard | unknown | optimism | n/a | 5 deployments: optimism [`0x717fac...bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/); optimism `0x7e6da8...3bfe4d`; optimism `0x9cf744...aa716c`; optimism `0xadbc2c...9dd66a`; optimism `0xb6c103...fcf8c2` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | arbitrum | n/a | 10 deployments: optimism `0x665288...9288a7`; optimism `0x929625...823d90`; optimism `0x9ba3ff...c7d922`; optimism `0xb113d7...f1e3f4`; optimism `0xcb473d...335ccf`; arbitrum [`0x1812ff...9b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/); arbitrum `0x213be4...8d1413`; arbitrum `0x450d35...7ae36c`; arbitrum `0x626674...1af17c`; arbitrum `0xfe5de8...a6346d` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | ethereum | n/a | [`0x6221b5...b29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x032b35...f843ca`](./contracts/ethereum-1/0x032b3569dc905fb2f8583004c329c4f59df843ca/); ethereum `0x72cc6e...ac3ab4` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1ace6b...f41011`](./contracts/ethereum-1/0x1ace6b2b50816a058456141c9421de1282f41011/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x2dd0b6...be58c6`](./contracts/ethereum-1/0x2dd0b693d02eeb6c63239175bdfeb27ad3be58c6/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37ca01...d0c1c5`](./contracts/ethereum-1/0x37ca018b135cdb8dc7edde960143a98b6dd0c1c5/); ethereum `0x6bba90...3ce841` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x399bd2...be8bb3`](./contracts/ethereum-1/0x399bd25d13ac8954222b8c201542f84221be8bb3/); ethereum `0x8daaf9...b3bcc9` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x495d44...f0500f`](./contracts/ethereum-1/0x495d4470828a78b2eb532c55414237b110f0500f/); ethereum `0xc7b404...543a3e` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9a89fe...551735`](./contracts/ethereum-1/0x9a89fe274a87ced1db78a76c03a2d8e86b551735/); ethereum `0x9e0b8c...315553` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x27ff92...7c5019`](./contracts/ethereum-1/0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019/); ethereum `0x9bd8c9...890f09`; ethereum `0xb145c0...dd0f39` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e6f3f...c281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/); ethereum `0x63cb35...15b3a9` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fb118...ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/); ethereum `0xf10348...fe6f8b` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1c2ee9...6352c2`](./contracts/ethereum-1/0x1c2ee9711592638f7fa3f47181c7eae7606352c2/); ethereum `0xa1457f...b7486f`; ethereum `0xeef3d6...be196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e8026...928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/); ethereum `0x8e28f2...c08d6a` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 9 deployments: ethereum [`0x01f1d8...9365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/); ethereum `0x1bc5ee...1dcffa`; ethereum `0x21438c...af6c72`; ethereum `0x51a5a8...041f8b`; ethereum `0x5d4c0a...ea1b51`; ethereum `0x8a0eff...c36ca5`; ethereum `0xbcf89a...8147ad`; ethereum `0xeb74e0...37c733`; ethereum `0xef3c69...ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20abe9...cfabcc`](./contracts/ethereum-1/0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc/); ethereum `0xc5f2cf...a55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x24ab80...7e24c6`](./contracts/ethereum-1/0x24ab80935f568e8032253bef349ca3b6097e24c6/); ethereum `0x8756ea...05f1f7`; ethereum `0xfc0d9e...016502` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | [`0x53773e...b78e8c`](./contracts/ethereum-1/0x53773e034d9784153471813dacaff53dbbb78e8c/) | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 12 deployments: ethereum [`0x09bd08...efb030`](./contracts/ethereum-1/0x09bd08ce34237df3b935080281e91b2766efb030/); ethereum `0x0ff7c2...141a5a`; ethereum `0x1939f8...a08682`; ethereum `0x23b42c...f1ff87`; ethereum `0x2a0b88...e8b5b5`; ethereum `0x34107a...2eb167`; ethereum `0x43cfea...ccd423`; ethereum `0x65112b...227ae0`; ethereum `0x94c842...98431a`; ethereum `0xae517e...78c7f0`; ethereum `0xbeba74...49e4ad`; ethereum `0xd3fe14...68592a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ebea9...1a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/); ethereum `0xa0db6c...52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ea9e7...eb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/); ethereum `0x6779da...0f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ec571...8031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/); ethereum `0x9d1d31...d5014a`; ethereum `0xcfcf97...1fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0a54c...278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/); ethereum `0xc4d100...f027c5` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x247a93...0e0690`](./contracts/ethereum-1/0x247a937b3294b2c06bbae44cd9cabbb9620e0690/); ethereum `0xe63151...abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3fb82f...0f1f44`](./contracts/ethereum-1/0x3fb82fef405b14c6569dd07f0a673df79f0f1f44/); ethereum `0x6fc853...453a8e`; ethereum `0x74e524...fbd421` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | ethereum | n/a | [`0xe04e8a...89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | ⚠️ Unaudited |
| SignatureVerifier | unknown | arbitrum | n/a | 17 deployments: optimism `0x80e513...86ca5c`; optimism `0x8b57c3...43ff00`; optimism `0x976973...486fa7`; optimism `0xaa2f2b...450f35`; optimism `0xb56843...00c12b`; optimism `0xbb1f20...5a3925`; optimism `0xc94bf9...1e5d15`; optimism `0xde007c...76757f`; optimism `0xf096fd...d219f0`; arbitrum [`0x053407...5e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/); arbitrum `0x2b59d4...f5079a`; arbitrum `0x378a89...854b29`; arbitrum `0x4d6b52...eab169`; arbitrum `0x9879a2...aa74b8`; arbitrum `0xe63347...956d4c`; arbitrum `0xe88f6b...a19537`; arbitrum `0xeaa15f...e83790` | ⚠️ Unaudited |
| SimulatorUtils | unknown | optimism | n/a | [`0xba9c93...da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | ⚠️ Unaudited |
| Socket | unknown | arbitrum | n/a | 10 deployments: optimism `0x1eb392...2d8166`; optimism `0x234462...3ad4b6`; optimism `0x301bd2...a1c0a4`; optimism `0x91ce46...2428f7`; optimism `0xd10cb2...6bf573`; arbitrum [`0x16e4a6...0a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/); arbitrum `0x37cc67...55f6ba`; arbitrum `0x9e3e47...13a9d1`; arbitrum `0xbc080a...8306a7`; arbitrum `0xfb6daf...634066` | ⚠️ Unaudited |
| SocketBatcher | unknown | arbitrum | n/a | 12 deployments: optimism `0x208cb8...c54408`; optimism `0x2b351e...86fb7b`; optimism `0x2c76df...920b7e`; optimism `0x321767...707b59`; optimism `0x5afa7d...5d2d9b`; optimism `0xffb098...0c8fce`; arbitrum [`0x107e18...d468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/); arbitrum `0x1808ca...c0113b`; arbitrum `0x2ea720...1f4b8e`; arbitrum `0x96fef4...ae3b0b`; arbitrum `0xd7b2e3...0255f7`; arbitrum `0xfbb3a5...7a8bd7` | ⚠️ Unaudited |
| STETHDepositHelper | unknown | ethereum | n/a | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | optimism | n/a | [`0xbd69f4...b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xf761cc...0cd9ca`](./contracts/ethereum-1/0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca/) | ⚠️ Unaudited |
| TransmitManager | unknown | optimism | n/a | 10 deployments: optimism [`0x0a523d...ae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/); optimism `0x48261a...b752c1`; optimism `0x6fedde...68dce5`; optimism `0x7398da...cb1470`; optimism `0xd3f391...66fa3e`; arbitrum `0x43a9b2...9755ca`; arbitrum `0x63c10c...2a0416`; arbitrum `0x6fc8d9...f8b4b6`; arbitrum `0xbf0572...cbb5d4`; arbitrum `0xd648a4...0d7f2e` | ⚠️ Unaudited |
| VaultLifecycle | unknown | ethereum | n/a | 14 deployments: ethereum [`0x14cc2c...865511`](./contracts/ethereum-1/0x14cc2c0b624e437202b53e533147982842865511/); ethereum `0x1c3774...bd41f8`; ethereum `0x25af99...f67b40`; ethereum `0x35a3e0...69ecc0`; ethereum `0x4994c9...7d10ee`; ethereum `0x58228f...056d82`; ethereum `0x5ee5db...5caa53`; ethereum `0x93c48f...f1f522`; ethereum `0x9c24f8...cb9ccf`; ethereum `0xb917ee...07dde3`; ethereum `0xc1e51b...8181df`; ethereum `0xda6387...6be115`; ethereum `0xe248f6...57d6c7`; ethereum `0xe64524...994f36` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21f0ff...4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/); ethereum `0x2c5dd8...089bf1`; ethereum `0x5cbb58...18f3db`; ethereum `0x84ff09...c08928`; ethereum `0x92c47e...f42836`; ethereum `0xb48c17...ad38ee`; ethereum `0xcf7dd5...8c8932` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x63b971...83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/); ethereum `0xc06944...169377`; ethereum `0xc7654f...9a5e5e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiSigWrapper | governance | base | n/a | 11 deployments: base [`0x0c98cb...3b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/); base `0x1fc216...b40633`; base `0x2db2d1...c15522`; base `0x4bd265...046306`; base `0x65df4c...a623b5`; base `0x6ec8cc...db5827`; base `0x7f3163...40f8eb`; base `0xa3a855...fd0a6b`; base `0xb6f2ac...70c37d`; base `0xc3213d...66b1ec`; base `0xc47d1c...2ee3fe` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (176)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d79f7...c81889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336045...537fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51a287...1b1844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x552ffb...436394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67fccb...af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea8fa...2f034d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb22a...7b4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5f729...13b0a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8d727...40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9305e...9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb7f3...44d4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd8c31...ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2203...990503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd602e0...8f5397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a528...181563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf08d6a...6d19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d30e...af7f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf513bd...0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x04196c...83c2a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x045c90...71450f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x064509...37efa1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a1040...c2d381` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0a3451...e58f87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0ccfb6...8979b1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0d50d4...96ace1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18b237...a72a98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18e365...764ace` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1dd545...ef12bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x20ebdc...d32540` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x23d5c2...4386cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x25aaef...c76262` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x29fd3a...bae6bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2dff1c...b1f4cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x326bbb...15b77f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x331d17...dbf46f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3379f1...507a7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x37cc67...55f6ba` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3c7516...7f69d4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x404e93...adf43f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x450aa5...c01ede` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4793c3...3076b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x48b4f0...9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x49fd46...c8dc00` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b4d63...e418ae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4bf6e4...848375` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4c0623...e1f746` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4fe1ad...d42abd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5035d9...7032d6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x533398...0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5a21d4...0893f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c1ea2...b4c44f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5dfdff...92ca1c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x66a127...fb3107` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x66ad32...97ce18` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6712ce...904498` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x749f09...a98e5a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ab75a...1f4d7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7b2f65...d11161` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86a0a4...06ce6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x880997...894106` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x898aef...78d7f2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e9e34...64fe9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x90b4d9...81e8cc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x91f48c...88a4d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9879a2...aa74b8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9a9567...b45115` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9e51cd...259a16` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa3f9a7...a31f68` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xad8cde...7fc81a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb2dc05...cc364d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb48b74...b6787f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb5c4e1...3a7b7e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb61701...2ad38f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb7a6db...f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbce4cd...67136a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbd57fa...8c88dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbec174...0e05cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbf47f1...38c8b2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc457f7...f56747` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc972ab...9d5256` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcda819...004b4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd23678...2a05c8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd40213...09d024` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd5087c...228df5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd550ce...d8f77c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd648a4...0d7f2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd7bbe2...d13047` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xde2994...f3cd33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdfd12c...194cd0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe8bfe5...a6c70c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe8da13...9375a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xece91f...f9150b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf004c4...99eabd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf19516...b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf68eaa...f8570b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb0eab...34781c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xffcbd4...23b4c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10c700...091221` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11bf39...692cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x188b69...061f11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1de492...cf1135` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3304c4...8aa9d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38d1ff...f83ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43f3dd...68d063` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2bab...1bda26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dc25d...947ff5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52b143...f182ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57ca48...01262f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a0e01...d4483c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ab138...db9421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x687c51...8ec5ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eae8a...eb7de2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c0d22...719286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ce48d...03ec82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x965749...996bef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0be70...af6f6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab46c3...3ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8ec11...fb2bd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc56972...7040a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f534...b30da9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6a81...e64d60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd134ea...81e840` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2663f...220c86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe5909...816908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01de29...49a0a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11a418...151fb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b74ac...6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ae629...1bdb2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b3a8a...1e0497` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31a7ab...4ab9e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f8f21...c3a26d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49eddb...9416f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bd2a4...5c0594` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cae61...b00753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f04f8...220d00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x530654...d10366` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fc8a6...9b70ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63ef7d...89574b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66dfb9...67599a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69ea64...2c42c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fedde...68dce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x703f88...c3a039` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x717fac...bc2199` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x732f7d...186afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x762d5f...8820d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x769874...f033f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7de493...2d7c9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81b955...92c2c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x858f61...146251` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x921625...d1ff4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b5885...73a76e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ba3ff...c7d922` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaaeb4b...e08c52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad0fa5...7d23b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb49dde...9f8e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbec622...ba6489` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2bd14...bb43e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc40a22...6d72f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccd5a9...316c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd10cb2...6bf573` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4fd62...d0fb34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd95c52...5cf5c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde007c...76757f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdee306...e552ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf5f7d...319cae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe00321...8861cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe11bcf...8d7ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed037a...730341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed4f75...884c7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf454ad...aaa9e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf84890...3632af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc63fa...7a5562` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcebb7...e6ac6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffc2d8...28d147` | ❓ Unverified |

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
| ethereum | [`0x257518...89644b`](./contracts/ethereum-1/0x25751853eab4d0eb3652b5eb6ecb102a2789644b/) | RibbonThetaVaultWithSwap | core_logic | $1,718,109.88 | Verified native implementation with $1,718,109.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc3235...cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | RibbonThetaYearnVault | core_logic | $322,585.91 | Verified native implementation with $322,585.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a616b...28ecc1`](./contracts/ethereum-1/0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e238a...4e6f5e`](./contracts/ethereum-1/0x0e238a03757c7739840a2b3982c5cb85064e6f5e/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665f89...dfeec0`](./contracts/ethereum-1/0x665f891c8939255bd862920671c124e419dfeec0/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3567...9f6d3b`](./contracts/ethereum-1/0x7a35670172d45324d0a8af00c2926af3ee9f6d3b/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f9c5d...3551cd`](./contracts/ethereum-1/0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd/) | AevoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a4715...94a8d0`](./contracts/arbitrum-42161/0x6a4715fc607c9ebda1377563552d45cbd194a8d0/) | ArbitrumL2Switchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6a8be0...bc1e46`](./contracts/optimism-10/0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4611a4...21919c`](./contracts/arbitrum-42161/0x4611a4c47893d57ad2005c9d674f27ddb121919c/) | CommonPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070fea...8bce43`](./contracts/arbitrum-42161/0x070feadf2208303d341d1d2da6aa41395f8bce43/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1c2ec0...0bd6b7`](./contracts/optimism-10/0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x063ce1...c380b6`](./contracts/arbitrum-42161/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | ExecutionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x052b82...bb98ef`](./contracts/optimism-10/0x052b82b3a096a592f3f28d4736c4796445bb98ef/) | ExecutionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09a6e7...2a8b97`](./contracts/optimism-10/0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97/) | FastSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09b471...526b65`](./contracts/optimism-10/0x09b471b83b91bdb1aa361f05770cfceff7526b65/) | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0266a4...9929bc`](./contracts/arbitrum-42161/0x0266a47314472f295fdb5bb36f784093e69929bc/) | Hasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71ac62...a879ed`](./contracts/ethereum-1/0x71ac62da06c75b202491e792b1a6d54dc2a879ed/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dd2d...4e12b0`](./contracts/ethereum-1/0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3bb52...7c4c7f`](./contracts/ethereum-1/0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f/) | L1DepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e7d7b...d676f0`](./contracts/ethereum-1/0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66cee1...30a748`](./contracts/ethereum-1/0x66cee10ba575e889bb3c1f60996164c07c30a748/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69ce76...155821`](./contracts/ethereum-1/0x69ce7652f951f275cce848eb661efc9f3f155821/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ea58e...744e56`](./contracts/base-8453/0x6ea58e68d37e523a80a461672e2d32e4ab744e56/) | L1SocketDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4082c9...59c574`](./contracts/ethereum-1/0x4082c9647c098a6493fb499eae63b5ce3259c574/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x426d1f...aecbe6`](./contracts/ethereum-1/0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6/) | L1SwapVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e5209...2f5b14`](./contracts/ethereum-1/0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c0d6...08e4f1`](./contracts/ethereum-1/0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x063ce1...c380b6`](./contracts/optimism-10/0x063ce19e9d682f38be70644a5fddae3a2ec380b6/) | LimitExecutionHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a0dfd...9e8c25`](./contracts/base-8453/0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25/) | LimitHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ea2f2...07cf90`](./contracts/ethereum-1/0x1ea2f2367e091525c86f00737bba0aa3b107cf90/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b47c...9ceeed`](./contracts/ethereum-1/0x04b47c3b679c588a23e905b8579e4cc9f19ceeed/) | MerkleDistributorAdjustable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f197c...7d9381`](./contracts/ethereum-1/0x1f197ccb582179ef4a408f94c78137eeb77d9381/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce90d5...3223e6`](./contracts/ethereum-1/0xce90d5f1f313e25a3e32da3da97a041ee93223e6/) | MerkleDistributorWithStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xeb4b08...21d1c8`](./contracts/optimism-10/0xeb4b088441975a903fcda584aef0e985c721d1c8/) | MintableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c98cb...3b6540`](./contracts/base-8453/0x0c98cb76b36a5b5f723cb11b3a031350583b6540/) | MultiSigWrapper | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4aa89e...d297db`](./contracts/optimism-10/0x4aa89efdd4050dd40c1a3863294b6b148fd297db/) | OpenExecutionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d46c8...a8e246`](./contracts/ethereum-1/0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e549c...9ce51c`](./contracts/ethereum-1/0x3e549caa61f21086eb0a92830b905d2d859ce51c/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dbba1...81cc6a`](./contracts/ethereum-1/0x5dbba17eb2458a05abba79e650df607f0681cc6a/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x717fac...bc2199`](./contracts/optimism-10/0x717facaa298fa151c6ffad47b5e9c51c41bc2199/) | OptimismSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1812ff...9b16a8`](./contracts/arbitrum-42161/0x1812ff6bd726934f18159164e2927b34949b16a8/) | OptimisticSwitchboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6221b5...b29eac`](./contracts/ethereum-1/0x6221b5e23b137a405f8df9aaa717f1629cb29eac/) | PercentStrikeSelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6f3f...c281f7`](./contracts/ethereum-1/0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fb118...ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/) | RibbonDeltaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2ee9...6352c2`](./contracts/ethereum-1/0x1c2ee9711592638f7fa3f47181c7eae7606352c2/) | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e8026...928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/) | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f1d8...9365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20abe9...cfabcc`](./contracts/ethereum-1/0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ab80...7e24c6`](./contracts/ethereum-1/0x24ab80935f568e8032253bef349ca3b6097e24c6/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53773e...b78e8c`](./contracts/ethereum-1/0x53773e034d9784153471813dacaff53dbbb78e8c/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09bd08...efb030`](./contracts/ethereum-1/0x09bd08ce34237df3b935080281e91b2766efb030/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ebea9...1a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ea9e7...eb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ec571...8031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a54c...278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/) | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x247a93...0e0690`](./contracts/ethereum-1/0x247a937b3294b2c06bbae44cd9cabbb9620e0690/) | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fb82f...0f1f44`](./contracts/ethereum-1/0x3fb82fef405b14c6569dd07f0a673df79f0f1f44/) | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe04e8a...89cdc3`](./contracts/ethereum-1/0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3/) | RibbonVaultPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x053407...5e62cd`](./contracts/arbitrum-42161/0x053407dfa30267f6332f3c94a9e9f704a55e62cd/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xba9c93...da4f97`](./contracts/optimism-10/0xba9c93014648fc64a0beac857b95c0ff22da4f97/) | SimulatorUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16e4a6...0a4ee8`](./contracts/arbitrum-42161/0x16e4a6af6e81c7997fc784c8e621316e480a4ee8/) | Socket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x107e18...d468a8`](./contracts/arbitrum-42161/0x107e182815c5e164e05f0c2cf478ace44fd468a8/) | SocketBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | STETHDepositHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbd69f4...b86056`](./contracts/optimism-10/0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056/) | SwitchboardSimulator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf761cc...0cd9ca`](./contracts/ethereum-1/0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a523d...ae6163`](./contracts/optimism-10/0x0a523d8d8e2ad6f6623b3318a59743546cae6163/) | TransmitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14cc2c...865511`](./contracts/ethereum-1/0x14cc2c0b624e437202b53e533147982842865511/) | VaultLifecycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f0ff...4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/) | VaultLifecycleSTETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63b971...83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/) | VaultLifecycleWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
