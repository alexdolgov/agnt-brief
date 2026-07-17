# Agentic Audit Brief: PlutusDAO

## Project Overview

- Project: PlutusDAO (`plutusdao`)
- Website: [https://plutusdao.io](https://plutusdao.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.211Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum
- Contract surface: 78 unique implementations (78 raw deployments)
- DeFi Llama TVL: $341,938.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 78 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 10 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 46 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 78 (78 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/75 (8.0%)
- Deployed-live implementations: 78 of 78 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/78
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 78
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 4 | 5.1% | 2022-09 |
| CertiK | Tier 2 | 2 | 2.6% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GlpDepositor | unknown | arbitrum | n/a | [`0x13f0d29b5b83654a200e4540066713d50547606e`](./contracts/arbitrum-42161/0x13f0d29b5b83654a200e4540066713d50547606e/) | ✅ Audited |
| GlpStaker | unknown | arbitrum | n/a | [`0x2ab857a1c592dde7038ced7f99bacf3900b6ea1e`](./contracts/arbitrum-42161/0x2ab857a1c592dde7038ced7f99bacf3900b6ea1e/) | ✅ Audited |
| PlsDpxPlutusChefV2 | unknown | arbitrum | n/a | [`0x6a17e7c8c75e92d0193b1a9f8a452cfdd4eaf2ad`](./contracts/arbitrum-42161/0x6a17e7c8c75e92d0193b1a9f8a452cfdd4eaf2ad/) | ✅ Audited |
| PlsDpxRewardsDistroV2 | unknown | arbitrum | n/a | [`0x65ec1225305a379811710e7cae9f62cd76e31e69`](./contracts/arbitrum-42161/0x65ec1225305a379811710e7cae9f62cd76e31e69/) | ✅ Audited |
| PlsGlpToken | unknown | arbitrum | n/a | [`0x530f1cbb2ebd71bec58d351dcd3768148986a467`](./contracts/arbitrum-42161/0x530f1cbb2ebd71bec58d351dcd3768148986a467/) | ✅ Audited |
| PlvGlpToken | unknown | arbitrum | n/a | [`0x5326e71ff593ecc2cf7acae5fe57582d6e74cff1`](./contracts/arbitrum-42161/0x5326e71ff593ecc2cf7acae5fe57582d6e74cff1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbDepositor | unknown | arbitrum | n/a | [`0x13794d30d01c96d6595d1d956f3dd70aec2c238b`](./contracts/arbitrum-42161/0x13794d30d01c96d6595d1d956f3dd70aec2c238b/) | ⚠️ Unaudited |
| ArbStaker | unknown | arbitrum | n/a | [`0x180bb71666c4de074b4daa17ed579afcb8eb2c25`](./contracts/arbitrum-42161/0x180bb71666c4de074b4daa17ed579afcb8eb2c25/) | ⚠️ Unaudited |
| BribeDistro | unknown | arbitrum | n/a | [`0x11731da3ebf671f5ab2e2a4a61a8cf1293862d9e`](./contracts/arbitrum-42161/0x11731da3ebf671f5ab2e2a4a61a8cf1293862d9e/) | ⚠️ Unaudited |
| Disperse2 | unknown | arbitrum | n/a | [`0x3aed259be916f6fb4f44adf05a3ce37dfa1ad3cf`](./contracts/arbitrum-42161/0x3aed259be916f6fb4f44adf05a3ce37dfa1ad3cf/) | ⚠️ Unaudited |
| DpxDepositor | unknown | arbitrum | n/a | [`0x0180365afb1118b054f4fada971103309d03d919`](./contracts/arbitrum-42161/0x0180365afb1118b054f4fada971103309d03d919/) | ⚠️ Unaudited |
| DpxDepositorV2 | unknown | arbitrum | n/a | [`0x548c30b0af3ce6d96f1a63afc05f0fb66495179f`](./contracts/arbitrum-42161/0x548c30b0af3ce6d96f1a63afc05f0fb66495179f/) | ⚠️ Unaudited |
| DpxStaker | unknown | arbitrum | n/a | [`0x02b48b0e5fb8dd3f893ae345088ee3333205c476`](./contracts/arbitrum-42161/0x02b48b0e5fb8dd3f893ae345088ee3333205c476/) | ⚠️ Unaudited |
| DpxStakerV2 | unknown | arbitrum | n/a | [`0x1a7d37fdf0f2f6241bfb62998f4443661d356585`](./contracts/arbitrum-42161/0x1a7d37fdf0f2f6241bfb62998f4443661d356585/) | ⚠️ Unaudited |
| EpochStakingController | unknown | arbitrum | n/a | [`0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba`](./contracts/arbitrum-42161/0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba/) | ⚠️ Unaudited |
| EpochStakingRewards | unknown | arbitrum | n/a | [`0x6e1954da37fad279114035a45da49ca30ea5a988`](./contracts/arbitrum-42161/0x6e1954da37fad279114035a45da49ca30ea5a988/) | ⚠️ Unaudited |
| EpochStakingRewardsRolling | unknown | arbitrum | n/a | [`0x50b3091b4188edfa3589b341adfb078edb93addd`](./contracts/arbitrum-42161/0x50b3091b4188edfa3589b341adfb078edb93addd/) | ⚠️ Unaudited |
| EpochStakingRewardsRollingV2 | unknown | arbitrum | n/a | [`0x355e892176c39d3b384387985e4f6ab6671b3742`](./contracts/arbitrum-42161/0x355e892176c39d3b384387985e4f6ab6671b3742/) | ⚠️ Unaudited |
| EpochStakingRewardsV2 | unknown | arbitrum | n/a | [`0x29640422bb775917102079cf259cc8f5ca7dbce8`](./contracts/arbitrum-42161/0x29640422bb775917102079cf259cc8f5ca7dbce8/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x2a2cafbb239af9159aeecc34ac25521dbd8b5197`](./contracts/arbitrum-42161/0x2a2cafbb239af9159aeecc34ac25521dbd8b5197/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x75c143460f6e3e22f439dff947e25c9ccb72d2e8`](./contracts/arbitrum-42161/0x75c143460f6e3e22f439dff947e25c9ccb72d2e8/) | ⚠️ Unaudited |
| ExitHelper | unknown | arbitrum | n/a | [`0x8686a29760a71eb6b46b0a0b5ab1dcf42d415234`](./contracts/arbitrum-42161/0x8686a29760a71eb6b46b0a0b5ab1dcf42d415234/) | ⚠️ Unaudited |
| FeeClaimer | unknown | arbitrum | n/a | [`0x4ed6bb938ee0ca593669bfc5276091ff75d3d3f0`](./contracts/arbitrum-42161/0x4ed6bb938ee0ca593669bfc5276091ff75d3d3f0/) | ⚠️ Unaudited |
| FeeCollector | unknown | arbitrum | n/a | [`0x3f80e3b68039d4735352bd92cfd4a5185992f919`](./contracts/arbitrum-42161/0x3f80e3b68039d4735352bd92cfd4a5185992f919/) | ⚠️ Unaudited |
| FeeCollectorV2 | unknown | arbitrum | n/a | [`0x84d152e8cb68a94ebcf50ce6f17af7f2c1f891eb`](./contracts/arbitrum-42161/0x84d152e8cb68a94ebcf50ce6f17af7f2c1f891eb/) | ⚠️ Unaudited |
| FeeCollectorV3 | unknown | arbitrum | n/a | [`0x9c140cd0f95d6675540f575b2e5da46bfffed31e`](./contracts/arbitrum-42161/0x9c140cd0f95d6675540f575b2e5da46bfffed31e/) | ⚠️ Unaudited |
| GlpDepositorV2 | unknown | arbitrum | n/a | [`0x6c94b28b5540170ea24085817bd81a9891f01bff`](./contracts/arbitrum-42161/0x6c94b28b5540170ea24085817bd81a9891f01bff/) | ⚠️ Unaudited |
| GlpStakerV2 | unknown | arbitrum | n/a | [`0xbec7635c7a475cbe081698ea110ef411e40f8dd9`](./contracts/arbitrum-42161/0xbec7635c7a475cbe081698ea110ef411e40f8dd9/) | ⚠️ Unaudited |
| GxpToken | unknown | arbitrum | n/a | [`0x6fcce5033f33f4aa3a55d9f6ad5d469254747679`](./contracts/arbitrum-42161/0x6fcce5033f33f4aa3a55d9f6ad5d469254747679/) | ⚠️ Unaudited |
| JonesDepositor | unknown | arbitrum | n/a | [`0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706`](./contracts/arbitrum-42161/0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706/) | ⚠️ Unaudited |
| JonesDepositorV2 | unknown | arbitrum | n/a | [`0x1f6613e697cc2160f181f405d638d7ebf64961a5`](./contracts/arbitrum-42161/0x1f6613e697cc2160f181f405d638d7ebf64961a5/) | ⚠️ Unaudited |
| JonesLpStaker | unknown | arbitrum | n/a | [`0x4d50f56e5a208580f66e24eb9d557800eec154e5`](./contracts/arbitrum-42161/0x4d50f56e5a208580f66e24eb9d557800eec154e5/) | ⚠️ Unaudited |
| JonesLpStakerV3 | unknown | arbitrum | n/a | [`0x475e8a89ad4af634663f2632fff9e47e551f9600`](./contracts/arbitrum-42161/0x475e8a89ad4af634663f2632fff9e47e551f9600/) | ⚠️ Unaudited |
| JonesStaker | unknown | arbitrum | n/a | [`0x20864169830bbb30bc25ed44a61008c0b22f07f8`](./contracts/arbitrum-42161/0x20864169830bbb30bc25ed44a61008c0b22f07f8/) | ⚠️ Unaudited |
| LockedStakedPlutusToken | unknown | arbitrum | n/a | [`0x14ba1690552c4f41360fa2ea5feece3d6533f073`](./contracts/arbitrum-42161/0x14ba1690552c4f41360fa2ea5feece3d6533f073/) | ⚠️ Unaudited |
| MasterChef | unknown | arbitrum | n/a | [`0x5593473e318f0314eb2518239c474e183c4cbed5`](./contracts/arbitrum-42161/0x5593473e318f0314eb2518239c474e183c4cbed5/) | ⚠️ Unaudited |
| PendingRewards | unknown | arbitrum | n/a | [`0x6052213c67a539a91a1a88842dd81785601ddd13`](./contracts/arbitrum-42161/0x6052213c67a539a91a1a88842dd81785601ddd13/) | ⚠️ Unaudited |
| PgSpaToken | unknown | arbitrum | n/a | [`0xc82775f45c724f9aa28d84f40c7c4757777e9a9a`](./contracts/arbitrum-42161/0xc82775f45c724f9aa28d84f40c7c4757777e9a9a/) | ⚠️ Unaudited |
| PlsArbPlutusChef | unknown | arbitrum | n/a | [`0x3dc1ead69ae444e07964cd753dcffdbbb7651c8f`](./contracts/arbitrum-42161/0x3dc1ead69ae444e07964cd753dcffdbbb7651c8f/) | ⚠️ Unaudited |
| PlsArbStakingHelper | unknown | arbitrum | n/a | [`0xaca851c46453878e78db041a529ecc76c8400093`](./contracts/arbitrum-42161/0xaca851c46453878e78db041a529ecc76c8400093/) | ⚠️ Unaudited |
| PlsArbToken | unknown | arbitrum | n/a | [`0x7a5d193fe4ed9098f7eadc99797087c96b002907`](./contracts/arbitrum-42161/0x7a5d193fe4ed9098f7eadc99797087c96b002907/) | ⚠️ Unaudited |
| PlsDpxPlutusChef | unknown | arbitrum | n/a | [`0x20df4953ba19c74b2a46b6873803f28bf640c1b5`](./contracts/arbitrum-42161/0x20df4953ba19c74b2a46b6873803f28bf640c1b5/) | ⚠️ Unaudited |
| PlsDpxRewardsDistro | unknown | arbitrum | n/a | [`0x38e517ab9edf86e8089633041ecb2e5db00715ad`](./contracts/arbitrum-42161/0x38e517ab9edf86e8089633041ecb2e5db00715ad/) | ⚠️ Unaudited |
| PlsDpxToken | unknown | arbitrum | n/a | [`0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1`](./contracts/arbitrum-42161/0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1/) | ⚠️ Unaudited |
| PlsJonesPlutusChef | unknown | arbitrum | n/a | [`0x07569a659fdc3af53982db92871b84f50e7e684a`](./contracts/arbitrum-42161/0x07569a659fdc3af53982db92871b84f50e7e684a/) | ⚠️ Unaudited |
| PlsJonesRewardsDistro | unknown | arbitrum | n/a | [`0x4a2b62f29a9570a1fef56e6dd9c1901ef64a6860`](./contracts/arbitrum-42161/0x4a2b62f29a9570a1fef56e6dd9c1901ef64a6860/) | ⚠️ Unaudited |
| PlsJonesToken | unknown | arbitrum | n/a | [`0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44`](./contracts/arbitrum-42161/0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44/) | ⚠️ Unaudited |
| PlsRdntPlutusChef | unknown | arbitrum | n/a | [`0x191e96c5feb06c61327c90b6f74e45ae18af4214`](./contracts/arbitrum-42161/0x191e96c5feb06c61327c90b6f74e45ae18af4214/) | ⚠️ Unaudited |
| PlsRdntRewardsDistro | unknown | arbitrum | n/a | [`0x8a8741282649eff8038300251252c3a963a61e33`](./contracts/arbitrum-42161/0x8a8741282649eff8038300251252c3a963a61e33/) | ⚠️ Unaudited |
| PlsRdntRewardsDistroV2 | unknown | arbitrum | n/a | [`0x18353aead4ab72bcc24c263ed75fb8a9ab74bb28`](./contracts/arbitrum-42161/0x18353aead4ab72bcc24c263ed75fb8a9ab74bb28/) | ⚠️ Unaudited |
| PlsRdntToken | unknown | arbitrum | n/a | [`0x1605bbdab3b38d10fa23a7ed0d0e8f4fea5bff59`](./contracts/arbitrum-42161/0x1605bbdab3b38d10fa23a7ed0d0e8f4fea5bff59/) | ⚠️ Unaudited |
| PlsRdntUtils | unknown | arbitrum | n/a | [`0x1f3fa65c5a9cf4f295fc34329aea552a528d7ac3`](./contracts/arbitrum-42161/0x1f3fa65c5a9cf4f295fc34329aea552a528d7ac3/) | ⚠️ Unaudited |
| PlsSpaPlutusChef | unknown | arbitrum | n/a | [`0x54f9fa97cabe5d13956c9285a0850c85d0b6d271`](./contracts/arbitrum-42161/0x54f9fa97cabe5d13956c9285a0850c85d0b6d271/) | ⚠️ Unaudited |
| PlsSpaToken | unknown | arbitrum | n/a | [`0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6`](./contracts/arbitrum-42161/0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6/) | ⚠️ Unaudited |
| PlsSpaVoter | unknown | arbitrum | n/a | [`0x11e5aadcda598962b1d7f3ad00e9b2fc7fdeb2f2`](./contracts/arbitrum-42161/0x11e5aadcda598962b1d7f3ad00e9b2fc7fdeb2f2/) | ⚠️ Unaudited |
| PlutusChef | unknown | arbitrum | n/a | [`0x4e5cf54fde5e1237e80e87fcba555d829e1307ce`](./contracts/arbitrum-42161/0x4e5cf54fde5e1237e80e87fcba555d829e1307ce/) | ⚠️ Unaudited |
| PlutusChronosVoter | unknown | arbitrum | n/a | [`0x5effb81418dc8866a80a4321a490de3a116470ea`](./contracts/arbitrum-42161/0x5effb81418dc8866a80a4321a490de3a116470ea/) | ⚠️ Unaudited |
| PlutusEpochStaking | unknown | arbitrum | n/a | [`0x27aaa9d562237bf8e024f9b21de177e20ae50c05`](./contracts/arbitrum-42161/0x27aaa9d562237bf8e024f9b21de177e20ae50c05/) | ⚠️ Unaudited |
| PlutusEsGmxTreasury | unknown | arbitrum | n/a | [`0x4f80b286e5c019d667bb168dd2796bd8305549f3`](./contracts/arbitrum-42161/0x4f80b286e5c019d667bb168dd2796bd8305549f3/) | ⚠️ Unaudited |
| PlutusGrailVesting | unknown | arbitrum | n/a | [`0xb04eaf69e86a1df15bac9a2fa3a73a0f617fddcf`](./contracts/arbitrum-42161/0xb04eaf69e86a1df15bac9a2fa3a73a0f617fddcf/) | ⚠️ Unaudited |
| PlutusPrivateTGE | unknown | arbitrum | n/a | [`0x35cd01aaa22ccae7839dfabe8c6db2f8e5a7b2e0`](./contracts/arbitrum-42161/0x35cd01aaa22ccae7839dfabe8c6db2f8e5a7b2e0/) | ⚠️ Unaudited |
| PlutusToken | unknown | arbitrum | n/a | [`0x51318b7d00db7acc4026c88c3952b66278b6a67f`](./contracts/arbitrum-42161/0x51318b7d00db7acc4026c88c3952b66278b6a67f/) | ⚠️ Unaudited |
| PrivateTgeHelper | unknown | arbitrum | n/a | [`0xec06e18b64b54470eb423a245640600155ad3427`](./contracts/arbitrum-42161/0xec06e18b64b54470eb423a245640600155ad3427/) | ⚠️ Unaudited |
| PrivateTgeRewards | unknown | arbitrum | n/a | [`0x6ccd4cfaf4bda43c09682b3e588b4bd18bffd603`](./contracts/arbitrum-42161/0x6ccd4cfaf4bda43c09682b3e588b4bd18bffd603/) | ⚠️ Unaudited |
| PrivateTgeVester | unknown | arbitrum | n/a | [`0x04b724389dd28ffc9a3a91ab4149a77530282f04`](./contracts/arbitrum-42161/0x04b724389dd28ffc9a3a91ab4149a77530282f04/) | ⚠️ Unaudited |
| RdntDepositor | unknown | arbitrum | n/a | [`0x0ee94f8e8f551dc7d21744db4b3dae59a68ebf48`](./contracts/arbitrum-42161/0x0ee94f8e8f551dc7d21744db4b3dae59a68ebf48/) | ⚠️ Unaudited |
| RdntLpStaker | unknown | arbitrum | n/a | [`0x1d18eeadb19c62fad9f153a323ed844088426ead`](./contracts/arbitrum-42161/0x1d18eeadb19c62fad9f153a323ed844088426ead/) | ⚠️ Unaudited |
| SimplePlvGlpOracle | unknown | arbitrum | n/a | [`0x75e901c9ef67f46fb56f35a90f1eecc748c18dac`](./contracts/arbitrum-42161/0x75e901c9ef67f46fb56f35a90f1eecc748c18dac/) | ⚠️ Unaudited |
| SpaDepositor | unknown | arbitrum | n/a | [`0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129`](./contracts/arbitrum-42161/0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129/) | ⚠️ Unaudited |
| SpaFeeClaimer | unknown | arbitrum | n/a | [`0x070344792cc8930bd8d91a3b2ac65c79b92ef7a2`](./contracts/arbitrum-42161/0x070344792cc8930bd8d91a3b2ac65c79b92ef7a2/) | ⚠️ Unaudited |
| SpaStaker | unknown | arbitrum | n/a | [`0x0325d080fe94341cb4882f9ebf9bf7b042a02f50`](./contracts/arbitrum-42161/0x0325d080fe94341cb4882f9ebf9bf7b042a02f50/) | ⚠️ Unaudited |
| SpaStakerV2 | unknown | arbitrum | n/a | [`0x3e40f80a3577fe19725e3570723476e68904bd9e`](./contracts/arbitrum-42161/0x3e40f80a3577fe19725e3570723476e68904bd9e/) | ⚠️ Unaudited |
| SpaStakerV3 | unknown | arbitrum | n/a | [`0x084079880cbb72277ed207237cb74587e91b474a`](./contracts/arbitrum-42161/0x084079880cbb72277ed207237cb74587e91b474a/) | ⚠️ Unaudited |
| SpaStakerV4 | unknown | arbitrum | n/a | [`0x46ac70bf830896eeb2a2e4cbe29cd05628824928`](./contracts/arbitrum-42161/0x46ac70bf830896eeb2a2e4cbe29cd05628824928/) | ⚠️ Unaudited |
| TeamVester | unknown | arbitrum | n/a | [`0x00e314654ba860c7146e1a973590f16a67e19624`](./contracts/arbitrum-42161/0x00e314654ba860c7146e1a973590f16a67e19624/) | ⚠️ Unaudited |
| TGEController | unknown | arbitrum | n/a | [`0x195b6ea50150900a25fa0928b8b65b03c7666d10`](./contracts/arbitrum-42161/0x195b6ea50150900a25fa0928b8b65b03c7666d10/) | ⚠️ Unaudited |
| TGEVault | unknown | arbitrum | n/a | [`0xc1d8f4109ec84db9b607e2705779142ec8f9534a`](./contracts/arbitrum-42161/0xc1d8f4109ec84db9b607e2705779142ec8f9534a/) | ⚠️ Unaudited |
| Whitelist | unknown | arbitrum | n/a | [`0x16240ac2fbd41f4087421e1525f74338bc95cf64`](./contracts/arbitrum-42161/0x16240ac2fbd41f4087421e1525f74338bc95cf64/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sourcehat.com/audits/PlvGLP](https://sourcehat.com/audits/PlvGLP) | SourceHat | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |
| [skynet.certik.com/projects/plutusdao](https://skynet.certik.com/projects/plutusdao) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x13794d30d01c96d6595d1d956f3dd70aec2c238b`](./contracts/arbitrum-42161/0x13794d30d01c96d6595d1d956f3dd70aec2c238b/) | ArbDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x180bb71666c4de074b4daa17ed579afcb8eb2c25`](./contracts/arbitrum-42161/0x180bb71666c4de074b4daa17ed579afcb8eb2c25/) | ArbStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11731da3ebf671f5ab2e2a4a61a8cf1293862d9e`](./contracts/arbitrum-42161/0x11731da3ebf671f5ab2e2a4a61a8cf1293862d9e/) | BribeDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0180365afb1118b054f4fada971103309d03d919`](./contracts/arbitrum-42161/0x0180365afb1118b054f4fada971103309d03d919/) | DpxDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x548c30b0af3ce6d96f1a63afc05f0fb66495179f`](./contracts/arbitrum-42161/0x548c30b0af3ce6d96f1a63afc05f0fb66495179f/) | DpxDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02b48b0e5fb8dd3f893ae345088ee3333205c476`](./contracts/arbitrum-42161/0x02b48b0e5fb8dd3f893ae345088ee3333205c476/) | DpxStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a7d37fdf0f2f6241bfb62998f4443661d356585`](./contracts/arbitrum-42161/0x1a7d37fdf0f2f6241bfb62998f4443661d356585/) | DpxStakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba`](./contracts/arbitrum-42161/0xcacf98a9235bb33dfa0e7e6a7000a937c2e6c9ba/) | EpochStakingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e1954da37fad279114035a45da49ca30ea5a988`](./contracts/arbitrum-42161/0x6e1954da37fad279114035a45da49ca30ea5a988/) | EpochStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50b3091b4188edfa3589b341adfb078edb93addd`](./contracts/arbitrum-42161/0x50b3091b4188edfa3589b341adfb078edb93addd/) | EpochStakingRewardsRolling | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x355e892176c39d3b384387985e4f6ab6671b3742`](./contracts/arbitrum-42161/0x355e892176c39d3b384387985e4f6ab6671b3742/) | EpochStakingRewardsRollingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x29640422bb775917102079cf259cc8f5ca7dbce8`](./contracts/arbitrum-42161/0x29640422bb775917102079cf259cc8f5ca7dbce8/) | EpochStakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8686a29760a71eb6b46b0a0b5ab1dcf42d415234`](./contracts/arbitrum-42161/0x8686a29760a71eb6b46b0a0b5ab1dcf42d415234/) | ExitHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ed6bb938ee0ca593669bfc5276091ff75d3d3f0`](./contracts/arbitrum-42161/0x4ed6bb938ee0ca593669bfc5276091ff75d3d3f0/) | FeeClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f80e3b68039d4735352bd92cfd4a5185992f919`](./contracts/arbitrum-42161/0x3f80e3b68039d4735352bd92cfd4a5185992f919/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x84d152e8cb68a94ebcf50ce6f17af7f2c1f891eb`](./contracts/arbitrum-42161/0x84d152e8cb68a94ebcf50ce6f17af7f2c1f891eb/) | FeeCollectorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9c140cd0f95d6675540f575b2e5da46bfffed31e`](./contracts/arbitrum-42161/0x9c140cd0f95d6675540f575b2e5da46bfffed31e/) | FeeCollectorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c94b28b5540170ea24085817bd81a9891f01bff`](./contracts/arbitrum-42161/0x6c94b28b5540170ea24085817bd81a9891f01bff/) | GlpDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbec7635c7a475cbe081698ea110ef411e40f8dd9`](./contracts/arbitrum-42161/0xbec7635c7a475cbe081698ea110ef411e40f8dd9/) | GlpStakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6fcce5033f33f4aa3a55d9f6ad5d469254747679`](./contracts/arbitrum-42161/0x6fcce5033f33f4aa3a55d9f6ad5d469254747679/) | GxpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706`](./contracts/arbitrum-42161/0x66cd8cb1ba49f1a07703fa6e5bfe2beb2ec8c706/) | JonesDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f6613e697cc2160f181f405d638d7ebf64961a5`](./contracts/arbitrum-42161/0x1f6613e697cc2160f181f405d638d7ebf64961a5/) | JonesDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4d50f56e5a208580f66e24eb9d557800eec154e5`](./contracts/arbitrum-42161/0x4d50f56e5a208580f66e24eb9d557800eec154e5/) | JonesLpStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x475e8a89ad4af634663f2632fff9e47e551f9600`](./contracts/arbitrum-42161/0x475e8a89ad4af634663f2632fff9e47e551f9600/) | JonesLpStakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20864169830bbb30bc25ed44a61008c0b22f07f8`](./contracts/arbitrum-42161/0x20864169830bbb30bc25ed44a61008c0b22f07f8/) | JonesStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14ba1690552c4f41360fa2ea5feece3d6533f073`](./contracts/arbitrum-42161/0x14ba1690552c4f41360fa2ea5feece3d6533f073/) | LockedStakedPlutusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5593473e318f0314eb2518239c474e183c4cbed5`](./contracts/arbitrum-42161/0x5593473e318f0314eb2518239c474e183c4cbed5/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6052213c67a539a91a1a88842dd81785601ddd13`](./contracts/arbitrum-42161/0x6052213c67a539a91a1a88842dd81785601ddd13/) | PendingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc82775f45c724f9aa28d84f40c7c4757777e9a9a`](./contracts/arbitrum-42161/0xc82775f45c724f9aa28d84f40c7c4757777e9a9a/) | PgSpaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3dc1ead69ae444e07964cd753dcffdbbb7651c8f`](./contracts/arbitrum-42161/0x3dc1ead69ae444e07964cd753dcffdbbb7651c8f/) | PlsArbPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaca851c46453878e78db041a529ecc76c8400093`](./contracts/arbitrum-42161/0xaca851c46453878e78db041a529ecc76c8400093/) | PlsArbStakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7a5d193fe4ed9098f7eadc99797087c96b002907`](./contracts/arbitrum-42161/0x7a5d193fe4ed9098f7eadc99797087c96b002907/) | PlsArbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20df4953ba19c74b2a46b6873803f28bf640c1b5`](./contracts/arbitrum-42161/0x20df4953ba19c74b2a46b6873803f28bf640c1b5/) | PlsDpxPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x38e517ab9edf86e8089633041ecb2e5db00715ad`](./contracts/arbitrum-42161/0x38e517ab9edf86e8089633041ecb2e5db00715ad/) | PlsDpxRewardsDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1`](./contracts/arbitrum-42161/0xf236ea74b515ef96a9898f5a4ed4aa591f253ce1/) | PlsDpxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07569a659fdc3af53982db92871b84f50e7e684a`](./contracts/arbitrum-42161/0x07569a659fdc3af53982db92871b84f50e7e684a/) | PlsJonesPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4a2b62f29a9570a1fef56e6dd9c1901ef64a6860`](./contracts/arbitrum-42161/0x4a2b62f29a9570a1fef56e6dd9c1901ef64a6860/) | PlsJonesRewardsDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44`](./contracts/arbitrum-42161/0xe7f6c3c1f0018e4c08acc52965e5cbff99e34a44/) | PlsJonesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x191e96c5feb06c61327c90b6f74e45ae18af4214`](./contracts/arbitrum-42161/0x191e96c5feb06c61327c90b6f74e45ae18af4214/) | PlsRdntPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a8741282649eff8038300251252c3a963a61e33`](./contracts/arbitrum-42161/0x8a8741282649eff8038300251252c3a963a61e33/) | PlsRdntRewardsDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18353aead4ab72bcc24c263ed75fb8a9ab74bb28`](./contracts/arbitrum-42161/0x18353aead4ab72bcc24c263ed75fb8a9ab74bb28/) | PlsRdntRewardsDistroV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1605bbdab3b38d10fa23a7ed0d0e8f4fea5bff59`](./contracts/arbitrum-42161/0x1605bbdab3b38d10fa23a7ed0d0e8f4fea5bff59/) | PlsRdntToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f3fa65c5a9cf4f295fc34329aea552a528d7ac3`](./contracts/arbitrum-42161/0x1f3fa65c5a9cf4f295fc34329aea552a528d7ac3/) | PlsRdntUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x54f9fa97cabe5d13956c9285a0850c85d0b6d271`](./contracts/arbitrum-42161/0x54f9fa97cabe5d13956c9285a0850c85d0b6d271/) | PlsSpaPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6`](./contracts/arbitrum-42161/0x0d111e482146fe9ac9ca3a65d92e65610bbc1ba6/) | PlsSpaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11e5aadcda598962b1d7f3ad00e9b2fc7fdeb2f2`](./contracts/arbitrum-42161/0x11e5aadcda598962b1d7f3ad00e9b2fc7fdeb2f2/) | PlsSpaVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4e5cf54fde5e1237e80e87fcba555d829e1307ce`](./contracts/arbitrum-42161/0x4e5cf54fde5e1237e80e87fcba555d829e1307ce/) | PlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5effb81418dc8866a80a4321a490de3a116470ea`](./contracts/arbitrum-42161/0x5effb81418dc8866a80a4321a490de3a116470ea/) | PlutusChronosVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27aaa9d562237bf8e024f9b21de177e20ae50c05`](./contracts/arbitrum-42161/0x27aaa9d562237bf8e024f9b21de177e20ae50c05/) | PlutusEpochStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f80b286e5c019d667bb168dd2796bd8305549f3`](./contracts/arbitrum-42161/0x4f80b286e5c019d667bb168dd2796bd8305549f3/) | PlutusEsGmxTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb04eaf69e86a1df15bac9a2fa3a73a0f617fddcf`](./contracts/arbitrum-42161/0xb04eaf69e86a1df15bac9a2fa3a73a0f617fddcf/) | PlutusGrailVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x35cd01aaa22ccae7839dfabe8c6db2f8e5a7b2e0`](./contracts/arbitrum-42161/0x35cd01aaa22ccae7839dfabe8c6db2f8e5a7b2e0/) | PlutusPrivateTGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x51318b7d00db7acc4026c88c3952b66278b6a67f`](./contracts/arbitrum-42161/0x51318b7d00db7acc4026c88c3952b66278b6a67f/) | PlutusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xec06e18b64b54470eb423a245640600155ad3427`](./contracts/arbitrum-42161/0xec06e18b64b54470eb423a245640600155ad3427/) | PrivateTgeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ccd4cfaf4bda43c09682b3e588b4bd18bffd603`](./contracts/arbitrum-42161/0x6ccd4cfaf4bda43c09682b3e588b4bd18bffd603/) | PrivateTgeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04b724389dd28ffc9a3a91ab4149a77530282f04`](./contracts/arbitrum-42161/0x04b724389dd28ffc9a3a91ab4149a77530282f04/) | PrivateTgeVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ee94f8e8f551dc7d21744db4b3dae59a68ebf48`](./contracts/arbitrum-42161/0x0ee94f8e8f551dc7d21744db4b3dae59a68ebf48/) | RdntDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d18eeadb19c62fad9f153a323ed844088426ead`](./contracts/arbitrum-42161/0x1d18eeadb19c62fad9f153a323ed844088426ead/) | RdntLpStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75e901c9ef67f46fb56f35a90f1eecc748c18dac`](./contracts/arbitrum-42161/0x75e901c9ef67f46fb56f35a90f1eecc748c18dac/) | SimplePlvGlpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129`](./contracts/arbitrum-42161/0x8c12e3c9b26ee2e43a1a71cd974e6bf250472129/) | SpaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070344792cc8930bd8d91a3b2ac65c79b92ef7a2`](./contracts/arbitrum-42161/0x070344792cc8930bd8d91a3b2ac65c79b92ef7a2/) | SpaFeeClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0325d080fe94341cb4882f9ebf9bf7b042a02f50`](./contracts/arbitrum-42161/0x0325d080fe94341cb4882f9ebf9bf7b042a02f50/) | SpaStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e40f80a3577fe19725e3570723476e68904bd9e`](./contracts/arbitrum-42161/0x3e40f80a3577fe19725e3570723476e68904bd9e/) | SpaStakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x084079880cbb72277ed207237cb74587e91b474a`](./contracts/arbitrum-42161/0x084079880cbb72277ed207237cb74587e91b474a/) | SpaStakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46ac70bf830896eeb2a2e4cbe29cd05628824928`](./contracts/arbitrum-42161/0x46ac70bf830896eeb2a2e4cbe29cd05628824928/) | SpaStakerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00e314654ba860c7146e1a973590f16a67e19624`](./contracts/arbitrum-42161/0x00e314654ba860c7146e1a973590f16a67e19624/) | TeamVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x195b6ea50150900a25fa0928b8b65b03c7666d10`](./contracts/arbitrum-42161/0x195b6ea50150900a25fa0928b8b65b03c7666d10/) | TGEController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1d8f4109ec84db9b607e2705779142ec8f9534a`](./contracts/arbitrum-42161/0xc1d8f4109ec84db9b607e2705779142ec8f9534a/) | TGEVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16240ac2fbd41f4087421e1525f74338bc95cf64`](./contracts/arbitrum-42161/0x16240ac2fbd41f4087421e1525f74338bc95cf64/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
