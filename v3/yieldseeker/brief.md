# Agentic Audit Brief: YieldSeeker

## Project Overview

- Project: YieldSeeker (`yieldseeker`)
- Website: [https://yieldseeker.xyz](https://yieldseeker.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.871Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base
- Contract surface: 345 unique implementations (737 raw deployments)
- DeFi Llama TVL: $1,287,639.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 46 project-authored contract(s) across 1 chain(s); 7 ERC4626 vaults, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 20 common project-authored base contract(s) (multicall, ownable2step, constants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 737; live-surface contracts included: 737 (436 live, 301 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/59 (0.0%)
- Deployed-live implementations: 59 of 345 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 285
- Unique implementations: 345
- Raw deployments: 737
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | base | n/a | [`0x023d35...537fcf`](./contracts/base-8453/0x023d357d04f2d024993f6c002837ed3195537fcf/) | ⚠️ Unaudited |
| AutoCompound | unknown | base | n/a | 16 deployments: base [`0x06f64f...6bd7b9`](./contracts/base-8453/0x06f64f46415aa307c46692f73fd85649086bd7b9/); base `0x1218bb...6add80`; base `0x16d89b...6f48f2`; base `0x31d3c6...9a43c2`; base `0x3f0a58...12b43e`; base `0x46396e...0f7cb7`; base `0x4a2d24...a41357`; base `0x4d2f64...eea3e8`; base `0x595394...205aa0`; base `0x5b1c31...1e24aa`; base `0x91a7fd...3c3cae`; base `0xa148be...e26ba1`; base `0xbb94c2...047ae5`; base `0xd6bfe1...6ec349`; base `0xdf46f1...92f185`; base `0xeaa288...d407d1` | ⚠️ Unaudited |
| AutopoolETH | core_logic | base | n/a | [`0x9c6864...84c831`](./contracts/base-8453/0x9c6864105aec23388c89600046213a44c384c831/) | ⚠️ Unaudited |
| BeaconProxy | registry | base | n/a | [`0x611745...b898d1`](./contracts/base-8453/0x611745c9107d0197f161556691c5129fd9b898d1/) | ⚠️ Unaudited |
| CommunityRewards | unknown | base | n/a | 2 deployments: base [`0x3c113d...57e46d`](./contracts/base-8453/0x3c113d68c2eeb665c2219b26d3090074e257e46d/); base `0xe63f5f...109aa2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xa456c7...7da37c`](./contracts/base-8453/0xa456c77d358c9c89f4dfb294fa2a47470b7da37c/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbdae5d...b248aa`](./contracts/base-8453/0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xfc81df...3369fe`](./contracts/base-8453/0xfc81dfde25083a286723b7c9dd7213f8723369fe/) | ⚠️ Unaudited |
| EVault | core_logic | base | n/a | 4 deployments: base [`0x085178...9a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b...80ee16`; base `0x4c1aed...90f61e`; base `0xc063c3...a650fb` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0xf016fe...e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ⚠️ Unaudited |
| Execute | unknown | base | n/a | [`0xdbdd7b...2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | base | n/a | 2 deployments: base [`0x6bcb1a...eeac5b`](./contracts/base-8453/0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b/); base `0xaa4a65...716673` | ⚠️ Unaudited |
| fToken | token | base | n/a | [`0xf42f57...fd9169`](./contracts/base-8453/0xf42f5795d9ac7e9d757db633d693cd548cfd9169/) | ⚠️ Unaudited |
| GaugeManager | operational_periphery | base | n/a | 55 deployments: base [`0x03486d...6a0e11`](./contracts/base-8453/0x03486dd203b725337a0ba72ea60f26c3966a0e11/); base `0x071e48...f0e3a3`; base `0x0bc5e4...03fb2b`; base `0x111559...849cdb`; base `0x1462a8...ac600a`; base `0x16fec3...b84338`; base `0x19f92c...94ba04`; base `0x1a2b34...9dc4e8`; base `0x1ac20b...9d11b9`; base `0x1e9f31...18242b`; base `0x1f44aa...9b25c4`; base `0x233da9...c95673`; base `0x2365c3...527615`; base `0x284b80...061743`; base `0x32eb0f...bd88c4`; base `0x3411e4...856b7d`; base `0x3a9cb8...b08559`; base `0x3de453...7fb0fc`; base `0x3ef141...0f63ce`; base `0x5b6ccd...8a79ab`; base `0x5c9a7d...7f5d82`; base `0x66a248...d3e129`; base `0x6eeee4...b4da21`; base `0x75e77d...d54025`; base `0x779657...7c231e`; base `0x7a5d83...e7f471`; base `0x7e3db2...aa8be7`; base `0x7edbfc...3585e4`; base `0x7f6b60...a95e68`; base `0x8131cc...d7855f`; base `0x8508f9...0dcfac`; base `0x85cf3b...00159e`; base `0x8abc86...000ce7`; base `0x90ab97...a8644f`; base `0x926877...13c16f`; base `0x96beb0...8c35ca`; base `0x9d01fe...4bbfa5`; base `0xa27545...d15667`; base `0xa38ba0...e10c7a`; base `0xb14384...4d6615`; base `0xb8a43d...2edc7b`; base `0xb92213...50b165`; base `0xbe08ff...d237ec`; base `0xbe2868...91ad19`; base `0xbfe23e...b2bd3b`; base `0xc010d0...f9c9ba`; base `0xc311be...f027d2`; base `0xc92c01...5ec8c8`; base `0xd37cfe...6d03de`; base `0xdbc592...79d141`; base `0xe69991...683e8c`; base `0xe7a8d9...8e24a8`; base `0xe8e4f0...c6715f`; base `0xf10b6c...8dfff8`; base `0xf3e49e...87bb92` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | base | n/a | 59 deployments: base [`0x03688e...0053f9`](./contracts/base-8453/0x03688efa97662d3a2fc7be8a322e02d4810053f9/); base `0x049c4b...f6767e`; base `0x04fd01...c4fa85`; base `0x084531...8d2923`; base `0x089d27...5322f0`; base `0x09e49a...bcb41f`; base `0x0cf4d5...92da7f`; base `0x108885...9e2527`; base `0x10e981...729fe2`; base `0x11f877...71872e`; base `0x180044...fc56c4`; base `0x1905d5...182553`; base `0x20d3c8...9abc2b`; base `0x22f1d4...c87f42`; base `0x2774e0...a98e7f`; base `0x30c434...c47719`; base `0x364606...630fc7`; base `0x39b583...9d481a`; base `0x3ab6af...a9ce57`; base `0x4139d4...b5dd72`; base `0x414690...b9d283`; base `0x447a68...acf7ee`; base `0x456075...5a4276`; base `0x61ad77...204415`; base `0x65aa45...5f0fd0`; base `0x660588...4aa715`; base `0x70079c...bfad7a`; base `0x71b45d...6104cc`; base `0x765547...0898ce`; base `0x76c9ae...473519`; base `0x775e3d...0a12d3`; base `0x7b9b1f...b6f35c`; base `0x7fcef7...4b052c`; base `0x86dde7...5f4ec9`; base `0x87d676...d0039e`; base `0x915dde...af3350`; base `0x93463e...2bf4e3`; base `0x948ce9...bc1138`; base `0xb1bbe8...6664fc`; base `0xb3aeb2...f2372b`; base `0xb54768...11f0d5`; base `0xb6845c...550be5`; base `0xb80fec...7e78c3`; base `0xbf25a8...63e739`; base `0xcddb01...47fa70`; base `0xd0524a...ac7927`; base `0xd09053...73af52`; base `0xd1909c...7aecff`; base `0xd24c18...c7577f`; base `0xd887fb...9d60ce`; base `0xdcd435...c93f3e`; base `0xdd34a1...6fc1c5`; base `0xe2ebb8...a839cb`; base `0xe6ec36...f27523`; base `0xe7bf8f...df81ea`; base `0xe8b636...622c67`; base `0xf24139...6bfabe`; base `0xf44ebd...50f2ab`; base `0xf53563...dd35c4` | ⚠️ Unaudited |
| LeverageTransformer | unknown | base | n/a | 59 deployments: base [`0x059813...ec4e98`](./contracts/base-8453/0x05981339909992a8d9d13e8c651e54f306ec4e98/); base `0x082de2...8b95a4`; base `0x086dca...6de157`; base `0x1535ea...0db30a`; base `0x15c1f7...0dd5d6`; base `0x16ea81...98bc92`; base `0x1d4f04...5fb7be`; base `0x21cbd9...79bc51`; base `0x265817...ec3bb8`; base `0x26bf32...259875`; base `0x2827cb...dbc07f`; base `0x2d470d...1c4dfe`; base `0x2e20e1...a3d5e7`; base `0x36fc9c...9b556a`; base `0x40b8e6...7abf48`; base `0x416f31...8a24b1`; base `0x44138e...4d709b`; base `0x45085a...0fd1f8`; base `0x468695...9f0d0d`; base `0x50d58c...c28b63`; base `0x513051...daa022`; base `0x5253a5...8d4d85`; base `0x52fff3...ea79d6`; base `0x5964f2...b099ed`; base `0x5d45ea...ae52b8`; base `0x5e97a4...3d9b23`; base `0x624870...61bf48`; base `0x674afc...5a045c`; base `0x69193c...18562d`; base `0x691f84...c1c188`; base `0x706d3e...6d951d`; base `0x737902...c8e878`; base `0x787fd5...582c4d`; base `0x7c2998...2d363c`; base `0x969df5...6970c4`; base `0x9743e3...ce2a3f`; base `0x97b02f...0ed481`; base `0xa4bcaf...adfd83`; base `0xab95a1...fcb604`; base `0xad7e16...5daaa7`; base `0xae53b3...01e9b7`; base `0xb2f65f...284471`; base `0xb3562e...b35546`; base `0xba8619...b0a129`; base `0xbb8bc2...3c4286`; base `0xc138d1...66722e`; base `0xc2a0e2...354753`; base `0xc8fd28...103029`; base `0xcbc102...173b5d`; base `0xcbda6f...c0b804`; base `0xd899e0...fc8fe0`; base `0xdd10fa...d9449c`; base `0xe0c658...86936c`; base `0xe328d8...873f07`; base `0xe44de5...e8a998`; base `0xe5c8ff...b98ce7`; base `0xf47d5d...3f5b68`; base `0xf84ef1...404c7a`; base `0xf8d456...80da51` | ⚠️ Unaudited |
| Loan | unknown | base | n/a | 8 deployments: base [`0x371d2b...b234e1`](./contracts/base-8453/0x371d2b977e9f3b780ee0a032ae664edc5db234e1/); base `0x3addab...7657fa`; base `0x8b51e5...836d9d`; base `0x92f4cf...408f0b`; base `0x9c0fc7...391d32`; base `0xdd9b03...c735c3`; base `0xebeb86...a29708`; base `0xf6a044...279b5f` | ⚠️ Unaudited |
| Loan | unknown | base | n/a | [`0x87f18b...58efd0`](./contracts/base-8453/0x87f18b377e625b62c708d5f6ea96ec193558efd0/) | ⚠️ Unaudited |
| LoanV2Native | unknown | base | n/a | 5 deployments: base [`0x2acf5c...cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/); base `0x71a28f...476341`; base `0xe2addc...f7e108`; base `0xf535d5...5caf27`; base `0xf755ec...f249c4` | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 6 deployments: base [`0x12afde...70406e`](./contracts/base-8453/0x12afdefb2237a5963e7bab3e2d46ad0eee70406e/); base `0xbeef01...228183`; base `0xc0c568...0deb12`; base `0xc1256a...00a2ca`; base `0xdb90a4...9bfa83`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 11 deployments: base [`0x1401d1...ce006b`](./contracts/base-8453/0x1401d1271c47648ac70cbcdfa3776d4a87ce006b/); base `0x1d3b1c...774657`; base `0x43e623...1d1f46`; base `0x5435bc...259ca0`; base `0x75e1a1...337e1f`; base `0x877344...6e9084`; base `0xbeefa7...9444e0`; base `0xbeefa7...f3878f`; base `0xcddcdd...b9e8f3`; base `0xe74c49...7ced56`; base `0xef417a...de5d03` | ⚠️ Unaudited |
| PairInfos | periphery | base | n/a | [`0x81f22d...d977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | n/a | [`0x25f32b...0bb4a5`](./contracts/base-8453/0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | n/a | [`0xf0714a...bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | ⚠️ Unaudited |
| PerpManager | governance | base | n/a | [`0xec3e4e...f7d70e`](./contracts/base-8453/0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e/) | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | n/a | [`0x64e262...3da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xa96f57...dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x0638ad...c83982`](./contracts/base-8453/0x0638add2b856e0a6157f2bae3aa08c2923c83982/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x08292d...74503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | ⚠️ Unaudited |
| TimelockController | governance | base | n/a | 3 deployments: base [`0x36bf99...7eb1cf`](./contracts/base-8453/0x36bf9981ba905ca63bdd3271775db43cc57eb1cf/); base `0x477683...bada13`; base `0x7814ea...77ae49` | ⚠️ Unaudited |
| Trading | unknown | base | n/a | [`0x5ff292...20535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ⚠️ Unaudited |
| TradingStorage | unknown | base | n/a | [`0x8a311d...f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x83084c...7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x944766...c9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | ⚠️ Unaudited |
| V3Oracle | operational_periphery | base | n/a | 60 deployments: base [`0x06a1eb...073a7b`](./contracts/base-8453/0x06a1ebf7e086c69c11318486c967f24f0d073a7b/); base `0x08d920...0bd1bb`; base `0x0a9228...ea7db3`; base `0x0bb922...59cabc`; base `0x0d16d5...6804b5`; base `0x0e7520...8df829`; base `0x14b0b9...60625e`; base `0x1572f9...e91e22`; base `0x21df58...1af9e2`; base `0x298816...70a6db`; base `0x2d2b85...bf1bf3`; base `0x2e300f...96757f`; base `0x31c8ae...f4731f`; base `0x3679b7...8ffc21`; base `0x42ca6f...0ea1ee`; base `0x446d5d...65762a`; base `0x4652ac...081260`; base `0x46df44...11fd01`; base `0x4d1f01...14ef60`; base `0x4ec09a...5fbae2`; base `0x52fe73...810e5c`; base `0x5358b4...0e4af0`; base `0x56e886...c8cf6d`; base `0x572826...cd3a67`; base `0x5a6cd5...19e7f6`; base `0x5cf669...e35984`; base `0x5d1e74...46bc57`; base `0x5ec421...44908b`; base `0x6014db...5a63a9`; base `0x6e28dd...388100`; base `0x7c73a6...efcff6`; base `0x82e788...bb67c8`; base `0x896a2f...935279`; base `0x90af66...9423bc`; base `0x921054...248d7f`; base `0x950fa0...fc1d47`; base `0xa1e6d9...479285`; base `0xa33f14...9a691b`; base `0xa53f1d...5ac178`; base `0xad6239...3cc096`; base `0xaed997...9aa7dd`; base `0xb077e7...853b54`; base `0xb2fe04...c148ae`; base `0xbbaa5a...5c893f`; base `0xbefa9d...a8c988`; base `0xc128e9...077db4`; base `0xc27d15...e85521`; base `0xc38f80...ecbd0d`; base `0xc43d78...d4f91a`; base `0xc5664a...a32d4f`; base `0xc7037f...ef666f`; base `0xcced0b...bc310c`; base `0xcd2e4f...168ec1`; base `0xcf33e4...779967`; base `0xd29e12...7712af`; base `0xe865a2...62c929`; base `0xeccfe1...7d9eb8`; base `0xee49e4...365131`; base `0xf3b0ab...a1d4d1`; base `0xf3f647...d05e2d` | ⚠️ Unaudited |
| V3Utils | unknown | base | n/a | 2 deployments: base [`0x7d1f9f...38b9e1`](./contracts/base-8453/0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1/); base `0x98ec49...2ec790` | ⚠️ Unaudited |
| V3Vault | core_logic | base | n/a | 28 deployments: base [`0x02c514...1528cd`](./contracts/base-8453/0x02c51413a0c76af2c71d74cfadb414a0ed1528cd/); base `0x1625d8...18971f`; base `0x22ce29...2454cb`; base `0x2736e6...5f302d`; base `0x33a8ab...c901a6`; base `0x348633...aa988d`; base `0x36aeae...be7599`; base `0x3a23ec...563d3a`; base `0x4aba43...41904b`; base `0x50a854...ac154f`; base `0x516646...22a7a0`; base `0x55fe00...7a2619`; base `0x632fff...dc6564`; base `0x77f769...0fc5f4`; base `0x82132b...31c758`; base `0x93db99...eccd26`; base `0xa1ccfb...005859`; base `0xa2ffbe...8f66b5`; base `0xb0a1a9...53a639`; base `0xb46941...821e38`; base `0xc09d7d...c69084`; base `0xce5614...d67460`; base `0xd4c617...b06156`; base `0xdfeba9...a55adc`; base `0xdff54f...994054`; base `0xe91793...17c3d9`; base `0xeca183...3e6466`; base `0xed8125...cf9d55` | ⚠️ Unaudited |
| Vault | core_logic | base | n/a | 2 deployments: base [`0x053e49...19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/); base `0xb99b6d...507cf5` | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | [`0xe9fb8c...7348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x691411...d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x7bf094...8efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | ⚠️ Unaudited |
| WasabiRouter | adapter | base | n/a | [`0xfae69f...d8558f`](./contracts/base-8453/0xfae69f2c82747f878f74c1e57a1aed945ed8558f/) | ⚠️ Unaudited |
| WasabiVault | core_logic | base | n/a | 80 deployments: base [`0x00d7c8...990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/); base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe8f53b...8a61bb`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | base | n/a | 8 deployments: base [`0x078b93...ac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/); base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2` | ⚠️ Unaudited |
| YieldSeekerAaveV3Adapter | adapter | base | n/a | [`0x2d04c5...36baeb`](./contracts/base-8453/0x2d04c5bdf9ecb7b16833c4d8006c53eb0736baeb/) | ⚠️ Unaudited |
| YieldSeekerAdapterRegistry | adapter | base | n/a | [`0x4a5c3c...189cf0`](./contracts/base-8453/0x4a5c3cca0ac2a1949d600891a89dd19b35189cf0/) | ⚠️ Unaudited |
| YieldSeekerAdminTimelock | governance | base | n/a | [`0x8e074b...e23bab`](./contracts/base-8453/0x8e074b7636f6a56097f1f719e708e2c932e23bab/) | ⚠️ Unaudited |
| YieldSeekerAerodromeCLSwapAdapter | adapter | base | n/a | [`0x94565f...c6b0c4`](./contracts/base-8453/0x94565f4c559d146e2a3e1f18bfeb8b2319c6b0c4/) | ⚠️ Unaudited |
| YieldSeekerAerodromeV2SwapAdapter | adapter | base | n/a | [`0xa3c922...1d020f`](./contracts/base-8453/0xa3c92297ed000f2778924872fc5d2cfe341d020f/) | ⚠️ Unaudited |
| YieldSeekerAgentWalletFactory | registry | base | n/a | [`0x9c7410...c95130`](./contracts/base-8453/0x9c7410a0facac60850c46ee5b58b518daec95130/) | ⚠️ Unaudited |
| YieldSeekerAgentWalletV1 | unknown | base | n/a | [`0x324034...e05051`](./contracts/base-8453/0x32403455357589523435db18b414057d7ce05051/) | ⚠️ Unaudited |
| YieldSeekerCompoundV2Adapter | adapter | base | n/a | [`0x3f7de8...d5366a`](./contracts/base-8453/0x3f7de883c831b3f164bdc57855f199616ad5366a/) | ⚠️ Unaudited |
| YieldSeekerCompoundV3Adapter | adapter | base | n/a | [`0x66621c...9b3ad0`](./contracts/base-8453/0x66621c39cdea3359c22b6d9de101a3b9d19b3ad0/) | ⚠️ Unaudited |
| YieldSeekerERC4626Adapter | adapter | base | n/a | [`0x3bf2b1...f12ad7`](./contracts/base-8453/0x3bf2b1e1da1bd2c3d397e9df06b7f717c2f12ad7/) | ⚠️ Unaudited |
| YieldSeekerFeeTracker | unknown | base | n/a | [`0x26f4bb...c957db`](./contracts/base-8453/0x26f4bb36dbb42fd38956c6c1e6602a9182c957db/) | ⚠️ Unaudited |
| YieldSeekerMerklAdapter | adapter | base | n/a | [`0xda7ac0...2bfc0c`](./contracts/base-8453/0xda7ac043a74f1f96da01b073743448b6ba2bfc0c/) | ⚠️ Unaudited |
| YieldSeekerSwapSellPolicy | unknown | base | n/a | [`0x1ce58b...9cf3ec`](./contracts/base-8453/0x1ce58b462284b2ee8084ef36030fe03ae89cf3ec/) | ⚠️ Unaudited |
| YieldSeekerUniswapV3SwapAdapter | adapter | base | n/a | [`0x4ad957...840b58`](./contracts/base-8453/0x4ad957983f4a419f847664722870f4033c840b58/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | base | n/a | [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (285)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0137cf...3f48e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0301d4...1c8dcf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x030ad5...5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x043413...f62b4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053ae6...880c0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05f018...325b07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0694b9...678abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07e73f...cd3666` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08dcdb...285957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09ba7f...607294` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a9732...a84d4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b14fe...602e23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4a35...6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c0104...443913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c16ff...9c7970` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c78ee...e11897` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d28bc...14610f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d73c2...ef5e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e1456...29916a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fe822...9f8623` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ff4b8...f05800` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100451...8a94fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x118f99...c1e5c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1216d1...151680` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12a31b...2fc92d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142ce7...fc9717` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18145b...73a442` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x186ef3...044a86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x188c9b...2eac3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18c2ab...e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19c804...c01e08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a3b8a...2f1dc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1adbdd...434605` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bb920...118be5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c0527...9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c4888...008488` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1dc763...d3b858` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e2c31...ce04fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x201e6f...5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20a27e...884498` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20b7cd...b97f84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2182b5...b84684` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21aaaa...09189e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21b48f...f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21bc69...eeb6ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fd41...946bcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23c1e2...82e528` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23ca23...4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24e4d4...433551` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25244f...2b9553` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25459e...7c2e4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26ecad...ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2867d6...3a8334` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28fe58...b4d92a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x295d89...273815` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ac590...6d56e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b80d5...f0657c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d898e...1ae8bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ea6b2...61d7bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3075ca...e5c3d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x307f65...fcc653` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37382e...2f9735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37e799...6f2e01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37eb65...5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39fe28...d4785b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a0724...2d355f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b168c...d486b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c7645...349a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d1c97...4de11b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ddf12...c109cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3dfe6e...281c4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f133f...47b747` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x406fc1...3f8d2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4425dc...3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457c7b...4f9773` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457fea...765b6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45d88c...f13937` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4631ee...c3fff7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x478805...58d421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4849fb...0cc7ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x495077...f52554` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a4126...b2d193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b073a...ecb73d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c8c3f...3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cf914...c91e46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d858a...79349a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f20b6...7b0978` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x511ceb...831349` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51abc0...86fb61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51e5a0...d89fd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x534605...31ac04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53bfd2...fb1f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54ca91...1f3e5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5523f1...2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5557f3...255109` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x560b56...1e8d74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56e0e3...cf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5826e9...061eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x583c44...cb477d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5998fa...632539` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b5e47...c9c4df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b6d7a...60a126` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c0116...50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d56b8...77c43d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e515a...41b554` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e9045...6dc186` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ef03e...064655` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5efce5...f5073c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f1a44...751e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6188d4...8f4cef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61c5e2...679170` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x620158...3321d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a993...59566e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63b2f9...bd0036` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x646f66...828001` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64be8d...1e7088` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x696d0d...2045a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x699b36...db854a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69e679...7c6972` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a12e6...33b71c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bd652...5bafe6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c6eb6...63b1cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c98f8...7e94ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f5fb1...4c3a42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x710ab5...3d9e74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x715cb5...3f739b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d035...eaaf0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x723ae1...b99a02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72cec4...9bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72ecf7...f1255e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x746514...c63913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x751d49...7d196c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75eef2...fa14f9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x761e20...d43c35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776ec8...585b43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x780cc3...c7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b18b3...aec979` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7de3b1...7b76ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7df60d...a3e1a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81116f...0e0706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83ac60...b57e70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83b218...8e8b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x849ac2...6b306a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851fc7...1b1bf2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85f7d1...0f3f85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87b76f...d57952` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88e23d...2012a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88f82a...d2921f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x892927...9aa03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x894aac...3e26a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89941a...5e05b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ac5aa...a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bdec8...c624a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ddf5f...9d7a68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fbe84...d73821` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90af87...daf390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92ed15...d6ff94` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93ce08...77c487` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x969ed3...8931d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9762bc...9dea01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x991cc2...531e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b98c7...4976de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bb199...688394` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c4a49...265057` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c58aa...f56971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c9376...1e0312` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e3311...1284c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e50ce...ceec8f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f1f6f...94d32b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f6158...97d644` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fc666...cd7193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa13e59...aa61f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa217ca...7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4b628...e93b52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5ba9e...c58dd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa79c3a...e04552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8deab...1c2046` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa98c35...9ebcaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab52f8...f7c2b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4550...fb3b8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad4edc...bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad6962...eb1446` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf20d7...98714a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb07b88...38e75e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1284d...be3cd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb42520...e20c08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb622b4...2d86c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6544b...9ef813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb772e1...bbd772` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7c3ac...1b019e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb88dcf...4509c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9d6dc...7e738c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba0a85...76c386` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdd3f9...536f74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe19d3...8eee07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe37bc...1c8cd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbfea82...505188` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1ba1d...ae0b5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2425b...092fc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2e9ce...4ed5ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc34ed8...e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc4c2e1...775f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5d381...6dae8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc60b95...288a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc69ada...54aa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f4e7...cbeb9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc92279...8a2a0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc99eb1...1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcac344...1b7fcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc5cc6...e39b75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6b7f...8436c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcee7ec...50cfd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd008f2...ff5e19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd09324...841529` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0a246...a8316b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd1cfbc...0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2f7bc...fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3e726...2b11d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4fea9...d0d641` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ea7d...b82c6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd627fa...7ccfe2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6dd0a...28bc3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd70c79...a1c384` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd78f41...9847d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9f80f...dbb698` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf14e...a5cb1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb1a5f...8d59ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde1734...36eeb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde8ac9...35835f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf74c9...dffe62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0151d...36072f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe02398...609cce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1a60b...695044` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2493c...4ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe289a4...a6c5b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe31ed4...361dc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5579b...8b3a24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe639d6...ecebc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe685f0...713118` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6ebfb...a3aab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7fcaa...578bb9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea3952...50cdab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec0af9...8be22f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeca362...f1db3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed071a...956915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeda1e6...93c061` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xedc822...cc1a9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee7126...109a77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeec8f8...3b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1050a...84a4a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf132bd...ba06a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf18fcd...5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1e881...7c8f18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2299b...f42f01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2e381...ed1786` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf32992...d1e4f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4c17e...b0dd26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60304...d0d1da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf68920...5526ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6c04c...ce0e4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf761ac...d13d01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb5053...95fbea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbba68...3730a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc55ab...f9252f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc8d74...bedcad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcca37...94a849` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfce7d6...67a3c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfce891...fcd05d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd8238...3ce547` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdb262...bc7489` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe264c...bb49f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff86e4...e4a305` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffd093...06a08f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffdf46...616543` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20260305-nethermind.pdf](https://github.com/tokenpage/yieldseeker-contracts/blob/main/audits/20260305-nethermind.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 345 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14223] 20260305-nethermind.pdf

Fork inheritance lineage and inherited audits are included when available.
