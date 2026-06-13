# Agentic Audit Brief: BakerySwap

⚠️ Lifecycle status: DECLINING - TVL changed 7.5% over 90 days

## Project Overview

- Project: BakerySwap (`bakeryswap`)
- Lifecycle: declining (Tier 0, 98.4% below peak)
- Generated: 2026-06-13T19:25:06.773Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: bsc
- Contract surface: 100 unique implementations (193 raw deployments)
- DeFi Llama TVL: $2,886,422.27
- On-chain TVL (included contracts): $612,857.07
- TVL by chain: Bsc $612,857.07

## Project Description

BakerySwap is a decentralized exchange and NFT platform on BSC, offering token swaps, liquidity provision, yield farming, and an NFT marketplace with staking and mystery box features.

### Architecture

All contracts share the BakeryToken (BAKE) as the core incentive and governance token, with the BakerySwapFactory serving as the central registry for liquidity pools. The proxy contracts provide upgradeability for various modules like NFT exchange, staking, and IDO, all integrated under the BakerySwap ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/55 (0.0%)
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 100
- Raw deployments: 193
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $612,857.07
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $612,857.07 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BakeryToken | token | bsc | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | ⚠️ Unaudited |
| ExchangeNFTs | token | bsc | 5 deployments: bsc [`0x047c5e...b5c898`](./contracts/bsc-56/0x047c5ed6374bd9c73e6e1779d6769a967bb5c898/); bsc `0x5cd944...f218ef`; bsc `0x683a94...e56fbf`; bsc `0xb1d125...d7fe2c`; bsc `0xce4129...11150e` | ⚠️ Unaudited |
| SimpleStakeToysEarnERC20 | token | bsc | 2 deployments: bsc [`0x04c798...499e3c`](./contracts/bsc-56/0x04c7987a4fdd2e7496daf833fb00035304499e3c/); bsc `0x735c9f...64cf03` | ⚠️ Unaudited |
| ArtworkBatchMintProxy | periphery | bsc | [`0x38ad96...d435d7`](./contracts/bsc-56/0x38ad969abc67644ceca1cf43f89a834474d435d7/) | ⚠️ Unaudited |
| ArtworkNFT | token | bsc | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ⚠️ Unaudited |
| BakeBaseIdo | unknown | bsc | 11 deployments: bsc [`0x005c66...4559e2`](./contracts/bsc-56/0x005c66a027176e1adf14d7e09c19a065504559e2/); bsc `0x03f100...000142`; bsc `0x1e7d51...58a774`; bsc `0x37453b...379e69`; bsc `0x78ed8c...1bd07b`; bsc `0x792cc1...6d27e2`; bsc `0x873820...7c1e65`; bsc `0x9e38df...9f3070`; bsc `0xb535d4...a0b6a1`; bsc `0xbe687e...257256`; bsc `0xe9dcd9...519a62` | ⚠️ Unaudited |
| BakeBaseMaster | unknown | bsc | 2 deployments: bsc [`0xa1d32a...f2f235`](./contracts/bsc-56/0xa1d32a36be24db1c7ae4bee451db14f089f2f235/); bsc `0xed8732...8b3e0e` | ⚠️ Unaudited |
| BakeryActivityToken | token | bsc | [`0x95c420...9b9a62`](./contracts/bsc-56/0x95c420be059081a2bf8c310d23aae74f009b9a62/) | ⚠️ Unaudited |
| BakeryAnniversary | unknown | bsc | [`0x1d866e...175c2e`](./contracts/bsc-56/0x1d866e548392765982a5859e15725215f3175c2e/) | ⚠️ Unaudited |
| BakeryDestroyToken | token | bsc | [`0x732b66...afc747`](./contracts/bsc-56/0x732b6620d3469204bcc6f44c0b40cd8c4bafc747/) | ⚠️ Unaudited |
| BakeryMaster | unknown | bsc | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | ⚠️ Unaudited |
| BakeryReserveToken | token | bsc | [`0x418c99...169ed3`](./contracts/bsc-56/0x418c990067accb63357533e23def90af83169ed3/) | ⚠️ Unaudited |
| BakerySwapFactory | registry | bsc | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | ⚠️ Unaudited |
| BakerySwapPair | unknown | bsc | 6 deployments: bsc [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/); bsc `0x559e3d...82188b`; bsc `0x5fef67...745d86`; bsc `0x6e218e...fce50a`; bsc `0xc2eed0...9ae492`; bsc `0xfb72d7...97d0e3` | ⚠️ Unaudited |
| BakerySwapPairHelper | periphery | bsc | [`0x091307...7100c7`](./contracts/bsc-56/0x091307ff8910713aaf2ff4ad3a5f6e1d2b7100c7/) | ⚠️ Unaudited |
| BakerySwapRouter | adapter | bsc | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | ⚠️ Unaudited |
| BakeryVoterProxy | unknown | bsc | [`0x382d04...6e8b17`](./contracts/bsc-56/0x382d04194e3607dab5ebaa5b9f8011a4c06e8b17/) | ⚠️ Unaudited |
| BidNFT | token | bsc | 17 deployments: bsc [`0x01fa29...9f0e55`](./contracts/bsc-56/0x01fa298fa3a507048d16dc6669a4ba22fd9f0e55/); bsc `0x055930...177fbb`; bsc `0x0c7ab5...12cf8e`; bsc `0x192720...b442af`; bsc `0x2d0130...1ddc15`; bsc `0x35996a...64306f`; bsc `0x3bd857...29da33`; bsc `0x437bf8...07682b`; bsc `0x4ab5d6...31ba70`; bsc `0x585fd9...0184d4`; bsc `0x616ea4...48b0ae`; bsc `0x61e918...98e3e3`; bsc `0xe84e73...44891e`; bsc `0xe98631...a79e29`; bsc `0xea8683...40a8a7`; bsc `0xebead4...66733a`; bsc `0xef44a8...0567e1` | ⚠️ Unaudited |
| CAR | unknown | bsc | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | ⚠️ Unaudited |
| CarBlindBox | unknown | bsc | 2 deployments: bsc [`0x0628cf...8cad88`](./contracts/bsc-56/0x0628cfc88518ccee96ef7bdfed8b4ac8708cad88/); bsc `0x74db53...e32e40` | ⚠️ Unaudited |
| CarNFT | token | bsc | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | ⚠️ Unaudited |
| CarNFTStakingPowerToken | token | bsc | [`0xa0e90b...0ba3aa`](./contracts/bsc-56/0xa0e90bdabb28908c9d9419e58c658f20e60ba3aa/) | ⚠️ Unaudited |
| CommonMaster | unknown | bsc | 13 deployments: bsc [`0x2560c6...a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/); bsc `0x4302b6...7409ec`; bsc `0x4c496d...962e63`; bsc `0x4d6d2e...16e9f5`; bsc `0x62da74...f0956f`; bsc `0x6a8dbb...494f81`; bsc `0x6bc509...7d61a4`; bsc `0x8d921e...d02eed`; bsc `0x99638f...5c5e02`; bsc `0x9c94e8...212c30`; bsc `0xa9e34c...04f7a8`; bsc `0xe6642f...c4850b`; bsc `0xf5df2d...c2058c` | ⚠️ Unaudited |
| CommonMasterFactory | registry | bsc | 4 deployments: bsc [`0x1307c3...a6dd9c`](./contracts/bsc-56/0x1307c3c5e28d41cc1e8ff977fb9146b419a6dd9c/); bsc `0x6cf0c5...5ea3eb`; bsc `0x885d6c...66c106`; bsc `0xdf2a7a...b7fd93` | ⚠️ Unaudited |
| CommonNftMasterFactory | registry | bsc | [`0x03b3d5...7f63c6`](./contracts/bsc-56/0x03b3d5973cac451a63869714e56482d6c97f63c6/) | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | token | bsc | 3 deployments: bsc [`0x72bec5...58a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/); bsc `0x99cc4e...91b98d`; bsc `0xc13769...135f51` | ⚠️ Unaudited |
| CommonStakeERC721EarnBakeFactory | registry | bsc | 2 deployments: bsc [`0x596af0...c8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/); bsc `0x87020e...56c60f` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20 | token | bsc | 2 deployments: bsc [`0xb14b6c...3cc455`](./contracts/bsc-56/0xb14b6c30ce2044e8e762170d985b510e983cc455/); bsc `0xf7f10b...135635` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20Factory | registry | bsc | 2 deployments: bsc [`0x543229...b6196a`](./contracts/bsc-56/0x543229590b6b6c7c7250ec19aad8bb2552b6196a/); bsc `0xe9d116...f1dd9b` | ⚠️ Unaudited |
| DefaultGetStakingPower | unknown | bsc | [`0x4f0c92...2a8b99`](./contracts/bsc-56/0x4f0c92c93b23c6cee3e0744b420c525b932a8b99/) | ⚠️ Unaudited |
| DishMaster | unknown | bsc | [`0x714531...a4cf91`](./contracts/bsc-56/0x7145319189629afcf31754d8ac459265fca4cf91/) | ⚠️ Unaudited |
| DishNFT | token | bsc | 2 deployments: bsc [`0x51efe1...aa7e2e`](./contracts/bsc-56/0x51efe1de415115bbedd39771405e619ef3aa7e2e/); bsc `0xa7463c...834962` | ⚠️ Unaudited |
| DishStakingPowerToken | token | bsc | 2 deployments: bsc [`0x169895...886f65`](./contracts/bsc-56/0x169895db3270b3df63782bd3c7f758710b886f65/); bsc `0x54f135...382275` | ⚠️ Unaudited |
| DogeMemeNFT | token | bsc | [`0x84d7fe...5bfa72`](./contracts/bsc-56/0x84d7fe5d949ea5fec5d84617badd7590275bfa72/) | ⚠️ Unaudited |
| Doggy | unknown | bsc | 2 deployments: bsc [`0x44beb8...29fb96`](./contracts/bsc-56/0x44beb847cc2a9d1166868bd139a919cc3329fb96/); bsc `0x74926b...6e00c6` | ⚠️ Unaudited |
| ETH2Master | unknown | bsc | 2 deployments: bsc [`0xe627f0...278a20`](./contracts/bsc-56/0xe627f00d5a5bfce0640e771af573c41e9a278a20/); bsc `0xe7cfe6...4df729` | ⚠️ Unaudited |
| ExchangeNFT | token | bsc | 16 deployments: bsc [`0x05b39c...ac8a38`](./contracts/bsc-56/0x05b39c7f648f51153c65c770220bba001dac8a38/); bsc `0x05d189...0b2831`; bsc `0x0f1844...59f3ac`; bsc `0x1f48ae...3681c2`; bsc `0x26b82a...68e814`; bsc `0x58e6e6...cc07b2`; bsc `0x59dc5a...06df61`; bsc `0x615c00...c13490`; bsc `0x7f67a8...fa0e6c`; bsc `0x8443be...53950f`; bsc `0x961985...f4d3b0`; bsc `0xa3514f...d6b326`; bsc `0xa4c3a8...33f644`; bsc `0xc54601...b2cf11`; bsc `0xe590d8...e74b56`; bsc `0xf13015...badff1` | ⚠️ Unaudited |
| ExchangeNFTConfiguration | governance | bsc | 2 deployments: bsc [`0x5f8c0a...d77b94`](./contracts/bsc-56/0x5f8c0aa28ca6d3cad437fea8d76f2832c3d77b94/); bsc `0x611e69...fdecdd` | ⚠️ Unaudited |
| GetCarNFTStakingPower | token | bsc | [`0x38e90a...989e5f`](./contracts/bsc-56/0x38e90ad2e3fa7af9678a39d143e8fad39b989e5f/) | ⚠️ Unaudited |
| GetComboStakingPower | unknown | bsc | [`0xba7e47...905ef3`](./contracts/bsc-56/0xba7e47d64ba87399da8a5e57eec010f4b9905ef3/) | ⚠️ Unaudited |
| GetPokerCardStakingPower | unknown | bsc | [`0xbaafb7...961145`](./contracts/bsc-56/0xbaafb77447ceabe7d20f5ff03abb62143a961145/) | ⚠️ Unaudited |
| GnosisSafe | governance | bsc | [`0x2f5ae8...d2d47c`](./contracts/bsc-56/0x2f5ae8cc1538578e97a3c44d5e417ff5e6d2d47c/) | ⚠️ Unaudited |
| IdoFactory | registry | bsc | 3 deployments: bsc [`0x8ad715...f7bc80`](./contracts/bsc-56/0x8ad71503775f5a43303f8c22e2d84d6decf7bc80/); bsc `0xb673b0...4d6e28`; bsc `0xceb1c1...fd3a6f` | ⚠️ Unaudited |
| MuskDogeNFT | token | bsc | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | ⚠️ Unaudited |
| MysteryBox | unknown | bsc | 2 deployments: bsc [`0x000fcc...b54311`](./contracts/bsc-56/0x000fcc025797f976b5043de1b17a5d9734b54311/); bsc `0xe910ad...5a8861` | ⚠️ Unaudited |
| NFTHelper | token | bsc | [`0x0b6fb6...0fbe50`](./contracts/bsc-56/0x0b6fb6d8e05b59bb24bf2a184a8f73bb390fbe50/) | ⚠️ Unaudited |
| OneInchBAKENFT | token | bsc | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | ⚠️ Unaudited |
| PetMaster | unknown | bsc | [`0x5d2fe7...725e08`](./contracts/bsc-56/0x5d2fe774032596d2c69dc441fd137a1f43725e08/) | ⚠️ Unaudited |
| PetToken | token | bsc | [`0x829963...88bce4`](./contracts/bsc-56/0x829963c82f7040795f0e07c1f98544a82288bce4/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | [`0x9cd8a7...472447`](./contracts/bsc-56/0x9cd8a72067930c778516898724f540d7bd472447/) | ⚠️ Unaudited |
| SfpNFT | token | bsc | [`0x1d0e5a...ed964b`](./contracts/bsc-56/0x1d0e5af3faee43b5cfff8f872f41d43b93ed964b/) | ⚠️ Unaudited |
| SoccerPokerGameBox | unknown | bsc | [`0xe6a038...7297cf`](./contracts/bsc-56/0xe6a038119befe6c5ffbc8c030267a36d7b7297cf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 13 deployments: bsc [`0x15c716...b4d012`](./contracts/bsc-56/0x15c7160f82def33af05b7348843f3ad647b4d012/); bsc `0x2299c1...c185ef`; bsc `0x2dca88...faa64c`; bsc `0x4120ee...2ce568`; bsc `0x43db8e...b59445`; bsc `0x45b2c7...fb01a6`; bsc `0x647527...375890`; bsc `0x7f7b19...fe9cf9`; bsc `0xb56f47...b89a27`; bsc `0xb6f8af...396710`; bsc `0xc3d086...6de527`; bsc `0xf6dae2...ece510`; bsc `0xf99ee0...0ea422` | ⚠️ Unaudited |
| VoteForNFT | token | bsc | [`0x87b06e...d2a92e`](./contracts/bsc-56/0x87b06e61e0346eec70fd34cd493b3e5e4ad2a92e/) | ⚠️ Unaudited |
| VoteForNFTFactory | registry | bsc | [`0x97e95c...aeb2d6`](./contracts/bsc-56/0x97e95cacbfbbdffe3e49511c3cdd1efb0faeb2d6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0276a0...bf81b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0387d7...b4a866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x08bfbe...f201e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x09da17...082d53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0cd070...0f9fe7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x12fc00...4f40f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x138d14...4de315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x163454...e2acf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1868e9...408df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x19f8c3...349bca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1bb698...8edc27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f2688...681cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x22631c...d57151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x28a93d...be5352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3cbb0e...e53521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x45ac8b...e29250` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x498a5e...91d979` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x56b235...8d9d3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5700df...e388a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5bb233...4f4399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6e860f...422789` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x773028...cc4b07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7c9378...788bd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x888d8f...679d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8fb398...ddb2ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x97abe5...a71957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9a76f5...68ff6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa88b7c...a18400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaad7ec...3070aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad4f4d...1690b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb3a47a...b31799` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb78976...17acd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc15d07...ca7705` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc32ea3...ad28fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc92123...0fffea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xca92d1...e18c5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcfb27c...0a0a4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd5c260...33c72a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9cd74...271e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda033c...848312` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4d329...3b2b00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe56a84...084e70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7fc81...5b1fe8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xecc2b7...71f0b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf10970...e4700c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | BakeryToken | token | $606,613.65 | Verified native implementation with $606,613.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04c798...499e3c`](./contracts/bsc-56/0x04c7987a4fdd2e7496daf833fb00035304499e3c/) | SimpleStakeToysEarnERC20 | token | $11.75 | Verified native implementation with $11.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38ad96...d435d7`](./contracts/bsc-56/0x38ad969abc67644ceca1cf43f89a834474d435d7/) | ArtworkBatchMintProxy | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ArtworkNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x005c66...4559e2`](./contracts/bsc-56/0x005c66a027176e1adf14d7e09c19a065504559e2/) | BakeBaseIdo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa1d32a...f2f235`](./contracts/bsc-56/0xa1d32a36be24db1c7ae4bee451db14f089f2f235/) | BakeBaseMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95c420...9b9a62`](./contracts/bsc-56/0x95c420be059081a2bf8c310d23aae74f009b9a62/) | BakeryActivityToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d866e...175c2e`](./contracts/bsc-56/0x1d866e548392765982a5859e15725215f3175c2e/) | BakeryAnniversary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x732b66...afc747`](./contracts/bsc-56/0x732b6620d3469204bcc6f44c0b40cd8c4bafc747/) | BakeryDestroyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | BakeryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x418c99...169ed3`](./contracts/bsc-56/0x418c990067accb63357533e23def90af83169ed3/) | BakeryReserveToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | BakerySwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/) | BakerySwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x091307...7100c7`](./contracts/bsc-56/0x091307ff8910713aaf2ff4ad3a5f6e1d2b7100c7/) | BakerySwapPairHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | BakerySwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x382d04...6e8b17`](./contracts/bsc-56/0x382d04194e3607dab5ebaa5b9f8011a4c06e8b17/) | BakeryVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01fa29...9f0e55`](./contracts/bsc-56/0x01fa298fa3a507048d16dc6669a4ba22fd9f0e55/) | BidNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | CAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0628cf...8cad88`](./contracts/bsc-56/0x0628cfc88518ccee96ef7bdfed8b4ac8708cad88/) | CarBlindBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | CarNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa0e90b...0ba3aa`](./contracts/bsc-56/0xa0e90bdabb28908c9d9419e58c658f20e60ba3aa/) | CarNFTStakingPowerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2560c6...a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/) | CommonMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1307c3...a6dd9c`](./contracts/bsc-56/0x1307c3c5e28d41cc1e8ff977fb9146b419a6dd9c/) | CommonMasterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03b3d5...7f63c6`](./contracts/bsc-56/0x03b3d5973cac451a63869714e56482d6c97f63c6/) | CommonNftMasterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72bec5...58a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/) | CommonStakeERC721EarnBake | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596af0...c8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/) | CommonStakeERC721EarnBakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb14b6c...3cc455`](./contracts/bsc-56/0xb14b6c30ce2044e8e762170d985b510e983cc455/) | CommonStakeERC721EarnERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x543229...b6196a`](./contracts/bsc-56/0x543229590b6b6c7c7250ec19aad8bb2552b6196a/) | CommonStakeERC721EarnERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4f0c92...2a8b99`](./contracts/bsc-56/0x4f0c92c93b23c6cee3e0744b420c525b932a8b99/) | DefaultGetStakingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x714531...a4cf91`](./contracts/bsc-56/0x7145319189629afcf31754d8ac459265fca4cf91/) | DishMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51efe1...aa7e2e`](./contracts/bsc-56/0x51efe1de415115bbedd39771405e619ef3aa7e2e/) | DishNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x169895...886f65`](./contracts/bsc-56/0x169895db3270b3df63782bd3c7f758710b886f65/) | DishStakingPowerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84d7fe...5bfa72`](./contracts/bsc-56/0x84d7fe5d949ea5fec5d84617badd7590275bfa72/) | DogeMemeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44beb8...29fb96`](./contracts/bsc-56/0x44beb847cc2a9d1166868bd139a919cc3329fb96/) | Doggy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05b39c...ac8a38`](./contracts/bsc-56/0x05b39c7f648f51153c65c770220bba001dac8a38/) | ExchangeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38e90a...989e5f`](./contracts/bsc-56/0x38e90ad2e3fa7af9678a39d143e8fad39b989e5f/) | GetCarNFTStakingPower | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xba7e47...905ef3`](./contracts/bsc-56/0xba7e47d64ba87399da8a5e57eec010f4b9905ef3/) | GetComboStakingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbaafb7...961145`](./contracts/bsc-56/0xbaafb77447ceabe7d20f5ff03abb62143a961145/) | GetPokerCardStakingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ad715...f7bc80`](./contracts/bsc-56/0x8ad71503775f5a43303f8c22e2d84d6decf7bc80/) | IdoFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | MuskDogeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x000fcc...b54311`](./contracts/bsc-56/0x000fcc025797f976b5043de1b17a5d9734b54311/) | MysteryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b6fb6...0fbe50`](./contracts/bsc-56/0x0b6fb6d8e05b59bb24bf2a184a8f73bb390fbe50/) | NFTHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | OneInchBAKENFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d2fe7...725e08`](./contracts/bsc-56/0x5d2fe774032596d2c69dc441fd137a1f43725e08/) | PetMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x829963...88bce4`](./contracts/bsc-56/0x829963c82f7040795f0e07c1f98544a82288bce4/) | PetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d0e5a...ed964b`](./contracts/bsc-56/0x1d0e5af3faee43b5cfff8f872f41d43b93ed964b/) | SfpNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe6a038...7297cf`](./contracts/bsc-56/0xe6a038119befe6c5ffbc8c030267a36d7b7297cf/) | SoccerPokerGameBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x87b06e...d2a92e`](./contracts/bsc-56/0x87b06e61e0346eec70fd34cd493b3e5e4ad2a92e/) | VoteForNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97e95c...aeb2d6`](./contracts/bsc-56/0x97e95cacbfbbdffe3e49511c3cdd1efb0faeb2d6/) | VoteForNFTFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2736] DL audit link

Fork inheritance lineage and inherited audits are included when available.
