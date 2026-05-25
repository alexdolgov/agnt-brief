# Agentic Audit Brief: Satori Finance

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-05-25T01:59:08.131Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, ethereum, linea, polygon-zkevm, scroll
- Contract surface: 220 unique implementations (432 raw deployments)
- DeFi Llama TVL: $1,279,808.00
- On-chain TVL (included contracts): $9,304,428.21
- TVL by chain: Ethereum $9,304,428.21

## Project Description

Satori Finance is a decentralized derivatives and spot trading platform operating across multiple chains. It offers perpetual futures and spot trading products, leveraging a modular architecture with vaults, oracles, and staking infrastructure.

### Architecture

Both product families share infrastructure such as proxy contracts for upgradeability and likely common oracle or registry services. The perpetual family relies on yield-bearing vaults and staking managers that may also be used in spot trading for collateral or liquidity.

## Audit Coverage Summary

- Verified implementations audited: 0/151 (0.0%)
- Verified + Unaudited implementations: 150
- Verified by bytecode match: 1
- Unverified implementations: 69
- Unique implementations: 220
- Raw deployments: 432
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,304,428.21
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (150)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 3 deployments: ethereum [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/); ethereum `0xc1c5b1...bc62c8`; ethereum `0xd91fe1...4e0402` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 3 deployments: ethereum [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc36...ffdc4c`; ethereum `0xe72fe6...938cb9` | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | core_logic | ethereum | 4 deployments: ethereum [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/); ethereum `0x5d6e53...9c5caf`; ethereum `0xd64b76...390451`; ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| AccountingModule | unknown | ethereum | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| AccountingToken | token | ethereum | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | ⚠️ Unaudited |
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
| AssetRegistry | registry | ethereum | 7 deployments: ethereum [`0x0734ca...904101`](./contracts/ethereum-1/0x0734ca72aa1b8f42e1364924c8ae01ffdb904101/); ethereum `0x081755...20f4a9`; ethereum `0x323c93...4270fd`; ethereum `0x54ab85...5bafce`; ethereum `0x84da5a...755eac`; ethereum `0x94db8f...a125bd`; ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| AsyncWithdrawalLib | operational_periphery | ethereum | 2 deployments: ethereum [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/); ethereum `0xee25e8...322684` | ⚠️ Unaudited |
| BaseRules | unknown | ethereum | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | ⚠️ Unaudited |
| Beacon_R0 | registry | ethereum | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| Config | governance | ethereum | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ⚠️ Unaudited |
| Connector | unknown | ethereum | 2 deployments: ethereum [`0xc98dce...0919cb`](./contracts/ethereum-1/0xc98dce50f707f7563ec8ba0274b43bcf940919cb/); ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| ContractAddresses | unknown | ethereum | 4 deployments: ethereum [`0x32d9e8...60bd62`](./contracts/ethereum-1/0x32d9e80d4d14e8efc0b656576b7fb2fb0f60bd62/); ethereum `0x923ab4...7ef9c4`; ethereum `0xa694c0...678f32`; ethereum `0xaa5ea9...307d02` | ⚠️ Unaudited |
| CrossChainBridge | operational_periphery | ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | ⚠️ Unaudited |
| CrossChainBridge_R1 | operational_periphery | ethereum | [`0x8aeed0...97d21d`](./contracts/ethereum-1/0x8aeed0ce13064f6658ade6753b80af20f997d21d/) | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| EarnConfig | governance | ethereum | 2 deployments: ethereum [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/); ethereum `0xe01f4f...d33a57` | ⚠️ Unaudited |
| EigenStrategyManager | core_logic | ethereum | 3 deployments: ethereum [`0x7390cd...5701e5`](./contracts/ethereum-1/0x7390cdfff38c8871ccb80e9b38ff88fe735701e5/); ethereum `0x92d904...5a68fc`; ethereum `0xb1c635...36e94d` | ⚠️ Unaudited |
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
| FlexStrategy | core_logic | ethereum | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | ⚠️ Unaudited |
| FlexStrategyDeployer | core_logic | ethereum | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | ⚠️ Unaudited |
| FutureBondAVAX | unknown | ethereum | [`0xa8cb2c...e3bffc`](./contracts/ethereum-1/0xa8cb2c9f523c79e07582fe40f0677ef22fe3bffc/) | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | ethereum | [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/) | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | 2 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725` | ⚠️ Unaudited |
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
| Governance | unknown | ethereum | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ⚠️ Unaudited |
| Governance_R1 | unknown | ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | ⚠️ Unaudited |
| Governance_R2 | unknown | ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| L1Contracts | unknown | ethereum | 2 deployments: ethereum [`0x51e22a...9b8003`](./contracts/ethereum-1/0x51e22ae15efdc016b5ea911b3400c1ad3d9b8003/); ethereum `0xeb233e...732dff` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | 6 deployments: ethereum [`0x31500e...38f767`](./contracts/ethereum-1/0x31500e72b241dd3140b21dbc02468c176038f767/); ethereum `0x345f73...9f5b18`; ethereum `0x3e30b4...4ea070`; ethereum `0xaedc83...5bba01`; ethereum `0xb658cf...9f20d9`; ethereum `0xc5ba40...e2d214` | ⚠️ Unaudited |
| LSDWrapper | unknown | ethereum | 2 deployments: ethereum [`0x7c31a9...89074d`](./contracts/ethereum-1/0x7c31a924b01a20642af2460d7fe24a2fef89074d/); ethereum `0x99db76...1d6992` | ⚠️ Unaudited |
| MainnetActors | unknown | ethereum | 6 deployments: ethereum [`0x447aad...d669c5`](./contracts/ethereum-1/0x447aaddf08d6b0d1daf8f0e8a99dc1a2f8d669c5/); ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d` | ⚠️ Unaudited |
| MaticStaking | unknown | ethereum | [`0x4b187b...67cca3`](./contracts/ethereum-1/0x4b187b46d358982f464ca1e0c071e050a367cca3/) | ⚠️ Unaudited |
| MaxVaultViewer | core_logic | ethereum | 2 deployments: ethereum [`0x0f2b81...bea74e`](./contracts/ethereum-1/0x0f2b81368781f1c846c8b2ad48bacb45a0bea74e/); ethereum `0xeed274...9e5c81` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 5 deployments: ethereum [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/); ethereum `0x741ebe...54d63a`; ethereum `0xb93d56...c5b85c`; ethereum `0xc66063...424882`; ethereum `0xfc4601...e4f7e7` | ⚠️ Unaudited |
| OriginWithdrawalLib | operational_periphery | ethereum | 2 deployments: ethereum [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/); ethereum `0xa68479...4783a4` | ⚠️ Unaudited |
| PayAsYouGo | unknown | ethereum | 4 deployments: ethereum [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/); ethereum `0x4244e4...8821f3`; ethereum `0x63bcfd...250eaa`; ethereum `0x7fa0ed...c012dc` | ⚠️ Unaudited |
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
| Provider | unknown | ethereum | 6 deployments: ethereum [`0x5a081b...38d7ff`](./contracts/ethereum-1/0x5a081b2a6094b7aaed74df2242e48f107b38d7ff/); ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 11 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x2a3e53...af0b3d`; ethereum `0x5e6bb1...2378f2`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30`; base `0xdcbc72...9c0982`; arbitrum `0x21ec83...0ac651`; linea `0xc99148...eeb63a`; linea `0xfa9b89...dad4b1` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | 5 deployments: ethereum [`0x08d8bc...23db89`](./contracts/ethereum-1/0x08d8bc0910e59ce30e2af151a67369cbbc23db89/); ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903` | ⚠️ Unaudited |
| RedemptionAssetsVault | core_logic | ethereum | 5 deployments: ethereum [`0x3f0b27...2515b8`](./contracts/ethereum-1/0x3f0b27a88d70ef940e9252c93418264c8a2515b8/); ethereum `0x493dd4...4840b1`; ethereum `0x73bc33...88d55e`; ethereum `0x9892a4...a6f14a`; ethereum `0xc38946...500f39` | ⚠️ Unaudited |
| ReferralDepositAdapter | adapter | ethereum | 4 deployments: ethereum [`0x41e60c...21c3d7`](./contracts/ethereum-1/0x41e60cf98075315e4d6133a9dc25a2847b21c3d7/); ethereum `0x86149f...232e00`; ethereum `0xd6bba2...68b4a1`; ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| RewardPoolTemplate_R0 | core_logic | ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | ⚠️ Unaudited |
| RewardPoolTemplate_R1 | core_logic | ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/); ethereum `0x40d5ff...652351`; ethereum `0x77b26a...9d6f99`; ethereum `0xa469cd...74f2ec` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | 8 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0x4975e6...7b7dc7`; ethereum `0x5de8c7...29762c`; ethereum `0x863ba8...ff159b`; ethereum `0xa98e86...b91582`; ethereum `0xd3e7e4...01de56`; ethereum `0xd47b9c...0b17bf`; ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsSweeper | unknown | ethereum | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | ⚠️ Unaudited |
| RSETH | token | ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| StableswapOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x385287...531b76`](./contracts/ethereum-1/0x38528720cd5f66c207093fc476f167d90c531b76/); ethereum `0x6d6685...ae6d64`; ethereum `0x825176...1ad869`; ethereum `0x9dcbdd...7f16af` | ⚠️ Unaudited |
| StakingConfig | governance | ethereum | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| StakingNode | unknown | ethereum | 8 deployments: ethereum [`0x1a024a...d7f77b`](./contracts/ethereum-1/0x1a024ae16c761596f3227944c0c52beba5d7f77b/); ethereum `0x1bbcf4...a06402`; ethereum `0x3ee37b...0fbe2b`; ethereum `0x6a28af...fe5942`; ethereum `0x6a786b...6a26e1`; ethereum `0x98fc02...f4ace0`; ethereum `0xa8bd8f...fe929d`; ethereum `0xf8a37f...1d237b` | ⚠️ Unaudited |
| StakingNodesManager | governance | ethereum | 11 deployments: ethereum [`0x21e86b...0ea06d`](./contracts/ethereum-1/0x21e86b28b0afec2c3f570a924a8ec969fc0ea06d/); ethereum `0x33ffb7...100626`; ethereum `0x4b3fb7...40cdb7`; ethereum `0x540af4...43d5c8`; ethereum `0x6de59b...ea224b`; ethereum `0x7e020a...65b4cd`; ethereum `0x8c33a1...59cd7d`; ethereum `0x956b96...6967e5`; ethereum `0x98d664...a400d5`; ethereum `0xabd3a7...4cc811`; ethereum `0xdbf332...225040` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 12 deployments: ethereum [`0x097162...5158f1`](./contracts/ethereum-1/0x0971628c7d3c6009d309165fedcc47a12e5158f1/); ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xfec7e2...62c2bf` | ⚠️ Unaudited |
| TokenStakingNode | token | ethereum | 4 deployments: ethereum [`0x57e1d0...e236fa`](./contracts/ethereum-1/0x57e1d090b1af526cd4174019d5b9702eebe236fa/); ethereum `0x7573ee...e16f5c`; ethereum `0xc60268...26f801`; ethereum `0xc82bfd...8d9748` | ⚠️ Unaudited |
| TokenStakingNodesManager | governance | ethereum | 7 deployments: ethereum [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/); ethereum `0x22417e...006310`; ethereum `0x40edd9...46def4`; ethereum `0x592d1e...4ec647`; ethereum `0x6b566c...30a0c3`; ethereum `0x81f34d...801b1f`; ethereum `0xb03146...88243f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | 13 deployments: ethereum `0x4b8f58...2aafa3`; ethereum `0x514d0a...52f365`; ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xd56c14...56a4dd`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02`; base `0x7d61a7...25cbe7`; arbitrum `0x323967...2dc800`; linea [`0x028251...ef2275`](./contracts/linea-59144/0x0282515de1f3ba5953298a72f1357cfda6ef2275/); linea `0x5940a6...9765b7` | ⚠️ Unaudited |
| VaultLib | core_logic | ethereum | 7 deployments: ethereum [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/); ethereum `0x24024c...5b70f9`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6` | ⚠️ Unaudited |
| WithdrawalQueueManager | operational_periphery | ethereum | 6 deployments: ethereum [`0x0bc9bc...0aa67b`](./contracts/ethereum-1/0x0bc9bc81ad379810b36ad5cc95387112990aa67b/); ethereum `0x42d3ee...9360a1`; ethereum `0x60d812...d9dcf3`; ethereum `0x6ac38a...2185cd`; ethereum `0x8face3...4d60b4`; ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | operational_periphery | ethereum | 11 deployments: ethereum [`0x131d4f...426643`](./contracts/ethereum-1/0x131d4f89b1e0387c0d2278e8c375f4c802426643/); ethereum `0x337f51...02ed4e`; ethereum `0x503895...e5b340`; ethereum `0x6d052c...6c5fba`; ethereum `0x7c0a93...835d00`; ethereum `0x97e619...3bf3b2`; ethereum `0xc5d569...668a24`; ethereum `0xc954d6...24c47f`; ethereum `0xd048f3...35c5df`; ethereum `0xd2c22d...b57f7e`; ethereum `0xf4abf2...2de758` | ⚠️ Unaudited |
| Withdrawer | operational_periphery | ethereum | 9 deployments: ethereum [`0x1da2a0...b7e92b`](./contracts/ethereum-1/0x1da2a0fef0407974d00335ee623098082cb7e92b/); ethereum `0x2ad086...268fed`; ethereum `0x352766...8e88d5`; ethereum `0x3fc377...873b4a`; ethereum `0xa55dc4...9b44f7`; ethereum `0xb64524...3deb54`; ethereum `0xe4d258...209cd7`; ethereum `0xe83289...75d6c7`; ethereum `0xea03aa...1e04fc` | ⚠️ Unaudited |
| WithdrawerConfigurator | operational_periphery | ethereum | 2 deployments: ethereum [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/); ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | operational_periphery | ethereum | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | ⚠️ Unaudited |
| WrappedToken | token | ethereum | 3 deployments: ethereum [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/); ethereum `0xb6582f...f6822f`; ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| XReferralAdapter | adapter | ethereum | 2 deployments: ethereum [`0x80ff99...cb234b`](./contracts/ethereum-1/0x80ff998869294238dc2ae0b8c643a59b44cb234b/); ethereum `0xdb7aa0...8e3fc0` | ⚠️ Unaudited |
| YieldNestOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0xa96a27...2f1038`](./contracts/ethereum-1/0xa96a2716df5133b2fdc2ff367e51c609172f1038/); ethereum `0xc0cff2...cc5187`; ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | 3 deployments: ethereum [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/); ethereum `0x5cc73a...05d222`; ethereum `0xb06084...57d189` | ⚠️ Unaudited |
| ynEigenDepositAdapter | adapter | ethereum | 3 deployments: ethereum [`0x0027da...20f827`](./contracts/ethereum-1/0x0027da0545fe5e5d4fb80e8e6fc78091ab20f827/); ethereum `0x6254fa...6e30bd`; ethereum `0x9e7215...6753c0` | ⚠️ Unaudited |
| ynEigenViewer | periphery | ethereum | 3 deployments: ethereum [`0x9b933d...bef28f`](./contracts/ethereum-1/0x9b933d84fac0782f3b275d76b64a0dbf6fbef28f/); ethereum `0xc16fef...2e64da`; ethereum `0xc7cccf...a0ad29` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | 8 deployments: ethereum [`0x05c516...50127a`](./contracts/ethereum-1/0x05c516654741cc1e594523508bf17a750550127a/); ethereum `0x09db87...373a48`; ethereum `0x0f503d...8bf0b3`; ethereum `0x14dc3d...8a1346`; ethereum `0x434ab6...116663`; ethereum `0x87e2a5...43710a`; ethereum `0xa42493...35b970`; ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| YnETHx | unknown | ethereum | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | ⚠️ Unaudited |
| YnETHxConfigurer | governance | ethereum | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | 3 deployments: ethereum [`0x39f3a3...553263`](./contracts/ethereum-1/0x39f3a3699eb0627c2c8cd30d394cd8e36e553263/); ethereum `0x7fd558...e43790`; ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | periphery | ethereum | 6 deployments: ethereum [`0x0365a6...10899e`](./contracts/ethereum-1/0x0365a6ef790e05eee386b57326e5ceaf5b10899e/); ethereum `0x2cfab6...9ca36e`; ethereum `0x7ae221...3ed9f0`; ethereum `0xa40565...d982f0`; ethereum `0xc70c9b...6952e0`; ethereum `0xf0207f...c93ecf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SatoriIdo | unknown | base | 10 deployments: base [`0x10c3fc...579560`](./contracts/base-8453/0x10c3fcc7c6e378147c7e1290ed69f89d6d579560/); base `0x19492a...eb44ba`; base `0x658620...0a13b0`; base `0xcdaf86...5c3db7`; base `0xe9adb4...55b478`; base `0xf906a1...dcbcbb`; linea [`0x10c3fc...579560`](./contracts/linea-59144/0x10c3fcc7c6e378147c7e1290ed69f89d6d579560/); linea `0x19492a...eb44ba`; linea `0x658620...0a13b0`; linea `0xcdaf86...5c3db7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | proxy | ethereum | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | proxy | ethereum | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0857f8...cbffde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x237bc9...9a1119` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9633ff...15ee84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9686cc...643726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa39408...63fe40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae754c...8ac475` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb45da...93cfce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0842b3...d0eee0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x48756b...00c476` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x62e724...856940` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa59a23...9c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3c3191...420e38` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5ced5d...3ac33c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5f075a...17b595` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x668a97...4d5aed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d3163...34f873` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d3ada...85a155` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcad4a9...ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf4038d...2f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5acceb...beeed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7eb51e...93b84d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae9a83...fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x379869...4402e9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x62f4cf...525535` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc6a889...014b34` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xce0930...e932dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfb371e...a18425` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xff5859...6a2020` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xfb371e...a18425` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/) | BoringVault | core_logic | $40,944.60 | Verified native implementation with $40,944.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/) | ynETHRedemptionAssetsVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | AccountingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | AccountingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/) | AETH_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1d675...4390f6`](./contracts/ethereum-1/0xf1d67526833263bb359a715e3e955bff864390f6/) | AETH_R10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5835bf...828ccf`](./contracts/ethereum-1/0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf/) | AETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253f7e...03b8cc`](./contracts/ethereum-1/0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc/) | AETH_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1e6e6...5b57a7`](./contracts/ethereum-1/0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7/) | AETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaef614...3cfeb7`](./contracts/ethereum-1/0xaef614270f356d20f9fc45910b34ef71383cfeb7/) | aMATICb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9e9f...22c770`](./contracts/ethereum-1/0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770/) | aMATICb_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc91be...89a0d8`](./contracts/ethereum-1/0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8/) | aMATICb_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6e395...800ac2`](./contracts/ethereum-1/0xc6e39571fa413b8d3e1b47ef907222c84f800ac2/) | aMATICb_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/) | AnkrTokenStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/) | AsyncWithdrawalLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | BaseRules | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/) | Config | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32d9e8...60bd62`](./contracts/ethereum-1/0x32d9e80d4d14e8efc0b656576b7fb2fb0f60bd62/) | ContractAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | CrossChainBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8aeed0...97d21d`](./contracts/ethereum-1/0x8aeed0ce13064f6658ade6753b80af20f997d21d/) | CrossChainBridge_R1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/) | CrossChainBridge_R2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/) | EarnConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec209...7d0aee`](./contracts/ethereum-1/0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee/) | FETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e3b11...1816ef`](./contracts/ethereum-1/0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef/) | FETH_R11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c7bb...168167`](./contracts/ethereum-1/0xa1c7bb5c6028eb5e81db3ddc13364231df168167/) | FETH_R12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3facae...82f0fa`](./contracts/ethereum-1/0x3facaef31766a1a0dfb02d845ccf3e252182f0fa/) | FETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b212...8a9aa1`](./contracts/ethereum-1/0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1/) | FETH_R15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9a15...4fe4c1`](./contracts/ethereum-1/0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1/) | FETH_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3622f6...5dd1d7`](./contracts/ethereum-1/0x3622f64058e045b69a57bf5fc9d35162d45dd1d7/) | FETH_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x549ef3...629462`](./contracts/ethereum-1/0x549ef3149443ed0a6849ef554f4cf380a5629462/) | FETH_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566d98...1b2294`](./contracts/ethereum-1/0x566d9895e0b27df206a53cae67ad67064e1b2294/) | FETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21fb8...10a6de`](./contracts/ethereum-1/0xc21fb8838fed54320d33a7b27541edd3c310a6de/) | FETH_R9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | FlexStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | FlexStrategyDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8cb2c...e3bffc`](./contracts/ethereum-1/0xa8cb2c9f523c79e07582fe40f0677ef22fe3bffc/) | FutureBondAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/) | FutureBondAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | Governance_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | Governance_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51e22a...9b8003`](./contracts/ethereum-1/0x51e22ae15efdc016b5ea911b3400c1ad3d9b8003/) | L1Contracts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31500e...38f767`](./contracts/ethereum-1/0x31500e72b241dd3140b21dbc02468c176038f767/) | LSDRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c31a9...89074d`](./contracts/ethereum-1/0x7c31a924b01a20642af2460d7fe24a2fef89074d/) | LSDWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447aad...d669c5`](./contracts/ethereum-1/0x447aaddf08d6b0d1daf8f0e8a99dc1a2f8d669c5/) | MainnetActors | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/) | OriginWithdrawalLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/) | PayAsYouGo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2434fa...f4b2c0`](./contracts/ethereum-1/0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0/) | PolkadotPool_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f410...f976b0`](./contracts/ethereum-1/0x04f410c5158685db2e0775f42f4f676777f976b0/) | PolygonPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8483...75a7f2`](./contracts/ethereum-1/0xaf84834407090c3b159f4f78d2d51bba3175a7f2/) | PolygonPool_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x691303...071f0a`](./contracts/ethereum-1/0x6913030b113f368b511d1ef13b53e817c6071f0a/) | PolygonPool_R2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0793...635ff0`](./contracts/ethereum-1/0x4f07935a56686fb83def4a935d1248f2c1635ff0/) | PolygonPool_R3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x359e25...bdfe40`](./contracts/ethereum-1/0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40/) | PolygonPool_R4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cc1e4...1a74f9`](./contracts/ethereum-1/0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9/) | PolygonPool_R5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb6805...aba389`](./contracts/ethereum-1/0xcb6805e51ea42741d17d1c1f59e01fbe80aba389/) | PolygonPool_R6 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a081b...38d7ff`](./contracts/ethereum-1/0x5a081b2a6094b7aaed74df2242e48f107b38d7ff/) | Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f0b27...2515b8`](./contracts/ethereum-1/0x3f0b27a88d70ef940e9252c93418264c8a2515b8/) | RedemptionAssetsVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | RewardPoolTemplate_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | RewardPoolTemplate_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | RewardsSweeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/) | StakingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a024a...d7f77b`](./contracts/ethereum-1/0x1a024ae16c761596f3227944c0c52beba5d7f77b/) | StakingNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57e1d0...e236fa`](./contracts/ethereum-1/0x57e1d090b1af526cd4174019d5b9702eebe236fa/) | TokenStakingNode | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/) | TokenStakingNodesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/) | VaultLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/) | WithdrawerConfigurator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | WithdrawerConfigurer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/) | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80ff99...cb234b`](./contracts/ethereum-1/0x80ff998869294238dc2ae0b8c643a59b44cb234b/) | XReferralAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05c516...50127a`](./contracts/ethereum-1/0x05c516654741cc1e594523508bf17a750550127a/) | ynETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | YnETHx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | YnETHxConfigurer | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f3a3...553263`](./contracts/ethereum-1/0x39f3a3699eb0627c2c8cd30d394cd8e36e553263/) | ynLSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0365a6...10899e`](./contracts/ethereum-1/0x0365a6ef790e05eee386b57326e5ceaf5b10899e/) | ynViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 102 |
| upstream | 3 |
| standard_library | 30 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3129] Satori_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
