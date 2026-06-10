# Agentic Audit Brief: SatLayer

## Project Overview

- Project: SatLayer (`satlayer`)
- Website: [https://satlayer.xyz/](https://satlayer.xyz/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:59:13.448Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, berachain, bsc, ethereum
- Contract surface: 311 unique implementations (747 raw deployments)
- DeFi Llama TVL: $1,136,445.48
- On-chain TVL (included contracts): $289,459,726.45
- TVL by chain: Ethereum $227,438,810.76 | Bsc $60,838,498.38 | Berachain $1,182,417.30

## Project Description

SatLayer is Bitcoin's economic and restaking layer for Bitcoin Validated Services. It enables Bitcoin-backed collateral and supported Bitcoin liquid staking or wrapped assets to be restaked to help secure BVS networks and participate in reward mechanisms. Assets such as uniBTC, brBTC, stBTC, and LBTC should be treated as supported or partner collateral unless specific evidence shows SatLayer issues them directly.

### Architecture

The Deposit Contracts family mints LSTs from user BTC deposits, which are then used across the LST Assets family for liquidity and yield. The SatLayer family provides vaults and pools that accept these LSTs for restaking, distributing rewards via the SLAY token and various strategy contracts, with shared infrastructure like oracles and bridges ensuring cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 5/111 (4.5%)
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 0
- Unverified implementations: 200
- Unique implementations: 311
- Raw deployments: 747
- Audits discovered: 12
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $287,192,748.00
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 10 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 3 | 2.7% | 2025-01 |
| unknown | Tier 2 | 2 | 1.8% | 2024-08 |
| Asymptotic | Tier 2 | 1 | 0.9% | n/a |
| Dedaub | Tier 2 | 1 | 0.9% | 2025-08 |
| Zenith | Tier 2 | 1 | 0.9% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SLAYToken | token | ethereum | [`0x51477a...ee5147`](./contracts/ethereum-1/0x51477a3002ee04b7542adfe63ccdb50c00ee5147/) | ✅ Audited |
| ReceiptToken | token | ethereum | 19 deployments: ethereum [`0x067e11...67152f`](./contracts/ethereum-1/0x067e11ac5471c853aea205b3c1933a5f6367152f/); ethereum `0x0c4dd6...3430c7`; ethereum `0x17140b...ad24ff`; ethereum `0x69223b...82c566`; ethereum `0xe2c675...a912dc`; ethereum `0xf7de2b...1e076e`; ethereum `0xff2858...b5ee5b`; bsc [`0x067e11...67152f`](./contracts/bsc-56/0x067e11ac5471c853aea205b3c1933a5f6367152f/); bsc `0x17140b...ad24ff`; bsc `0xe2c675...a912dc`; base `0x422d6c...7f9802`; base `0x9ed4b1...165add`; berachain `0x2a5fc0...f415c9`; berachain `0x7b4dc4...85705c`; berachain `0x961395...3ab763`; berachain `0xad9f7d...ca4ec8`; berachain `0xd23557...27abc2`; berachain `0xe70419...48b126`; berachain `0xff21f4...cfdb9b` | ✅ Audited |
| SatlayerPool | core_logic | ethereum | 4 deployments: ethereum [`0x42a856...102819`](./contracts/ethereum-1/0x42a856dbebb97abc1269eab32f3bb40c15102819/); bsc [`0x42a856...102819`](./contracts/bsc-56/0x42a856dbebb97abc1269eab32f3bb40c15102819/); base `0xb57752...b0b9b3`; berachain `0x50198b...9bc99d` | ✅ Audited |
| LBTC | unknown | berachain | [`0xecac9c...5c11c1`](./contracts/berachain-80094/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ✅ Audited |
| SatLayerPoolV2 | core_logic | ethereum | 10 deployments: ethereum [`0x0559bb...7e6ee5`](./contracts/ethereum-1/0x0559bbbe074d820f2079883f1ef54b928b7e6ee5/); ethereum `0x0d988b...2fc179`; ethereum `0x32fd8e...39fb83`; ethereum `0x3aaadf...3ff3c4`; ethereum `0x617ca1...aacdcd`; ethereum `0x6f88e8...58703c`; ethereum `0xbd7e31...0e7fec`; ethereum `0xe14c98...539336`; ethereum `0xe276cb...4aedfc`; ethereum `0xf80361...e773b0` | ✅ Audited |

### ⚠️ Verified + Unaudited (106)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 119 deployments: ethereum [`0x0186b0...d149c5`](./contracts/ethereum-1/0x0186b03ac7c14a90d04d2b1e168869f618d149c5/); ethereum `0x0982eb...b9ac2a`; ethereum `0x0a9ea3...c03bb5`; ethereum `0x0ab4b6...dd5fef`; ethereum `0x0d1862...6f3a1d`; ethereum `0x0e6830...10aa51`; ethereum `0x16c6b8...518187`; ethereum `0x16d2ca...3a4a76`; ethereum `0x170853...346187`; ethereum `0x1d4dd4...a77ba0`; ethereum `0x211ad9...d9b691`; ethereum `0x24d333...997800`; ethereum `0x269daf...7f433b`; ethereum `0x27a891...2aa8d0`; ethereum `0x281b4c...f35dca`; ethereum `0x2a20f2...59bec8`; ethereum `0x2adfd4...4e5c60`; ethereum `0x2b1152...2f7e73`; ethereum `0x2b3853...4fac0e`; ethereum `0x34d16e...bf22c1`; ethereum `0x361205...d00c74`; ethereum `0x37cb97...fe030d`; ethereum `0x3c003d...27e777`; ethereum `0x3d086b...2c4a20`; ethereum `0x3dcb5c...07a891`; ethereum `0x3e6598...b92222`; ethereum `0x3f0d9c...113282`; ethereum `0x418ba1...f46ea3`; ethereum `0x44fffb...0efd8e`; ethereum `0x481dc5...f4a893`; ethereum `0x4957a3...217c73`; ethereum `0x49af17...ac9698`; ethereum `0x4a522e...2a1c8c`; ethereum `0x4b00a9...882da8`; ethereum `0x4c7df2...c93254`; ethereum `0x4e1fe5...71c19a`; ethereum `0x51d9a3...ff2d45`; ethereum `0x57e0a4...756bd7`; ethereum `0x5a11de...0b4de7`; ethereum `0x5b46d4...564176`; ethereum `0x5e1005...61c3e9`; ethereum `0x5f9e9e...35848d`; ethereum `0x60f898...86a36e`; ethereum `0x616fb2...4b1f97`; ethereum `0x64c5a4...d1dec0`; ethereum `0x655e9f...b63662`; ethereum `0x659397...e2d8a4`; ethereum `0x676927...3ac3c1`; ethereum `0x677af8...14526a`; ethereum `0x6945f5...eb5566`; ethereum `0x699f69...c01a8d`; ethereum `0x6a44c7...13014a`; ethereum `0x6c77bd...c895d1`; ethereum `0x6c87ac...77e5f9`; ethereum `0x6c90c7...d44044`; ethereum `0x6d52ed...4dec0b`; ethereum `0x71ea0e...e8b3d3`; ethereum `0x7223d0...b09bd6`; ethereum `0x75a32b...022a32`; ethereum `0x75e889...f3f342`; ethereum `0x76f318...4f4364`; ethereum `0x7a9ca8...d18e37`; ethereum `0x7ba7c4...60e15e`; ethereum `0x7bfc0e...d9004a`; ethereum `0x7d713d...2a4c54`; ethereum `0x7ff670...66a7f0`; ethereum `0x807358...03c3e6`; ethereum `0x80d0c5...e8c02e`; ethereum `0x813376...053101`; ethereum `0x8359b1...98b41c`; ethereum `0x83b5ab...af36f2`; ethereum `0x86b104...584c82`; ethereum `0x89cc77...6490f5`; ethereum `0x910b3c...6b7baf`; ethereum `0x966ed7...5f392d`; ethereum `0x97832d...31eadd`; ethereum `0x98a5c6...e55491`; ethereum `0x99ac30...41aab0`; ethereum `0x9a81c5...ddc321`; ethereum `0x9d0a02...44df70`; ethereum `0xa2b333...6619bb`; ethereum `0xa47f02...cddd8f`; ethereum `0xa53cd3...f759c9`; ethereum `0xa99491...0de97c`; ethereum `0xb0ce0c...96c0e5`; ethereum `0xb88edc...24026e`; ethereum `0xbae6c9...f34eac`; ethereum `0xbd2a1d...d47e18`; ethereum `0xc57cb3...ff86be`; ethereum `0xc663f4...2c2e53`; ethereum `0xc71fb1...d745b8`; ethereum `0xc9ecc7...02b02f`; ethereum `0xca696a...e0258c`; ethereum `0xcc7e6d...56e20a`; ethereum `0xd41985...3f116a`; ethereum `0xd4cc9b...e0993b`; ethereum `0xd6bc74...b57b98`; ethereum `0xd6f481...c46956`; ethereum `0xd6f66c...dbb266`; ethereum `0xd72c3a...c58f80`; ethereum `0xd87ecd...5ed555`; ethereum `0xdb0aef...db043d`; ethereum `0xdc02f1...662eff`; ethereum `0xdc314a...05d5dd`; ethereum `0xdf41d8...739f0a`; ethereum `0xe18196...7464fe`; ethereum `0xe4794e...3575d7`; ethereum `0xe5dfce...cd9c8c`; ethereum `0xe5f5a0...5b0bdf`; ethereum `0xe9d6d1...943cf1`; ethereum `0xef4508...c03800`; ethereum `0xefe4c9...adc1df`; ethereum `0xf12da6...8e82ae`; ethereum `0xf2f5fd...6aa27f`; ethereum `0xf7cb66...12df95`; ethereum `0xf7eb36...0738d0`; ethereum `0xf84a84...0ee466`; ethereum `0xfb06bc...b708ea`; ethereum `0xfb41f3...4696fe` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | berachain | 4 deployments: ethereum `0xd9d920...159def`; bsc `0x1346b6...d446a5`; berachain [`0x0f6f33...728f3b`](./contracts/berachain-80094/0x0f6f337b09cb5131cf0ce9df3beb295b8e728f3b/); berachain `0xcc0966...169a8c` | ⚠️ Unaudited |
| VaultYieldETH | core_logic | ethereum | 4 deployments: ethereum [`0x03a16e...5fa108`](./contracts/ethereum-1/0x03a16e0bfa2c5c28991c0446fc849211de5fa108/); ethereum `0x4a3946...55fc4c`; ethereum `0xa1dc0b...7e0842`; ethereum `0xb13aa2...08775d` | ⚠️ Unaudited |
| VaultYieldRSETH | core_logic | ethereum | 9 deployments: ethereum [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/); ethereum `0x2927d6...6dd459`; ethereum `0x4c3790...e30f35`; ethereum `0x6cdcf1...69ee7a`; ethereum `0x6dd173...c59cb2`; ethereum `0x906396...5dfc01`; ethereum `0xc9d04e...bac360`; ethereum `0xcc287c...147b96`; ethereum `0xd87a19...4ade4e` | ⚠️ Unaudited |
| Token | token | berachain | 4 deployments: berachain [`0x095957...766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/); berachain `0x93f4d0...d21116`; berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| StrategyDummyImplementation | core_logic | ethereum | 8 deployments: ethereum [`0x28c24f...506157`](./contracts/ethereum-1/0x28c24ff607c4dbe51e09d5d2dd738826fe506157/); ethereum `0x3fd49a...8f1532`; ethereum `0x75bd1d...a9edf5`; ethereum `0x9ae1ca...976151`; ethereum `0x9c12f9...f561a9`; ethereum `0xad47b2...dad8e1`; ethereum `0xc41d5f...ef6ae0`; ethereum `0xf7ead3...0c998e` | ⚠️ Unaudited |
| VaultStETH | core_logic | ethereum | 3 deployments: ethereum [`0x40c684...2a7b30`](./contracts/ethereum-1/0x40c68480d323919d23abc9b569a2e98b4d2a7b30/); ethereum `0x42d73c...0c3b8a`; ethereum `0xcdd374...005137` | ⚠️ Unaudited |
| YlstETHVault | core_logic | ethereum | 4 deployments: ethereum [`0x0695ea...ea3862`](./contracts/ethereum-1/0x0695ea1585e159368c95da0e65d611fd27ea3862/); ethereum `0x3498fd...8e613b`; ethereum `0x6e4b93...47f70b`; ethereum `0x81c6e8...7ff0a0` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | ethereum | 4 deployments: ethereum [`0x2563b7...19c800`](./contracts/ethereum-1/0x2563b75172fabb5ec08694de55e181c00219c800/); ethereum `0x6e3988...14fa99`; ethereum `0x78a1fd...545b39`; ethereum `0xd4ede7...6cb615` | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | ethereum | 3 deployments: ethereum [`0x9ffe77...74b464`](./contracts/ethereum-1/0x9ffe77146cc1da3edb87af163c6c32bab474b464/); ethereum `0xb3e6fc...764399`; ethereum `0xd16796...352b16` | ⚠️ Unaudited |
| VaultStETHWrapper | core_logic | ethereum | 2 deployments: ethereum [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/); ethereum `0x4e8e60...f9a427` | ⚠️ Unaudited |
| AaveMaster | unknown | ethereum | [`0x8bb3dc...d266f7`](./contracts/ethereum-1/0x8bb3dc91c97e340dea4f65bc4dcf271b46d266f7/) | ⚠️ Unaudited |
| AdapterManager | adapter | ethereum | [`0xc93616...d493c1`](./contracts/ethereum-1/0xc936161b3c80494172ae58734e3ce16e26d493c1/) | ⚠️ Unaudited |
| AdminModule | unknown | ethereum | 2 deployments: ethereum [`0x183d90...d67223`](./contracts/ethereum-1/0x183d908f3e07699c83d77b503d1c1f947ed67223/); ethereum `0xf619f3...3790c6` | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| Automation | unknown | ethereum | 3 deployments: ethereum [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/); ethereum `0x9b2316...921137`; ethereum `0xbd64ce...a78618` | ⚠️ Unaudited |
| BaseBridgeHelper | operational_periphery | ethereum | 3 deployments: ethereum [`0x237eff...24912f`](./contracts/ethereum-1/0x237eff231c41016d9b4305148b6be9294824912f/); ethereum `0x8d34ae...09e37d`; ethereum `0xe9a659...891740` | ⚠️ Unaudited |
| BEP20Token | token | bsc | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BeraPseudoBridge | operational_periphery | ethereum | [`0x8a95f2...60d500`](./contracts/ethereum-1/0x8a95f22c5a2da7c325cf95b58f1b4f9b8460d500/) | ⚠️ Unaudited |
| brBTC | unknown | berachain | 2 deployments: base `0xf97750...31ab18`; berachain [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| CianFlowControl | unknown | ethereum | 2 deployments: ethereum [`0x7a116f...99edc4`](./contracts/ethereum-1/0x7a116f6dc0966495462e7480125157c1e699edc4/); ethereum `0xd3d547...b747c9` | ⚠️ Unaudited |
| CianOFTWrapper | unknown | ethereum | 7 deployments: ethereum [`0x237978...0f48ec`](./contracts/ethereum-1/0x237978176c3811a1648f3106797e3c3e070f48ec/); ethereum `0x508339...9ca0ce`; ethereum `0x67a919...694dd6`; ethereum `0x79dd84...e660e8`; ethereum `0xafb6a7...012b7b`; ethereum `0xafc13b...4aafdb`; ethereum `0xcb742c...0563ed` | ⚠️ Unaudited |
| CLAdapter | adapter | ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| Consortium | unknown | ethereum | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | ⚠️ Unaudited |
| ControllerLib | governance | ethereum | 2 deployments: ethereum [`0x74d2be...54cdbb`](./contracts/ethereum-1/0x74d2bef5afe200dacc76fe2d3c4022435b54cdbb/); ethereum `0xce672d...5af2ac` | ⚠️ Unaudited |
| ControllerLibSub | governance | ethereum | 2 deployments: ethereum [`0x680417...7b19c8`](./contracts/ethereum-1/0x68041721c81c695b72495f78beac4f7dfd7b19c8/); ethereum `0xff6771...8bcad0` | ⚠️ Unaudited |
| ControllerLink | governance | ethereum | [`0xb32950...2090c4`](./contracts/ethereum-1/0xb329504622bd79329c6f82cf8c60c807df2090c4/) | ⚠️ Unaudited |
| ERC2612Verifier | periphery | ethereum | 4 deployments: ethereum [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/); ethereum `0x6e3066...8f800a`; ethereum `0xc39e03...1d26fd`; ethereum `0xea5f10...d19a17` | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTC | unknown | ethereum | [`0xc96de2...d6c364`](./contracts/ethereum-1/0xc96de26018a54d51c097160568752c4e3bd6c364/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | 3 deployments: ethereum [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/); ethereum `0x80a896...ec572b`; ethereum `0xb2fb03...34ae5a` | ⚠️ Unaudited |
| FeeBoxETH | unknown | ethereum | 3 deployments: ethereum [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/); ethereum `0x144f69...0f779b`; ethereum `0x40846b...43c316` | ⚠️ Unaudited |
| FeeBoxStETH | unknown | ethereum | 3 deployments: ethereum [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/); ethereum `0x60e97d...b469ba`; ethereum `0xc5c995...a6351c` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FlashloanHelper | periphery | ethereum | [`0x6e055d...5574df`](./contracts/ethereum-1/0x6e055d5592e41709c3e70539a2b53933455574df/) | ⚠️ Unaudited |
| GHOEth | unknown | ethereum | [`0x83291c...4e281f`](./contracts/ethereum-1/0x83291cf2731b8e3af3f3439cce871c6a1c4e281f/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| IBCVoucher | unknown | ethereum | 3 deployments: ethereum [`0x77d81c...8a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/); ethereum `0x9972c1...35c697`; ethereum `0xac1f03...7e54ae` | ⚠️ Unaudited |
| L1Receiver | unknown | ethereum | 2 deployments: ethereum [`0x3d09c8...9af680`](./contracts/ethereum-1/0x3d09c82de2a636d5ec7a7a9ad7e5039aae9af680/); ethereum `0xa91476...14c2ca` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | 9 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0x9f1831...eeda4e`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31`; ethereum `0xb635e6...a38263`; ethereum `0xcfeac6...b0d3cd` | ⚠️ Unaudited |
| LendingLogic | core_logic | ethereum | [`0xa0ad94...7792c7`](./contracts/ethereum-1/0xa0ad94ac894cdc591cf3419a460cd683bf7792c7/) | ⚠️ Unaudited |
| LiquidCashier | unknown | ethereum | 2 deployments: ethereum [`0x485fd9...03c12e`](./contracts/ethereum-1/0x485fd98f834b4bf9db855f8fa03990318103c12e/); ethereum `0x7462bc...a4f5d6` | ⚠️ Unaudited |
| LiquidFactory | registry | ethereum | 2 deployments: ethereum [`0xaec1fb...039a3b`](./contracts/ethereum-1/0xaec1fbb90528533d5f066094abdeb2f1b0039a3b/); ethereum `0xf30c70...8da565` | ⚠️ Unaudited |
| LiquidOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x6f26b0...8404ac`](./contracts/ethereum-1/0x6f26b0f570c2cfb4050b424ef6ea5903818404ac/); ethereum `0xd1d73b...359113` | ⚠️ Unaudited |
| LiquidVault | core_logic | ethereum | 2 deployments: ethereum [`0xd1693b...9ffa3b`](./contracts/ethereum-1/0xd1693b20932c798a63375db0252be7ca449ffa3b/); ethereum `0xf928f6...a0286e` | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | 3 deployments: ethereum [`0x2e1871...763565`](./contracts/ethereum-1/0x2e1871fc8ac793dcf2a74ce004ee21d913763565/); ethereum `0x67927d...0f1a1b`; ethereum `0xed6d64...d780e0` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| MainnetReceiver | unknown | ethereum | 6 deployments: ethereum [`0x250d72...5ef8f0`](./contracts/ethereum-1/0x250d72b24ca19aeebe4830c2fe9c9daf625ef8f0/); ethereum `0x65931b...963c99`; ethereum `0xabc15d...1b9f77`; ethereum `0xc657a0...9e283e`; ethereum `0xd4040a...d9f568`; ethereum `0xff4da5...a7a710` | ⚠️ Unaudited |
| Manager | governance | ethereum | 59 deployments: ethereum [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/); ethereum `0x0787b6...faf385`; ethereum `0x0a5414...8334df`; ethereum `0x140b58...480a7c`; ethereum `0x19520c...1e507c`; ethereum `0x1ab34b...27a773`; ethereum `0x1c2431...23c72a`; ethereum `0x1f96e2...f4d319`; ethereum `0x20891e...5b0729`; ethereum `0x2286f5...093db9`; ethereum `0x25e152...7b5327`; ethereum `0x276e54...64e58c`; ethereum `0x2dc459...e410b0`; ethereum `0x2e9fd0...c86b5f`; ethereum `0x36035d...a637be`; ethereum `0x38f8ba...5be902`; ethereum `0x45e990...218cb3`; ethereum `0x479030...b7a1c5`; ethereum `0x47f6f2...4e7637`; ethereum `0x4c907a...53f5a0`; ethereum `0x5085b5...f0f01f`; ethereum `0x5659c8...51d7f5`; ethereum `0x5ad672...8bd561`; ethereum `0x64bed7...3ec07b`; ethereum `0x65e6ef...3c40ae`; ethereum `0x6d425b...07b616`; ethereum `0x6d9366...2c7143`; ethereum `0x70fed1...639bbc`; ethereum `0x727750...e49beb`; ethereum `0x731820...5d1453`; ethereum `0x870f1e...21d4ae`; ethereum `0x88001d...a60b35`; ethereum `0x89f31a...c01dd0`; ethereum `0x8b214d...eb9f9f`; ethereum `0x8c4812...8ef340`; ethereum `0x8cc155...92c768`; ethereum `0x907c63...bcf6d8`; ethereum `0x94bbf9...0b25bd`; ethereum `0x95bba6...7a22ce`; ethereum `0x97c07d...75b361`; ethereum `0x98d578...c86137`; ethereum `0x9b88fb...d27302`; ethereum `0xa2858e...1bf37c`; ethereum `0xa5a0ad...df9f20`; ethereum `0xa5d359...a221e7`; ethereum `0xab5866...31ef28`; ethereum `0xac1894...c96065`; ethereum `0xaf4c09...9e49b7`; ethereum `0xb6e482...33f24c`; ethereum `0xc3d727...9e867a`; ethereum `0xc58dfa...a94e4a`; ethereum `0xc8cbde...6aa92d`; ethereum `0xcf0bd8...e7a802`; ethereum `0xdd77fa...443eb7`; ethereum `0xdf5e9f...2ecad4`; ethereum `0xe5bd9c...43ee46`; ethereum `0xf0ba63...c04d8c`; ethereum `0xf30592...228076`; ethereum `0xf4f0a7...a87446` | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| OneInchAdapter | adapter | ethereum | 3 deployments: ethereum [`0x601954...ee5374`](./contracts/ethereum-1/0x601954e6afb77dac21503dbdfa751fbef9ee5374/); ethereum `0x7be572...b208ea`; ethereum `0xdcb3d9...5be940` | ⚠️ Unaudited |
| OneInchV5Adapter | adapter | ethereum | [`0x7b4334...b37264`](./contracts/ethereum-1/0x7b43348f7666f3ca3be6295dfddf243ca3b37264/) | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xa23075...738361`](./contracts/ethereum-1/0xa230758d179e25072493c9fe33f5c2f915738361/); ethereum `0xfa0671...a3f7ae` | ⚠️ Unaudited |
| ParaswapAdapter | adapter | ethereum | 3 deployments: ethereum [`0x55ad78...1ed0cc`](./contracts/ethereum-1/0x55ad7823630c7ea56cce53ee33c760bece1ed0cc/); ethereum `0x9633d6...864caa`; ethereum `0x9aa8b1...d8e544` | ⚠️ Unaudited |
| ParaSwapHelper | periphery | ethereum | [`0x0f00dc...eb2a64`](./contracts/ethereum-1/0x0f00dc481864dc0f1c1ff10b24fc5e21c5eb2a64/) | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | ethereum | 2 deployments: ethereum [`0x4509c4...f203a4`](./contracts/ethereum-1/0x4509c4fb07f681385f21cf03c28a6f2aa1f203a4/); ethereum `0x815a3d...e4103f` | ⚠️ Unaudited |
| ProxyAdmin | governance | berachain | 2 deployments: ethereum `0xa2b94c...91945d`; berachain [`0x17c3b6...d551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | [`0x72233f...dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ⚠️ Unaudited |
| PumpStaking | unknown | ethereum | 3 deployments: ethereum [`0x1fcca6...404e1e`](./contracts/ethereum-1/0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e/); ethereum `0x3d9bcc...5e6083`; ethereum `0xc0c687...622f88` | ⚠️ Unaudited |
| PumpToken | token | ethereum | [`0xf469fb...0a012e`](./contracts/ethereum-1/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| ReadModule | unknown | ethereum | 2 deployments: ethereum [`0x0e9378...1222d1`](./contracts/ethereum-1/0x0e9378e68bf3cfe89d646902d174c5f3891222d1/); ethereum `0x300d5b...95b3b1` | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | ethereum | 3 deployments: ethereum [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/); ethereum `0x72c992...5afad1`; ethereum `0x9403b7...b1eca5` | ⚠️ Unaudited |
| RedeemOperator | unknown | ethereum | 39 deployments: ethereum [`0x09826f...6fe392`](./contracts/ethereum-1/0x09826f37df349258c1a209abd37ab614296fe392/); ethereum `0x0cf918...e7ad5b`; ethereum `0x1198ca...8d8806`; ethereum `0x12f101...fe07f9`; ethereum `0x13be82...7e7b53`; ethereum `0x189c0a...7246e4`; ethereum `0x1f6cdc...cd5f6e`; ethereum `0x28b668...162ee9`; ethereum `0x2dbadd...bffd02`; ethereum `0x339201...83545d`; ethereum `0x35e612...84cd51`; ethereum `0x36f513...3bbb31`; ethereum `0x3974d9...201dab`; ethereum `0x3d74e5...afe292`; ethereum `0x47dbd7...ed239e`; ethereum `0x688a30...5c77a7`; ethereum `0x6c96b1...7632c1`; ethereum `0x705214...7c022a`; ethereum `0x760e92...aaf5b8`; ethereum `0x7ad781...3ba20e`; ethereum `0x82dc32...0b89a3`; ethereum `0x852a51...96b01e`; ethereum `0x855bfd...4a75f6`; ethereum `0x8688dd...c678a7`; ethereum `0x868e97...cb88c8`; ethereum `0x8b32ad...ecced3`; ethereum `0x8ded14...5d526e`; ethereum `0x8ebc9d...97b34d`; ethereum `0x9c3439...f1f715`; ethereum `0x9dc020...006262`; ethereum `0xb03a7b...c577fa`; ethereum `0xbb0d68...c8bbd5`; ethereum `0xc84a1e...74e842`; ethereum `0xcae91d...8af5f2`; ethereum `0xdac674...f012db`; ethereum `0xdb9476...f8eebf`; ethereum `0xdce3d4...8e95eb`; ethereum `0xe84082...99a1e1`; ethereum `0xf2e57e...ff7cdf` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | berachain | 2 deployments: berachain [`0xd4dfb0...f97782`](./contracts/berachain-80094/0xd4dfb080a8904a7e2b7dfcc524cb828584f97782/); berachain `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| Sigma | unknown | berachain | 2 deployments: berachain [`0x563a27...731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/); berachain `0xb290be...69ec47` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | 4 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5`; ethereum `0xec2631...d21455` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | 4 deployments: ethereum [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/); ethereum `0x21f352...083b02`; ethereum `0x8236a8...634494`; ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StrategyAvalon | core_logic | ethereum | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | ⚠️ Unaudited |
| StrategyBedrock | core_logic | ethereum | 7 deployments: ethereum [`0x302d70...23a755`](./contracts/ethereum-1/0x302d709611a4fbacef396f05493918257a23a755/); ethereum `0x38b4e0...ede466`; ethereum `0x580445...6cd54f`; ethereum `0xa04a26...522398`; ethereum `0xa22772...4c6465`; ethereum `0xc091a0...678ff5`; ethereum `0xd1828c...f92138` | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | core_logic | ethereum | 2 deployments: ethereum [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/); ethereum `0x74dce5...63f752` | ⚠️ Unaudited |
| StrategyBedrock22MAY2025 | core_logic | ethereum | 2 deployments: ethereum [`0x09511b...8cab3e`](./contracts/ethereum-1/0x09511b16527af9067170c9267abf563fcd8cab3e/); ethereum `0xf0e48d...c89498` | ⚠️ Unaudited |
| StrategyBedrock27MAR2025 | core_logic | ethereum | [`0x31c3c3...7c20a5`](./contracts/ethereum-1/0x31c3c3a9ab22663e438962cc57037492717c20a5/) | ⚠️ Unaudited |
| StrategyCrossStub | core_logic | ethereum | [`0xe457e5...13234f`](./contracts/ethereum-1/0xe457e50c874b7b133dc81d9f40698c0fbc13234f/) | ⚠️ Unaudited |
| StrategyDefault | core_logic | ethereum | 30 deployments: ethereum [`0x0415d1...f923a2`](./contracts/ethereum-1/0x0415d1e50d8cf32884dd420a1d6a98d4baf923a2/); ethereum `0x108400...bc5d5f`; ethereum `0x11b8d2...5f0745`; ethereum `0x14302c...a81786`; ethereum `0x14b816...02347d`; ethereum `0x1ea243...916cf4`; ethereum `0x21479f...4608ab`; ethereum `0x24d5a9...943f20`; ethereum `0x2778ae...81cb4d`; ethereum `0x2fc72e...dd190d`; ethereum `0x5018ca...93e7e9`; ethereum `0x502928...83a338`; ethereum `0x55957e...2fa5f1`; ethereum `0x57e849...4d113f`; ethereum `0x61b982...5d55fc`; ethereum `0x71913b...4aa290`; ethereum `0x72c3a4...0e8714`; ethereum `0x736d99...d625f6`; ethereum `0x7afd64...f5da43`; ethereum `0x841c46...8e0c47`; ethereum `0xbbff1b...88013d`; ethereum `0xbc3a00...3eb6f1`; ethereum `0xc74fd7...5a49ca`; ethereum `0xc810a8...b32841`; ethereum `0xe39658...2f92cd`; ethereum `0xe4f81e...79a733`; ethereum `0xe83dd7...0243f1`; ethereum `0xebc540...59c4ea`; ethereum `0xf646c1...aae918`; ethereum `0xfe1f7d...ae09e8` | ⚠️ Unaudited |
| StrategyETHConverter | core_logic | ethereum | [`0x89ad20...c9758c`](./contracts/ethereum-1/0x89ad2070b7522b08aa046e100350a9c2afc9758c/) | ⚠️ Unaudited |
| StrategyEuler | core_logic | ethereum | [`0x869620...f683d0`](./contracts/ethereum-1/0x869620df23af863a5b0c63af8ccd540d8ff683d0/) | ⚠️ Unaudited |
| StrategyGHO | core_logic | ethereum | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | core_logic | ethereum | 4 deployments: ethereum [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/); ethereum `0x6ab69e...9959e2`; ethereum `0xc6603c...fae257`; ethereum `0xfb8b84...10a7f0` | ⚠️ Unaudited |
| StrategyMellowSteakhouse | core_logic | ethereum | 5 deployments: ethereum [`0x0415a2...44d67f`](./contracts/ethereum-1/0x0415a25b6f01f671f252258a3433d2aa6144d67f/); ethereum `0x67c0d2...323ff6`; ethereum `0x775218...3169b7`; ethereum `0xacf519...f7e25b`; ethereum `0xec5364...66856e` | ⚠️ Unaudited |
| StrategyPump | core_logic | ethereum | 4 deployments: ethereum [`0x2a53f9...44b0a8`](./contracts/ethereum-1/0x2a53f9f20137fc1253c5b6edecb4fd48e044b0a8/); ethereum `0xe170ee...f7f1cc`; ethereum `0xeae0e3...d698a7`; ethereum `0xf31584...a39b3e` | ⚠️ Unaudited |
| StrategyPumpBTC | core_logic | ethereum | [`0xf12e22...26b491`](./contracts/ethereum-1/0xf12e223408bc50b64b33dae393ef0fb1d926b491/) | ⚠️ Unaudited |
| StrategySatLayer | core_logic | ethereum | [`0xb38bf7...d2eb56`](./contracts/ethereum-1/0xb38bf76d4424fc8003679e06fc205de4d5d2eb56/) | ⚠️ Unaudited |
| StrategySolv | core_logic | ethereum | 5 deployments: ethereum [`0x41076d...4b840d`](./contracts/ethereum-1/0x41076df3ed1c59860245471b918f423ec44b840d/); ethereum `0x5c2d91...44fa14`; ethereum `0x7acd10...e10064`; ethereum `0xd4e08f...3a6a79`; ethereum `0xf703e4...df6681` | ⚠️ Unaudited |
| StrategyZero | core_logic | ethereum | [`0xf9e1a6...fffdc5`](./contracts/ethereum-1/0xf9e1a6e00c319a9713bc7e64893cfa8f26fffdc5/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | 4 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0x7c2881...e23cce`; ethereum `0xb90a47...26c686`; ethereum `0xf70bec...ac541c` | ⚠️ Unaudited |
| TestBridgeWithHook | operational_periphery | ethereum | 3 deployments: ethereum [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/); ethereum `0x210a85...143865`; ethereum `0xfbf1d5...de44bd` | ⚠️ Unaudited |
| ThankYouSatoshi | unknown | ethereum | [`0xb08fbe...1f061e`](./contracts/ethereum-1/0xb08fbe0e46c284c002d7718b992c7022aa1f061e/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 4 deployments: ethereum [`0x0cbee8...b4c54f`](./contracts/ethereum-1/0x0cbee811c47c3a5cb4637f1e58d98b0abbb4c54f/); ethereum `0x19af8a...d309ca`; ethereum `0xa85c89...593a57`; ethereum `0xb39e6f...2019b7` | ⚠️ Unaudited |
| TokenAdapter | adapter | ethereum | 2 deployments: ethereum [`0x873ec2...ddc238`](./contracts/ethereum-1/0x873ec230a070a165198a6c5bce1e62c94fddc238/); ethereum `0xb2afdd...595363` | ⚠️ Unaudited |
| TokenApprovalVerifier | token | ethereum | 3 deployments: ethereum [`0x1cb9cf...076a9a`](./contracts/ethereum-1/0x1cb9cf5439dced63d8f5b7f1a5bf9834d8076a9a/); ethereum `0x641064...572f1a`; ethereum `0xfc3a51...17de71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 9 deployments: ethereum [`0x1eccf9...309582`](./contracts/ethereum-1/0x1eccf9c13d0c3512717d532740f64e43f4309582/); ethereum `0x201121...1c8a70`; ethereum `0x3f66e3...36a2c7`; ethereum `0x50fd70...04c10c`; ethereum `0x5b6f47...ea36be`; ethereum `0x8d76e7...3560a2`; ethereum `0x9fddad...f0a019`; ethereum `0xc8c3ab...3e8b0e`; ethereum `0xdc77ba...a317a0` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | 3 deployments: ethereum [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/); base `0x939197...2b593e`; berachain `0xc3827a...db6e90` | ⚠️ Unaudited |
| USDS2USDC | unknown | ethereum | [`0xe13b6c...db26e3`](./contracts/ethereum-1/0xe13b6c5eafd3f0cdb461ce0138e0fd0fc7db26e3/) | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | ethereum | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | ⚠️ Unaudited |
| UserModule | unknown | ethereum | 2 deployments: ethereum [`0xc170b0...8d8183`](./contracts/ethereum-1/0xc170b044e40c58b96bac975f935fd41aa78d8183/); ethereum `0xfe5ca0...713969` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | berachain | 2 deployments: berachain [`0xa93322...4ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/); berachain `0xe0240d...88dea3` | ⚠️ Unaudited |
| VaultYieldFBTC | core_logic | ethereum | [`0x520081...000af4`](./contracts/ethereum-1/0x5200817ce523f8340a6fa00f800b7df71c000af4/) | ⚠️ Unaudited |
| WalletFactory | registry | ethereum | 3 deployments: ethereum [`0x17f453...ce22ae`](./contracts/ethereum-1/0x17f453846e407409c22621d465d2838f7dce22ae/); ethereum `0x65d9e9...edde84`; ethereum `0x8b46cb...9cc001` | ⚠️ Unaudited |
| WBTC | token | ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WethGateway | token | ethereum | 3 deployments: ethereum [`0x441a28...5ca651`](./contracts/ethereum-1/0x441a28a15b5bd353e9f63b2cd267277cbe5ca651/); ethereum `0x907883...14e60e`; ethereum `0xc397df...6a2aa3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x108a0cc4f56f8b9bb3a3db96bb88b7a8185fc749) | proxy | ethereum | `0xf9dba6...26cc7c` | ❓ Unverified |
| Proxy (impl: 0x1b6be564b8d34285ad61914b2783f44f4bb0cb4c) | proxy | ethereum | `0x885083...523f6c` | ❓ Unverified |
| Proxy (impl: 0x260d5567370c0d72f388ed38d586301422c8b3d0) | proxy | ethereum | `0x4c380d...4c769e` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x24f86a...72b71e` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x2bff7c...9f4bfd` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x54e5ce...3a01de` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x6a66bb...3f90d6` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x6ad91f...acafb6` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0x96b6d0...27d080` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0xa60b87...83cdea` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0xb44be8...6b3d7b` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0xbe1501...da1d1b` | ❓ Unverified |
| Proxy (impl: 0x26bb8ecc592c1676b4fccbfb3bbd1b34aaa77c7b) | proxy | ethereum | `0xf60cb7...345b85` | ❓ Unverified |
| Proxy (impl: 0x312855bf918d2bed7e35f709c2099889e63a2b3d) | proxy | ethereum | `0x0b2166...3fdbe9` | ❓ Unverified |
| Proxy (impl: 0x34dff72c31b077d11d6c6ee8885fe7e7b22c2d49) | proxy | ethereum | `0xd3bdd5...5fdc03` | ❓ Unverified |
| Proxy (impl: 0x45bed9ed1312554580b09e104445f40b3c35d4a8) | proxy | ethereum | `0xfb2d95...580196` | ❓ Unverified |
| Proxy (impl: 0x4b32ee4cd3959c1a828c03ddb5b31644133bb5b5) | proxy | ethereum | `0x01b1af...2f7c04` | ❓ Unverified |
| Proxy (impl: 0x61420b3fbc8532698c1902ef61f4ad55f04cf51c) | proxy | ethereum | `0xd34f59...399d77` | ❓ Unverified |
| Proxy (impl: 0x708ea4e2c95633f8551f2059976c589f37d7e397) | proxy | ethereum | `0xf6c57a...798e7a` | ❓ Unverified |
| Proxy (impl: 0x751512dc1abf80d88718aad625e0c8cd75bf8504) | proxy | ethereum | `0xf2cf49...870dfa` | ❓ Unverified |
| Proxy (impl: 0x7c58686557b8864d911147e968e23eb4eb3257dd) | proxy | ethereum | `0x61f85c...d2fbdb` | ❓ Unverified |
| Proxy (impl: 0x7c9b073da1fa61abb93a70800ff819b8054a2144) | proxy | ethereum | `0x59d169...2d5ede` | ❓ Unverified |
| Proxy (impl: 0x836a409943af9f2d48dcf3e1f3178d125cdd042b) | proxy | ethereum | `0x573b73...203828` | ❓ Unverified |
| Proxy (impl: 0x85a7e1510d14a2e209a9d0109753fe68de55441c) | proxy | ethereum | `0xb8c0c5...1a5d34` | ❓ Unverified |
| Proxy (impl: 0x9931e24ecbee3ccd07326f72eadcd5bb3cacefa4) | proxy | ethereum | `0x640a7a...4d6633` | ❓ Unverified |
| Proxy (impl: 0x9ca9b07a76ba89eb9003ac8fd74e4e8daed7ad6b) | proxy | ethereum | `0x069e54...d4e77e` | ❓ Unverified |
| Proxy (impl: 0x9ca9b07a76ba89eb9003ac8fd74e4e8daed7ad6b) | proxy | ethereum | `0x1e448b...85d3da` | ❓ Unverified |
| Proxy (impl: 0x9ca9b07a76ba89eb9003ac8fd74e4e8daed7ad6b) | proxy | ethereum | `0x41cd17...0501b5` | ❓ Unverified |
| Proxy (impl: 0x9d5eb7c877266bd1c14b397b2a7d21d73ac071d3) | proxy | ethereum | `0xe7f878...5b4b8f` | ❓ Unverified |
| Proxy (impl: 0xb7a4449c471fd1dced71da478b1589f7f9f4552f) | proxy | ethereum | `0x336046...e1c310` | ❓ Unverified |
| Proxy (impl: 0xb7a4449c471fd1dced71da478b1589f7f9f4552f) | proxy | ethereum | `0xec55e7...c3197d` | ❓ Unverified |
| Proxy (impl: 0xbf8f3f913e624a97a87ff9a864de3ae7f261d23a) | proxy | ethereum | `0x64a53b...9b0bec` | ❓ Unverified |
| Proxy (impl: 0xc11111fc1c7bea7624c2598c7cfceb62a72022ad) | proxy | ethereum | `0xaef755...9216bb` | ❓ Unverified |
| Proxy (impl: 0xdd5507a9d2bf8fde12b771df19f122d6c0a0a0fa) | proxy | ethereum | `0x5fa330...11c64a` | ❓ Unverified |
| Proxy (impl: 0xde7480c5fee782411d6cb4119a7b2dbd9af84352) | proxy | ethereum | `0xc49e8f...82d0ba` | ❓ Unverified |
| Proxy (impl: 0xdf19132daa3a18656391fe33e3b116ef91e31edf) | proxy | ethereum | `0x37c314...3701a2` | ❓ Unverified |
| Proxy (impl: 0xe52b42faab94ecde303b1f6e16dafeb5345d2ebd) | proxy | ethereum | `0xcd9dff...058875` | ❓ Unverified |
| Proxy (impl: 0xe9da840d231c45df61650af75a8d4e8a0ea59fb9) | proxy | ethereum | `0xd7ad8e...2c335f` | ❓ Unverified |
| Proxy (impl: 0xeacb9797d4b7b1c82b6fd2b801ace819124dc358) | proxy | ethereum | `0x302822...9f8107` | ❓ Unverified |
| Proxy (impl: 0xf151ff2dd85ce4a61974c06de53200a3f51f5d48) | proxy | ethereum | `0xd8f81c...5d1d56` | ❓ Unverified |
| Proxy (impl: 0xf2cc045fb3eaeaf084e5dd093f9433df25ab655b) | proxy | ethereum | `0x7cb6bb...5f8797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x002a37...932066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x005854...4e0e76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x00b677...0e6a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x019aa9...4d5b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x032a09...e81a86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03c1fa...80de08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03c320...c7f8f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x047815...7339b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04dddd...77c0ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04e3d1...4d01c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07b2f5...4dbc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x096f1b...fcf672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d4974...ae71c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x108a0c...5fc749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x195abf...011c73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b6be5...b0cb4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ec109...f467d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f13d5...dce326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x219000...6f759d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23eb92...8466d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x260d55...c8b3d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26bb8e...a77c7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2907bc...f845a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b832e...eace48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e54a6...e21782` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2efde9...20e0e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f2150...62a4c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2fdc50...c632ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x312855...3a2b3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x330245...c1233f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34dff7...2c2d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x370cea...7d9ba9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38e248...15ef15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a4599...b7d5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a9d4b...989d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bfc2d...5325ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c0edb...201597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ed294...0f69f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f5d80...947eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x419e66...63aa6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42d14e...59fe0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45bed9...35d4a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b32ee...3bb5b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4cd11d...b2246f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x527d01...468d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b9558...ffa2e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5fbceb...733000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x601396...2e96e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61420b...4cf51c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x616a41...0cf942` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x619b3e...4f2b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x624907...e41aaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63cd34...0c9355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64213b...805bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64d772...531cb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67362b...906cec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67eb8c...9ef717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c12a6...2e9022` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x708ea4...d7e397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x728860...df50d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72b65f...cf6fd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x751512...bf8504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x76ba7f...6509ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79da44...fb3bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bf41e...1ab3e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c5868...3257dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c9b07...4a2144` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7cbc0a...50d5b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7dc8a3...cf240e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7dec17...f4fc48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e8ba2...888445` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f2d63...879703` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x825a56...33b488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x836a40...dd042b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83b15a...45ec17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85a7e1...55441c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x886f50...b6dc04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ce174...15e8ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8efdb3...427e3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8fd923...3c8751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x906369...ec0ae0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93d3d4...1aca62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x949f85...4d7391` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96de6a...58258a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9931e2...acefa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9adba7...59dbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ca9b0...d7ad6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cc7c0...6bc1e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d5eb7...c071d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa11eba...1a1bea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa34ecb...1c0d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa351e2...12b45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3542f...792c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5815b...bbf023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa79d00...b81895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa91355...0ca1bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9b89d...fcb7b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9c55c...b56ff2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac7eaa...536bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb13177...b45ba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb40db6...aef403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7a444...f4552f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba8f17...dd6bcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbad5e0...f635a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc8adf...e2ac51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd8f3b...5f37b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf8f3f...61d23a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0069f...ef2294` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc11111...2022ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc40573...828f2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4f60c...46cddf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc56da3...225b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5d7cd...2234f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6cd2a...15507e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcad311...22a949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbcd13...7537dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd42b7...5c4a97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcedeec...15bf00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1216d...6a7186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1e177...c3c9a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2adb1...6851d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd52c28...611a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5a1d7...a6898a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd67e5b...1a2d25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6ba69...810f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd780e9...cf5626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda66c3...dee2e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdca3ab...66ed84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdd5507...a0a0fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdda8cd...92660b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddd2aa...255a55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde7480...f84352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf1913...e31edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe52b42...5d2ebd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9da84...a59fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeacb97...4dc358` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed75d6...82f7c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed8143...60d827` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeec53f...bfe7ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef3fd1...822aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf07f58...f3b72a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf151ff...1f5d48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1cc9e...f7924e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2cc04...ab655b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf37491...b2e43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf39e78...112057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf405fc...20731b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8d195...fee542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe8bd3...781ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff61d1...83a4ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xffe98b...3d2e23` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x09def5...fbe34b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x76b0d2...b0a155` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8fce81...d1a388` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdf1925...756e59` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe1061f...838a8c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf6718b...28b8a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 23 | high |
| [SatLayer Pool - Zellic Audit Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | aging | Direct | contract_name | 23 | high |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) | Asymptotic | Audit | n/a | unknown | Direct | contract_name | 6 | low |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) | Coinspect | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) | Dedaub | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 6 | high |
| [satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) | Dedaub | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [SatLayer Pool - Zellic Audit Report (Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | 33 | high |
| [{% embed url="<>" %}](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) | Oak Security | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x03a16e...5fa108`](./contracts/ethereum-1/0x03a16e0bfa2c5c28991c0446fc849211de5fa108/) | VaultYieldETH | core_logic | $4,709,200.44 | Verified native implementation with $4,709,200.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2410e7...edf4bf`](./contracts/ethereum-1/0x2410e7d8909faa641a090a9c0582b76577edf4bf/) | VaultYieldRSETH | core_logic | $3,172,931.12 | Verified native implementation with $3,172,931.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x095957...766d71`](./contracts/berachain-80094/0x095957ceb9f317ac1328f0ab3123622401766d71/) | Token | token | $1,169,654.22 | Verified native implementation with $1,169,654.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28c24f...506157`](./contracts/ethereum-1/0x28c24ff607c4dbe51e09d5d2dd738826fe506157/) | StrategyDummyImplementation | core_logic | $51,128.61 | Verified native implementation with $51,128.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40c684...2a7b30`](./contracts/ethereum-1/0x40c68480d323919d23abc9b569a2e98b4d2a7b30/) | VaultStETH | core_logic | $50,758.18 | Verified native implementation with $50,758.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0695ea...ea3862`](./contracts/ethereum-1/0x0695ea1585e159368c95da0e65d611fd27ea3862/) | YlstETHVault | core_logic | $11,590.44 | Verified native implementation with $11,590.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22cdae...2a3d0b`](./contracts/ethereum-1/0x22cdae94f135b310d2ffb01e8af05f10092a3d0b/) | VaultStETHWrapper | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93616...d493c1`](./contracts/ethereum-1/0xc936161b3c80494172ae58734e3ce16e26d493c1/) | AdapterManager | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x183d90...d67223`](./contracts/ethereum-1/0x183d908f3e07699c83d77b503d1c1f947ed67223/) | AdminModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c8bf...97f7e3`](./contracts/ethereum-1/0x53c8bf6875c66e8d7c42e30beef7e6241997f7e3/) | Automation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a95f2...60d500`](./contracts/ethereum-1/0x8a95f22c5a2da7c325cf95b58f1b4f9b8460d500/) | BeraPseudoBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | CLAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | Consortium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74d2be...54cdbb`](./contracts/ethereum-1/0x74d2bef5afe200dacc76fe2d3c4022435b54cdbb/) | ControllerLib | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x680417...7b19c8`](./contracts/ethereum-1/0x68041721c81c695b72495f78beac4f7dfd7b19c8/) | ControllerLibSub | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb32950...2090c4`](./contracts/ethereum-1/0xb329504622bd79329c6f82cf8c60c807df2090c4/) | ControllerLink | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045969...9538df`](./contracts/ethereum-1/0x045969904402f5e674ef1f27713f3230929538df/) | ERC2612Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b20d5...4fa7b4`](./contracts/ethereum-1/0x0b20d5d59e14c71a948d55439019a2aaf74fa7b4/) | FeeBoxETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294fe9...4e8313`](./contracts/ethereum-1/0x294fe934f47d95a54a436a148963da3fef4e8313/) | FeeBoxStETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e055d...5574df`](./contracts/ethereum-1/0x6e055d5592e41709c3e70539a2b53933455574df/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77d81c...8a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/) | IBCVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0ad94...7792c7`](./contracts/ethereum-1/0xa0ad94ac894cdc591cf3419a460cd683bf7792c7/) | LendingLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x485fd9...03c12e`](./contracts/ethereum-1/0x485fd98f834b4bf9db855f8fa03990318103c12e/) | LiquidCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaec1fb...039a3b`](./contracts/ethereum-1/0xaec1fbb90528533d5f066094abdeb2f1b0039a3b/) | LiquidFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f26b0...8404ac`](./contracts/ethereum-1/0x6f26b0f570c2cfb4050b424ef6ea5903818404ac/) | LiquidOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1693b...9ffa3b`](./contracts/ethereum-1/0xd1693b20932c798a63375db0252be7ca449ffa3b/) | LiquidVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bf3...66d97d`](./contracts/ethereum-1/0x039bf39fad50d8faae01171e08a296a52066d97d/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72233f...dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ProxyMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf469fb...0a012e`](./contracts/ethereum-1/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | PumpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e9378...1222d1`](./contracts/ethereum-1/0x0e9378e68bf3cfe89d646902d174c5f3891222d1/) | ReadModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cc3eb...4a55ac`](./contracts/ethereum-1/0x5cc3ebeb7294655c3f3a6c7b0f6b9c422d4a55ac/) | ReceiverOnMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09826f...6fe392`](./contracts/ethereum-1/0x09826f37df349258c1a209abd37ab614296fe392/) | RedeemOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd4dfb0...f97782`](./contracts/berachain-80094/0xd4dfb080a8904a7e2b7dfcc524cb828584f97782/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x563a27...731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42b8e...d5cf00`](./contracts/ethereum-1/0xf42b8eb69b6fcadb9191c15aa005a9c4a6d5cf00/) | StrategyAvalon | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x302d70...23a755`](./contracts/ethereum-1/0x302d709611a4fbacef396f05493918257a23a755/) | StrategyBedrock | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a4fb...6d9425`](./contracts/ethereum-1/0x24a4fb8cc04313c0c45c06ac87159f09546d9425/) | StrategyBedrock18DEC2025 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09511b...8cab3e`](./contracts/ethereum-1/0x09511b16527af9067170c9267abf563fcd8cab3e/) | StrategyBedrock22MAY2025 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c3c3...7c20a5`](./contracts/ethereum-1/0x31c3c3a9ab22663e438962cc57037492717c20a5/) | StrategyBedrock27MAR2025 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe457e5...13234f`](./contracts/ethereum-1/0xe457e50c874b7b133dc81d9f40698c0fbc13234f/) | StrategyCrossStub | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0415d1...f923a2`](./contracts/ethereum-1/0x0415d1e50d8cf32884dd420a1d6a98d4baf923a2/) | StrategyDefault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89ad20...c9758c`](./contracts/ethereum-1/0x89ad2070b7522b08aa046e100350a9c2afc9758c/) | StrategyETHConverter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dff2c...b2bb60`](./contracts/ethereum-1/0x3dff2c398f12a61c30c6c9d17da85b2d1fb2bb60/) | StrategyGHO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x142193...d2cf1e`](./contracts/ethereum-1/0x142193cddb33950facb12355373295fb08d2cf1e/) | StrategyHyperliquidSTETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0415a2...44d67f`](./contracts/ethereum-1/0x0415a25b6f01f671f252258a3433d2aa6144d67f/) | StrategyMellowSteakhouse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a53f9...44b0a8`](./contracts/ethereum-1/0x2a53f9f20137fc1253c5b6edecb4fd48e044b0a8/) | StrategyPump | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12e22...26b491`](./contracts/ethereum-1/0xf12e223408bc50b64b33dae393ef0fb1d926b491/) | StrategyPumpBTC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb38bf7...d2eb56`](./contracts/ethereum-1/0xb38bf76d4424fc8003679e06fc205de4d5d2eb56/) | StrategySatLayer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41076d...4b840d`](./contracts/ethereum-1/0x41076df3ed1c59860245471b918f423ec44b840d/) | StrategySolv | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9e1a6...fffdc5`](./contracts/ethereum-1/0xf9e1a6e00c319a9713bc7e64893cfa8f26fffdc5/) | StrategyZero | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c5bb8...fa7b20`](./contracts/ethereum-1/0x1c5bb82427e808f57c1c572722ea1cf6cefa7b20/) | TestBridgeWithHook | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cbee8...b4c54f`](./contracts/ethereum-1/0x0cbee811c47c3a5cb4637f1e58d98b0abbb4c54f/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb9cf...076a9a`](./contracts/ethereum-1/0x1cb9cf5439dced63d8f5b7f1a5bf9834d8076a9a/) | TokenApprovalVerifier | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f119f...e60eee`](./contracts/ethereum-1/0x4f119f538cb77faafeb2a857e268ffb66fe60eee/) | USDS2USDC2DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc170b0...8d8183`](./contracts/ethereum-1/0xc170b044e40c58b96bac975f935fd41aa78d8183/) | UserModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa93322...4ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | VaultWithoutNative | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x520081...000af4`](./contracts/ethereum-1/0x5200817ce523f8340a6fa00f800b7df71c000af4/) | VaultYieldFBTC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17f453...ce22ae`](./contracts/ethereum-1/0x17f453846e407409c22621d465d2838f7dce22ae/) | WalletFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x441a28...5ca651`](./contracts/ethereum-1/0x441a28a15b5bd353e9f63b2cd267277cbe5ca651/) | WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 163 |
| upstream | 9 |
| standard_library | 22 |
| needs_review | 117 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, low=1
- Match method counts: extraction_exact=92

Zero-match audit list:

- [3189] {% embed url="<>" %}
- [3190] {% embed url="<>" %}
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf
- [3193] satlayer-evm-dedaub-20250809.pdf
- [3196] {% embed url="<>" %}
- [3197] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
