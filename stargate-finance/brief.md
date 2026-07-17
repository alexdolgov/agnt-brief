# Agentic Audit Brief: Stargate Finance

## Project Overview

- Project: Stargate Finance (`stargate-finance`)
- Website: [https://stargate.finance/](https://stargate.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.900Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, aurora, avalanche, base, bsc, ethereum, fantom, gnosis, kava, linea, manta, mantle, metis, optimism, plasma, polygon, scroll, sei, sonic, swellchain, unichain
- Contract surface: 579 unique implementations (767 raw deployments)
- DeFi Llama TVL: $80,398,075.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 48 project-authored contract(s) across 9 chain(s); 8 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 14 common project-authored base contract(s) (oftcore, oapp, oappsender). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 767; live-surface contracts included: 767 (180 live, 587 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 21/33 (63.6%)
- Deployed-live implementations: 34 of 579 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 21/36
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 543
- Unique implementations: 579
- Raw deployments: 767
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 21 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 15 | 41.7% | 2024-05 |
| Quantstamp | Tier 2 | 5 | 13.9% | 2022-03 |
| Zokyo | Tier 2 | 5 | 13.9% | 2022-03 |
| Ackee Blockchain | Tier 2 | 4 | 11.1% | 2022-07 |
| Ottersec | Tier 2 | 4 | 11.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); polygon `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944`; arbitrum `0x352d8275aae3e0c2404d9f68f6cee084b5beb3dd` | ✅ Audited |
| CreditMessaging | unknown | metis | n/a | 15 deployments: ethereum `0x6b8ad17795d89b283e6d0362a87a403f3544bb9d`; optimism `0xda82a31df339bfdf0123661134b4db63cb1706f5`; gnosis `0xe1ad845d93853fff44990ae0dcecd8575293681e`; unichain `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; polygon `0xc2b638cb5042c1b3c5d5c969361fb50569840583`; sonic `0x3a1293bdb83bbbdd5ebf4fac96605ad2021bbc0f`; manta `0x102d758f688a4c1c5a80b116bd945d4455460282`; metis [`0x0535d19ca4ef74119c31e1347d5f85232955cd31`](./contracts/metis-1088/0x0535d19ca4ef74119c31e1347d5f85232955cd31/); metis `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f`; metis `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7`; sei `0x13379b489fb2e76cedf96bceaa2441e5930d75e1`; mantle `0x4141eb977a8646ec60c4c2891aea645118183221`; base `0x12dc9256acc9895b076f6638d628382881e62cee`; arbitrum `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`; linea `0x138eb30f73bc423c6455c53df6d89cb01d9ebc63` | ✅ Audited |
| Factory | registry | base | n/a | [`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`](./contracts/base-8453/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ✅ Audited |
| FeeLibV1 | unknown | ethereum | n/a | 46 deployments: ethereum [`0x0829f361a05d993d5ceb035ca6df3446b060970b`](./contracts/ethereum-1/0x0829f361a05d993d5ceb035ca6df3446b060970b/); ethereum `0x0a06ac031bf6e3d7593c7566e49d28659a6381f4`; ethereum `0x0f3273ea5d8b182cd87c8630dc436a6133b9be39`; ethereum `0x31eef89d5215c305304a2fa5376a1f1b6c5dc477`; ethereum `0x3e368b6c95c6fefb7a16dcc0d756389f3c658a06`; ethereum `0x52b35406cb2fb5e0038edecfc129a152a1f74087`; ethereum `0x564770837ef8bbf077cfe54e5f6106538c815b22`; ethereum `0x6d5521f46b2cba9443fefc09cbac3b15ae0f73eb`; ethereum `0x6dd69717b1194b81a92105b7e0f94cb40f68a3e3`; ethereum `0x9fbbafc2ad79af2b57ed23c60dff79ef5c2b0fb5`; ethereum `0xd027afcc69ffa2bcb288ba68da6b71ec90d7b1d2`; ethereum `0xe171afcd1e0394b3312e68ca823d5bc87f3db311`; optimism `0x1f605162282570dfa6255d27895587f4117f52fa`; optimism `0x3da4f8e456ac648c489c286b99ca37b666be7c4c`; optimism `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`; gnosis `0x6d205337f45d6850c3c3006e28d5b52c8a432c35`; gnosis `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; polygon `0x3fc69cc4a842838bcdc9499178740226062b14e4`; polygon `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038`; sonic `0x88853d410299bcbfe5fcc9eef93c03115e908279`; manta `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08`; metis `0x13379b489fb2e76cedf96bceaa2441e5930d75e1`; metis `0x1502fa4be69d526124d453619276faccab275d3d`; metis `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2`; metis `0x19cfce47ed54a88614648dc3f19a5980097007dd`; metis `0x24576fe78583e3618079890557cf18b96779fb6d`; metis `0x3fc69cc4a842838bcdc9499178740226062b14e4`; metis `0x585138287a60ae9ee232238f31e8613ffd7e8c81`; metis `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5`; metis `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac`; metis `0xc2b638cb5042c1b3c5d5c969361fb50569840583`; metis `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`; metis `0xe8cdf27acd73a434d661c84887215f7598e7d0d3`; sei `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`; sei `0xcd4302d950e7e6606b6910cd232758b5ad423311`; sei `0xde48600aa18ae707f5d57e0faafec7c118abaeb2`; mantle `0x288968fff40543f168eaf29a54d5c0affd3c8df7`; mantle `0x2bc3141aaea1d84bcd557eeb543253fd9685c0c4`; mantle `0x6ec3efd27d8b1070fe96910ef416d54e845045c9`; mantle `0xa81274afac523d639dbca2c32c1470f1600ccebe`; base `0x08ed1d79d509a6f1020685535028ae60c144441e`; base `0x17e450be3ba9557f2378e20d64ad417e59ef9a34`; arbitrum `0x1f605162282570dfa6255d27895587f4117f52fa`; arbitrum `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`; arbitrum `0xda82a31df339bfdf0123661134b4db63cb1706f5`; linea `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b` | ✅ Audited |
| LPStaking | unknown | optimism | n/a | 6 deployments: ethereum `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`; optimism [`0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8`](./contracts/optimism-10/0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8/); polygon `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; arbitrum `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; arbitrum `0xea8dfee1898a7e0a59f7527f076106d7e44c2176`; avalanche `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ✅ Audited |
| LPStakingTime | unknown | base | n/a | 5 deployments: ethereum `0x1c3000b8f475a958b87c73a5cc5780ab763122fc`; optimism `0x4dea9e918c6289a52cd469cac652727b7b412cd2`; base [`0x06eb48763f117c7be887296cdcdfad2e4092739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/); arbitrum `0x9774558534036ff2e236331546691b4eb70594b1`; linea `0x4a364f8c717caad9a442737eb7b8a55cc6cf18d8` | ✅ Audited |
| OFTTokenERC20 | token | sei | n/a | [`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | ✅ Audited |
| RewardLib | unknown | manta | n/a | 2 deployments: manta [`0xca367694cdac8f152e33683bb36cc9d6a73f1ef2`](./contracts/manta-169/0xca367694cdac8f152e33683bb36cc9d6a73f1ef2/); metis `0xda82a31df339bfdf0123661134b4db63cb1706f5` | ✅ Audited |
| Router | adapter | linea | n/a | 7 deployments: ethereum `0x8731d54e9d02c286767d56ac03e8037c07e01e98`; optimism `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b`; polygon `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`; base `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b`; arbitrum `0x53bf833a5d6c4dda888f69c22c88c9f356a41614`; avalanche `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`; linea [`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`](./contracts/linea-59144/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | ✅ Audited |
| RouterETH | adapter | ethereum | n/a | 5 deployments: ethereum [`0x150f94b44927f078737562f0fcf3c95c01cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/); optimism `0xb49c4e680174e331cb0a7ff3ab58afc9738d5f8b`; base `0x50b6ebc2103bfec165949cc946d739d5650d7ae4`; arbitrum `0xbf22f0f184bccbea268df387a49ff5238dd23e40`; linea `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ✅ Audited |
| StargateEthVault | core_logic | base | n/a | 5 deployments: ethereum `0x72e2f4830b9e45d52f80ac08cb2bec0fef72ed9c`; optimism `0xb69c8cbcd90a39d8d3d3ccf0a3e968511c3856a0`; base [`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`](./contracts/base-8453/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/); arbitrum `0x82cbecf39bee528b5476fe6d1550af59a9db6fc0`; linea [`0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`](./contracts/linea-59144/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | ✅ Audited |
| StargateMultiRewarder | unknown | metis | n/a | 5 deployments: manta `0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5`; metis [`0x09d428a066e77806f9de48fe3a57e837ccd0912f`](./contracts/metis-1088/0x09d428a066e77806f9de48fe3a57e837ccd0912f/); metis `0x1f605162282570dfa6255d27895587f4117f52fa`; metis `0x362fae9a75b27bbc550aac28a7c1f96c8d483120`; metis `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ✅ Audited |
| StargateOFT | unknown | sei | n/a | [`0x5c386d85b1b82fd9db681b9176c8a4248bb6345b`](./contracts/sei-1329/0x5c386d85b1b82fd9db681b9176c8a4248bb6345b/) | ✅ Audited |
| StargatePool | core_logic | metis | n/a | 11 deployments: ethereum `0x268ca24daeff1fac2ed883c598200ccbb79e931d`; ethereum `0xcdafb1b2db43f366e48e6f614b8dccbfeefeecd3`; gnosis `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7`; metis [`0x22bdf9633f3e679785638db690b85dc0dc8b35b8`](./contracts/metis-1088/0x22bdf9633f3e679785638db690b85dc0dc8b35b8/); metis `0x36ed193dc7160d3858ec250e69d12b03ca087d08`; metis `0x8899da8a3621708709feb9ee3991299769e96e25`; metis `0xd9050e7043102a0391f81462a3916326f86331f0`; metis `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80`; metis `0xf713529665cb904b48b8716cf305c41b1f61bc57`; mantle `0x4c1d3fc3fc3c177c3b633427c2f769276c547463`; mantle `0xf7628d84a2bbd9bb9c8e686ac95bb5d55169f3f1` | ✅ Audited |
| StargatePoolNative | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x77b2043768d28e9c9ab44e1abfc95944bce57931`](./contracts/ethereum-1/0x77b2043768d28e9c9ab44e1abfc95944bce57931/); optimism `0xe8cdf27acd73a434d661c84887215f7598e7d0d3`; unichain `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7`; manta `0x9895d81bb462a195b4922ed7de0e3acd007c32cb`; base `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7`; arbitrum `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f`; linea `0x81f6138153d473e8c5ecebd3dc8cd4903506b075`; scroll `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ✅ Audited |
| StargatePoolUSDC | core_logic | base | n/a | 13 deployments: ethereum `0xc026395860db2d07ee33e05fe50ed7bd583189c7`; optimism `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`; bsc `0x962bd449e630b0d928f308ce63f1a21f02576057`; gnosis `0xb1eead6959cb5bb9b20417d6689922523b2b86c3`; polygon `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4`; sonic `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9`; sei `0x45d417612e177672958dc0537c45a8f8d754ac2e`; mantle `0xac290ad4e0c891fdc295ca4f0a6214cf6dc6acdc`; base [`0x27a16dc786820b16e5c9028b75b99f6f604b5d26`](./contracts/base-8453/0x27a16dc786820b16e5c9028b75b99f6f604b5d26/); arbitrum `0xe8cdf27acd73a434d661c84887215f7598e7d0d3`; avalanche `0x5634c4a5fed09819e3c46d86a965dd9447d86e47`; scroll `0x3fc69cc4a842838bcdc9499178740226062b14e4`; aurora `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | ✅ Audited |
| StargateStaking | unknown | mantle | n/a | 13 deployments: ethereum `0xff551feddbedc0aee764139ccd9cb644bb04a6bd`; optimism `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443`; polygon `0x4694900bdba99edf07a2e46c4093f88f9106a90d`; manta `0x1343994e136b6b15cbb2eb4075e0e73b8c4ebce0`; metis `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038`; metis `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34`; metis `0xde48600aa18ae707f5d57e0faafec7c118abaeb2`; metis `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`; sei `0x8c1014b5936dd88baa5f4db0423c3003615e03a0`; mantle [`0x02dc1042e623a8677b002981164ccc05d25d486a`](./contracts/mantle-5000/0x02dc1042e623a8677b002981164ccc05d25d486a/); base `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80`; arbitrum `0x3da4f8e456ac648c489c286b99ca37b666be7c4c`; linea `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | ✅ Audited |
| StargateToken | token | optimism | n/a | 9 deployments: ethereum `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`; optimism [`0x296f55f8fb28e498b858d0bcda06d955b2cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); optimism `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; polygon `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; base `0xe3b53af74a4bf62ae5511055290838050bf764df`; arbitrum `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; arbitrum `0x6694340fc020c5e6b96567843da2df01b2ce1eb6`; avalanche `0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`; linea `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ✅ Audited |
| TokenMessaging | token | manta | n/a | 17 deployments: ethereum `0x6d6620efa72948c5f68a3c8646d58c00d3f4a980`; optimism `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6`; bsc `0x6e3d884c96d640526f273c61dfcf08915ebd7e2b`; gnosis `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; polygon `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac`; sonic `0x2086f755a6d9254045c257ea3d382ef854849b0f`; manta [`0x0ceb237e109ee22374a567c6b09f373c73fa4cbb`](./contracts/manta-169/0x0ceb237e109ee22374a567c6b09f373c73fa4cbb/); metis `0x10b4155e44226de51986d758087b90f6b7392771`; metis `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4`; metis `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a`; sei `0x1502fa4be69d526124d453619276faccab275d3d`; mantle `0x41b491285a4f888f9f636cec8a363ab9770a0aef`; base `0x5634c4a5fed09819e3c46d86a965dd9447d86e47`; arbitrum `0x19cfce47ed54a88614648dc3f19a5980097007dd`; arbitrum `0x3fc69cc4a842838bcdc9499178740226062b14e4`; avalanche `0x17e450be3ba9557f2378e20d64ad417e59ef9a34`; linea `0x5f688f563dc16590e570f97b542fa87931af2fed` | ✅ Audited |
| Treasurer | unknown | metis | n/a | 4 deployments: manta `0x8a2b28364102bea189d99a475c494330ef2bdd0b`; metis [`0x3da4f8e456ac648c489c286b99ca37b666be7c4c`](./contracts/metis-1088/0x3da4f8e456ac648c489c286b99ca37b666be7c4c/); metis `0x749d57a943e738830064acfdc6d196a3f01b95ab`; metis `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ✅ Audited |
| VotingEscrow | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x0e42acbd23faee03249daff896b78d7e79fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/); optimism `0x43d2761ed16c89a2c4342e2b16a3c61ccf88f05b`; polygon `0x3ab2da31bbd886a7edf68a6b60d3cde657d3a15d`; arbitrum `0xfbd849e6007f9bc3cc2d6eb159c045b8dc660268`; avalanche `0xca0f57d295bbce554da2c07b005b7d6565a58fce` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabyPair | unknown | bsc | n/a | [`0xd397a40884ce00e662b419673e0b15cae628877f`](./contracts/bsc-56/0xd397a40884ce00e662b419673e0b15cae628877f/) | ⚠️ Unaudited |
| ConfluxOFT | unknown | ethereum | n/a | [`0xc16977205c53cd854136031bd2128f75d6ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ⚠️ Unaudited |
| CreditMessagingMintableBurnable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x807026a12e1a782426b538b98ca358a914cf07aa`](./contracts/ethereum-1/0x807026a12e1a782426b538b98ca358a914cf07aa/); ethereum `0x9b4d17b45d60b8173a5904b85a7baaec291e9173` | ⚠️ Unaudited |
| EnumerableSet | unknown | metis | n/a | 8 deployments: manta `0xda6087e69c51e7d31b6dbad276a3c44703dfdcad`; metis [`0x0eb74491493e9722cd876ada671ff8a62650ad83`](./contracts/metis-1088/0x0eb74491493e9722cd876ada671ff8a62650ad83/); metis `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219`; metis `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863`; metis `0x4694900bdba99edf07a2e46c4093f88f9106a90d`; metis `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161`; metis `0x873cfb4bae1ab6a5de753400e9d0616e10dced22`; metis `0xbbb097f94b416d39c562870a407cb0656a76e800` | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815bd50389c46847f0bda824ec8da914045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ⚠️ Unaudited |
| MultiCallUtils | periphery | manta | n/a | [`0x0e81579b25c9c458a2030824b7fdbd0194900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | ⚠️ Unaudited |
| OFTWrapper | unknown | metis | n/a | [`0xfccb355647cd13051eda808da7e524d5bad90615`](./contracts/metis-1088/0xfccb355647cd13051eda808da7e524d5bad90615/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ad82b29261a9657a89a299dac3bfe01880778d4`](./contracts/ethereum-1/0x8ad82b29261a9657a89a299dac3bfe01880778d4/); ethereum `0x943ed40709dfd0c30f25c458c54fcbb3b01ca66e` | ⚠️ Unaudited |
| SGTERC20Token | token | bsc | n/a | [`0x141381f07fa31432243113cda2f617d5d255d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | ⚠️ Unaudited |
| StargateMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x108f4c02c9fcdf862e5f5131054c50f13703f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/); ethereum `0x12a272a581fee5577a5dfa371afeb4b2f3a8c2f8` | ⚠️ Unaudited |
| StargatePoolEURC | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x783129e4d7ba0af0c896c239e57c06df379aae8c`](./contracts/ethereum-1/0x783129e4d7ba0af0c896c239e57c06df379aae8c/); ethereum `0x8a2b28364102bea189d99a475c494330ef2bdd0b` | ⚠️ Unaudited |
| StargatePoolMigratable | core_logic | sei | n/a | 11 deployments: ethereum `0x933597a323eb81cae705c5bc29985172fd5a3973`; optimism `0x19cfce47ed54a88614648dc3f19a5980097007dd`; bsc `0x138eb30f73bc423c6455c53df6d89cb01d9ebc63`; polygon `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7`; metis `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3`; metis `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125`; metis `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331`; sei [`0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/); mantle `0xb715b85682b731db9d5063187c450095c91c57fc`; arbitrum `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0`; avalanche `0x12dc9256acc9895b076f6638d628382881e62cee` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c30ff8cc128cf0250e25616857302df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad285ef39fed84e77edf1b7dbc442565e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (543)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0ceb237e109ee22374a567c6b09f373c73fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102d758f688a4c1c5a80b116bd945d4455460282` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1041d127b2d4bc700f0f563883bc689502606918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e28b8fcb5a20c9ffe82dfb7ede0cde691edbcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a6437bef5b8615ef523d00ef7c9d58d66c0f246` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2088d9833b704c8b6edcbdbd417d25f0f6486263` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26e74ad004cb6883fb5f9240f6064be77cff19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff4db91799b1d501089c6b17e3b9faf802c08e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aff12ce71afd06e7b20f50f2eaa365b8b4f779c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eeba4e168b23601eb7716a5d1ac243b8d375290` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5489ddab89609580835ee6d655cd9b3503e7f97d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b32c997211621d55a89cc5abaf1cc21f3a6ddf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d76f06f00b6a4018b84a038498c5e29066319ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5db42cddf2346c4ee9c62ed16ab25d4c24af14ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e59b984cd0013a2d3b742918cfe5fc10517082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62f5971d9ffefe195cc0a0bb943bafd04c97ae4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63c2a938650d7b3ea7926e9eee36533034942892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x667b9cbe277ca713af86b1b47ba7ba55606f7da8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c7ba0d4ee7613ad2f5c9d37d18ed3920236638a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f0611a1858ce557d7fd6565a4425ff9aa555b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77b2e51bec45bd7bca02b72273d8f2ff1063fa51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac895d7180de50d1fca0eaeb6c7f6dfb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822b6ebc4282b06b86f122edb74e71f4cb488895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83c618c0760281759bb5842e36fe43c66bbaaa6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8880083d9cd82ed74e77c702c4e18d284e2a4d90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f22c4b3dbe693a34f2af61a16a022f87d9499ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c6982849a2a30270ed32ee3779e3d05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5b75d4fcdc9942a468b15142920b8b4f6d1815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb24fd55dc046d6e435ab28fa95611a5840b48ab1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4292b2885c3fe813f16fea29bc89e0e4d425f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb87588947a2674fcce0f50f470654adac9496d2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8b1a96933e4721ab9d94d60682055ea60eae455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe2288d1fc37318370d2addeb9bea915b492da2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0441dc6179217af689e1c80b854420371def97f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b9001646ba0f87c1e493755972c625ace0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc252b5c25b6d0845b6679f1d15e7910d8ef7414f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a281b90727fd77165f756690561c214786fba1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc946c11c35b8957bbc47d37391e4c0b95ddbeed4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca7867b497b961b64231ee1cd270288f5cef0381` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2eaf72ea49bd802a057dbae6e4cc8b7493b398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd41a61e01aca0541a02d30d68cb9f5bfab9de620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec4e073bfbd440fba4d6a4f3d2d3ea6fd1b66f56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5bba76476274762649bb22e08c6950dd681e202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8c61c8f4fdd41dd444f7b582c9f440e1b1adcc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa54751cda1f98947c524fd9701c9dad84fcdcfd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16419058f15a86795933f78dc624b384d09e3a4e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x18ae6d4becae6cb6d2536ecce89871f27a8c1bb0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f29c7cd7448c9c6115d8bcb55952c1d2b51c71e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x317d8bfc7f6d5f74ede9d9da3b7bbff9cbe90f14` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x389c106379acf1e127bf31fa1fdbe62dbfb55b9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3fc69cc4a842838bcdc9499178740226062b14e4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x46bc16f76b0ae14abb820d3410843ba54d8ef6f0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4839ff304dd3e38da9bc73f58e2999390e76b80d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x505ecdf2f14cd4f1f413d04624b009a449d38d7e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53678e62af4dcdfc3bb5b72c9826ca9b60f28f80` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x644abb1e17291b4403966119d15ab081e4a487e9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6694340fc020c5e6b96567843da2df01b2ce1eb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6fd8dd2d7ac59e41c3907f6ae4717b08d5b407cf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x701a95707a0290ac8b90b3719e8ee5b210360883` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7a045193ade1e7013d8d19f3edd3f6cb8ae61275` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa45b5130f36cdca45667738e2a258ab09f4a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xae8d00e43adb49d14fa07c93b27cdb3ee94c4675` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcbffca36cdc13c646f8391db55e4c13a7ce05f0a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd181c232efa6f8504ce7477dbc421da315be6ed8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd9050e7043102a0391f81462a3916326f86331f0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe3b53af74a4bf62ae5511055290838050bf764df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x046ad0eac306b2d56c1c11066873dc686a3099a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a6a15964fee494a881338d65940430797f0d97c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ca3d94b3b83c97d4628a5250a71192c62769b2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cb0b86d8aa2a28334987009144c066774900512` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18d1d98e3f8bc4017d77b91020593128f50fca65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e9999bc6a5511e8bacd48e6bbc660d9db428da3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23204498cd1d50fa56769153a9284168ad5a4b50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25bbf59ef9246dc65bfac8385d55c5e524a7b9ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26727c78b0209d9e787b2f9ac8f0238b122a3098` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28eacea7f18e4997fcaed6836db377d2517cdce4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f688f563dc16590e570f97b542fa87931af2fed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6013a927605fc5c415c5fddfce68ca9c0d43fd21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x622244fff1328586d0754d67cc6ab77e7ab38b7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68d7877b16002ad34836ba55416bca9b92b55589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6934dff03e84949b8fd05e7d81ef2c1e2416bdaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73a755894394429a68ad2474981780e0e2429ece` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74672e25b881618130c8a9a25a3312acfc6a4162` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794fe59f3427b89271868c0e2da4e343a9680c32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7967d9b6190d6bf4f306a6888ec4d951ffd47e5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81f6138153d473e8c5ecebd3dc8cd4903506b075` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x933c8ef7befb2ea7b90d7729d2ee81fd3bf927e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2b48ad28c09cc64cccf9ed73e1efced052877d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2f60ff6c6c2163519054a922e5b478863d07965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf2d23d17238bfc60a9f226f1d87b738fe958305` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2e33c49444b9309f6c5d2a51d1e2609e758ba9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb82ac36e9df3c700f12ecf552f240bf4d7b7a212` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb833ff51d277065b1fd2d729835c2302fc2fe5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd3735c138fab8883a9fbb1cdc762e5fcbec45ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbeff88671cfa710fd0e13d36f743711e2a50fe81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4c85df97d6aa014da810bb0a4e83de68031d208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccf35d24bb47d894861b849010f29be4463f1823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd00d14b48ecc171eb8b3e8862c4efe6092592659` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd45c0f6fc5082e8d3ffb81df26f9d2c83a3bf01e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd91d034bca99c410ea794f34b228df68fb092cb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd93b1f3456b760e47635d99188c74ed7e9f34206` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd06743c82c2d8cad4e975487a8c02ac5fd9e1b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0867ae01d60b0b8b767967493fed4d21130b66c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1ae9d2933ff625b3449c947b377280ba9906c20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe72ee4edd7e1c0c1fe47a04f285465530a27e905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea2910d0c931e6a760e9ba7f9d0705c03940ca6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff4a2802d6f6b6a9fe2c8ebfa10350617ddb539b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd9492653457a69e9f4987db43d7fa0112e620cb4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe1ad845d93853fff44990ae0dcecd8575293681e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08ed1d79d509a6f1020685535028ae60c144441e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0920a77fe98709fe85c3a905f720acbaed1755e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x12dc9256acc9895b076f6638d628382881e62cee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17e450be3ba9557f2378e20d64ad417e59ef9a34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ef98c187c3940e96080fa4e8a5b858e62bdee81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x212efc8dd3fff79dfc2c664fdcc8fbc9e00c75ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2eb9ea9df49bebb97e7750f231a32129a89b82ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3af50362c08cdb450a41d2a2774c35011087ebbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ac7c7bb854e772d9eae3835ec0f1961d011b35d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x941f7a582b644bdcf6ad79b5f1e5dd5ce21b13cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0732186f556f034cf9930b7796bc3a03e614750` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb279b324ea5648be6402abc727173a225383494c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2a6a1a8accc8bd757bf4b34fbacb20fbea87f55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd46ccf40d6dd371ade5c9d0e8f83354cf62285ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc2716b92480225533abc3328c2ab961f2a9247d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x015fd589f4f1a33ce4487e12714e1b15129c9329` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x164a2de1bc5dc56f329909f7c97bae929cae557b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d93fbce4cffc15dd385a80b3f4cc1d4e76c38b3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x549943e04f40284185054145c6e4e9568c1d3241` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x674843c06ff83502ddb4d37c2e09c01cda38cbc8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x74c9f2b00581f1b11aa7ff05aa9f608b7389de67` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa7f3e26df31abcb20a6fe6be35ddc60702a32455` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0b2391a32e066fdf354ef7f4199300f920789f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbba60da06c2c5424f03f7434542280fcad453d10` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4159ed21d3019bc2c59205b7a56cbf622ead5b68` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaca82f7a0df6f81cfb569740c564cca90e805d2e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x090194f1eedc134a680e3b488abb2d212dba8c01` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x77c71633c34c3784ede189d74223122422492a0f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7c2fc16384361fbfdca555d8f781bf65f85cf28c` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xd69a3d88438f042a5a0b995b970f78fc8120ed67` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | 7 deployments: fantom `0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03`; fantom `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`; swellchain `0x0829f361a05d993d5ceb035ca6df3446b060970b`; swellchain `0xcc0587aebda397146cc828b445db130a94486e74`; kava `0x41a5b0470d96656fb3e8f68a218b39adbca3420b`; kava `0x88124ef4a9ec47e691f254f2e8e348fd1e341e9b`; kava `0xdd69db25f6d620a7bad3023c5d32761d353d3de9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0184857631ddb3e9e230bca303f0ab1e516fc0c8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0b38e83b86d491735feaa0a791f65c2b99535396` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x19cfce47ed54a88614648dc3f19a5980097007dd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1f605162282570dfa6255d27895587f4117f52fa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2737d5331be90a5a2a3283f8b6aa6c427b5396b7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x317d8bfc7f6d5f74ede9d9da3b7bbff9cbe90f14` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3da4f8e456ac648c489c286b99ca37b666be7c4c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x44e255a15a8437d43613c41065dcf23b71c544ad` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a23fed6807805861e10393fb85f508291c7adfd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4e8c9bac25cef251352ace831270d564615b9ce1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x644abb1e17291b4403966119d15ab081e4a487e9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6503334b14ff08ed510d7216cfa0d7495114f5de` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x694d8ddc304032b7348932a40acc0626d5ab58dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6eec9edb54666a85949e0d05feaff36bde21ce1f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x80f755e3091b2ad99c08da8d13e9c7635c1b8161` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x92caa67a41f967f16fdc570b54ad2e5f6de3344e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x95bba4c0dfc0f6bb4eb1dff570e4e6ac54573d7f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9dda183deb4b3a8ae41253d384927ba654ffc5ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbaf88247907b2bdb6cde5321f4592782a9213276` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc1b8045a6ef2934cf0f78b0dbd489969fa9be7e4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc86ff8a02fe7dda5de537d7341bcce6cf62d4373` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc8769abcf78584b5997ba4207a4ec72bf6b6962e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xce8cca271ebc0533920c83d39f417ed6a0abb7d0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd29de5463f354b42c7a0a51253db7c45475868d8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xda82a31df339bfdf0123661134b4db63cb1706f5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xeba85e362428ff1bcf0c26161c57227b7816ade4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xed73cfad9990e4a3d647fa216630d1493356324c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf066e864516c0103625938b4f004d2c1a143fde4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf1fcb4cbd57b67d683972a59b6a7b1e2e8bf27e6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf85b57136aea835ff4123133052e8461825a11f7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a6a15964fee494a881338d65940430797f0d97c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15efb7850aa5b7a05184579b0aab501091e7b389` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19b2217721c33daffe9c576289cff174fe61dcb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21e6738985aea7d8c547616ffb52d4fe56d92b9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a63ced56acfaf53187cfbddd4b9649f2808ccfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41a5b0470d96656fb3e8f68a218b39adbca3420b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x430102caac989c9259edb9a80a772ce547ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x647fd4d817e395616f2eb57b75ab49210cde5cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x701a95707a0290ac8b90b3719e8ee5b210360883` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8731d54e9d02c286767d56ac03e8037c07e01e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0d502e938ed5f4df2e681fe6e419ff29631d62b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdb3ad3d8f873a9a1c35e36f4545b15e293ed570` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd433efa0ef993b14fe67ca92fcd555e95486f184` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0ceb237e109ee22374a567c6b09f373c73fa4cbb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x102d758f688a4c1c5a80b116bd945d4455460282` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1343994e136b6b15cbb2eb4075e0e73b8c4ebce0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9895d81bb462a195b4922ed7de0e3acd007c32cb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xca367694cdac8f152e33683bb36cc9d6a73f1ef2` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xda6087e69c51e7d31b6dbad276a3c44703dfdcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0535d19ca4ef74119c31e1347d5f85232955cd31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09d428a066e77806f9de48fe3a57e837ccd0912f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d05066bd154d03445d220a8433e458405fedad7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10b4155e44226de51986d758087b90f6b7392771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13e1b6c2fa4ead33b04b40a0d58d367243ae6e9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x146c8e409c113ed87c6183f4d25c50251dffbb3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x165a45083f43bf3d0df756bd51e3855bdef45250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17d65bf79e77b6ab21d8a0afed3bc8657d8ee0b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf31666c06ac3401ed0c1c6346c4a9425dd7de4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f29c7cd7448c9c6115d8bcb55952c1d2b51c71e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24576fe78583e3618079890557cf18b96779fb6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a6c43e0dbdcde23d40c82f45682bc6d8a6db219` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36ed193dc7160d3858ec250e69d12b03ca087d08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x389c106379acf1e127bf31fa1fdbe62dbfb55b9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4315ba8863891035b5cb5594cd1a6c32eb6ae863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4694900bdba99edf07a2e46c4093f88f9106a90d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47f361d821af70178afac11742bed5a823717644` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dcbfc0249e8d5032f89d6461218a9d2efff5125` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e422b0acb2bd7e3ac70b5c0e5eb806e86a94038` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x503c5cfea3477e0a576c8cf5354023854b7a06ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55bdb4164d28fbaf0898e0ef14a589ac09ac9970` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x585138287a60ae9ee232238f31e8613ffd7e8c81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c1a97c144a97e9b370f833a06c70ca8f2f30de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5eb3bbd97f8e0b612733f11c9eb33356ecf874b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c33a7b29c8b012d060f3a5046f3ee5ac48f4780` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x749d57a943e738830064acfdc6d196a3f01b95ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ed75072d5e21901ec140fcb3f53aa5c8ded92af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x875bee36739e7ce6b60e056451c556a88c59b086` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8943cb63eef1b3dba5f455bfb704477436e31c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x957b12606690c7692ef92bb5c34a0e63baed99c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x962f92cee9a559d705f8999c92752ebcdd550616` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e216659f3292aa3259a3b9433a1f73f92f2041d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb083267307d53f1d3ba70e654671f0ab30a9a26e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1641d94684225b72f97e52b2b02ad07f7ba9089` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbb097f94b416d39c562870a407cb0656a76e800` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc53e6d7018e2d10ebed643302567f8de752804fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbe78230cca58b9ef4c3c5d1bc0d7e4b3206588a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc3633a02d2a9fa29e83cd205d37d186a12fea34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd240a859efc77b7455ad1b1402357784a2d72a1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4d039141fd179dc2e28bab79848c0c49455ab2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9050e7043102a0391f81462a3916326f86331f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7ec689f432f29383f217e36e680b5c855051f25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf406f7cd82abfdedf8f718d48912ee40a210a655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf53ca2fb2302c6aa3f443c8041adfb7caecd84aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfbb5a71025bef1a8166c9bcb904a120aa17d6443` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x063920c5f0734528a99644a1f8a42bd88eed7a13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08ed1d79d509a6f1020685535028ae60c144441e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cff9acef65a64b5d76e83b70787b27f7416644c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10e28ba4d7fc9cf39f34e20bbc5c58694b2f1a92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15efb7850aa5b7a05184579b0aab501091e7b389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19b2217721c33daffe9c576289cff174fe61dcb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c32cab35865d81fba1bb74d7575e2f7a8646cfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20293edd4f52f81234b3997b9ae4742c48005858` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21e6738985aea7d8c547616ffb52d4fe56d92b9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x362fae9a75b27bbc550aac28a7c1f96c8d483120` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3aa9fd32fc5c28e1e5f8725cff5c2a607b8303d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x411c77b163653044dbeb7a42e5b1b9e60b24ab67` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41a5b0470d96656fb3e8f68a218b39adbca3420b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53b41a010ba094a22c2bc0c0c05bac9312aad576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e8ec15acb5aa94d5f0589e54441b31c5e0b992d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62207a4d054376052bfcede2c00d113e97d4d247` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x693604e757ac7e2c4a8263594a18d69c35562341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ce9bf8cdab780416ad1fd87b318a077d2f50eac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f0369206d8a700514574daaa0634b8a1f7149d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x808d7c71ad2ba3fa531b068a2417c63106bc0949` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x82bb122e9a665f3c6fd51186594800a6cfa1beda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9aa02d4fae7f58b8e8f34c66e756cc734dac7fe4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa73a052e4701734f6a95a89fb3a38f2294150d28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2b638cb5042c1b3c5d5c969361fb50569840583` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdbebef074f472da5ee7e46ab404c91e0e5798ea4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfc47dcef7e8f9ab19a1b8af3eecf000c7ea0b80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf713529665cb904b48b8716cf305c41b1f61bc57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff2eeeae68bca3e448babca20e64dfde44b25217` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x06d538690af257da524f25d0cd52fd85b1c2173e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0cb0b86d8aa2a28334987009144c066774900512` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1041d127b2d4bc700f0f563883bc689502606918` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x18d1d98e3f8bc4017d77b91020593128f50fca65` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1e9999bc6a5511e8bacd48e6bbc660d9db428da3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x26727c78b0209d9e787b2f9ac8f0238b122a3098` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x296f55f8fb28e498b858d0bcda06d955b2cb3f97` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x38ad194962c4f18114751c5857cbf6080dec0041` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45a01e4e04f14f7a4a6702c74187c5f6222033cd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45f1a95a4d3f3836523f5c83673c797f4d4d263b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4f579e60f4c0e5e1400c3dfee696d71d625246fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5871a7f88b0f3f5143bf599fd45f8c0dc237e881` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6013a927605fc5c415c5fddfce68ca9c0d43fd21` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x73a755894394429a68ad2474981780e0e2429ece` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x794fe59f3427b89271868c0e2da4e343a9680c32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7967d9b6190d6bf4f306a6888ec4d951ffd47e5a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x933c8ef7befb2ea7b90d7729d2ee81fd3bf927e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9361dd367c582ccf872a4838c4fc689952217c58` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa2f60ff6c6c2163519054a922e5b478863d07965` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaf54be5b6eec24d6bfacf1cce4eaf680a8239398` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc4c85df97d6aa014da810bb0a4e83de68031d208` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd00d14b48ecc171eb8b3e8862c4efe6092592659` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd91d034bca99c410ea794f34b228df68fb092cb2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd002227d9bc27f10066ed9a17be89c43bcafc31` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe3a3d6c0ed264f6e143e254225301f32ccdc1633` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe72ee4edd7e1c0c1fe47a04f285465530a27e905` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe89ca5c58e2978c031f7796ca8580bc88ea0b3dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xea2910d0c931e6a760e9ba7f9d0705c03940ca6d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf5f74d2508e97a3a7cca2ccb75c8325d66b46152` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff4a2802d6f6b6a9fe2c8ebfa10350617ddb539b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Stargate V2 - Zellic FINAL Audit Report.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate%20V2%20-%20Zellic%20FINAL%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | 12 | n/a |
| [Stargate_V2_Ottersec_Final.pdf](https://github.com/stargate-protocol/stargate-v2/blob/main/audits/Stargate_V2_Ottersec_Final.pdf) | Ottersec | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [Stargate Audit 1.0 (December 22nd 2021) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.0%20(December%2022nd%202021)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2021-12 | stale | Direct | contract_name | 5 | n/a |
| [Stargate Audit 1.1 (March 21st 2022) - Zokyo.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%201.1%20(March%2021st%202022)%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-03 | stale | Direct | contract_name | 5 | n/a |
| [Stargate Audit 2.0 (February 24th 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%202.0%20(February%2024th%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-02 | stale | Direct | contract_name | 5 | n/a |
| [Stargate Audit Report (16th March 2022) - Quantstamp.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(16th%20March%202022)%20-%20Quantstamp.pdf) | Quantstamp | Audit | 2022-03 | stale | Direct | contract_name | 5 | n/a |
| [Stargate Audit Report (March 6th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Audit%20Report%20(March%206th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-03 | stale | Direct | contract_name | 3 | n/a |
| [Stargate EthVault & RouterETH Audit 1.1 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26%20RouterETH%20Audit%201.1%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 2 | n/a |
| [Stargate EthVault &RouterETH Audit 1.0 (17th June 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20EthVault%20%26RouterETH%20Audit%201.0%20(17th%20June%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | 2 | n/a |
| [Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.0%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20FeeLibraryV4%20Audit%201.1%20(June%2028th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Stargate LPStakingTime & WidgetSwap Audit 1.0 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.0%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [Stargate LPStakingTime & WidgetSwap Audit 1.1 (July 12th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20LPStakingTime%20%26%20WidgetSwap%20Audit%201.1%20(July%2012th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [Stargate Router & FeeLibraryV5.1 Audit (December 14th 2022) - Zellic.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20Router%20%26%20FeeLibraryV5.1%20Audit%20(December%2014th%202022)%20-%20Zellic.pdf) | Zellic | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [Stargate VE Audit 1.0 (March 29th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.0%20(March%2029th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [Stargate VE Audit 1.1 (April 13th 2022) - Ackee.pdf](https://github.com/stargate-protocol/stargate/blob/main/audit/Stargate%20VE%20Audit%201.1%20(April%2013th%202022)%20-%20Ackee.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [Paladin_StargateFeeDistributor_Final_Report.pdf](https://github.com/stargate-protocol/stargate-dao/blob/main/audit/Paladin_StargateFeeDistributor_Final_Report.pdf) | Paladin | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd397a40884ce00e662b419673e0b15cae628877f`](./contracts/bsc-56/0xd397a40884ce00e662b419673e0b15cae628877f/) | BabyPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc16977205c53cd854136031bd2128f75d6ff63c9`](./contracts/ethereum-1/0xc16977205c53cd854136031bd2128f75d6ff63c9/) | ConfluxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x807026a12e1a782426b538b98ca358a914cf07aa`](./contracts/ethereum-1/0x807026a12e1a782426b538b98ca358a914cf07aa/) | CreditMessagingMintableBurnable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0eb74491493e9722cd876ada671ff8a62650ad83`](./contracts/metis-1088/0x0eb74491493e9722cd876ada671ff8a62650ad83/) | EnumerableSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1815bd50389c46847f0bda824ec8da914045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ERC20Mock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0e81579b25c9c458a2030824b7fdbd0194900803`](./contracts/manta-169/0x0e81579b25c9c458a2030824b7fdbd0194900803/) | MultiCallUtils | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xfccb355647cd13051eda808da7e524d5bad90615`](./contracts/metis-1088/0xfccb355647cd13051eda808da7e524d5bad90615/) | OFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x141381f07fa31432243113cda2f617d5d255d39a`](./contracts/bsc-56/0x141381f07fa31432243113cda2f617d5d255d39a/) | SGTERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x108f4c02c9fcdf862e5f5131054c50f13703f916`](./contracts/ethereum-1/0x108f4c02c9fcdf862e5f5131054c50f13703f916/) | StargateMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x783129e4d7ba0af0c896c239e57c06df379aae8c`](./contracts/ethereum-1/0x783129e4d7ba0af0c896c239e57c06df379aae8c/) | StargatePoolEURC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a`](./contracts/sei-1329/0x0db9afb4c33be43a0a0e396fd1383b4ea97ab10a/) | StargatePoolMigratable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c30ff8cc128cf0250e25616857302df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad285ef39fed84e77edf1b7dbc442565e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 543 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=48

Zero-match audit list:

- [10489] Stargate FeeLibraryV4 Audit 1.0 (June 28th 2022) - Ackee.pdf
- [10490] Stargate FeeLibraryV4 Audit 1.1 (June 28th 2022) - Ackee.pdf
- [10498] Paladin_StargateFeeDistributor_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
