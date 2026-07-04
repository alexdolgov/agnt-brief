# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 93.1% below peak)
- Generated: 2026-07-03T21:05:27.886Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: avalanche, bsc, ethereum, fantom, gnosis, polygon
- Contract surface: 202 unique implementations (370 raw deployments)
- DeFi Llama TVL: $18,101,801.55
- On-chain TVL (included contracts): $33,625,994.90
- TVL by chain: Ethereum $33,625,839.17 | Polygon $122.19 | Avalanche $32.98 | Bsc $0.56

## Project Description

Liquid Staking. Structurally: 231 project-authored contract(s) across 5 chain(s); 1 ERC4626 vault, 82 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 17 common project-authored base contract(s) (multicall, lockable, erc20upgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 584; live-surface contracts included: 265 (180 live, 85 unknown).
- Excluded by liveness: 319 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/121 (0.8%)
- Deployed-live implementations: 122 of 202 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/121
- Verified + Unaudited implementations: 120
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 202
- Raw deployments: 370
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $33,625,872.78
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.8% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AETH_R1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/); ethereum `0x977803...ab6f3c` | ✅ Audited |

### ⚠️ Verified + Unaudited (120)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ANKRToken | token | ethereum | n/a | [`0x829033...f3edd4`](./contracts/ethereum-1/0x8290333cef9e6d528dd5618fb97a76f268f3edd4/) | ⚠️ Unaudited |
| AnkrTokenStaking | token | ethereum | n/a | 2 deployments: ethereum [`0xab15b0...1f9e7f`](./contracts/ethereum-1/0xab15b0bddc012092cb23f53953149a7f8c1f9e7f/); ethereum `0xd315b7...77e411` | ⚠️ Unaudited |
| AvalanchePool_R6 | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x7baa1e...0a836d`](./contracts/avalanche-43114/0x7baa1e3bfe49db8361680785182b80bb420a836d/); avalanche `0xfad2d6...b45874` | ⚠️ Unaudited |
| SwapPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x39126e...5e1cb6`](./contracts/bsc-56/0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6/); bsc `0x49b85a...d98642` | ⚠️ Unaudited |
| BNBStakingPool_R4 | core_logic | bsc | n/a | 2 deployments: bsc [`0x9e347a...afe86e`](./contracts/bsc-56/0x9e347af362059bf2e55839002c699f7a5bafe86e/); bsc `0xbbbc99...88a9ac` | ⚠️ Unaudited |
| SwapPool | core_logic | polygon | n/a | 2 deployments: polygon [`0x62a509...eddb2a`](./contracts/polygon-137/0x62a509ba95c75cabc7190469025e5abee4eddb2a/); polygon `0xbd00f0...60dbff` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/); ethereum `0xecce87...f5bc4a` | ⚠️ Unaudited |
| aBNBb | unknown | bsc | n/a | 3 deployments: bsc [`0x00f8e6...9d6abc`](./contracts/bsc-56/0x00f8e64a8651e3479a0b20f46b1d462fe29d6abc/); bsc `0xd315b7...77e411`; bsc `0xe380b0...652ecf` | ⚠️ Unaudited |
| aBNBb | unknown | bsc | n/a | 2 deployments: bsc [`0x2b6f9b...380496`](./contracts/bsc-56/0x2b6f9be1c144564162353e91317845f956380496/); bsc `0xbacd62...456b07` | ⚠️ Unaudited |
| aBNBb_R1 | unknown | bsc | n/a | 2 deployments: bsc [`0x952398...7759f5`](./contracts/bsc-56/0x952398318838b4915ee5e800622a9613887759f5/); bsc `0xfe3998...e00c0e` | ⚠️ Unaudited |
| aBNBc | unknown | bsc | n/a | 3 deployments: bsc [`0x2c93bd...250c9e`](./contracts/bsc-56/0x2c93bd60c7cec4c2ca84f937a2c15e035d250c9e/); bsc `0x88bc9a...23fe81`; bsc `0xa2d1aa...c5cc8b` | ⚠️ Unaudited |
| aBNBc | unknown | bsc | n/a | 2 deployments: bsc [`0x50be7a...aff49c`](./contracts/bsc-56/0x50be7ae35c5bf838d060045f33f93449f9aff49c/); bsc `0x964592...db5874` | ⚠️ Unaudited |
| aBNBc_R1 | unknown | bsc | n/a | 2 deployments: bsc [`0x2c00ce...81c26e`](./contracts/bsc-56/0x2c00ce1a935ff8c9e78580533e2e17c36281c26e/); bsc `0x52f24a...178827` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2d8ba0...aafc4f`](./contracts/ethereum-1/0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f/); ethereum `0x3bfce3...d18c4f`; ethereum `0xb70f12...06bc74`; ethereum `0xe7e39d...b294ce` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe672e0...1fda64`](./contracts/ethereum-1/0xe672e0e0101a7f58d728751e2a5e6da5ff1fda64/); ethereum `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| aMATICb_R7 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99534e...38ebfe`](./contracts/ethereum-1/0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe/); ethereum `0xc56c74...2d7f80` | ⚠️ Unaudited |
| aMATICc_R4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26dcfb...c5480c`](./contracts/ethereum-1/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c/); ethereum `0x2c00ce...81c26e` | ⚠️ Unaudited |
| AnkrETHRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f87f0...f06d02`](./contracts/ethereum-1/0x1f87f00c24f41a06d8ce81849584079c5df06d02/); ethereum `0x32c1cd...c3ffeb` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x029bfc...ea4f1a`](./contracts/ethereum-1/0x029bfc71a0dadfa0f9de26e28312f18ba0ea4f1a/); ethereum `0x5c87cc...85408c`; ethereum `0x702ffb...de49e3`; ethereum `0xa274cf...8cf06d`; ethereum `0xfe8189...d4287a` | ⚠️ Unaudited |
| Beacon_R0 | registry | ethereum | n/a | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | bsc | n/a | 3 deployments: bsc [`0x21bbff...806f48`](./contracts/bsc-56/0x21bbff0e92f16b71baa1f93502fccdd2b7806f48/); bsc `0x64081e...2294af`; bsc `0x809ef4...dbe97a` | ⚠️ Unaudited |
| BinancePool_R10 | core_logic | bsc | n/a | 2 deployments: bsc [`0xa274cf...8cf06d`](./contracts/bsc-56/0xa274cfbd1a920a4a19c61de473ac21544a8cf06d/); bsc `0xfe8189...d4287a` | ⚠️ Unaudited |
| BinancePool_R14 | core_logic | bsc | n/a | 2 deployments: bsc [`0xa0c92e...907bcd`](./contracts/bsc-56/0xa0c92efdcea55ca19396e4850b8d29df6f907bcd/); bsc `0xe778cc...cdfffd` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x053ecf...ce14a4`](./contracts/bsc-56/0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4/); bsc `0xe5632c...9659be` | ⚠️ Unaudited |
| BNBStakingPool | core_logic | bsc | n/a | 2 deployments: bsc [`0x2aa271...35fa0e`](./contracts/bsc-56/0x2aa271353d8ead0bb10240b5a9ff69d0e835fa0e/); bsc `0xd6c414...d64664` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x141105...be3c76`](./contracts/polygon-137/0x141105fc3b5bf9ec20e0628507ba580646be3c76/); polygon `0xe254f8...31cbdc` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x7c0e01...e3fb6c`](./contracts/polygon-137/0x7c0e0162de86b01705f5e62a90604a3817e3fb6c/); polygon `0xbb4e7e...553b1c` | ⚠️ Unaudited |
| CerosRouter | unknown | polygon | n/a | 2 deployments: polygon [`0x8d575d...c31858`](./contracts/polygon-137/0x8d575d202b7653fb2e076be451b006626cc31858/); polygon `0xb5a3f3...62b39e` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x27f970...1d1fd1`](./contracts/polygon-137/0x27f97003a947f82039ccf78873b59d4a001d1fd1/); polygon `0x41ca2b...6f10c8` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x29ded4...46a65d`](./contracts/polygon-137/0x29ded4c99690968562f2d067968aa72b7d46a65d/); polygon `0x8855d3...833f2d` | ⚠️ Unaudited |
| CerosYieldConverterStrategy | unknown | polygon | n/a | 2 deployments: polygon [`0x3d78f4...b8c922`](./contracts/polygon-137/0x3d78f47fc07185db380ea873fe970dd096b8c922/); polygon `0x55c9dd...6a29ae` | ⚠️ Unaudited |
| CeToken | unknown | polygon | n/a | 2 deployments: polygon [`0x8ec187...258988`](./contracts/polygon-137/0x8ec1877698acf262fe8ad8a295ad94d6ea258988/); polygon `0xf2393e...f34e1e` | ⚠️ Unaudited |
| CeToken | unknown | polygon | n/a | 4 deployments: polygon [`0xa6ae8f...e34464`](./contracts/polygon-137/0xa6ae8f29e0031340ea5dbe11c2da4466cde34464/); polygon `0xb1b374...982ff8`; polygon `0xb44a25...c43eb3`; polygon `0xd8a045...57117a` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x2bde5a...167d62`](./contracts/polygon-137/0x2bde5adb0da369e28c29b8ea7aca997197167d62/); polygon `0x5e851d...71c345` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x50a180...efb6aa`](./contracts/polygon-137/0x50a180635b233a08c0fe98239d05b40f96efb6aa/); polygon `0x943806...a2d613` | ⚠️ Unaudited |
| CeVault | unknown | polygon | n/a | 2 deployments: polygon [`0x92e77b...72ad7e`](./contracts/polygon-137/0x92e77ba6cecb46733ae482ba1d7e011aa872ad7e/); polygon `0xa82644...572342` | ⚠️ Unaudited |
| Clipper | unknown | polygon | n/a | 3 deployments: polygon [`0x3b87b2...f604c4`](./contracts/polygon-137/0x3b87b26c44971fc0e7e4cead219a1fe4e2f604c4/); polygon `0xbd38b7...015faa`; polygon `0xe148c9...8ed9bb` | ⚠️ Unaudited |
| Clipper | unknown | polygon | n/a | 2 deployments: polygon [`0xb563ef...287831`](./contracts/polygon-137/0xb563ef00c5f7d8589974fd8d9606dc8376287831/); polygon `0xc4c016...989c4b` | ⚠️ Unaudited |
| Config | governance | ethereum | n/a | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x85ea08...e4e16c`](./contracts/ethereum-1/0x85ea08796eb66820379039cab034722e69e4e16c/); ethereum `0xc437df...0e7181` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x31be0f...0887f5`](./contracts/polygon-137/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/); polygon `0xa0ea35...77b9be` | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x31be0f...0887f5`](./contracts/avalanche-43114/0x31be0fa706e391a88c3a09cc13112bd55e0887f5/); avalanche `0xb902b8...5c10f2` | ⚠️ Unaudited |
| Davos | unknown | polygon | n/a | 2 deployments: polygon [`0x0fb82d...15066d`](./contracts/polygon-137/0x0fb82db5676330644acd26a21fd00c749715066d/); polygon `0xec3862...ba5320` | ⚠️ Unaudited |
| DavosBridge | unknown | polygon | n/a | 2 deployments: polygon [`0x78be04...52256b`](./contracts/polygon-137/0x78be0423567a85ba677d3aa5b73b45970e52256b/); polygon `0xa7508b...274dd3` | ⚠️ Unaudited |
| DavosJoin | unknown | polygon | n/a | 2 deployments: polygon [`0x0633ea...f2e591`](./contracts/polygon-137/0x0633ea3769472bd74f30fad828ffb864d9f2e591/); polygon `0x8fcd95...3da6df` | ⚠️ Unaudited |
| DavosProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x046b71...6123cf`](./contracts/polygon-137/0x046b71694b3b659f491247167eda42e0556123cf/); polygon `0x924094...3e068a` | ⚠️ Unaudited |
| DavosProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x9b81eb...3f2374`](./contracts/polygon-137/0x9b81ebcda2d8a3d592cf0e620b0223d92e3f2374/); polygon `0xe2023c...91fd6a` | ⚠️ Unaudited |
| dCOL | unknown | polygon | n/a | 2 deployments: polygon [`0x4f1b83...bce9ac`](./contracts/polygon-137/0x4f1b83ef5009bb4727e4b5efcfaaf5cbf3bce9ac/); polygon `0xd67189...4de9a7` | ⚠️ Unaudited |
| DGTRewards | unknown | polygon | n/a | 3 deployments: polygon [`0x049012...a0c484`](./contracts/polygon-137/0x04901268ee65e989852370c0bad08e1514a0c484/); polygon `0x54809f...727158`; polygon `0x624d6a...3c0b49` | ⚠️ Unaudited |
| dMATIC | unknown | polygon | n/a | 3 deployments: polygon [`0x08abfd...0b71c8`](./contracts/polygon-137/0x08abfd7ded42cc33900d3457118eab7fc40b71c8/); polygon `0x0ace0e...5b7f7e`; polygon `0x87ad5a...702563` | ⚠️ Unaudited |
| Dog | unknown | polygon | n/a | 3 deployments: polygon [`0x062752...36b9fc`](./contracts/polygon-137/0x0627528cc5e1779ff24e47c74b8e86492436b9fc/); polygon `0x122897...540118`; polygon `0x94b4fe...2920b2` | ⚠️ Unaudited |
| Dog | unknown | polygon | n/a | 2 deployments: polygon [`0x9b26a5...a9accd`](./contracts/polygon-137/0x9b26a5e0234aa7eada50020ba0375d3dd7a9accd/); polygon `0xbfd158...d6efb4` | ⚠️ Unaudited |
| EarnConfig | governance | bsc | n/a | 5 deployments: bsc [`0x171643...743252`](./contracts/bsc-56/0x171643555a2173fab81bad1837f043f66d743252/); bsc `0x487424...15960b`; bsc `0x674d1f...ed546f`; bsc `0xc416da...9061d1`; bsc `0xd812ab...2cb4e4` | ⚠️ Unaudited |
| EarnConfig | governance | bsc | n/a | 5 deployments: bsc [`0x219a4e...68b26b`](./contracts/bsc-56/0x219a4e8f8c73d977f8d69596d434b5961068b26b/); bsc `0x258361...20dd56`; bsc `0x39af7e...1f4305`; bsc `0x67428d...719348`; bsc `0xe8396c...c20036` | ⚠️ Unaudited |
| FeeRecipient_R1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x219a4e...68b26b`](./contracts/ethereum-1/0x219a4e8f8c73d977f8d69596d434b5961068b26b/); ethereum `0x90b0c8...3eab08` | ⚠️ Unaudited |
| FETH_R20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x518d26...8f8125`](./contracts/ethereum-1/0x518d26405ca06435227bb3e8de567a16fa8f8125/); ethereum `0xd01ef7...62e5c6` | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725` | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0f74bf...0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/); avalanche `0x6c6f91...843929` | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | n/a | [`0xc33448...c727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0x477c1a...d7173e`](./contracts/polygon-137/0x477c1a369ea157b42f6584a8a5960f9d34d7173e/); polygon `0x6a6450...3ec55e` | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0xa534e0...3abde0`](./contracts/polygon-137/0xa534e0f7b1c6a4be0490a224bacc83220e3abde0/); polygon `0xf0bb4e...abf9c9` | ⚠️ Unaudited |
| GemJoin | unknown | polygon | n/a | 2 deployments: polygon [`0xaf22a9...14c978`](./contracts/polygon-137/0xaf22a9c4713efc52f273c268674bcff6ab14c978/); polygon `0xf3e97a...5e6e0e` | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| IkkaRewards | unknown | polygon | n/a | 2 deployments: polygon [`0x1a80b0...bd5d88`](./contracts/polygon-137/0x1a80b0512580791dda042fef0083e6ce7cbd5d88/); polygon `0x41bbd9...c3083d` | ⚠️ Unaudited |
| InsurancePool_R2 | unknown | gnosis | n/a | [`0xb42bf1...8d0fa2`](./contracts/gnosis-100/0xb42bf10ab9df82f9a47b86dd76eee4ba848d0fa2/) | ⚠️ Unaudited |
| Interaction | unknown | polygon | n/a | 2 deployments: polygon [`0x17a902...096c9b`](./contracts/polygon-137/0x17a902fdc6860734751e315f0799673673096c9b/); polygon `0xdd0bdf...c0db72` | ⚠️ Unaudited |
| Interaction | unknown | polygon | n/a | 2 deployments: polygon [`0x3f5f1b...90dbef`](./contracts/polygon-137/0x3f5f1b733ad75797962434992ee2f5a6b490dbef/); polygon `0xc73452...26d402` | ⚠️ Unaudited |
| InternetBondRatioFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe0810e...40cfa3`](./contracts/ethereum-1/0xe0810e4507cebac8fec3f519205e69c07440cfa3/); ethereum `0xef3c16...54050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R2 | unknown | polygon | n/a | 2 deployments: polygon [`0x4f3872...8bbd07`](./contracts/polygon-137/0x4f3872c6cfab8b39232351b8aab1cbcb958bbd07/); polygon `0xef3c16...54050f` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ff4fb...523f81`](./contracts/ethereum-1/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/); ethereum `0xcb0006...ed7eba` | ⚠️ Unaudited |
| InternetBondRatioFeed_R3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd00b96...3a4d0a`](./contracts/avalanche-43114/0xd00b967296b6d8ec266e4ba64594f892d03a4d0a/); avalanche `0xef3c16...54050f` | ⚠️ Unaudited |
| Jar | unknown | polygon | n/a | 2 deployments: polygon [`0x36417e...341758`](./contracts/polygon-137/0x36417e58b08cef67e32cb80808a6858924341758/); polygon `0x4a20fe...54c03f` | ⚠️ Unaudited |
| Jar | unknown | polygon | n/a | 2 deployments: polygon [`0x97f0bd...5056cf`](./contracts/polygon-137/0x97f0bdadbfaa05a1944ffba862b3336a175056cf/); polygon `0xe69a18...d2165c` | ⚠️ Unaudited |
| Jug | unknown | polygon | n/a | 2 deployments: polygon [`0x5eb89d...7f892f`](./contracts/polygon-137/0x5eb89d7b8e10dec5267727d7ee0f128b557f892f/); polygon `0xc37f6a...156f22` | ⚠️ Unaudited |
| Jug | unknown | polygon | n/a | 3 deployments: polygon [`0x85d05c...e2aba4`](./contracts/polygon-137/0x85d05c7bc4aec86cd77d44dc97751d8ee5e2aba4/); polygon `0xc5a734...a02ebd`; polygon `0xfa9d18...bd0f8a` | ⚠️ Unaudited |
| LinearDecrease | unknown | polygon | n/a | 2 deployments: polygon [`0x604a34...692ec7`](./contracts/polygon-137/0x604a34798db956cd78fec52f857c728496692ec7/); polygon `0xa48f32...dd1298` | ⚠️ Unaudited |
| LinearDecrease | unknown | polygon | n/a | 3 deployments: polygon [`0x78d152...bc10e9`](./contracts/polygon-137/0x78d1528a8010639870874285a28eea4e30bc10e9/); polygon `0xd12b8b...685bd5`; polygon `0xe309c0...077418` | ⚠️ Unaudited |
| LP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d04c6...d67f43`](./contracts/ethereum-1/0x5d04c6c5cce7e68f2dd13ec11742c35792d67f43/); ethereum `0xc465a8...bde5c6` | ⚠️ Unaudited |
| LP | unknown | bsc | n/a | 2 deployments: bsc [`0x757834...3da807`](./contracts/bsc-56/0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807/); bsc `0xf047f2...4267af` | ⚠️ Unaudited |
| LP | unknown | polygon | n/a | 4 deployments: polygon [`0x77bf59...b2d556`](./contracts/polygon-137/0x77bf5996b93c8d747c541e47105c5f7d05b2d556/); polygon `0x817166...bbd6ad`; polygon `0x86e956...e390b1`; polygon `0xc38581...36d2c0` | ⚠️ Unaudited |
| LP | unknown | polygon | n/a | 2 deployments: polygon [`0xa88b54...a953f4`](./contracts/polygon-137/0xa88b54e6b76fb97cdb8ecae868f1458e18a953f4/); polygon `0xd52ad5...d43026` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x0730ba...92e800`](./contracts/polygon-137/0x0730ba2252670cd71580dadf471f3e137592e800/); polygon `0xec1d6a...c2668c` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x20642a...e56525`](./contracts/polygon-137/0x20642aca160e38eeb8dcf34b2cf15f0581e56525/); polygon `0x764ae6...c46554` | ⚠️ Unaudited |
| MasterVault | unknown | polygon | n/a | 2 deployments: polygon [`0x77f4c8...648a8e`](./contracts/polygon-137/0x77f4c841cb87fdfa43ab909cf56f7710af648a8e/); polygon `0xfa3fa8...1aea3f` | ⚠️ Unaudited |
| MasterVault_V2 | unknown | polygon | n/a | 2 deployments: polygon [`0x9a1275...53f30a`](./contracts/polygon-137/0x9a1275304960dbc6a8d4a5795832823a7d53f30a/); polygon `0xd9dbd6...51f783` | ⚠️ Unaudited |
| MaticOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x314348...b0919e`](./contracts/polygon-137/0x31434814587a51b581495e0506056f18a4b0919e/); polygon `0xec3488...12acff` | ⚠️ Unaudited |
| MaticOracle | unknown | polygon | n/a | 7 deployments: polygon [`0x4f1747...5e9363`](./contracts/polygon-137/0x4f174701c68c4b92d531e37258b8c705585e9363/); polygon `0x67423e...c0fe09`; polygon `0x72112d...6dc8a1`; polygon `0x8464bc...388576`; polygon `0xb87d1c...b987f8`; polygon `0xc5da8f...cd826a`; polygon `0xf7f638...502c3e` | ⚠️ Unaudited |
| MrpcDeposit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e1e6d...008c8f`](./contracts/ethereum-1/0x5e1e6dcf05fb49568aa66f40b9e3834c86008c8f/); ethereum `0x764737...6b97a9` | ⚠️ Unaudited |
| MrpcDeposit | unknown | polygon | n/a | 2 deployments: polygon [`0x8ff4fb...523f81`](./contracts/polygon-137/0x8ff4fb91c9fff1f57310de52d52d033c00523f81/); polygon `0xf8be84...e25ae3` | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/); ethereum `0x88b44e...65d2b9` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82af70...2adf3d`](./contracts/ethereum-1/0x82af704a46d358b979f64b2e43823097312adf3d/); ethereum `0xcfd4b4...b3ce89` | ⚠️ Unaudited |
| ProviderRegistry | unknown | gnosis | n/a | 2 deployments: gnosis [`0x6c6f91...843929`](./contracts/gnosis-100/0x6c6f910a79639dcc94b4feef59ff507c2e843929/); gnosis `0x8a2f83...2ce27a` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 23 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x39af7e...1f4305`; ethereum `0x595987...ed9c5d`; ethereum `0x5e6bb1...2378f2`; ethereum `0x6a4ae7...448ad9`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30`; bsc `0x32015e...1de38f`; bsc `0x32c1cd...c3ffeb`; bsc `0xdc8df5...689fd2`; gnosis `0xcc4e08...2cb392`; polygon `0x2304ce...0b1890`; polygon `0x24189c...755599`; polygon `0x619b44...31b8fa`; polygon `0x6a4ae7...448ad9`; polygon `0x859cb9...a50954`; polygon `0xc83226...5d83cd`; avalanche `0x3bfce3...d18c4f`; avalanche `0x6a4ae7...448ad9`; avalanche `0xb13cec...26138b`; avalanche `0xcc4e08...2cb392` | ⚠️ Unaudited |
| RatioAdapter | unknown | polygon | n/a | 2 deployments: polygon [`0x2b6fe7...c3c863`](./contracts/polygon-137/0x2b6fe7d2b9ac97bf5411d1c71c9521f51ac3c863/); polygon `0xb24583...d88e0a` | ⚠️ Unaudited |
| Sikka | unknown | polygon | n/a | 2 deployments: polygon [`0x00658f...fedbc2`](./contracts/polygon-137/0x00658fc8ec685727f3f59d381b8ad8f5e0fedbc2/); polygon `0x491579...bacd0d` | ⚠️ Unaudited |
| SikkaJoin | unknown | polygon | n/a | 2 deployments: polygon [`0x84cd2e...77c3c1`](./contracts/polygon-137/0x84cd2e9e46fb44e9f775a5fd08edcdaf2377c3c1/); polygon `0xb2565e...0352bb` | ⚠️ Unaudited |
| SikkaProvider | unknown | polygon | n/a | 2 deployments: polygon [`0x2f2e74...bc944d`](./contracts/polygon-137/0x2f2e746b2e9ef33c2ac6348985f100af8dbc944d/); polygon `0x9edc0e...e59d2b` | ⚠️ Unaudited |
| sMATIC | unknown | polygon | n/a | 2 deployments: polygon [`0x30faab...279536`](./contracts/polygon-137/0x30faab28c1af8f90574db759243888c8bd279536/); polygon `0xb396b3...86ee1d` | ⚠️ Unaudited |
| Spotter | unknown | polygon | n/a | 2 deployments: polygon [`0x7e426f...564b0f`](./contracts/polygon-137/0x7e426f367c40fc6e1ec919e0a7e51fcb9a564b0f/); polygon `0xf97680...f97a62` | ⚠️ Unaudited |
| Spotter | unknown | polygon | n/a | 2 deployments: polygon [`0xbbf35c...4079fe`](./contracts/polygon-137/0xbbf35c9dcb16ea3cb64a0fce51c51f9ca34079fe/); polygon `0xd659ae...740509` | ⚠️ Unaudited |
| StakingConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| StakingConfig | unknown | gnosis | n/a | [`0x11e6ec...df6618`](./contracts/gnosis-100/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | ⚠️ Unaudited |
| StakingConfig_R2 | unknown | gnosis | n/a | [`0x3bfce3...d18c4f`](./contracts/gnosis-100/0x3bfce37b5401bef13c78830d3a9fb14294d18c4f/) | ⚠️ Unaudited |
| StakingPool_R3 | core_logic | gnosis | n/a | [`0xfd0f61...6c34d6`](./contracts/gnosis-100/0xfd0f61255913825da1c194b985f04982966c34d6/) | ⚠️ Unaudited |
| StMaticOracle | unknown | polygon | n/a | 2 deployments: polygon [`0x092fd7...b19734`](./contracts/polygon-137/0x092fd701c7c082b2e4dd91f4e139bb3749b19734/); polygon `0x4be55a...700fee` | ⚠️ Unaudited |
| SwapPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdc8df5...689fd2`](./contracts/ethereum-1/0xdc8df5ee5072f726dc633dd8e7a6b19695689fd2/); ethereum `0xf047f2...4267af` | ⚠️ Unaudited |
| SwapPool | unknown | polygon | n/a | 4 deployments: polygon [`0x2fa187...d7af78`](./contracts/polygon-137/0x2fa1879c6c5d058dd363cf99020689836bd7af78/); polygon `0x93ca89...a6339d`; polygon `0x9ddc99...a4357f`; polygon `0xe345c6...97a6e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x02934a...a8ff2e`](./contracts/polygon-137/0x02934a1eaf91504429422ed9fcea78cfa4a8ff2e/); polygon `0x5763b3...e6c6bd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x24027b...740393`](./contracts/polygon-137/0x24027bf7268b7617837213d0badba4553d740393/); polygon `0x442dc9...fe9c56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6a3b5b...8abe2d`](./contracts/avalanche-43114/0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d/); avalanche `0x7e28bf...ad6ecd` | ⚠️ Unaudited |
| ValidatorManager_R3 | governance | gnosis | n/a | [`0xe95a20...c2c3cb`](./contracts/gnosis-100/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| Vat | unknown | polygon | n/a | 2 deployments: polygon [`0x083725...051995`](./contracts/polygon-137/0x0837253af481db0a9b5ea17f9f983e7606051995/); polygon `0xa983f4...06f639` | ⚠️ Unaudited |
| Vat | unknown | polygon | n/a | 2 deployments: polygon [`0xbdf1dc...4a67a3`](./contracts/polygon-137/0xbdf1dcec3cd02a5230672fa4bd779bdb2e4a67a3/); polygon `0xfc9755...e5b38b` | ⚠️ Unaudited |
| Vow | unknown | polygon | n/a | 3 deployments: polygon [`0x58cf68...271429`](./contracts/polygon-137/0x58cf68493bc178a17b43b270ddbb8d4c1a271429/); polygon `0xb29c98...3f2ed2`; polygon `0xf22099...9116ee` | ⚠️ Unaudited |
| Vow | unknown | polygon | n/a | 2 deployments: polygon [`0x6cfca0...2c240f`](./contracts/polygon-137/0x6cfca08a8535a1029f906b1d7aceb421372c240f/); polygon `0xe437e4...b7091d` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x02048c...b7c5db`](./contracts/polygon-137/0x02048cb6be76db99bec28553edd1184dd7b7c5db/); polygon `0x1c539e...1981f9` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x02237a...ec7738`](./contracts/polygon-137/0x02237aaf5b62dbcdeac287e76f9ac1d5deec7738/); polygon `0xd25b3d...69bc4f` | ⚠️ Unaudited |
| WaitingPool | unknown | polygon | n/a | 2 deployments: polygon [`0x02c742...87363b`](./contracts/polygon-137/0x02c7420407a6439d49e9816399a5d5b03187363b/); polygon `0xfedf35...b7672c` | ⚠️ Unaudited |
| WithdrawalPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x258361...20dd56`](./contracts/ethereum-1/0x2583619adde454dd1e3afdf4221d25303420dd56/); ethereum `0x67428d...719348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MaticPool | core_logic | polygon | n/a | `0xad0dcc...adb4b7` | ❓ Unverified |
| AnkrProtocol | unknown | ethereum | n/a | `0x4432fa...f1d784` | ❓ Unverified |
| EarnConfig | governance | ethereum | n/a | `0x1edf13...2de12e` | ❓ Unverified |
| PayAsYouGo | unknown | ethereum | n/a | `0x3d0bb8...3cb70f` | ❓ Unverified |
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | proxy | ethereum | n/a | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | proxy | ethereum | n/a | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09b1fb...36d1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x347c48...6a360e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4069d8...5e7362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bb672...fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64de04...f88ad1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c67e3...7beb58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c6f91...843929` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dcc8a...5be8cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa08299...b59558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7646a...be3f76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf30791...1b08e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc270...0bf79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39ab7a...bdc2a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba30b3...3371c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecce87...f5bc4a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4c5995...185b3f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x84db6e...936670` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xde78c1...789934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x014c32...57f2b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x018998...16c60c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05bb18...79d1d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08da6a...442dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14628b...882448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19ab38...b91ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23dbd1...3c6b86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f798f...056a5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x347c48...6a360e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bb672...fbaa57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a6910...5a668e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x601ab2...462c69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61da67...391233` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62f08e...5d4e04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d1229...6cc286` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x728afe...94c5a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x819079...bf976c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fac90...173e43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbbbcfd...b7d497` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9cfcb...6b0fe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd084bf...8a5a90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfedbe...0404e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf27065...9f380d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x26dcfb...c5480c`; fantom `0xcfc785...ef5179` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x829033...f3edd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1becfb...aa3846` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x280cc3...b2f400` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38446a...953321` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x755797...01be08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9df460...bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| ValidatorStorage | unknown | ethereum | n/a | `0xa2d1aa...c5cc8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [system_smart_contracts_security_audit.pdf](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [stkr_smart_contract_auditing_report.pdf](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 2 | high |
| [ankr_bridge_security_audit.pdf](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [ankr_delegated_staking_audit_veridise.pdf](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_avax_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_bnb.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_bnb_peckshield.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_aeth_beosin.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ankreth_salus.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_flow_halborn.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_ftm.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [smart_contract_security_audit_matic.pdf](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x829033...f3edd4`](./contracts/ethereum-1/0x8290333cef9e6d528dd5618fb97a76f268f3edd4/) | ANKRToken | token | $33,425,691.43 | Verified native implementation with $33,425,691.43 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab15b0...1f9e7f`](./contracts/ethereum-1/0xab15b0bddc012092cb23f53953149a7f8c1f9e7f/) | AnkrTokenStaking | token | $200,147.74 | Verified native implementation with $200,147.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39126e...5e1cb6`](./contracts/bsc-56/0x39126e9b4b0c18ec2e60e3590d0f1f44fc5e1cb6/) | SwapPool | core_logic | $0.38 | Verified native implementation with $0.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b6f9b...380496`](./contracts/bsc-56/0x2b6f9be1c144564162353e91317845f956380496/) | aBNBb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x952398...7759f5`](./contracts/bsc-56/0x952398318838b4915ee5e800622a9613887759f5/) | aBNBb_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c00ce...81c26e`](./contracts/bsc-56/0x2c00ce1a935ff8c9e78580533e2e17c36281c26e/) | aBNBc_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x053ecf...ce14a4`](./contracts/bsc-56/0x053ecf752861b2b2f6d9732ff0dd658f9ece14a4/) | BNBStakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/) | Config | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/) | CrossChainBridge_R2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x757834...3da807`](./contracts/bsc-56/0x757834c812d2fd95a6f8bd5ad15f59dc5f3da807/) | LP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/) | StakingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 16 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [1860] system_smart_contracts_security_audit.pdf
- [3461] ankr_bridge_security_audit.pdf
- [3462] smart_contract_security_audit.pdf
- [3463] ankr_delegated_staking_audit_veridise.pdf
- [3464] smart_contract_security_audit_avax_beosin.pdf
- [3465] smart_contract_security_audit_bnb.pdf
- [3466] smart_contract_security_audit_bnb_peckshield.pdf
- [3467] smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf
- [3469] smart_contract_security_audit_aeth_beosin.pdf
- [3470] smart_contract_security_audit_ankreth_salus.pdf
- [3471] smart_contract_security_audit_flow_halborn.pdf
- [3472] smart_contract_security_audit_ftm.pdf
- [3473] smart_contract_security_audit_matic.pdf

Fork inheritance lineage and inherited audits are included when available.
