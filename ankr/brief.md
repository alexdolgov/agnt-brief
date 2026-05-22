# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 91.3% below peak)
- Generated: 2026-05-22T14:28:28.387Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche, ethereum, fantom
- Contract surface: 147 unique implementations (188 raw deployments)
- DeFi Llama TVL: $22,086,693.55
- On-chain TVL (included contracts): $47.39
- TVL by chain: Avalanche $47.39 | Ethereum $0.00

## Project Description

Ankr is a liquid staking protocol that allows users to stake assets across multiple blockchains and receive liquid staking tokens in return. It provides infrastructure for staking, earning rewards, and maintaining liquidity through derivative tokens.

### Architecture

The Ankr family shares infrastructure through configuration contracts (EarnConfig, StakingConfig, Config) that manage parameters for various pools and tokens. Governance (Governance_R3) and the AnkrProtocol contract coordinate across chains, while the CrossChainBridge facilitates asset transfers between networks.

## Audit Coverage Summary

- Verified implementations audited: 1/116 (0.9%)
- Verified + Unaudited implementations: 113
- Verified by bytecode match: 2
- Unverified implementations: 31
- Unique implementations: 147
- Raw deployments: 188
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $47.39
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 0.9% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 0.9% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Governance | unknown | ethereum | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (113)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AvalanchePool_R6 | core_logic | avalanche | 2 deployments: avalanche [`0x7baa1e...0a836d`](./contracts/avalanche-43114/0x7baa1e3bfe49db8361680785182b80bb420a836d/); avalanche `0xfad2d6...b45874` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 4 deployments: ethereum [`0x2d8ba0...aafc4f`](./contracts/ethereum-1/0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f/); ethereum `0x3bfce3...d18c4f`; ethereum `0xb70f12...06bc74`; ethereum `0xe7e39d...b294ce` | ⚠️ Unaudited |
| AETH_R1 | unknown | ethereum | 2 deployments: ethereum [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/); ethereum `0x977803...ab6f3c` | ⚠️ Unaudited |
| AETH_R10 | unknown | ethereum | [`0xf1d675...4390f6`](./contracts/ethereum-1/0xf1d67526833263bb359a715e3e955bff864390f6/) | ⚠️ Unaudited |
| AETH_R11 | unknown | ethereum | [`0x6a6350...101e3b`](./contracts/ethereum-1/0x6a63503151acfe6d06a33cd41416b8594c101e3b/) | ⚠️ Unaudited |
| AETH_R12 | unknown | ethereum | [`0x0b9c04...f70300`](./contracts/ethereum-1/0x0b9c04c5f884ebfad7af7e0351bc03c080f70300/) | ⚠️ Unaudited |
| AETH_R13 | unknown | ethereum | [`0x0c906f...93d0f0`](./contracts/ethereum-1/0x0c906f8759e68899c487304246532fc4be93d0f0/) | ⚠️ Unaudited |
| AETH_R14 | unknown | ethereum | [`0x5835bf...828ccf`](./contracts/ethereum-1/0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf/) | ⚠️ Unaudited |
| AETH_R15 | unknown | ethereum | [`0x6a9366...7b641c`](./contracts/ethereum-1/0x6a9366f02b6e252e0cbe2e6b9cf0a8addd7b641c/) | ⚠️ Unaudited |
| AETH_R16 | unknown | ethereum | [`0x1e5e5c...5cb60f`](./contracts/ethereum-1/0x1e5e5cf3652989a57736901d95749a326f5cb60f/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| AETH_R3 | unknown | ethereum | [`0x496b35...d8617d`](./contracts/ethereum-1/0x496b352514fabca14845651cfdf0b548f3d8617d/) | ⚠️ Unaudited |
| AETH_R4 | unknown | ethereum | [`0x23f7d0...c1181f`](./contracts/ethereum-1/0x23f7d037f5d02d0ba37571e717191776c4c1181f/) | ⚠️ Unaudited |
| AETH_R5 | unknown | ethereum | [`0x253f7e...03b8cc`](./contracts/ethereum-1/0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc/) | ⚠️ Unaudited |
| AETH_R6 | unknown | ethereum | [`0xfe5dea...8e737f`](./contracts/ethereum-1/0xfe5dea3569e16d8a0a5449378087f1e80a8e737f/) | ⚠️ Unaudited |
| AETH_R7 | unknown | ethereum | [`0xb7c00d...d0784b`](./contracts/ethereum-1/0xb7c00d3ff2c9e6ceacfb206108f4661778d0784b/) | ⚠️ Unaudited |
| AETH_R8 | unknown | ethereum | [`0xf1e6e6...5b57a7`](./contracts/ethereum-1/0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7/) | ⚠️ Unaudited |
| AETHF | unknown | ethereum | [`0x66bea5...071118`](./contracts/ethereum-1/0x66bea595aefd5a65799a920974b377ed20071118/) | ⚠️ Unaudited |
| aMATICb | unknown | ethereum | [`0xaef614...3cfeb7`](./contracts/ethereum-1/0xaef614270f356d20f9fc45910b34ef71383cfeb7/) | ⚠️ Unaudited |
| aMATICb_R1 | unknown | ethereum | [`0x7f9e9f...22c770`](./contracts/ethereum-1/0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770/) | ⚠️ Unaudited |
| aMATICb_R2 | unknown | ethereum | [`0xbc91be...89a0d8`](./contracts/ethereum-1/0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8/) | ⚠️ Unaudited |
| aMATICb_R3 | unknown | ethereum | [`0x6d6453...ccc5a7`](./contracts/ethereum-1/0x6d6453712c6758f548efc2277e8302588cccc5a7/) | ⚠️ Unaudited |
| aMATICb_R4 | unknown | ethereum | [`0x42f91d...eed868`](./contracts/ethereum-1/0x42f91df19b5bbeca0bc1ed488e282090dfeed868/) | ⚠️ Unaudited |
| aMATICb_R5 | unknown | ethereum | [`0xc6e395...800ac2`](./contracts/ethereum-1/0xc6e39571fa413b8d3e1b47ef907222c84f800ac2/) | ⚠️ Unaudited |
| aMATICb_R6 | unknown | ethereum | [`0xd45021...28ce3b`](./contracts/ethereum-1/0xd4502103dd36c5595dccedf33e7308c61428ce3b/) | ⚠️ Unaudited |
| aMATICb_R7 | unknown | ethereum | [`0x99534e...38ebfe`](./contracts/ethereum-1/0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe/) | ⚠️ Unaudited |
| aMATICc | unknown | ethereum | [`0x46a0cc...1c9d8d`](./contracts/ethereum-1/0x46a0cc1ad0710e6fafd6b22395c5f3375a1c9d8d/) | ⚠️ Unaudited |
| aMATICc_R1 | unknown | ethereum | 3 deployments: ethereum [`0x887214...e301fd`](./contracts/ethereum-1/0x887214fcd6c29d99adb8dd9d225b2f85d3e301fd/); ethereum `0xb25db3...398e37`; ethereum `0xe259a9...1ef796` | ⚠️ Unaudited |
| aMATICc_R2 | unknown | ethereum | [`0x1352c4...43e6ef`](./contracts/ethereum-1/0x1352c426168895f3682becfa5821c9874a43e6ef/) | ⚠️ Unaudited |
| aMATICc_R4 | unknown | ethereum | [`0x26dcfb...c5480c`](./contracts/ethereum-1/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c/) | ⚠️ Unaudited |
| AnkrBond_R1 | unknown | ethereum | [`0x4e56ec...3e3a9c`](./contracts/ethereum-1/0x4e56ec889e5a3f8771862dd765ec76bfed3e3a9c/) | ⚠️ Unaudited |
| AnkrFuture_R0 | unknown | ethereum | [`0x5184b6...115e7b`](./contracts/ethereum-1/0x5184b698c147202621b57878b4f5d1b661115e7b/) | ⚠️ Unaudited |
| AnkrProtocol | unknown | ethereum | 4 deployments: ethereum [`0x4432fa...f1d784`](./contracts/ethereum-1/0x4432faee427ae2ca961d5bfeefc2eed4e1f1d784/); ethereum `0x673ef4...704568`; ethereum `0xae4bff...f1e0f4`; ethereum `0xcdcdf4...a2f251` | ⚠️ Unaudited |
| AnkrTokenStaking | token | ethereum | 2 deployments: ethereum [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/); ethereum `0xab15b0...1f9e7f` | ⚠️ Unaudited |
| AvalanchePool | core_logic | avalanche | [`0x8a2f83...2ce27a`](./contracts/avalanche-43114/0x8a2f83347f0e59faefe2320b7422f8aa432ce27a/) | ⚠️ Unaudited |
| AvalanchePool_R2 | core_logic | avalanche | 2 deployments: avalanche [`0x4755c0...caba60`](./contracts/avalanche-43114/0x4755c0be76536309f40b924781b258faa0caba60/); avalanche `0xf3a274...817d14` | ⚠️ Unaudited |
| AvalanchePool_R3 | core_logic | avalanche | [`0xd53a4d...26a8d3`](./contracts/avalanche-43114/0xd53a4d620347831e8a4afcb2657f70b7ef26a8d3/) | ⚠️ Unaudited |
| AvalanchePool_R4 | core_logic | avalanche | [`0x4e178d...b4b4f3`](./contracts/avalanche-43114/0x4e178dc6a86bdbc230761945dafa048f58b4b4f3/) | ⚠️ Unaudited |
| AvalanchePool_R5 | core_logic | avalanche | [`0x40d6fc...dad0a5`](./contracts/avalanche-43114/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ⚠️ Unaudited |
| Beacon_R0 | registry | ethereum | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| Config | governance | ethereum | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ⚠️ Unaudited |
| CrossChainBridge | operational_periphery | ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| EarnConfig | governance | ethereum | 2 deployments: ethereum [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/); ethereum `0xe01f4f...d33a57` | ⚠️ Unaudited |
| FETH | unknown | ethereum | [`0x5ec209...7d0aee`](./contracts/ethereum-1/0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee/) | ⚠️ Unaudited |
| FETH_R1 | unknown | ethereum | [`0x170da5...233934`](./contracts/ethereum-1/0x170da5efcf563e5a5445ca7685801913c4233934/) | ⚠️ Unaudited |
| FETH_R10 | unknown | ethereum | [`0xac2e0b...6f335c`](./contracts/ethereum-1/0xac2e0b6db96f345ee19fda8a9be5907e996f335c/) | ⚠️ Unaudited |
| FETH_R11 | unknown | ethereum | 2 deployments: ethereum [`0x5e3b11...1816ef`](./contracts/ethereum-1/0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef/); ethereum `0xb7f3db...b24e4a` | ⚠️ Unaudited |
| FETH_R12 | unknown | ethereum | [`0xa1c7bb...168167`](./contracts/ethereum-1/0xa1c7bb5c6028eb5e81db3ddc13364231df168167/) | ⚠️ Unaudited |
| FETH_R13 | unknown | ethereum | [`0xb71305...979926`](./contracts/ethereum-1/0xb713053a8fe0becd69ef9cce4e24524133979926/) | ⚠️ Unaudited |
| FETH_R14 | unknown | ethereum | [`0x3facae...82f0fa`](./contracts/ethereum-1/0x3facaef31766a1a0dfb02d845ccf3e252182f0fa/) | ⚠️ Unaudited |
| FETH_R15 | unknown | ethereum | [`0xa7b212...8a9aa1`](./contracts/ethereum-1/0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1/) | ⚠️ Unaudited |
| FETH_R16 | unknown | ethereum | [`0x10d0d4...43eabc`](./contracts/ethereum-1/0x10d0d468d350ab6c646f9d68e1f3b0cd6c43eabc/) | ⚠️ Unaudited |
| FETH_R2 | unknown | ethereum | [`0x243a57...9c29f7`](./contracts/ethereum-1/0x243a57d66968db226b47ed805cbb45ae279c29f7/) | ⚠️ Unaudited |
| FETH_R20 | unknown | ethereum | [`0xd01ef7...62e5c6`](./contracts/ethereum-1/0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6/) | ⚠️ Unaudited |
| FETH_R3 | unknown | ethereum | [`0x3f9a15...4fe4c1`](./contracts/ethereum-1/0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1/) | ⚠️ Unaudited |
| FETH_R4 | unknown | ethereum | [`0x3622f6...5dd1d7`](./contracts/ethereum-1/0x3622f64058e045b69a57bf5fc9d35162d45dd1d7/) | ⚠️ Unaudited |
| FETH_R5 | unknown | ethereum | [`0x4ed03a...9a2379`](./contracts/ethereum-1/0x4ed03acac0e5f07ec65cb2331e6546d7709a2379/) | ⚠️ Unaudited |
| FETH_R6 | unknown | ethereum | [`0xb1c25b...7e87a1`](./contracts/ethereum-1/0xb1c25b7d1de63a7535a533c75ce551949c7e87a1/) | ⚠️ Unaudited |
| FETH_R7 | unknown | ethereum | [`0x549ef3...629462`](./contracts/ethereum-1/0x549ef3149443ed0a6849ef554f4cf380a5629462/) | ⚠️ Unaudited |
| FETH_R8 | unknown | ethereum | [`0x566d98...1b2294`](./contracts/ethereum-1/0x566d9895e0b27df206a53cae67ad67064e1b2294/) | ⚠️ Unaudited |
| FETH_R9 | unknown | ethereum | [`0xc21fb8...10a6de`](./contracts/ethereum-1/0xc21fb8838fed54320d33a7b27541edd3c310a6de/) | ⚠️ Unaudited |
| FutureBondAVAX | unknown | avalanche | 2 deployments: ethereum `0xa8cb2c...e3bffc`; avalanche [`0x11e6ec...df6618`](./contracts/avalanche-43114/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | ethereum | 2 deployments: ethereum [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/); avalanche `0xde78c1...789934` | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | 3 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725`; avalanche `0x66044a...fbc9bd` | ⚠️ Unaudited |
| FutureBondAVAX_R3 | unknown | avalanche | [`0x7840a8...6ca643`](./contracts/avalanche-43114/0x7840a89079290f35390979b4c95b53b2926ca643/) | ⚠️ Unaudited |
| FutureBondAVAX_R4 | unknown | avalanche | [`0x5d7e1c...ac0a83`](./contracts/avalanche-43114/0x5d7e1c3df5961c9664435da0100d550fb9ac0a83/) | ⚠️ Unaudited |
| FutureBondAVAX_R5 | unknown | avalanche | [`0x315654...18a069`](./contracts/avalanche-43114/0x3156549752f744e493d57d97ae31fc4aa318a069/) | ⚠️ Unaudited |
| FutureBondAVAX_R6 | unknown | avalanche | [`0x3488e7...09b39a`](./contracts/avalanche-43114/0x3488e74267861d2ac354499c8896740fbf09b39a/) | ⚠️ Unaudited |
| FutureBondAVAX_R7 | unknown | avalanche | [`0xf094b4...b13b93`](./contracts/avalanche-43114/0xf094b4291c25ee85ed3996a21589fd1d4fb13b93/) | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | avalanche | 2 deployments: avalanche [`0x0f74bf...0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/); avalanche `0x6c6f91...843929` | ⚠️ Unaudited |
| FutureCertAVAX | unknown | avalanche | [`0x96152d...9aa90e`](./contracts/avalanche-43114/0x96152df28527110c89763efb8f2394d25a9aa90e/) | ⚠️ Unaudited |
| FutureCertAVAX_R1 | unknown | avalanche | [`0x632ad3...f84e6b`](./contracts/avalanche-43114/0x632ad3226f62b674be28c852233e7a44d4f84e6b/) | ⚠️ Unaudited |
| FutureCertAVAX_R2 | unknown | avalanche | [`0xc040b8...25683e`](./contracts/avalanche-43114/0xc040b8365686dc2cb2aefc004849f79a1025683e/) | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | [`0xc33448...c727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| GlobalPool_R21 | core_logic | ethereum | [`0xc33448...c727f6`](./contracts/ethereum-1/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| GlobalPool_R22 | core_logic | ethereum | [`0x4748b6...cfce15`](./contracts/ethereum-1/0x4748b69634c7d807d0ea5aa3647267549ecfce15/) | ⚠️ Unaudited |
| GlobalPool_R24 | core_logic | ethereum | [`0x3f3358...2c3481`](./contracts/ethereum-1/0x3f33583f24307c1b64a893e1c41d9f256c2c3481/) | ⚠️ Unaudited |
| GlobalPool_R25 | core_logic | ethereum | [`0x71b804...c40a9b`](./contracts/ethereum-1/0x71b804ed58d6b3ba30d9b4776f87d54895c40a9b/) | ⚠️ Unaudited |
| GlobalPool_R26 | core_logic | ethereum | [`0x4017e2...31e64f`](./contracts/ethereum-1/0x4017e2484f1c6d91eb1c0f29ba8a44506131e64f/) | ⚠️ Unaudited |
| GlobalPool_R27 | core_logic | ethereum | [`0x3649b0...c90ee1`](./contracts/ethereum-1/0x3649b0c6e382890362fa021455a7052a54c90ee1/) | ⚠️ Unaudited |
| GlobalPool_R29 | core_logic | ethereum | [`0xed8103...d04f0b`](./contracts/ethereum-1/0xed81030ba249d99b71281aa78dd3046e6fd04f0b/) | ⚠️ Unaudited |
| GlobalPool_R30 | core_logic | ethereum | [`0xa6d62c...185fd9`](./contracts/ethereum-1/0xa6d62c8c8d094ea3da1160b66f94435a88185fd9/) | ⚠️ Unaudited |
| GlobalPool_R31 | core_logic | ethereum | [`0x1cfdf3...3a362f`](./contracts/ethereum-1/0x1cfdf3d3351bfb0e52175aecc3d435cfe93a362f/) | ⚠️ Unaudited |
| GlobalPool_R32 | core_logic | ethereum | [`0x7b31a2...c878d4`](./contracts/ethereum-1/0x7b31a26e8439fd4b435d8e3aa557c06acec878d4/) | ⚠️ Unaudited |
| GlobalPool_R33 | core_logic | ethereum | [`0xa40613...cfd374`](./contracts/ethereum-1/0xa406131ee1ced40de8cc937497c65f5ad5cfd374/) | ⚠️ Unaudited |
| GlobalPool_R34 | core_logic | ethereum | [`0x15fa1b...0113d6`](./contracts/ethereum-1/0x15fa1b6dc4eb5d42e427db1aeeac1294530113d6/) | ⚠️ Unaudited |
| GlobalPool_R35 | core_logic | ethereum | [`0x31e01a...be5091`](./contracts/ethereum-1/0x31e01ade5c54234c99c76fde83fe5c967abe5091/) | ⚠️ Unaudited |
| GlobalPool_R36 | core_logic | ethereum | [`0x03e0e6...0d9eed`](./contracts/ethereum-1/0x03e0e63b58d338f954ff0767bc71dff8240d9eed/) | ⚠️ Unaudited |
| GlobalPool_R37 | core_logic | ethereum | [`0x7df503...35e9e1`](./contracts/ethereum-1/0x7df5032aaf311a3d3747129ba39e6da68d35e9e1/) | ⚠️ Unaudited |
| GlobalPool_R38 | core_logic | ethereum | [`0x624d9a...db2fce`](./contracts/ethereum-1/0x624d9a92c766981c2e84020f344694cfd5db2fce/) | ⚠️ Unaudited |
| GlobalPool_R39 | core_logic | ethereum | [`0xd201a7...88c3e9`](./contracts/ethereum-1/0xd201a7df1d0f7e066efdd448cbc8433f0b88c3e9/) | ⚠️ Unaudited |
| Governance_R1 | unknown | ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | ⚠️ Unaudited |
| Governance_R2 | unknown | ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| MaticStaking | unknown | ethereum | [`0x4b187b...67cca3`](./contracts/ethereum-1/0x4b187b46d358982f464ca1e0c071e050a367cca3/) | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 5 deployments: ethereum [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/); ethereum `0x741ebe...54d63a`; ethereum `0xb93d56...c5b85c`; ethereum `0xc66063...424882`; ethereum `0xfc4601...e4f7e7` | ⚠️ Unaudited |
| PolkadotPool_R0 | core_logic | ethereum | [`0x2434fa...f4b2c0`](./contracts/ethereum-1/0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0/) | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | ethereum | 2 deployments: ethereum [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/); ethereum `0x88b44e...65d2b9` | ⚠️ Unaudited |
| PolygonPool | core_logic | ethereum | [`0x04f410...f976b0`](./contracts/ethereum-1/0x04f410c5158685db2e0775f42f4f676777f976b0/) | ⚠️ Unaudited |
| PolygonPool_R1 | core_logic | ethereum | [`0xaf8483...75a7f2`](./contracts/ethereum-1/0xaf84834407090c3b159f4f78d2d51bba3175a7f2/) | ⚠️ Unaudited |
| PolygonPool_R2 | core_logic | ethereum | [`0x691303...071f0a`](./contracts/ethereum-1/0x6913030b113f368b511d1ef13b53e817c6071f0a/) | ⚠️ Unaudited |
| PolygonPool_R3 | core_logic | ethereum | [`0x4f0793...635ff0`](./contracts/ethereum-1/0x4f07935a56686fb83def4a935d1248f2c1635ff0/) | ⚠️ Unaudited |
| PolygonPool_R4 | core_logic | ethereum | [`0x359e25...bdfe40`](./contracts/ethereum-1/0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40/) | ⚠️ Unaudited |
| PolygonPool_R5 | core_logic | ethereum | [`0x9cc1e4...1a74f9`](./contracts/ethereum-1/0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9/) | ⚠️ Unaudited |
| PolygonPool_R6 | core_logic | ethereum | [`0xcb6805...aba389`](./contracts/ethereum-1/0xcb6805e51ea42741d17d1c1f59e01fbe80aba389/) | ⚠️ Unaudited |
| PolygonPool_R8 | core_logic | ethereum | [`0xcfd4b4...b3ce89`](./contracts/ethereum-1/0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 9 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x5e6bb1...2378f2`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30`; avalanche `0x3bfce3...d18c4f`; avalanche `0xb13cec...26138b`; avalanche `0xcc4e08...2cb392` | ⚠️ Unaudited |
| RewardPoolTemplate_R0 | core_logic | ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | ⚠️ Unaudited |
| RewardPoolTemplate_R1 | core_logic | ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | ⚠️ Unaudited |
| StakingConfig | governance | ethereum | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | [`0x7e28bf...ad6ecd`](./contracts/avalanche-43114/0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CrossChainBridge_R1 | unknown | avalanche | 2 deployments: ethereum `0x8aeed0...97d21d`; avalanche [`0x6a3b5b...8abe2d`](./contracts/avalanche-43114/0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d/) | ⚠️ Unaudited (bytecode match) |
| PayAsYouGo | unknown | ethereum | 4 deployments: ethereum [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/); ethereum `0x4244e4...8821f3`; ethereum `0x63bcfd...250eaa`; ethereum `0x7fa0ed...c012dc` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | proxy | ethereum | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | proxy | ethereum | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x26dcfb...c5480c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcfc785...ef5179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1becfb...aa3846` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x755797...01be08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9df460...bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce4315...2f66ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [detailed audit report](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/) | AETH_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1d675...4390f6`](./contracts/ethereum-1/0xf1d67526833263bb359a715e3e955bff864390f6/) | AETH_R10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6350...101e3b`](./contracts/ethereum-1/0x6a63503151acfe6d06a33cd41416b8594c101e3b/) | AETH_R11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9c04...f70300`](./contracts/ethereum-1/0x0b9c04c5f884ebfad7af7e0351bc03c080f70300/) | AETH_R12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c906f...93d0f0`](./contracts/ethereum-1/0x0c906f8759e68899c487304246532fc4be93d0f0/) | AETH_R13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5835bf...828ccf`](./contracts/ethereum-1/0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf/) | AETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9366...7b641c`](./contracts/ethereum-1/0x6a9366f02b6e252e0cbe2e6b9cf0a8addd7b641c/) | AETH_R15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5e5c...5cb60f`](./contracts/ethereum-1/0x1e5e5cf3652989a57736901d95749a326f5cb60f/) | AETH_R16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x496b35...d8617d`](./contracts/ethereum-1/0x496b352514fabca14845651cfdf0b548f3d8617d/) | AETH_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f7d0...c1181f`](./contracts/ethereum-1/0x23f7d037f5d02d0ba37571e717191776c4c1181f/) | AETH_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253f7e...03b8cc`](./contracts/ethereum-1/0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc/) | AETH_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe5dea...8e737f`](./contracts/ethereum-1/0xfe5dea3569e16d8a0a5449378087f1e80a8e737f/) | AETH_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7c00d...d0784b`](./contracts/ethereum-1/0xb7c00d3ff2c9e6ceacfb206108f4661778d0784b/) | AETH_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1e6e6...5b57a7`](./contracts/ethereum-1/0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7/) | AETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66bea5...071118`](./contracts/ethereum-1/0x66bea595aefd5a65799a920974b377ed20071118/) | AETHF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaef614...3cfeb7`](./contracts/ethereum-1/0xaef614270f356d20f9fc45910b34ef71383cfeb7/) | aMATICb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9e9f...22c770`](./contracts/ethereum-1/0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770/) | aMATICb_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc91be...89a0d8`](./contracts/ethereum-1/0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8/) | aMATICb_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6453...ccc5a7`](./contracts/ethereum-1/0x6d6453712c6758f548efc2277e8302588cccc5a7/) | aMATICb_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42f91d...eed868`](./contracts/ethereum-1/0x42f91df19b5bbeca0bc1ed488e282090dfeed868/) | aMATICb_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6e395...800ac2`](./contracts/ethereum-1/0xc6e39571fa413b8d3e1b47ef907222c84f800ac2/) | aMATICb_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45021...28ce3b`](./contracts/ethereum-1/0xd4502103dd36c5595dccedf33e7308c61428ce3b/) | aMATICb_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46a0cc...1c9d8d`](./contracts/ethereum-1/0x46a0cc1ad0710e6fafd6b22395c5f3375a1c9d8d/) | aMATICc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x887214...e301fd`](./contracts/ethereum-1/0x887214fcd6c29d99adb8dd9d225b2f85d3e301fd/) | aMATICc_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1352c4...43e6ef`](./contracts/ethereum-1/0x1352c426168895f3682becfa5821c9874a43e6ef/) | aMATICc_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56ec...3e3a9c`](./contracts/ethereum-1/0x4e56ec889e5a3f8771862dd765ec76bfed3e3a9c/) | AnkrBond_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5184b6...115e7b`](./contracts/ethereum-1/0x5184b698c147202621b57878b4f5d1b661115e7b/) | AnkrFuture_R0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4432fa...f1d784`](./contracts/ethereum-1/0x4432faee427ae2ca961d5bfeefc2eed4e1f1d784/) | AnkrProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/) | AnkrTokenStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8a2f83...2ce27a`](./contracts/avalanche-43114/0x8a2f83347f0e59faefe2320b7422f8aa432ce27a/) | AvalanchePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4755c0...caba60`](./contracts/avalanche-43114/0x4755c0be76536309f40b924781b258faa0caba60/) | AvalanchePool_R2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd53a4d...26a8d3`](./contracts/avalanche-43114/0xd53a4d620347831e8a4afcb2657f70b7ef26a8d3/) | AvalanchePool_R3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e178d...b4b4f3`](./contracts/avalanche-43114/0x4e178dc6a86bdbc230761945dafa048f58b4b4f3/) | AvalanchePool_R4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x40d6fc...dad0a5`](./contracts/avalanche-43114/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | AvalanchePool_R5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/) | Config | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | CrossChainBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6a3b5b...8abe2d`](./contracts/avalanche-43114/0x6a3b5bad3f3937ef15ee3ec385397f4a9a8abe2d/) | CrossChainBridge_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/) | CrossChainBridge_R2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/) | EarnConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec209...7d0aee`](./contracts/ethereum-1/0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee/) | FETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170da5...233934`](./contracts/ethereum-1/0x170da5efcf563e5a5445ca7685801913c4233934/) | FETH_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac2e0b...6f335c`](./contracts/ethereum-1/0xac2e0b6db96f345ee19fda8a9be5907e996f335c/) | FETH_R10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e3b11...1816ef`](./contracts/ethereum-1/0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef/) | FETH_R11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c7bb...168167`](./contracts/ethereum-1/0xa1c7bb5c6028eb5e81db3ddc13364231df168167/) | FETH_R12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb71305...979926`](./contracts/ethereum-1/0xb713053a8fe0becd69ef9cce4e24524133979926/) | FETH_R13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3facae...82f0fa`](./contracts/ethereum-1/0x3facaef31766a1a0dfb02d845ccf3e252182f0fa/) | FETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b212...8a9aa1`](./contracts/ethereum-1/0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1/) | FETH_R15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d0d4...43eabc`](./contracts/ethereum-1/0x10d0d468d350ab6c646f9d68e1f3b0cd6c43eabc/) | FETH_R16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243a57...9c29f7`](./contracts/ethereum-1/0x243a57d66968db226b47ed805cbb45ae279c29f7/) | FETH_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9a15...4fe4c1`](./contracts/ethereum-1/0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1/) | FETH_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3622f6...5dd1d7`](./contracts/ethereum-1/0x3622f64058e045b69a57bf5fc9d35162d45dd1d7/) | FETH_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ed03a...9a2379`](./contracts/ethereum-1/0x4ed03acac0e5f07ec65cb2331e6546d7709a2379/) | FETH_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1c25b...7e87a1`](./contracts/ethereum-1/0xb1c25b7d1de63a7535a533c75ce551949c7e87a1/) | FETH_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x549ef3...629462`](./contracts/ethereum-1/0x549ef3149443ed0a6849ef554f4cf380a5629462/) | FETH_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566d98...1b2294`](./contracts/ethereum-1/0x566d9895e0b27df206a53cae67ad67064e1b2294/) | FETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21fb8...10a6de`](./contracts/ethereum-1/0xc21fb8838fed54320d33a7b27541edd3c310a6de/) | FETH_R9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x11e6ec...df6618`](./contracts/avalanche-43114/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | FutureBondAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/) | FutureBondAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7840a8...6ca643`](./contracts/avalanche-43114/0x7840a89079290f35390979b4c95b53b2926ca643/) | FutureBondAVAX_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5d7e1c...ac0a83`](./contracts/avalanche-43114/0x5d7e1c3df5961c9664435da0100d550fb9ac0a83/) | FutureBondAVAX_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x315654...18a069`](./contracts/avalanche-43114/0x3156549752f744e493d57d97ae31fc4aa318a069/) | FutureBondAVAX_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3488e7...09b39a`](./contracts/avalanche-43114/0x3488e74267861d2ac354499c8896740fbf09b39a/) | FutureBondAVAX_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf094b4...b13b93`](./contracts/avalanche-43114/0xf094b4291c25ee85ed3996a21589fd1d4fb13b93/) | FutureBondAVAX_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f74bf...0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/) | FutureBondAVAX_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96152d...9aa90e`](./contracts/avalanche-43114/0x96152df28527110c89763efb8f2394d25a9aa90e/) | FutureCertAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x632ad3...f84e6b`](./contracts/avalanche-43114/0x632ad3226f62b674be28c852233e7a44d4f84e6b/) | FutureCertAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc040b8...25683e`](./contracts/avalanche-43114/0xc040b8365686dc2cb2aefc004849f79a1025683e/) | FutureCertAVAX_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc33448...c727f6`](./contracts/ethereum-1/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | GlobalPool_R21 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4748b6...cfce15`](./contracts/ethereum-1/0x4748b69634c7d807d0ea5aa3647267549ecfce15/) | GlobalPool_R22 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f3358...2c3481`](./contracts/ethereum-1/0x3f33583f24307c1b64a893e1c41d9f256c2c3481/) | GlobalPool_R24 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71b804...c40a9b`](./contracts/ethereum-1/0x71b804ed58d6b3ba30d9b4776f87d54895c40a9b/) | GlobalPool_R25 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4017e2...31e64f`](./contracts/ethereum-1/0x4017e2484f1c6d91eb1c0f29ba8a44506131e64f/) | GlobalPool_R26 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3649b0...c90ee1`](./contracts/ethereum-1/0x3649b0c6e382890362fa021455a7052a54c90ee1/) | GlobalPool_R27 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed8103...d04f0b`](./contracts/ethereum-1/0xed81030ba249d99b71281aa78dd3046e6fd04f0b/) | GlobalPool_R29 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d62c...185fd9`](./contracts/ethereum-1/0xa6d62c8c8d094ea3da1160b66f94435a88185fd9/) | GlobalPool_R30 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cfdf3...3a362f`](./contracts/ethereum-1/0x1cfdf3d3351bfb0e52175aecc3d435cfe93a362f/) | GlobalPool_R31 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b31a2...c878d4`](./contracts/ethereum-1/0x7b31a26e8439fd4b435d8e3aa557c06acec878d4/) | GlobalPool_R32 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa40613...cfd374`](./contracts/ethereum-1/0xa406131ee1ced40de8cc937497c65f5ad5cfd374/) | GlobalPool_R33 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15fa1b...0113d6`](./contracts/ethereum-1/0x15fa1b6dc4eb5d42e427db1aeeac1294530113d6/) | GlobalPool_R34 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31e01a...be5091`](./contracts/ethereum-1/0x31e01ade5c54234c99c76fde83fe5c967abe5091/) | GlobalPool_R35 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e0e6...0d9eed`](./contracts/ethereum-1/0x03e0e63b58d338f954ff0767bc71dff8240d9eed/) | GlobalPool_R36 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7df503...35e9e1`](./contracts/ethereum-1/0x7df5032aaf311a3d3747129ba39e6da68d35e9e1/) | GlobalPool_R37 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x624d9a...db2fce`](./contracts/ethereum-1/0x624d9a92c766981c2e84020f344694cfd5db2fce/) | GlobalPool_R38 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd201a7...88c3e9`](./contracts/ethereum-1/0xd201a7df1d0f7e066efdd448cbc8433f0b88c3e9/) | GlobalPool_R39 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | Governance_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | Governance_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b187b...67cca3`](./contracts/ethereum-1/0x4b187b46d358982f464ca1e0c071e050a367cca3/) | MaticStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/) | PayAsYouGo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2434fa...f4b2c0`](./contracts/ethereum-1/0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0/) | PolkadotPool_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f410...f976b0`](./contracts/ethereum-1/0x04f410c5158685db2e0775f42f4f676777f976b0/) | PolygonPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8483...75a7f2`](./contracts/ethereum-1/0xaf84834407090c3b159f4f78d2d51bba3175a7f2/) | PolygonPool_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x691303...071f0a`](./contracts/ethereum-1/0x6913030b113f368b511d1ef13b53e817c6071f0a/) | PolygonPool_R2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0793...635ff0`](./contracts/ethereum-1/0x4f07935a56686fb83def4a935d1248f2c1635ff0/) | PolygonPool_R3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x359e25...bdfe40`](./contracts/ethereum-1/0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40/) | PolygonPool_R4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cc1e4...1a74f9`](./contracts/ethereum-1/0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9/) | PolygonPool_R5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb6805...aba389`](./contracts/ethereum-1/0xcb6805e51ea42741d17d1c1f59e01fbe80aba389/) | PolygonPool_R6 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | RewardPoolTemplate_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | RewardPoolTemplate_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/) | StakingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 127 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
