# Agentic Audit Brief: tidaldex

## Project Overview

- Project: tidaldex (`tidaldex`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.500Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 71 unique implementations (71 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 70 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens, 6 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (eip712metatransaction, eip712base, accesscontrolenumerable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 71 (71 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/71 (0.0%)
- Deployed-live implementations: 71 of 71 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtmwSale | unknown | bsc | n/a | [`0x5f2ab6046211a8e56500a729169df46e13c2ab1e`](./contracts/bsc-56/0x5f2ab6046211a8e56500a729169df46e13c2ab1e/) | ⚠️ Unaudited |
| AutoFarm | unknown | bsc | n/a | [`0x27315b7bd65824b9482f74d17006c538bae36f1d`](./contracts/bsc-56/0x27315b7bd65824b9482f74d17006c538bae36f1d/) | ⚠️ Unaudited |
| AutoRewardPool | unknown | bsc | n/a | [`0x43e468749c4b05f9e7e47c84384250e2a83a478e`](./contracts/bsc-56/0x43e468749c4b05f9e7e47c84384250e2a83a478e/) | ⚠️ Unaudited |
| AutoRewardPool_Variable | unknown | bsc | n/a | [`0x5818c398449ac9b1eadde574719855d8cd36092f`](./contracts/bsc-56/0x5818c398449ac9b1eadde574719855d8cd36092f/) | ⚠️ Unaudited |
| Bandit | unknown | bsc | n/a | [`0x2a10cfe2300e5df9417f7bee99ef1e81228f0ac7`](./contracts/bsc-56/0x2a10cfe2300e5df9417f7bee99ef1e81228f0ac7/) | ⚠️ Unaudited |
| BanditMasterRoutable | unknown | bsc | n/a | [`0x04465426ab669fa0f2755bf23127eaa0dcf61a38`](./contracts/bsc-56/0x04465426ab669fa0f2755bf23127eaa0dcf61a38/) | ⚠️ Unaudited |
| BoostedValueCalculator | unknown | bsc | n/a | [`0x56f8e89f9e65dd2514911389be3ed99989c1e700`](./contracts/bsc-56/0x56f8e89f9e65dd2514911389be3ed99989c1e700/) | ⚠️ Unaudited |
| BoosterIERC721Bal | unknown | bsc | n/a | [`0x515bb2f9045d758a365d86d460574628e5621a67`](./contracts/bsc-56/0x515bb2f9045d758a365d86d460574628e5621a67/) | ⚠️ Unaudited |
| BoosterOutlawSet | unknown | bsc | n/a | [`0x3e94bb555c4d1e58825eda60fade1b5272551dc0`](./contracts/bsc-56/0x3e94bb555c4d1e58825eda60fade1b5272551dc0/) | ⚠️ Unaudited |
| BRAG | unknown | bsc | n/a | [`0x2f4db7787f16cbc7d5e23acdfc8b450243edd26b`](./contracts/bsc-56/0x2f4db7787f16cbc7d5e23acdfc8b450243edd26b/) | ⚠️ Unaudited |
| Cashback_Registry | unknown | bsc | n/a | [`0x385a310f4744881383bee1f4a42ebb59d255ea56`](./contracts/bsc-56/0x385a310f4744881383bee1f4a42ebb59d255ea56/) | ⚠️ Unaudited |
| Cashback_Registry_Referral_Levels | unknown | bsc | n/a | [`0x6db532685de35cf7d5b81945bb1187798b3471e8`](./contracts/bsc-56/0x6db532685de35cf7d5b81945bb1187798b3471e8/) | ⚠️ Unaudited |
| ChronoPoolService | unknown | bsc | n/a | [`0x3b6fbb97b5ad7804535340f40fa13df85a3c3e0f`](./contracts/bsc-56/0x3b6fbb97b5ad7804535340f40fa13df85a3c3e0f/) | ⚠️ Unaudited |
| CZBlue | unknown | bsc | n/a | [`0xd963b2236d227a0302e19f2f9595f424950dc186`](./contracts/bsc-56/0xd963b2236d227a0302e19f2f9595f424950dc186/) | ⚠️ Unaudited |
| CZFarmMaster | unknown | bsc | n/a | [`0x57ceeb745370cdb666d0b771dca2173c4e677141`](./contracts/bsc-56/0x57ceeb745370cdb666d0b771dca2173c4e677141/) | ⚠️ Unaudited |
| CZFarmPoolNftSlottableTaxFree | unknown | bsc | n/a | [`0x10584eebab00c390b622aad1b4aba68f7e4e217e`](./contracts/bsc-56/0x10584eebab00c390b622aad1b4aba68f7e4e217e/) | ⚠️ Unaudited |
| CZFarmPoolWithFee | unknown | bsc | n/a | [`0x380a01792c2227ac4357d30822631de8f85b922d`](./contracts/bsc-56/0x380a01792c2227ac4357d30822631de8f85b922d/) | ⚠️ Unaudited |
| CZFarmPoolWithFeeWhitelisting | unknown | bsc | n/a | [`0x3829723ce582ae372571a8ce5adcb1107422bbf1`](./contracts/bsc-56/0x3829723ce582ae372571a8ce5adcb1107422bbf1/) | ⚠️ Unaudited |
| CZFTeamStream | unknown | bsc | n/a | [`0x1602a18941b3ce683491e63d36c4573613a2a15e`](./contracts/bsc-56/0x1602a18941b3ce683491e63d36c4573613a2a15e/) | ⚠️ Unaudited |
| CZodiacNFT | unknown | bsc | n/a | [`0x6bf5843b39eb6d5d7ee38c0b789ccde42fe396b4`](./contracts/bsc-56/0x6bf5843b39eb6d5d7ee38c0b789ccde42fe396b4/) | ⚠️ Unaudited |
| CZodiacToken | unknown | bsc | n/a | [`0x4ff64012d85e3ab2b8aa58b755631057f49cca76`](./contracts/bsc-56/0x4ff64012d85e3ab2b8aa58b755631057f49cca76/) | ⚠️ Unaudited |
| CZRed | unknown | bsc | n/a | [`0x5cd0c2c744caf04cda258efc6558a3ed3defe97b`](./contracts/bsc-56/0x5cd0c2c744caf04cda258efc6558a3ed3defe97b/) | ⚠️ Unaudited |
| CZUsdBorrowCZF | unknown | bsc | n/a | [`0x223c13744ed2a462c3455b172fa96cbb09b8104f`](./contracts/bsc-56/0x223c13744ed2a462c3455b172fa96cbb09b8104f/) | ⚠️ Unaudited |
| CzusdNotes | unknown | bsc | n/a | [`0x39c757a835e8f0ad91f961f9cfd6f2de7296f1ad`](./contracts/bsc-56/0x39c757a835e8f0ad91f961f9cfd6f2de7296f1ad/) | ⚠️ Unaudited |
| CzUstsdReserves | unknown | bsc | n/a | [`0x099cd01dba50c29727852c47e36772fc82462b52`](./contracts/bsc-56/0x099cd01dba50c29727852c47e36772fc82462b52/) | ⚠️ Unaudited |
| CZVPegV2 | unknown | bsc | n/a | [`0x365fee072022eca1f569d41fa7fca8adaeded6d9`](./contracts/bsc-56/0x365fee072022eca1f569d41fa7fca8adaeded6d9/) | ⚠️ Unaudited |
| CZVPegV3 | unknown | bsc | n/a | [`0x45477d2beeadd1c60ff076f3a337a1a8eace58fa`](./contracts/bsc-56/0x45477d2beeadd1c60ff076f3a337a1a8eace58fa/) | ⚠️ Unaudited |
| CZVPegV3_Upkeep | unknown | bsc | n/a | [`0x3431c3f932c24369819ccc7446ea1822116ace90`](./contracts/bsc-56/0x3431c3f932c24369819ccc7446ea1822116ace90/) | ⚠️ Unaudited |
| CZVPegV4 | unknown | bsc | n/a | [`0x1fe977592733413d3fa91e4e728cdaa30c342073`](./contracts/bsc-56/0x1fe977592733413d3fa91e4e728cdaa30c342073/) | ⚠️ Unaudited |
| DddVoter | unknown | bsc | n/a | [`0x517db7f4bcb2fc21db79b9483b956f4185ecc521`](./contracts/bsc-56/0x517db7f4bcb2fc21db79b9483b956f4185ecc521/) | ⚠️ Unaudited |
| DggSale | unknown | bsc | n/a | [`0x1558e3652e747b7a9d6df15350cae2df2e76f50a`](./contracts/bsc-56/0x1558e3652e747b7a9d6df15350cae2df2e76f50a/) | ⚠️ Unaudited |
| DIVIPOOL | unknown | bsc | n/a | [`0x5b5f7e24d075394e92fd3c131b0b8a086e01f819`](./contracts/bsc-56/0x5b5f7e24d075394e92fd3c131b0b8a086e01f819/) | ⚠️ Unaudited |
| DogeDemon | unknown | bsc | n/a | [`0x2928832f8227680f8a84d166da8fb4b59454d960`](./contracts/bsc-56/0x2928832f8227680f8a84d166da8fb4b59454d960/) | ⚠️ Unaudited |
| EntityStoreERC20 | unknown | bsc | n/a | [`0x618d7180906a2ae11e1a81e6d17a48d71aaff25b`](./contracts/bsc-56/0x618d7180906a2ae11e1a81e6d17a48d71aaff25b/) | ⚠️ Unaudited |
| Gangs | unknown | bsc | n/a | [`0x223203653a01085eb88e00d3f87e7ac7ee86819e`](./contracts/bsc-56/0x223203653a01085eb88e00d3f87e7ac7ee86819e/) | ⚠️ Unaudited |
| GemBurner | unknown | bsc | n/a | [`0x4667cf6a7497366d925f73ff1e3cea79ef2a7dd3`](./contracts/bsc-56/0x4667cf6a7497366d925f73ff1e3cea79ef2a7dd3/) | ⚠️ Unaudited |
| GemBurnerV2 | unknown | bsc | n/a | [`0x5fbfbf91a16ffeca1a8c8b8ca1c628fe24f6baf1`](./contracts/bsc-56/0x5fbfbf91a16ffeca1a8c8b8ca1c628fe24f6baf1/) | ⚠️ Unaudited |
| GemBurnPay | unknown | bsc | n/a | [`0x6b9b66a7e8340c4357bf68a0e2451d851e27a47f`](./contracts/bsc-56/0x6b9b66a7e8340c4357bf68a0e2451d851e27a47f/) | ⚠️ Unaudited |
| IterableArrayWithoutDuplicateKeys | unknown | bsc | n/a | [`0x2dbd7b5d7dffcfc4a6658886ccab1d49209376ff`](./contracts/bsc-56/0x2dbd7b5d7dffcfc4a6658886ccab1d49209376ff/) | ⚠️ Unaudited |
| JsonNftTemplate | unknown | bsc | n/a | [`0x59bfb584e38662eef0b8aa6f58c5170b22df2753`](./contracts/bsc-56/0x59bfb584e38662eef0b8aa6f58c5170b22df2753/) | ⚠️ Unaudited |
| LocationController | unknown | bsc | n/a | [`0x09ee4d15945193a5aae2276d5750d78f0a8344a3`](./contracts/bsc-56/0x09ee4d15945193a5aae2276d5750d78f0a8344a3/) | ⚠️ Unaudited |
| LockedSale | unknown | bsc | n/a | [`0x4e1d0e46540309f50e8c90d5c238122eef663d55`](./contracts/bsc-56/0x4e1d0e46540309f50e8c90d5c238122eef663d55/) | ⚠️ Unaudited |
| LocTemplateResource | unknown | bsc | n/a | [`0x37be3e749c45b709f2e78e574b5e99f53af98f5a`](./contracts/bsc-56/0x37be3e749c45b709f2e78e574b5e99f53af98f5a/) | ⚠️ Unaudited |
| LocTownSquare | unknown | bsc | n/a | [`0x5d359834802035b8988f9e5235b5e85762dacf67`](./contracts/bsc-56/0x5d359834802035b8988f9e5235b5e85762dacf67/) | ⚠️ Unaudited |
| LSDTPatch | unknown | bsc | n/a | [`0x072bf497c3ddec134f86437410f56f70f403d6aa`](./contracts/bsc-56/0x072bf497c3ddec134f86437410f56f70f403d6aa/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x029ffe06ee1cfdde477bd88c3d42289cbdde1db9`](./contracts/bsc-56/0x029ffe06ee1cfdde477bd88c3d42289cbdde1db9/) | ⚠️ Unaudited |
| MasterRouter | unknown | bsc | n/a | [`0x1e0f33b898f058ba743091244f1dc71da8d81e44`](./contracts/bsc-56/0x1e0f33b898f058ba743091244f1dc71da8d81e44/) | ⚠️ Unaudited |
| OneBadRabbit | unknown | bsc | n/a | [`0x17b44ebb07a9861a3e566308de3578a71bf52906`](./contracts/bsc-56/0x17b44ebb07a9861a3e566308de3578a71bf52906/) | ⚠️ Unaudited |
| OneBadRabbitRecruiter | unknown | bsc | n/a | [`0x2770337ffec7274eb81711afa52ae0189f3b2e11`](./contracts/bsc-56/0x2770337ffec7274eb81711afa52ae0189f3b2e11/) | ⚠️ Unaudited |
| OutlawsNft | unknown | bsc | n/a | [`0x128bf3854130b8cd23e171041fc65dee43a1c194`](./contracts/bsc-56/0x128bf3854130b8cd23e171041fc65dee43a1c194/) | ⚠️ Unaudited |
| OutlawsNftSetJsonIpfs | unknown | bsc | n/a | [`0x42aff043e9662d16e5c109d72776003d9be6e513`](./contracts/bsc-56/0x42aff043e9662d16e5c109d72776003d9be6e513/) | ⚠️ Unaudited |
| PairOracle | unknown | bsc | n/a | [`0x242a01faa8771bee63bbc9d2a9ebec25c700dadf`](./contracts/bsc-56/0x242a01faa8771bee63bbc9d2a9ebec25c700dadf/) | ⚠️ Unaudited |
| RabbitBreed | unknown | bsc | n/a | [`0x004204d403636d3343e7d2aee584e673981a569c`](./contracts/bsc-56/0x004204d403636d3343e7d2aee584e673981a569c/) | ⚠️ Unaudited |
| RabbitCatchMaster | unknown | bsc | n/a | [`0x0d3ab3581b81fd96b57e31daf292150062489585`](./contracts/bsc-56/0x0d3ab3581b81fd96b57e31daf292150062489585/) | ⚠️ Unaudited |
| RabbitFancier | unknown | bsc | n/a | [`0x174a786a5dd24024ce4b9865cb37acfb6dc9c984`](./contracts/bsc-56/0x174a786a5dd24024ce4b9865cb37acfb6dc9c984/) | ⚠️ Unaudited |
| RabbitGreed | unknown | bsc | n/a | [`0x44bdd0bd0c408d51e466de4c480fd2e56ca80912`](./contracts/bsc-56/0x44bdd0bd0c408d51e466de4c480fd2e56ca80912/) | ⚠️ Unaudited |
| RabbitMinterV2 | unknown | bsc | n/a | [`0x01aef2937a11b47a95a884f37cf843bfb7880e18`](./contracts/bsc-56/0x01aef2937a11b47a95a884f37cf843bfb7880e18/) | ⚠️ Unaudited |
| RabbitMinterV3 | unknown | bsc | n/a | [`0x3387ffb2ab13ddb3041573df57041fc1b37ba4de`](./contracts/bsc-56/0x3387ffb2ab13ddb3041573df57041fc1b37ba4de/) | ⚠️ Unaudited |
| RngHistory | unknown | bsc | n/a | [`0x2bf39815947a900b89d0651519da49169ef8010c`](./contracts/bsc-56/0x2bf39815947a900b89d0651519da49169ef8010c/) | ⚠️ Unaudited |
| RoutingAssistant | unknown | bsc | n/a | [`0x0c9b465a5e09c03f0515b2a8d20de96a4b135557`](./contracts/bsc-56/0x0c9b465a5e09c03f0515b2a8d20de96a4b135557/) | ⚠️ Unaudited |
| ScorchPegV5 | unknown | bsc | n/a | [`0x07dbb063b10f0c96b2e3f6ab37e6186fbaef1106`](./contracts/bsc-56/0x07dbb063b10f0c96b2e3f6ab37e6186fbaef1106/) | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | [`0x3f51810e9a449a95ef4fc52c956bcb62a291d3ad`](./contracts/bsc-56/0x3f51810e9a449a95ef4fc52c956bcb62a291d3ad/) | ⚠️ Unaudited |
| TeamPayV3 | unknown | bsc | n/a | [`0x185e5fb4f6aea904ddc5e4ef2ad408d4af1e22e6`](./contracts/bsc-56/0x185e5fb4f6aea904ddc5e4ef2ad408d4af1e22e6/) | ⚠️ Unaudited |
| TidalDexFactory | unknown | bsc | n/a | [`0x907e8c7d471877b4742da8aa53d257d0d565a47e`](./contracts/bsc-56/0x907e8c7d471877b4742da8aa53d257d0d565a47e/) | ⚠️ Unaudited |
| TidalDexFarmMaster | unknown | bsc | n/a | [`0x348cf34acd0ab88c3364037486234ab6cbc31c4d`](./contracts/bsc-56/0x348cf34acd0ab88c3364037486234ab6cbc31c4d/) | ⚠️ Unaudited |
| TokenBase | unknown | bsc | n/a | [`0x2ba3d4cf863208739b40b4e3257f520b7e0c8fbd`](./contracts/bsc-56/0x2ba3d4cf863208739b40b4e3257f520b7e0c8fbd/) | ⚠️ Unaudited |
| Treasury | unknown | bsc | n/a | [`0x08f4fba1dabd2884b869b11ac42cff329d261ed7`](./contracts/bsc-56/0x08f4fba1dabd2884b869b11ac42cff329d261ed7/) | ⚠️ Unaudited |
| TribePoolMaster | unknown | bsc | n/a | [`0x0207bb6b0eaab9211a4249f5a00513eb5c16c2af`](./contracts/bsc-56/0x0207bb6b0eaab9211a4249f5a00513eb5c16c2af/) | ⚠️ Unaudited |
| TribePoolRescueCzf | unknown | bsc | n/a | [`0x1e27ab6ebecd38011273a67e368040ebf2786305`](./contracts/bsc-56/0x1e27ab6ebecd38011273a67e368040ebf2786305/) | ⚠️ Unaudited |
| UpdateOracles | unknown | bsc | n/a | [`0x542203359a9d1fe8c75b69f3df0816e173abeeaf`](./contracts/bsc-56/0x542203359a9d1fe8c75b69f3df0816e173abeeaf/) | ⚠️ Unaudited |
| UstsdDrop | unknown | bsc | n/a | [`0x37feea808aa7618e3c4287d9f6a209a3a7dd7672`](./contracts/bsc-56/0x37feea808aa7618e3c4287d9f6a209a3a7dd7672/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5f2ab6046211a8e56500a729169df46e13c2ab1e`](./contracts/bsc-56/0x5f2ab6046211a8e56500a729169df46e13c2ab1e/) | AtmwSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27315b7bd65824b9482f74d17006c538bae36f1d`](./contracts/bsc-56/0x27315b7bd65824b9482f74d17006c538bae36f1d/) | AutoFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43e468749c4b05f9e7e47c84384250e2a83a478e`](./contracts/bsc-56/0x43e468749c4b05f9e7e47c84384250e2a83a478e/) | AutoRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5818c398449ac9b1eadde574719855d8cd36092f`](./contracts/bsc-56/0x5818c398449ac9b1eadde574719855d8cd36092f/) | AutoRewardPool_Variable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a10cfe2300e5df9417f7bee99ef1e81228f0ac7`](./contracts/bsc-56/0x2a10cfe2300e5df9417f7bee99ef1e81228f0ac7/) | Bandit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04465426ab669fa0f2755bf23127eaa0dcf61a38`](./contracts/bsc-56/0x04465426ab669fa0f2755bf23127eaa0dcf61a38/) | BanditMasterRoutable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56f8e89f9e65dd2514911389be3ed99989c1e700`](./contracts/bsc-56/0x56f8e89f9e65dd2514911389be3ed99989c1e700/) | BoostedValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x515bb2f9045d758a365d86d460574628e5621a67`](./contracts/bsc-56/0x515bb2f9045d758a365d86d460574628e5621a67/) | BoosterIERC721Bal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e94bb555c4d1e58825eda60fade1b5272551dc0`](./contracts/bsc-56/0x3e94bb555c4d1e58825eda60fade1b5272551dc0/) | BoosterOutlawSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f4db7787f16cbc7d5e23acdfc8b450243edd26b`](./contracts/bsc-56/0x2f4db7787f16cbc7d5e23acdfc8b450243edd26b/) | BRAG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x385a310f4744881383bee1f4a42ebb59d255ea56`](./contracts/bsc-56/0x385a310f4744881383bee1f4a42ebb59d255ea56/) | Cashback_Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6db532685de35cf7d5b81945bb1187798b3471e8`](./contracts/bsc-56/0x6db532685de35cf7d5b81945bb1187798b3471e8/) | Cashback_Registry_Referral_Levels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b6fbb97b5ad7804535340f40fa13df85a3c3e0f`](./contracts/bsc-56/0x3b6fbb97b5ad7804535340f40fa13df85a3c3e0f/) | ChronoPoolService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd963b2236d227a0302e19f2f9595f424950dc186`](./contracts/bsc-56/0xd963b2236d227a0302e19f2f9595f424950dc186/) | CZBlue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x57ceeb745370cdb666d0b771dca2173c4e677141`](./contracts/bsc-56/0x57ceeb745370cdb666d0b771dca2173c4e677141/) | CZFarmMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10584eebab00c390b622aad1b4aba68f7e4e217e`](./contracts/bsc-56/0x10584eebab00c390b622aad1b4aba68f7e4e217e/) | CZFarmPoolNftSlottableTaxFree | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x380a01792c2227ac4357d30822631de8f85b922d`](./contracts/bsc-56/0x380a01792c2227ac4357d30822631de8f85b922d/) | CZFarmPoolWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3829723ce582ae372571a8ce5adcb1107422bbf1`](./contracts/bsc-56/0x3829723ce582ae372571a8ce5adcb1107422bbf1/) | CZFarmPoolWithFeeWhitelisting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1602a18941b3ce683491e63d36c4573613a2a15e`](./contracts/bsc-56/0x1602a18941b3ce683491e63d36c4573613a2a15e/) | CZFTeamStream | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6bf5843b39eb6d5d7ee38c0b789ccde42fe396b4`](./contracts/bsc-56/0x6bf5843b39eb6d5d7ee38c0b789ccde42fe396b4/) | CZodiacNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ff64012d85e3ab2b8aa58b755631057f49cca76`](./contracts/bsc-56/0x4ff64012d85e3ab2b8aa58b755631057f49cca76/) | CZodiacToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cd0c2c744caf04cda258efc6558a3ed3defe97b`](./contracts/bsc-56/0x5cd0c2c744caf04cda258efc6558a3ed3defe97b/) | CZRed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x223c13744ed2a462c3455b172fa96cbb09b8104f`](./contracts/bsc-56/0x223c13744ed2a462c3455b172fa96cbb09b8104f/) | CZUsdBorrowCZF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39c757a835e8f0ad91f961f9cfd6f2de7296f1ad`](./contracts/bsc-56/0x39c757a835e8f0ad91f961f9cfd6f2de7296f1ad/) | CzusdNotes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x099cd01dba50c29727852c47e36772fc82462b52`](./contracts/bsc-56/0x099cd01dba50c29727852c47e36772fc82462b52/) | CzUstsdReserves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x365fee072022eca1f569d41fa7fca8adaeded6d9`](./contracts/bsc-56/0x365fee072022eca1f569d41fa7fca8adaeded6d9/) | CZVPegV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45477d2beeadd1c60ff076f3a337a1a8eace58fa`](./contracts/bsc-56/0x45477d2beeadd1c60ff076f3a337a1a8eace58fa/) | CZVPegV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3431c3f932c24369819ccc7446ea1822116ace90`](./contracts/bsc-56/0x3431c3f932c24369819ccc7446ea1822116ace90/) | CZVPegV3_Upkeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fe977592733413d3fa91e4e728cdaa30c342073`](./contracts/bsc-56/0x1fe977592733413d3fa91e4e728cdaa30c342073/) | CZVPegV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x517db7f4bcb2fc21db79b9483b956f4185ecc521`](./contracts/bsc-56/0x517db7f4bcb2fc21db79b9483b956f4185ecc521/) | DddVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1558e3652e747b7a9d6df15350cae2df2e76f50a`](./contracts/bsc-56/0x1558e3652e747b7a9d6df15350cae2df2e76f50a/) | DggSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b5f7e24d075394e92fd3c131b0b8a086e01f819`](./contracts/bsc-56/0x5b5f7e24d075394e92fd3c131b0b8a086e01f819/) | DIVIPOOL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2928832f8227680f8a84d166da8fb4b59454d960`](./contracts/bsc-56/0x2928832f8227680f8a84d166da8fb4b59454d960/) | DogeDemon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x618d7180906a2ae11e1a81e6d17a48d71aaff25b`](./contracts/bsc-56/0x618d7180906a2ae11e1a81e6d17a48d71aaff25b/) | EntityStoreERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x223203653a01085eb88e00d3f87e7ac7ee86819e`](./contracts/bsc-56/0x223203653a01085eb88e00d3f87e7ac7ee86819e/) | Gangs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4667cf6a7497366d925f73ff1e3cea79ef2a7dd3`](./contracts/bsc-56/0x4667cf6a7497366d925f73ff1e3cea79ef2a7dd3/) | GemBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fbfbf91a16ffeca1a8c8b8ca1c628fe24f6baf1`](./contracts/bsc-56/0x5fbfbf91a16ffeca1a8c8b8ca1c628fe24f6baf1/) | GemBurnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b9b66a7e8340c4357bf68a0e2451d851e27a47f`](./contracts/bsc-56/0x6b9b66a7e8340c4357bf68a0e2451d851e27a47f/) | GemBurnPay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2dbd7b5d7dffcfc4a6658886ccab1d49209376ff`](./contracts/bsc-56/0x2dbd7b5d7dffcfc4a6658886ccab1d49209376ff/) | IterableArrayWithoutDuplicateKeys | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x59bfb584e38662eef0b8aa6f58c5170b22df2753`](./contracts/bsc-56/0x59bfb584e38662eef0b8aa6f58c5170b22df2753/) | JsonNftTemplate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09ee4d15945193a5aae2276d5750d78f0a8344a3`](./contracts/bsc-56/0x09ee4d15945193a5aae2276d5750d78f0a8344a3/) | LocationController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e1d0e46540309f50e8c90d5c238122eef663d55`](./contracts/bsc-56/0x4e1d0e46540309f50e8c90d5c238122eef663d55/) | LockedSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37be3e749c45b709f2e78e574b5e99f53af98f5a`](./contracts/bsc-56/0x37be3e749c45b709f2e78e574b5e99f53af98f5a/) | LocTemplateResource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d359834802035b8988f9e5235b5e85762dacf67`](./contracts/bsc-56/0x5d359834802035b8988f9e5235b5e85762dacf67/) | LocTownSquare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x072bf497c3ddec134f86437410f56f70f403d6aa`](./contracts/bsc-56/0x072bf497c3ddec134f86437410f56f70f403d6aa/) | LSDTPatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x029ffe06ee1cfdde477bd88c3d42289cbdde1db9`](./contracts/bsc-56/0x029ffe06ee1cfdde477bd88c3d42289cbdde1db9/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e0f33b898f058ba743091244f1dc71da8d81e44`](./contracts/bsc-56/0x1e0f33b898f058ba743091244f1dc71da8d81e44/) | MasterRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x17b44ebb07a9861a3e566308de3578a71bf52906`](./contracts/bsc-56/0x17b44ebb07a9861a3e566308de3578a71bf52906/) | OneBadRabbit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2770337ffec7274eb81711afa52ae0189f3b2e11`](./contracts/bsc-56/0x2770337ffec7274eb81711afa52ae0189f3b2e11/) | OneBadRabbitRecruiter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128bf3854130b8cd23e171041fc65dee43a1c194`](./contracts/bsc-56/0x128bf3854130b8cd23e171041fc65dee43a1c194/) | OutlawsNft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42aff043e9662d16e5c109d72776003d9be6e513`](./contracts/bsc-56/0x42aff043e9662d16e5c109d72776003d9be6e513/) | OutlawsNftSetJsonIpfs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x242a01faa8771bee63bbc9d2a9ebec25c700dadf`](./contracts/bsc-56/0x242a01faa8771bee63bbc9d2a9ebec25c700dadf/) | PairOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x004204d403636d3343e7d2aee584e673981a569c`](./contracts/bsc-56/0x004204d403636d3343e7d2aee584e673981a569c/) | RabbitBreed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d3ab3581b81fd96b57e31daf292150062489585`](./contracts/bsc-56/0x0d3ab3581b81fd96b57e31daf292150062489585/) | RabbitCatchMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x174a786a5dd24024ce4b9865cb37acfb6dc9c984`](./contracts/bsc-56/0x174a786a5dd24024ce4b9865cb37acfb6dc9c984/) | RabbitFancier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44bdd0bd0c408d51e466de4c480fd2e56ca80912`](./contracts/bsc-56/0x44bdd0bd0c408d51e466de4c480fd2e56ca80912/) | RabbitGreed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01aef2937a11b47a95a884f37cf843bfb7880e18`](./contracts/bsc-56/0x01aef2937a11b47a95a884f37cf843bfb7880e18/) | RabbitMinterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3387ffb2ab13ddb3041573df57041fc1b37ba4de`](./contracts/bsc-56/0x3387ffb2ab13ddb3041573df57041fc1b37ba4de/) | RabbitMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2bf39815947a900b89d0651519da49169ef8010c`](./contracts/bsc-56/0x2bf39815947a900b89d0651519da49169ef8010c/) | RngHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c9b465a5e09c03f0515b2a8d20de96a4b135557`](./contracts/bsc-56/0x0c9b465a5e09c03f0515b2a8d20de96a4b135557/) | RoutingAssistant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07dbb063b10f0c96b2e3f6ab37e6186fbaef1106`](./contracts/bsc-56/0x07dbb063b10f0c96b2e3f6ab37e6186fbaef1106/) | ScorchPegV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f51810e9a449a95ef4fc52c956bcb62a291d3ad`](./contracts/bsc-56/0x3f51810e9a449a95ef4fc52c956bcb62a291d3ad/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x185e5fb4f6aea904ddc5e4ef2ad408d4af1e22e6`](./contracts/bsc-56/0x185e5fb4f6aea904ddc5e4ef2ad408d4af1e22e6/) | TeamPayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x907e8c7d471877b4742da8aa53d257d0d565a47e`](./contracts/bsc-56/0x907e8c7d471877b4742da8aa53d257d0d565a47e/) | TidalDexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x348cf34acd0ab88c3364037486234ab6cbc31c4d`](./contracts/bsc-56/0x348cf34acd0ab88c3364037486234ab6cbc31c4d/) | TidalDexFarmMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2ba3d4cf863208739b40b4e3257f520b7e0c8fbd`](./contracts/bsc-56/0x2ba3d4cf863208739b40b4e3257f520b7e0c8fbd/) | TokenBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08f4fba1dabd2884b869b11ac42cff329d261ed7`](./contracts/bsc-56/0x08f4fba1dabd2884b869b11ac42cff329d261ed7/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0207bb6b0eaab9211a4249f5a00513eb5c16c2af`](./contracts/bsc-56/0x0207bb6b0eaab9211a4249f5a00513eb5c16c2af/) | TribePoolMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e27ab6ebecd38011273a67e368040ebf2786305`](./contracts/bsc-56/0x1e27ab6ebecd38011273a67e368040ebf2786305/) | TribePoolRescueCzf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x542203359a9d1fe8c75b69f3df0816e173abeeaf`](./contracts/bsc-56/0x542203359a9d1fe8c75b69f3df0816e173abeeaf/) | UpdateOracles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37feea808aa7618e3c4287d9f6a209a3a7dd7672`](./contracts/bsc-56/0x37feea808aa7618e3c4287d9f6a209a3a7dd7672/) | UstsdDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 71 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
