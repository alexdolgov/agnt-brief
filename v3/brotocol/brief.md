# Agentic Audit Brief: Brotocol

## Project Overview

- Project: Brotocol (`brotocol`)
- Website: [https://brotocol.xyz/](https://brotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:37.059Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, merlin, mode
- Contract surface: 242 unique implementations (524 raw deployments)
- DeFi Llama TVL: $707,392.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge Aggregator. Structurally: 176 project-authored contract(s) across 7 chain(s); 17 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 50 common project-authored base contract(s) (erc20withpermit, checkpoints, authorizations). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 592; live-surface contracts included: 511 (395 live, 116 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/142 (2.8%)
- Deployed-live implementations: 142 of 242 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/142
- Verified + Unaudited implementations: 138
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 242
- Raw deployments: 524
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CoinFabrik | Tier 2 | 4 | 2.8% | 2025-05 |
| Defence (Thesis) | Tier 2 | 1 | 0.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeEndpoint | unknown | bsc | n/a | 19 deployments: ethereum `0x1c5ac4...fe38ea`; ethereum `0x4a5ccd...07340a`; ethereum `0x84254d...ce4547`; ethereum `0x9883fa...1ca925`; bsc [`0x13b72a...626673`](./contracts/bsc-56/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0x2aed35...938430`; bsc `0xa18d96...b2aac9`; bsc `0xb17192...b369e7`; bsc `0xd851f6...e98661`; bsc `0xf4a617...273730`; base `0x79d1c9...b38e8a`; base `0xf6af0a...d6b600`; mode `0x79d1c9...b38e8a`; mode `0xa18d96...b2aac9`; arbitrum `0x79d1c9...b38e8a`; arbitrum `0xc13a12...edcacb`; linea `0x790cd0...19edef`; linea `0x79d1c9...b38e8a`; linea `0xf6af0a...d6b600` | ✅ Audited |
| BridgeEndpointWithSwap | unknown | arbitrum | n/a | 43 deployments: ethereum `0x1a86ff...c56ce5`; ethereum `0x2df927...3d4ee4`; ethereum `0xb1c34a...31c94d`; ethereum `0xb304ec...59e638`; ethereum `0xb89873...ae3f78`; ethereum `0xde8d0c...3dd35b`; ethereum `0xe79097...f9ef2c`; ethereum `0xf28f38...885028`; bsc `0x2543df...ea89d6`; bsc `0x3a7506...a399a7`; bsc `0x46b20f...fc6379`; bsc `0x4a1a70...6a5f7f`; bsc `0x529871...840092`; bsc `0x82d25b...4b2aab`; bsc `0x99b034...34a2c3`; bsc `0xb75231...316a15`; bsc `0xc355e2...3a1334`; base `0x10eecc...aee32e`; base `0x144b42...432318`; base `0x18c05e...438fa7`; base `0x916e5d...ed21cb`; base `0xa6420e...3531bb`; base `0xd15b99...81520d`; base `0xd89940...bef1ad`; base `0xe80e0c...f13e7e`; arbitrum [`0x0d3c78...a6cf07`](./contracts/arbitrum-42161/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); arbitrum `0x31761a...233b0b`; arbitrum `0x430637...6cd41e`; arbitrum `0x4a5ccd...07340a`; arbitrum `0x73f0f5...217138`; arbitrum `0x7a5912...3a5baf`; arbitrum `0x916e5d...ed21cb`; arbitrum `0x9df50c...5a8522`; arbitrum `0xa18d96...b2aac9`; arbitrum `0xce83dd...0970cb`; linea `0x0f38ed...80ce03`; linea `0x10eecc...aee32e`; linea `0x144b42...432318`; linea `0x4869f4...2f480c`; linea `0x87e352...e78fe5`; linea `0xa5171f...6f1c9e`; linea `0xd491f2...7bcac9`; linea `0xf4a617...273730` | ✅ Audited |
| BridgeToken | unknown | mode | n/a | 69 deployments: ethereum `0x2aed35...938430`; ethereum `0x31761a...233b0b`; ethereum `0x51cda8...992d94`; ethereum `0x73f0f5...217138`; ethereum `0x7d4de6...dd1d9d`; ethereum `0x80074f...dfb7cd`; ethereum `0xa5171f...6f1c9e`; ethereum `0xa831a4...703f37`; bsc `0x0f38ed...80ce03`; bsc `0x18c05e...438fa7`; bsc `0x2e512b...02cbc8`; bsc `0x305a85...9a6ee9`; bsc `0x5879cd...11b231`; bsc `0x858d1d...07d38b`; bsc `0x916a82...39c81d`; bsc `0xcd5ed0...fba378`; bsc `0xdfd066...8caf71`; base `0x707272...b257e2`; base `0x7a087e...5eafe0`; base `0x9e801c...914072`; base `0xa831a4...703f37`; base `0xc13a12...edcacb`; base `0xcd5ed0...fba378`; base `0xce83dd...0970cb`; base `0xdfd066...8caf71`; base `0xe67640...33291d`; mode [`0x0d3c78...a6cf07`](./contracts/mode-34443/0x0d3c781313b1d4abbb45459621f0168826a6cf07/); mode `0x707272...b257e2`; mode `0x7a087e...5eafe0`; mode `0xa831a4...703f37`; mode `0xcd5ed0...fba378`; mode `0xd0d1b5...7b192a`; mode `0xd15b99...81520d`; mode `0xdfd066...8caf71`; arbitrum `0x707272...b257e2`; arbitrum `0x7a087e...5eafe0`; arbitrum `0x7baa28...d07113`; arbitrum `0xa831a4...703f37`; arbitrum `0xab01bb...b560c5`; arbitrum `0xcd5ed0...fba378`; arbitrum `0xdfd066...8caf71`; arbitrum `0xe67d6d...351bb0`; avalanche `0x152b9d...943e50`; avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70`; linea `0x24a44c...aa29a7`; linea `0x707272...b257e2`; linea `0x7a087e...5eafe0`; linea `0x9e801c...914072`; linea `0xa831a4...703f37`; linea `0xcd5ed0...fba378`; linea `0xce83dd...0970cb`; linea `0xdfd066...8caf71` | ✅ Audited |
| MultisigWallet | governance | linea | n/a | 31 deployments: ethereum `0x65dfac...394090`; ethereum `0xffda60...61e7f5`; bsc `0x430637...6cd41e`; bsc `0x79d1c9...b38e8a`; base `0xf162b6...facf44`; mode `0x4869f4...2f480c`; mode `0x658064...32960e`; mode `0x65dfac...394090`; mode `0x916e5d...ed21cb`; mode `0x9883fa...1ca925`; mode `0xa6420e...3531bb`; mode `0xd491f2...7bcac9`; mode `0xedd6a2...1e3abb`; mode `0xeebb83...6c9051`; mode `0xf162b6...facf44`; mode `0xf5866c...f05c3a`; arbitrum `0x46b20f...fc6379`; arbitrum `0xe9915e...fe7423`; arbitrum `0xf162b6...facf44`; avalanche `0x62f7d5...81e79c`; linea [`0x1a86ff...c56ce5`](./contracts/linea-59144/0x1a86ff397b58db43ab019d336931e6a71cc56ce5/); linea `0x2aed35...938430`; linea `0x305a85...9a6ee9`; linea `0x3280a4...649f37`; linea `0x46b20f...fc6379`; linea `0x7a5912...3a5baf`; linea `0x7d4de6...dd1d9d`; linea `0x80a33f...19b69f`; linea `0xec72d4...9ffcbc`; linea `0xf162b6...facf44`; linea `0xfc57d3...5dec8c` | ✅ Audited |

### ⚠️ Verified + Unaudited (138)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreMultiAssetVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/); ethereum `0xb33d93...e2cb19` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcfc79f...47513f`](./contracts/arbitrum-42161/0xcfc79fcd07929467a8e1925e06007de5f047513f/); arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/); ethereum `0xa96ad7...bfd8a6` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | 3 deployments: ethereum [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/); ethereum `0x4e73e4...633600`; ethereum `0xe4b591...a07c8b` | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | 7 deployments: ethereum [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/); ethereum `0x05f7ba...6b3789`; ethereum `0x152c70...8c81b1`; ethereum `0x173b26...8a495a`; ethereum `0x3ac50e...7aacee`; ethereum `0x767f72...4ef291`; ethereum `0xd2809a...daf344` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10b4c3...6a5438`](./contracts/ethereum-1/0x10b4c343f0e992c1ff12f6ec874fadfee36a5438/); ethereum `0x2ba614...9313d1` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d50d7...889c24`](./contracts/ethereum-1/0x1d50d75933b7b7c8ad94dbfb748b5756e3889c24/); ethereum `0x98f3aa...82f7d7` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/); ethereum `0x7e184b...8fc756` | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/); ethereum `0xa7d9e8...2e40bd` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/); ethereum `0x92e0d8...109683`; ethereum `0x9423dd...cbb321` | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | 5 deployments: ethereum [`0x265054...2e2ec5`](./contracts/ethereum-1/0x265054f72bad343fdee3e018269cbb899e2e2ec5/); ethereum `0x3a4a69...322c1b`; ethereum `0x8d0149...293234`; ethereum `0x9e44d4...630339`; ethereum `0xa4996d...a21a26` | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x5e4861...0e8e7b`](./contracts/ethereum-1/0x5e4861a80b55f035d899f66772117f00fa0e8e7b/) | ⚠️ Unaudited |
| BridgeConfig | operational_periphery | base | n/a | 4 deployments: base [`0xf99f62...88fc24`](./contracts/base-8453/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); mode [`0xf99f62...88fc24`](./contracts/mode-34443/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); arbitrum [`0xf99f62...88fc24`](./contracts/arbitrum-42161/0xf99f62475f50be59393dbdc148e6627e4e88fc24/); linea [`0xf99f62...88fc24`](./contracts/linea-59144/0xf99f62475f50be59393dbdc148e6627e4e88fc24/) | ⚠️ Unaudited |
| BridgeFeeManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/); ethereum `0x409968...c5a90b` | ⚠️ Unaudited |
| BridgeGovernance | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/); ethereum `0xf286ea...230b45` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BridgeRegistry | unknown | ethereum | n/a | 6 deployments: ethereum [`0x13b72a...626673`](./contracts/ethereum-1/0x13b72a19e221275d3d18ed4d9235f8f859626673/); bsc `0xffda60...61e7f5`; base `0x88af5f...20d66c`; mode `0x88af5f...20d66c`; arbitrum `0x88af5f...20d66c`; linea `0x88af5f...20d66c` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0xe8372c...f67263`](./contracts/ethereum-1/0xe8372cab8d06a607e374cc549d8f68648ef67263/) | ⚠️ Unaudited |
| Deposit | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/); ethereum `0xcd2ebd...ccd137`; ethereum `0xcffdcb...a96342`; ethereum `0xf526f0...d09011` | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | 3 deployments: ethereum [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/); ethereum `0x53f26b...8f13c2`; ethereum `0xe6f919...a87085` | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | 3 deployments: ethereum [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/); ethereum `0x86f7bb...8b3653`; ethereum `0x8bb002...b20e62` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | 2 deployments: ethereum [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/); ethereum `0xd267b3...317dc3` | ⚠️ Unaudited |
| ERC20BridgeToken | operational_periphery | avalanche | n/a | [`0x5e0e90...21fb59`](./contracts/avalanche-43114/0x5e0e90e268bc247cc850c789a0db0d5c7621fb59/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | n/a | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/); ethereum `0xd040de...9de71c` | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); ethereum `0x1293a5...a15458` | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/); ethereum `0x812fcc...3b2db8` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | 3 deployments: ethereum [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/); ethereum `0x81c51d...3f036f`; ethereum `0xb3d03a...55cf6b` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/); ethereum `0xa1038b...3df863` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/); ethereum `0xb4c357...fa6fa9` | ⚠️ Unaudited |
| MaintainerProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/); ethereum `0xcf29ff...a8df2b` | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | 2 deployments: base [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/); avalanche `0xb7887f...82341a` | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/); ethereum `0xb90fda...e20122` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/); ethereum `0x285a02...bcb589`; ethereum `0xea332f...d9d86c` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | 13 deployments: ethereum [`0x1f8ed8...43ba87`](./contracts/ethereum-1/0x1f8ed8193b902185c2bd495fe9b1963dc343ba87/); ethereum `0x2c5e9a...91389a`; ethereum `0x2ca0a2...f66c4c`; ethereum `0x3d282c...5ce889`; ethereum `0x40b166...9ad9eb`; ethereum `0x4e4af5...0d1691`; ethereum `0x5f6822...c22ee6`; ethereum `0x668479...12159f`; ethereum `0x874e28...9d7f2c`; ethereum `0x917297...01981c`; ethereum `0xb98a5f...f628e7`; ethereum `0xd23d70...c2c8c8`; ethereum `0xfccde7...94069d` | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e994d...6b6cd9`](./contracts/ethereum-1/0x7e994d7fc7a2c3cad2331dadb07902f3a46b6cd9/); ethereum `0xf6680e...e6908c` | ⚠️ Unaudited |
| MigrateToken | token | ethereum | n/a | 2 deployments: ethereum [`0x430637...6cd41e`](./contracts/ethereum-1/0x4306374f07382b36aae832a50831c8c5b26cd41e/); bsc `0xd15b99...81520d` | ⚠️ Unaudited |
| MigrateTokenBOBFusionS1 | unknown | ethereum | n/a | [`0xa6420e...3531bb`](./contracts/ethereum-1/0xa6420eba9b8c514a5793429ba2873274a63531bb/) | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | n/a | 3 deployments: ethereum [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/); ethereum `0x3e0407...b67a90`; ethereum `0xb85711...4ca432` | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/); ethereum `0x529315...f4477e` | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13916d...40686a`](./contracts/ethereum-1/0x13916d0dab357dcbaa1600b594d62c641840686a/); ethereum `0xce09df...85ce32` | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2eea07...84623c`](./contracts/ethereum-1/0x2eea07a362baf48ac08d77e4ac4934f56584623c/); ethereum `0xdf7feb...b521cf` | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30a0e1...feb40d`](./contracts/ethereum-1/0x30a0e1ef6b647cdd9693fd06cc23b7c2c8feb40d/); ethereum `0x6cf4b4...8d5fc4` | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d8154...977a5f`](./contracts/ethereum-1/0x5d81545f6be014fae6a7084f7d977de910977a5f/); ethereum `0xf5a089...ad592b` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PepeToken | token | arbitrum | n/a | [`0x25d887...aebb00`](./contracts/arbitrum-42161/0x25d887ce7a35172c62febfd67a1856f20faebb00/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | 4 deployments: ethereum [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/); ethereum `0x973005...8a0f0a`; ethereum `0x991cc3...ac65f9`; ethereum `0xfa2390...04b1cd` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/); ethereum `0x2dfdeb...88076b`; ethereum `0x3bba45...23548e`; ethereum `0xd7097a...46fe60`; ethereum `0xeaaf2b...502216` | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab13b8...5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/); ethereum `0xb3696c...ab64d8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x16a76d...b5c706`](./contracts/ethereum-1/0x16a76d3cd3c1e3ce843c6680d6b37e9116b5c706/); ethereum `0x7affa0...92008e`; arbitrum `0x5db54b...3dd797` | ⚠️ Unaudited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/); ethereum `0x8ef1be...ac9f5e`; ethereum `0xfa4fc5...47a1ff` | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/); ethereum `0xbfd04e...cf1daf` | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | 10 deployments: ethereum [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/); ethereum `0x403333...753f06`; ethereum `0x700c88...9c92a7`; ethereum `0x8adf3f...732ea8`; ethereum `0x9f2f5e...942d74`; ethereum `0xaf3fea...ec0234`; ethereum `0xcc9c51...76c1d8`; ethereum `0xda1b78...6913dc`; ethereum `0xf0d4b1...d0de31`; ethereum `0xfc9469...5de92a` | ⚠️ Unaudited |
| SortitionPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/); ethereum `0xc2731f...5bb4dc` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | 8 deployments: ethereum [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/); ethereum `0x143a06...f7ff51`; ethereum `0x68c912...2b32df`; ethereum `0x8381e6...047037`; ethereum `0xcb3570...938e83`; ethereum `0xebadc7...e0ce3a`; ethereum `0xee8287...1a6cef`; ethereum `0xf6a1ca...e50648` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xf97f4d...539fb4` | ⚠️ Unaudited |
| stBTC | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TBTCVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/); ethereum `0x9c0700...4fe3cd` | ⚠️ Unaudited |
| TeamToken | token | bsc | n/a | [`0x9bf543...defe3c`](./contracts/bsc-56/0x9bf543d8460583ff8a669aae01d9cdbee4defe3c/) | ⚠️ Unaudited |
| TimeLock | unknown | base | n/a | 6 deployments: ethereum `0x858d1d...07d38b`; bsc `0x7a087e...5eafe0`; base [`0x1dcae9...759ab3`](./contracts/base-8453/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); mode [`0x1dcae9...759ab3`](./contracts/mode-34443/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); arbitrum [`0x1dcae9...759ab3`](./contracts/arbitrum-42161/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/); linea [`0x1dcae9...759ab3`](./contracts/linea-59144/0x1dcae9e29e5f9aab02792a1a27e0ba2875759ab3/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0x795d27...6703f3`](./contracts/bsc-56/0x795d2710e383f33fbebe980a155b29757b6703f3/) | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1313bb...b51d9f`](./contracts/arbitrum-42161/0x1313bbf677e8fda5284f714f9c743a55a8b51d9f/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/); ethereum `0x526c08...05d2ac`; ethereum `0x6590df...e6d85f`; ethereum `0xe47c80...d16bb0` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/); ethereum `0x64ea4b...420093` | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x9eae6e...ad32ba`](./contracts/ethereum-1/0x9eae6e8e99d27d377f1ea0659b0cb16ce8ad32ba/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WalletRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/); ethereum `0xfbae13...0398fb` | ⚠️ Unaudited |
| WalletRegistry | unknown | ethereum | n/a | [`0x46d52e...5204eb`](./contracts/ethereum-1/0x46d52e41c2f300bc82217ce22b920c34995204eb/) | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/); ethereum `0xc989d3...e32fbc` | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x1ed725...fec1dd`](./contracts/ethereum-1/0x1ed72544a6a538f225335b9725b3d8ae2efec1dd/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x76ddb3...d18d3e`](./contracts/ethereum-1/0x76ddb3f1dde02391ef0a28664499b74c29d18d3e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x920871...9283b1`](./contracts/ethereum-1/0x920871af2d4106e76d204fea7122fa129c9283b1/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0xb7c552...2f7017`](./contracts/ethereum-1/0xb7c552be9d410ecc2c1aeda0e1c93a3d8d2f7017/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0xc3b5d8...5df77c`](./contracts/ethereum-1/0xc3b5d8371f341bc235d4e1e63ab06e42875df77c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x122a60...d280bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2663a2...c5d2b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305cab...45d240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32574c...6385b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x350df6...de47cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41d6f5...5d33a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55021f...899e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2ae6...0a0f3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f49b3...a2369f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x744596...4c5340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x978e57...27bb88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97fb21...5a6b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b4e39...faa3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa10ad2...9bc747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ab95...d7d6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa981a3...8b5d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaac423...65b71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08e45...04c637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ee3a...ca4f61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc065e0...e785f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc08dcc...e5fda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e0b2...c09e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6f2c3...a92915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5408c...cd468e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec3e1...63239b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf816cf...cff738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf94d0d...3ffc17` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 6 deployments: merlin `0x7a087e...5eafe0`; merlin `0x858d1d...07d38b`; merlin `0x88af5f...20d66c`; merlin `0xa831a4...703f37`; merlin `0xc13a12...edcacb`; merlin `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5171f...6f1c9e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02111c...dc84f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x03c69e...a61154` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x108d36...93835c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x19e64a...d82c2f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x521064...9d88f3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x57b9b4...03fe4c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x715f26...5bf829` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x950cfb...a2c1dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa1c1f6...b40bd6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe1a512...ade33b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4a617...273730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59d9e1...bd5925` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6623...df3106` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1dcae9...759ab3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fe74c...6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3f8f...66c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4780be...fd02f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ad64a...5ecdbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c90c8...38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563e71...926c3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6051a3...8895a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77beaa...9d1b9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79d1c9...b38e8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7ee34c...375e77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f2239...cd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88af5f...20d66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x911d9a...3c345d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x944dc1...bdceb5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2dd99...e42efd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae7b24...f80894` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb59755...1de669` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5dc66...67311a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf779b...64b7b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7160d...cabf8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc92352...6e024d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd321ac...890da4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd96f5d...26a060` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6261a...4e0f8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe67640...33291d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc6ad...ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf162b6...facf44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf23965...5d506d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf7b28f...69bbcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf99f62...88fc24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb8401...7c4245` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd7124...9769bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ALEX_Audit_bridge_coinfabrik_202212.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_bridge_coinfabrik_202212.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [ALEX_Audit_Bridge_2023-04.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_Bridge_2023-04.pdf) | CoinFabrik | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf](https://cdn.xlink.network/pdf/ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf) | CoinFabrik | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [XLink_Bridge_Endpoint_Audit_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_Bridge_Endpoint_Audit_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [XLink_MultisigWallet_BridgeToken_2024-06.pdf](https://cdn.xlink.network/pdf/XLink_MultisigWallet_BridgeToken_2024-06.pdf) | CoinFabrik | Audit | 2024-06 | stale | Direct | contract_name | 2 | n/a |
| [XLINK_Staking_Audit_2024_11_final.pdf](https://cdn.xlink.network/pdf/XLINK_Staking_Audit_2024_11_final.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLINK_Peg-out_Endpoints_Audit 11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-out_Endpoints_Audit%2011-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLINK_Peg-in_Endpoints_Audit_11-2024.pdf](https://cdn.xlink.network/pdf/XLINK_Peg-in_Endpoints_Audit_11-2024.pdf) | CoinFabrik | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [XLink_Endpoits_Update_Audit_2025-03.pdf](https://cdn.brotocol.xyz/pdf/XLink_Endpoits_Update_Audit_2025-03.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [XLink_EVM_Endpoint_Audit_2025-04.pdf](https://cdn.brotocol.xyz/pdf/XLink_EVM_Endpoint_Audit_2025-04.pdf) | CoinFabrik | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [XLINK_Solana_Endpoint_Audit_2025-05.pdf](https://cdn.brotocol.xyz/pdf/XLINK_Solana_Endpoint_Audit_2025-05.pdf) | CoinFabrik | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf](https://cdn.brotocol.xyz/pdf/250825_Defense_by_Thesis_Brotocol_BridgeEndPoint_Smart_Contract.pdf) | Defence (Thesis) | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [www.coinfabrik.com](https://www.coinfabrik.com/) | CoinFabrik | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [thesis.co/defense](https://thesis.co/defense) | Defence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 242 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [11554] ALEX_Audit_202310_Bitcoin_Oracle_and_Bridge.pdf
- [11557] XLINK_Staking_Audit_2024_11_final.pdf
- [11558] XLINK_Peg-out_Endpoints_Audit 11-2024.pdf
- [11559] XLINK_Peg-in_Endpoints_Audit_11-2024.pdf
- [11560] XLink_Endpoits_Update_Audit_2025-03.pdf
- [11562] XLINK_Solana_Endpoint_Audit_2025-05.pdf
- [11564] www.coinfabrik.com
- [11565] thesis.co/defense

Fork inheritance lineage and inherited audits are included when available.
