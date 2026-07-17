# Agentic Audit Brief: Yield Protocol

## Project Overview

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://www.yo.xyz/](https://www.yo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.640Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 48 unique implementations (183 raw deployments)
- DeFi Llama TVL: $203,353.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 228 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 30 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 40 common project-authored base contract(s) (mintcontroller, controller, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 243; live-surface contracts included: 181 (173 live, 8 unknown).
- Excluded by liveness: 62 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/38 (13.2%)
- Deployed-live implementations: 40 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/40
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 48
- Raw deployments: 183
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 13.2% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 5 | 12.5% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FYToken | unknown | arbitrum | n/a | 30 deployments: ethereum `0x53c2a1ba37ff3cdaccb3ea030db3de39358e5593`; ethereum `0xb38ba395d15392796b51057490bbc790871dd6a0`; ethereum `0xfcb9b8c5160cf2999f9879d8230dced469e72eeb`; arbitrum [`0x035072cb2912daab7b578f468bd6f0d32a269e32`](./contracts/arbitrum-42161/0x035072cb2912daab7b578f468bd6f0d32a269e32/); arbitrum `0x0e7727f4ee78d60f1d3aa30744b3ab6610f04170`; arbitrum `0x2e8f62e3620497dba8a2d7a18ea8212215805f22`; arbitrum `0x3b560caa508ca8e58f07263f58ee2353044c0d5c`; arbitrum `0x4f9b5e639447456ddc784bc441f5a6fd7ce80729`; arbitrum `0x523803c57a497c3ad0e850766c8276d4864edea5`; arbitrum `0x5655a973a49e1f9c1408bb9a617fd0dbd0352464`; arbitrum `0x5bb78e530d9365aef75664c5093e40b0001f7ccd`; arbitrum `0x5ed71c03f8d7b86ac7943a2e3cb41d0ffe01bdca`; arbitrum `0x60a6a7fabe11ff36cbe917a17666848f0ff3a60a`; arbitrum `0x68e9e0d89f96f40a98d3f42dc22430abbf662a1a`; arbitrum `0x69f402e82d549674cfaffb7d1227164596e37618`; arbitrum `0x6ef79df8ebd6e7ce4f24773a59fd3f54d79857f3`; arbitrum `0x892fa63af42585bbe8a578278c95705391ca15e1`; arbitrum `0x8c41fc42e8ebf66ea5f3190346c2d5b94a80480f`; arbitrum `0x9b19889794a30056a1e5be118ee0a6647b184c5f`; arbitrum `0x9ca40b35c3a8a717d4d54fac0905bbf889ddb281`; arbitrum `0xa3ecaf5c5e98c1a500f4596576dad3328a701c73`; arbitrum `0xa9bc738c017771a4cf01730f215e6e2b34dca9b8`; arbitrum `0xc24da474a71c44d2b644089020ba255908ada6e1`; arbitrum `0xc4b24ec9fb2dc32b3a545e0d873d2598031b80c5`; arbitrum `0xca9d3b5de1550c79155b1311ef54ebc73954d470`; arbitrum `0xcbb7eba13f9e1d97b2138f588f5ca2f5167f06cc`; arbitrum `0xd947360575e6f01ce7a210c12f2ee37f5ab12d11`; arbitrum `0xe1e878364efc19712a2833c5c60b68d215f9a4ab`; arbitrum `0xec1b42ec9a1650238ace42fd57bc719ccc87851c`; arbitrum `0xee508c827a8990c04798b242fa801c5351012b23` | ✅ Audited |
| Ladle | unknown | arbitrum | n/a | [`0x16e25cf364cecc305590128335b8f327975d0560`](./contracts/arbitrum-42161/0x16e25cf364cecc305590128335b8f327975d0560/) | ✅ Audited |
| Pool | unknown | arbitrum | n/a | 15 deployments: ethereum `0x2e4b70d0f020e62885e82bf75bc123e1aa8c79ca`; ethereum `0x3771c99c087a81df4633b50d8b149afaa83e3c9e`; ethereum `0x407353d527053f3a6140aaa7819b93af03114227`; ethereum `0x5d14ab14adb3a3d9769a67a1d09634634bde4c9b`; ethereum `0x6bac09a67ed1e1f42c29563847f77c28ec3a04fc`; ethereum `0x80142add3a597b1ed1de392a56b2cef3d8302797`; ethereum `0xef82611c6120185d3bf6e020d1993b49471e7da0`; ethereum `0xf5fd5a9db9cccc6dc9f5ef1be3a859c39983577c`; arbitrum [`0x0fa29eeb169cde6c779326d7b16c54529eca1dd5`](./contracts/arbitrum-42161/0x0fa29eeb169cde6c779326d7b16c54529eca1dd5/); arbitrum `0x13ab946c6a9645edff2a33880e0fc37f67122170`; arbitrum `0x6651f8e1ff6863eb366a319f9a94191346d0e323`; arbitrum `0x7fc2c417021d46a4790463030fb01a948d54fc04`; arbitrum `0x8c8a448fd8d3e44224d97146b25f4dec425af309`; arbitrum `0xf76906aa78ecd4fcfb8a7923fb40fa42c07f20d6`; arbitrum `0xfcb9b8c5160cf2999f9879d8230dced469e72eeb` | ✅ Audited |
| Strategy | unknown | arbitrum | n/a | 33 deployments: ethereum `0x1144e14e9b0aa9e181342c7e6e0a9badb4ced295`; ethereum `0x7acfe277ded15caba6a8da2972b1eb93fe1e2ccd`; ethereum `0x8e8d6ab093905c400d583efd37fbeeb1ee1c0c39`; ethereum `0x93dee161a396af75c7458a65687895299bfeb437`; ethereum `0xcda62a19da5ee9dc6e3110cf211b483046b0f7d2`; ethereum `0xfbc322415cbc532b54749e31979a803009516b5d`; arbitrum [`0x067fb37dd51a4ef6fea0e006caf689db6c705812`](./contracts/arbitrum-42161/0x067fb37dd51a4ef6fea0e006caf689db6c705812/); arbitrum `0x0a4b2e37bfef8e54dea997a87749a403353134e8`; arbitrum `0x2c918c4db3843f715556c65646f9e4a04c4bfba6`; arbitrum `0x3353e1e2976dbbc191a739871faa8e6e9d2622c7`; arbitrum `0x33e6b154efc7021dd55464c4e11a6afe1f3d0635`; arbitrum `0x3b4ffd93ce5fcf97e61aa8275ec241c76cc01a47`; arbitrum `0x4276beaa49de905eed06fcdc0ad438a19d3861dd`; arbitrum `0x4771522accac6fecf89a6365ceaf05667ed95886`; arbitrum `0x5582b8398fb586f1b79edd1a6e83f1c5aa558955`; arbitrum `0x5aeb4efaaa0d27bd606d618bd74fe883062eafd0`; arbitrum `0x7012af43f8a3c1141ee4e955cc568ad2af59c3fa`; arbitrum `0x861509a3fa7d87faa0154aae2cb6c1f92639339a`; arbitrum `0x8b814ad71e611e7a38ee64ec16ce421a477956e1`; arbitrum `0x92a5b31310a3ed4546e0541197a32101fcfbd5c8`; arbitrum `0x9847d09cb0eea77f7875a6904bfa22ae06b34cce`; arbitrum `0xa6624d8cf4a1ba950d380d1e38a2d5261b711145`; arbitrum `0xa9d104c4e020087944332632a8c5b451885fba4a`; arbitrum `0xad1983745d6c739537feab5bed45795f47a940b3`; arbitrum `0xbd7a1069f56b1d4100202f72119e5cffb4bdfe38`; arbitrum `0xc3a965beaf6e16ac98341232be2be016c0c61974`; arbitrum `0xc7d2e96ca94e1870605c286268313785886d2257`; arbitrum `0xceaf1cbf0cfdd1f7ea4c1c850c0bc032a60431db`; arbitrum `0xd5b43b2550751d372025d048553352ac60f27151`; arbitrum `0xdc705fb403dbb93da1d28388bc1dc84274593c11`; arbitrum `0xe7214af14bd70f6aac9c16b0c1ec9ee1ccc7efda`; arbitrum `0xe779cd75e6c574d83d3fd6c92f3cbe31dd32b1e1`; arbitrum `0xfe2aba5ba890af0ee8b6f2d488b1f85c9e7c5643` | ✅ Audited |
| Timelock | governance | arbitrum | n/a | [`0xd0a22827aed2ef5198ebec0093ea33a4cd641b6c`](./contracts/arbitrum-42161/0xd0a22827aed2ef5198ebec0093ea33a4cd641b6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | 2 deployments: ethereum [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | 2 deployments: base [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FYTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c`](./contracts/ethereum-1/0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c/); ethereum `0xf374ab6b299945ff81c1523008d0d407380a396f` | ⚠️ Unaudited |
| Ladle | unknown | ethereum | n/a | [`0x6cb18ff2a33e981d1e38a663ca056c0a5265066a`](./contracts/ethereum-1/0x6cb18ff2a33e981d1e38a663ca056c0a5265066a/) | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x486635abfe14b8b3e6abb277747c4042405396ed`](./contracts/ethereum-1/0x486635abfe14b8b3e6abb277747c4042405396ed/); ethereum `0x9cc97690639c0938e5f130e01b000ea42daaddfa`; ethereum `0xe4d5a6128308b4d5c5d1a107be136ab75c9944be` | ⚠️ Unaudited |
| PoolNonTv | unknown | arbitrum | n/a | 38 deployments: ethereum `0xe2f6f40192f3e4568a62577e0541ac823b6f0d9e`; arbitrum [`0x02dbfaca22df7e86897adf65eb74188d79dabea6`](./contracts/arbitrum-42161/0x02dbfaca22df7e86897adf65eb74188d79dabea6/); arbitrum `0x1cd29a42882c163bad7a7c0124c3195a0584c518`; arbitrum `0x1dc344513b290f217074b86188c13aad9c9aa571`; arbitrum `0x1eec5ed8e01e0232f5ab2d70bb00231250ab2e7a`; arbitrum `0x2769abe33010c710e24ea6af8a2683c630bbd7d0`; arbitrum `0x29e0de79ef2ea2cf8e6c95c9fae8d4c3774df3f7`; arbitrum `0x2e0c2b8e1ba8d2d743972fff85a6577704f9ece4`; arbitrum `0x32cbdcfa3c11497277f6a384c2bfa9b34cb561da`; arbitrum `0x3e0a639c4a6d4d39a0deae07c228ff080de55eee`; arbitrum `0x3ea4618ce652eab330f00935fd075f5cb614e689`; arbitrum `0x530648558a27fe1d1bfc7356f67a34f4a7f06b6d`; arbitrum `0x536edc2a3db3bfe558cae74cedccd30f07f7121b`; arbitrum `0x53b0c1b8feb4decdcc068367119110e20c3bcbd3`; arbitrum `0x54d47f765fa247afee226fdf919392cdac6cbb2e`; arbitrum `0x58086b4950a6de8a0cc92020f83d979b6f1c9861`; arbitrum `0x5f55b2311180d3bfe5bc1125b2446d371bcdd6fa`; arbitrum `0x65142d171151d0a6f28385c45ce3fd642c9d155a`; arbitrum `0x7388f277441b3e1f3388f0464244e469fea30e41`; arbitrum `0x7f0dd461d77f84cdd3ced46f9d550e35f1969a24`; arbitrum `0x83e99a843607cfffc97a3aca15422ac672a463ef`; arbitrum `0x9a364e874258d6b76091d928ce69512cd905ee68`; arbitrum `0x9f873e17a629718b71e8e8f4e40f795883841efb`; arbitrum `0xa73ba15b76a165a4db56ef71b46d695a751334b6`; arbitrum `0xa8b291eef77ccc5f39db9c2d71d6a16b0edc7f15`; arbitrum `0xa98f3211997fdb072b6a8e2c2a26c34bc447f873`; arbitrum `0xb268e2c85861b74ec75fe728ae40d9a2308ad9bb`; arbitrum `0xb71db5f70fe5af728db8c05930d48553e5a0eb98`; arbitrum `0xbc62d88182ffa86918d0129f5bd35dea8df9213a`; arbitrum `0xbfcee2057bda64152becb8015a171967bfe5d8f9`; arbitrum `0xc6078e090641cc32b05a7f3f102f272a4ee19867`; arbitrum `0xcf275fdd705b321789cd046694cebbf678c45fa3`; arbitrum `0xddeb62072c1ed94bf1b1018f33abaa432a974ca3`; arbitrum `0xdf19b3f238d71198cd0017dfa29b87a45506a556`; arbitrum `0xe888e0403e3e992fdbb473650547428e90f9ddfc`; arbitrum `0xf0ba5cf116321a89b35b2d146ae5b861bd9c23d3`; arbitrum `0xf6c1bd232b1d6de368de2bbed096d821f0596c28`; arbitrum `0xf7f6eb1b097f60673e65347c83d83cb4ade82a0b` | ⚠️ Unaudited |
| PoolView | unknown | arbitrum | n/a | 2 deployments: ethereum `0xce4bc6315555411ca162350a5adff3fac2afa952`; arbitrum [`0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6`](./contracts/arbitrum-42161/0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67b6f699f1c8040414032a3c2c88a54db144fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e5260ac975b475af8bf818c14deee7fefd5927` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39bb9cbe0221d769e30bd08d185842065bce1706`](./contracts/ethereum-1/0x39bb9cbe0221d769e30bd08d185842065bce1706/); ethereum `0xc484f3a773bb82ca6ba8ed0bcbabc333d3577703`; arbitrum `0xbd6bee8d3b9d1ee6b8105bed11a61fdcae4bff8b` | ⚠️ Unaudited |
| StrategyRescue | unknown | ethereum | n/a | [`0x0702290d4da74a2004c7e77f66c4bbd91fca62bb`](./contracts/ethereum-1/0x0702290d4da74a2004c7e77f66c4bbd91fca62bb/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ⚠️ Unaudited |
| Unwind | unknown | arbitrum | n/a | [`0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6`](./contracts/arbitrum-42161/0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`; base [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| YieldMath | unknown | arbitrum | n/a | 3 deployments: ethereum `0x856ddd1a74b6e620d043efd6f74d81b8bf34868d`; ethereum `0xf003bd8a847a7ec2a76813495e734bc247ca6851`; arbitrum [`0x511707b1311d6c3319e7a5be6edb12d3777be0da`](./contracts/arbitrum-42161/0x511707b1311d6c3319e7a5be6edb12d3777be0da/) | ⚠️ Unaudited |
| YieldMathExtensions | unknown | arbitrum | n/a | 2 deployments: ethereum `0xea3d459b61ed77447fade80e5a3de617e947aa1e`; arbitrum [`0xc445d7e3cdc96840439560675ca9023204ea9acd`](./contracts/arbitrum-42161/0xc445d7e3cdc96840439560675ca9023204ea9acd/) | ⚠️ Unaudited |
| YoApprovalRegistry | registry | ethereum | n/a | [`0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021`](./contracts/ethereum-1/0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021/) | ⚠️ Unaudited |
| YoChainlinkOracle | operational_periphery | ethereum | n/a | [`0x2800fc940a9b3bcb2cde3c70797b21296becbf07`](./contracts/ethereum-1/0x2800fc940a9b3bcb2cde3c70797b21296becbf07/) | ⚠️ Unaudited |
| YoERC4626Adapter | adapter | ethereum | n/a | [`0x206ff3f58f57d00c48af6010de6dc26f913efd64`](./contracts/ethereum-1/0x206ff3f58f57d00c48af6010de6dc26f913efd64/) | ⚠️ Unaudited |
| YoERC4626VaultRegistry | registry | ethereum | n/a | [`0x7bad596c26e175384bd9985cb97c6c3f7e158b6f`](./contracts/ethereum-1/0x7bad596c26e175384bd9985cb97c6c3f7e158b6f/) | ⚠️ Unaudited |
| YoGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf`](./contracts/ethereum-1/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/); ethereum `0xf1eee0957267b1a474323ff9cff7719e964969fa` | ⚠️ Unaudited |
| YoGateway | unknown | ethereum | n/a | [`0xecd62a8bbd3503710765a53218c480127b3c816e`](./contracts/ethereum-1/0xecd62a8bbd3503710765a53218c480127b3c816e/) | ⚠️ Unaudited |
| YoIPORAdapter | adapter | ethereum | n/a | [`0x4409446b49e24861697d566e5c6d68c0d8f3c50f`](./contracts/ethereum-1/0x4409446b49e24861697d566e5c6d68c0d8f3c50f/) | ⚠️ Unaudited |
| YoLidoAdapter | adapter | ethereum | n/a | [`0xf837334c5c48f16a8a73affb09859bb7fdb467e0`](./contracts/ethereum-1/0xf837334c5c48f16a8a73affb09859bb7fdb467e0/) | ⚠️ Unaudited |
| YoMorphoAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x93a3a3325de6ab429523d144b41a032e7d7456ab`](./contracts/ethereum-1/0x93a3a3325de6ab429523d144b41a032e7d7456ab/); hyperliquid `0x946fd049c47beff53a32588c67df6a5a16b805f0` | ⚠️ Unaudited |
| YoMorphoMarketRegistry | registry | ethereum | n/a | [`0xcb9737bdd076251744704cc37ce961e8417fdd7f`](./contracts/ethereum-1/0xcb9737bdd076251744704cc37ce961e8417fdd7f/) | ⚠️ Unaudited |
| YoOracle | operational_periphery | ethereum | n/a | [`0x6e879d0ccc85085a709ebf5539224f53d0d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ⚠️ Unaudited |
| YoRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`](./contracts/ethereum-1/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/); ethereum `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | ⚠️ Unaudited |
| YoSwapAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x59bad3e445e5c2d808c3e470b99386687da03f57`](./contracts/ethereum-1/0x59bad3e445e5c2d808c3e470b99386687da03f57/); base `0xa425d3c9a1c048be1183d8e396406bda813b4826` | ⚠️ Unaudited |
| YoSwapPairRegistry | registry | ethereum | n/a | [`0xcff9d39441eb668c7fffa752ad1ea47930bb8a76`](./contracts/ethereum-1/0xcff9d39441eb668c7fffa752ad1ea47930bb8a76/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; ethereum `0x50c749ae210d3977adc824ae11f3c7fd10c871e9`; ethereum `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1`; ethereum `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | base | n/a | 3 deployments: base [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; base `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3682fb75301da93a4a472110efc42318176ea444` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37aea345301b93a14b740a7b7a5b6ed62b02a9f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce96038cd2682525fea3de031be25a54312a9ced` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25c05796bcf7874df2b41b866c86a3e0bd1bbf3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9078e573ec536c4066a5e89f715553ed67b13e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5d97bfe6456008b9118bb5568d9379c5d6c8832` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4cb2489a845384277564613a0906f50dd66e482` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6a63e2166fceeb447bfb1c0f4f398083214b7ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c`](./contracts/ethereum-1/0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c/) | FYTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cb18ff2a33e981d1e38a663ca056c0a5265066a`](./contracts/ethereum-1/0x6cb18ff2a33e981d1e38a663ca056c0a5265066a/) | Ladle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x486635abfe14b8b3e6abb277747c4042405396ed`](./contracts/ethereum-1/0x486635abfe14b8b3e6abb277747c4042405396ed/) | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02dbfaca22df7e86897adf65eb74188d79dabea6`](./contracts/arbitrum-42161/0x02dbfaca22df7e86897adf65eb74188d79dabea6/) | PoolNonTv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6`](./contracts/arbitrum-42161/0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6/) | PoolView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39bb9cbe0221d769e30bd08d185842065bce1706`](./contracts/ethereum-1/0x39bb9cbe0221d769e30bd08d185842065bce1706/) | SafeERC20Namer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0702290d4da74a2004c7e77f66c4bbd91fca62bb`](./contracts/ethereum-1/0x0702290d4da74a2004c7e77f66c4bbd91fca62bb/) | StrategyRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6`](./contracts/arbitrum-42161/0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6/) | Unwind | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x511707b1311d6c3319e7a5be6edb12d3777be0da`](./contracts/arbitrum-42161/0x511707b1311d6c3319e7a5be6edb12d3777be0da/) | YieldMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc445d7e3cdc96840439560675ca9023204ea9acd`](./contracts/arbitrum-42161/0xc445d7e3cdc96840439560675ca9023204ea9acd/) | YieldMathExtensions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021`](./contracts/ethereum-1/0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021/) | YoApprovalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2800fc940a9b3bcb2cde3c70797b21296becbf07`](./contracts/ethereum-1/0x2800fc940a9b3bcb2cde3c70797b21296becbf07/) | YoChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x206ff3f58f57d00c48af6010de6dc26f913efd64`](./contracts/ethereum-1/0x206ff3f58f57d00c48af6010de6dc26f913efd64/) | YoERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bad596c26e175384bd9985cb97c6c3f7e158b6f`](./contracts/ethereum-1/0x7bad596c26e175384bd9985cb97c6c3f7e158b6f/) | YoERC4626VaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf`](./contracts/ethereum-1/0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf/) | YoGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecd62a8bbd3503710765a53218c480127b3c816e`](./contracts/ethereum-1/0xecd62a8bbd3503710765a53218c480127b3c816e/) | YoGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4409446b49e24861697d566e5c6d68c0d8f3c50f`](./contracts/ethereum-1/0x4409446b49e24861697d566e5c6d68c0d8f3c50f/) | YoIPORAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf837334c5c48f16a8a73affb09859bb7fdb467e0`](./contracts/ethereum-1/0xf837334c5c48f16a8a73affb09859bb7fdb467e0/) | YoLidoAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a3a3325de6ab429523d144b41a032e7d7456ab`](./contracts/ethereum-1/0x93a3a3325de6ab429523d144b41a032e7d7456ab/) | YoMorphoAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb9737bdd076251744704cc37ce961e8417fdd7f`](./contracts/ethereum-1/0xcb9737bdd076251744704cc37ce961e8417fdd7f/) | YoMorphoMarketRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e879d0ccc85085a709ebf5539224f53d0d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | YoOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`](./contracts/ethereum-1/0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8/) | YoRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59bad3e445e5c2d808c3e470b99386687da03f57`](./contracts/ethereum-1/0x59bad3e445e5c2d808c3e470b99386687da03f57/) | YoSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcff9d39441eb668c7fffa752ad1ea47930bb8a76`](./contracts/ethereum-1/0xcff9d39441eb668c7fffa752ad1ea47930bb8a76/) | YoSwapPairRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/) | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/) | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
