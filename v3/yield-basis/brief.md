# Agentic Audit Brief: Yield Basis

## Project Overview

- Project: Yield Basis (`yield-basis`)
- Website: [https://yieldbasis.com/](https://yieldbasis.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.744Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 153 unique implementations (153 raw deployments)
- DeFi Llama TVL: $107,692,583.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 123 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 31 common project-authored base contract(s) (erc20withpermit, checkpoints, authorizations). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mellow Protocol** (`mellow-protocol`) in the AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, BondedECDSAKeepFactory, BridgeGovernance, … subsystem.
16 audits inherited from `mellow-protocol`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 153; live-surface contracts included: 153 (153 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 29/153 (19.0%)
- Deployed-live implementations: 153 of 153 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 29/153
- Verified + Unaudited implementations: 124
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 153
- Raw deployments: 153
- Audits discovered: 27 (11 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 1 aging, 1 stale, 17 unknown
- Coverage code basis (deployed vs audited code): 29 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 19.0% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 29 | 19.0% | 2022 |
| ChainSecurity | Tier 1 | 29 | 19.0% | n/a |
| N/A | Tier 2 | 29 | 19.0% | 2025-11 |
| Nethermind | Tier 2 | 29 | 19.0% | 2026-03 |
| Pessimistic | Tier 2 | 29 | 19.0% | n/a |
| Sherlock | Tier 1 | 29 | 19.0% | 2025-06 |
| StateMind | Tier 2 | 29 | 19.0% | n/a |
| yAudit | Tier 2 | 29 | 19.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetPool | unknown | ethereum | n/a | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | ✅ Audited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ✅ Audited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ✅ Audited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ✅ Audited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | ✅ Audited |
| BridgeGovernance | unknown | ethereum | n/a | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | ✅ Audited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ✅ Audited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ✅ Audited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ✅ Audited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ✅ Audited |
| GrantStaking | unknown | ethereum | n/a | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ✅ Audited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ✅ Audited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ✅ Audited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ✅ Audited |
| MaintainerProxy | unknown | ethereum | n/a | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | ✅ Audited |
| NttManager | unknown | ethereum | n/a | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | ✅ Audited |
| OnDemandSPV | unknown | ethereum | n/a | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ✅ Audited |
| Portal | unknown | ethereum | n/a | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | ✅ Audited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ✅ Audited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ✅ Audited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ✅ Audited |
| SortitionPool | unknown | ethereum | n/a | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | ✅ Audited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ✅ Audited |
| TBTCVault | unknown | ethereum | n/a | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | ✅ Audited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ✅ Audited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ✅ Audited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | ✅ Audited |
| WalletRegistry | unknown | ethereum | n/a | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | ✅ Audited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (124)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreMultiAssetVault | unknown | ethereum | n/a | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | n/a | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | ⚠️ Unaudited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x265054...2e2ec5`](./contracts/ethereum-1/0x265054f72bad343fdee3e018269cbb899e2e2ec5/) | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| CallComparator | unknown | ethereum | n/a | [`0xd3bfa8...1dec25`](./contracts/ethereum-1/0xd3bfa85dc668aab38121be12d69dd180301dec25/) | ⚠️ Unaudited |
| Cliff Escrow | unknown | ethereum | n/a | [`0x0ba8df...57e220`](./contracts/ethereum-1/0x0ba8df4bfd13e3e15da3406e4fab312a8257e220/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| CoveragePool | unknown | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | ethereum | n/a | [`0x231c37...52e054`](./contracts/ethereum-1/0x231c37b8e9d2076d673c5e24ecfcc2a82652e054/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| Deposit | unknown | ethereum | n/a | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | ⚠️ Unaudited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x2be667...96ec78`](./contracts/ethereum-1/0x2be6670de1ccec715bdbba2e3a6c1a05e496ec78/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x42f2a4...4895fa`](./contracts/ethereum-1/0x42f2a41a0d0e65a440813190880c8a65124895fa/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x1043eb...4c421d`](./contracts/ethereum-1/0x1043eb60cef1f44654598338b1eb305cf54c421d/) | ⚠️ Unaudited |
| FeeDistributor | unknown | ethereum | n/a | [`0x286af1...39ecc0`](./contracts/ethereum-1/0x286af1b3d36fbba523b18ac4658722090a39ecc0/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xcbb7c0...ed33bf`](./contracts/ethereum-1/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | n/a | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| Gauge Controller | unknown | ethereum | n/a | [`0x037ee0...0e5af9`](./contracts/ethereum-1/0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | ethereum | n/a | [`0x0f4e1a...3f1048`](./contracts/ethereum-1/0x0f4e1a1bcde549653e9302ba1caab403373f1048/) | ⚠️ Unaudited |
| HybridVault | unknown | ethereum | n/a | [`0xd772ed...fdc3ac`](./contracts/ethereum-1/0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac/) | ⚠️ Unaudited |
| HybridVaultFactory | unknown | ethereum | n/a | [`0xbdc322...b8dc5b`](./contracts/ethereum-1/0xbdc32268851c324c6185809271dfe6d8dab8dc5b/) | ⚠️ Unaudited |
| InflationaryVest | unknown | ethereum | n/a | [`0x1f5789...31b112`](./contracts/ethereum-1/0x1f5789030ff8aed85c20baf614368c605b31b112/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| LEVAMM | unknown | ethereum | n/a | [`0x07ceda...ba305e`](./contracts/ethereum-1/0x07cedaadf49552cbdbf684824323e631ceba305e/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| Liquidity Gauge | unknown | ethereum | n/a | [`0x008c2d...d781f7`](./contracts/ethereum-1/0x008c2d6e93cc7eb61b6bea1e012214b851d781f7/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | ⚠️ Unaudited |
| LT | unknown | ethereum | n/a | [`0x0b0d8b...3f1eb4`](./contracts/ethereum-1/0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4/) | ⚠️ Unaudited |
| LTMigrator | unknown | ethereum | n/a | [`0x2cdb9f...37066c`](./contracts/ethereum-1/0x2cdb9f485e718f551cfeea6c33cb7062ed37066c/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | ⚠️ Unaudited |
| MigrationFactoryOwner | unknown | ethereum | n/a | [`0xa68343...94b6ad`](./contracts/ethereum-1/0xa68343ed4d517a277cfa1f2fc2b51f7a6794b6ad/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | n/a | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | ⚠️ Unaudited |
| Multisend | unknown | ethereum | n/a | [`0x08ba95...bbe914`](./contracts/ethereum-1/0x08ba954cee0f79fb733365833e1bb5665cbbe914/) | ⚠️ Unaudited |
| NoOp | unknown | ethereum | n/a | [`0x1d5b85...590daf`](./contracts/ethereum-1/0x1d5b85d4099958de09fee8bc252a546b42590daf/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x16a76d...b5c706`](./contracts/ethereum-1/0x16a76d3cd3c1e3ce843c6680d6b37e9116b5c706/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | ethereum | n/a | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | n/a | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| Snapshot Splitter | unknown | ethereum | n/a | [`0x168b92...ada222`](./contracts/ethereum-1/0x168b92fc04eb8815a517b3f12341166bc5ada222/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| StakeZap | unknown | ethereum | n/a | [`0x4f7633...8e2dfd`](./contracts/ethereum-1/0x4f76333e716788b0786b405fa8ea8928928e2dfd/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/) | ⚠️ Unaudited |
| TokenSender | unknown | ethereum | n/a | [`0x223bb2...2a5d0b`](./contracts/ethereum-1/0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b/) | ⚠️ Unaudited |
| TokenVotingFactory | unknown | ethereum | n/a | [`0x076e29...fb9e20`](./contracts/ethereum-1/0x076e298405b75a02c222d3860d703e4c92fb9e20/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| Twocrypto | unknown | ethereum | n/a | [`0x313698...1e729a`](./contracts/ethereum-1/0x313698667d7fdd6789a9bc70821309ff891e729a/) | ⚠️ Unaudited |
| UnderwriterToken | unknown | ethereum | n/a | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | n/a | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| Vesting Escrow | unknown | ethereum | n/a | [`0x0cf5bf...db23ef`](./contracts/ethereum-1/0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef/) | ⚠️ Unaudited |
| VirtualPool | unknown | ethereum | n/a | [`0x04ca7a...1e2c87`](./contracts/ethereum-1/0x04ca7a7e602335a261b63128e89d43b6fe1e2c87/) | ⚠️ Unaudited |
| Voting Escrow | unknown | ethereum | n/a | [`0x13daff...7470a0`](./contracts/ethereum-1/0x13daffdf8863c47290363b0109b681e3f37470a0/) | ⚠️ Unaudited |
| VotingPowerCondition | unknown | ethereum | n/a | [`0x2321a7...0591b7`](./contracts/ethereum-1/0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | n/a | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| YBToken | unknown | ethereum | n/a | [`0x01791f...c045ff`](./contracts/ethereum-1/0x01791f726b4103694969820be083196cc7c045ff/) | ⚠️ Unaudited |

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
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022 | stale | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [Chainsecurity_LP_Oracle.md](https://github.com/yield-basis/yb-core/blob/master/audits/Chainsecurity_LP_Oracle.md) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [statemind.pdf](https://docs.yieldbasis.com/pdf/audit/statemind.pdf) | Statemind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [chainsecurity.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [quantstamp.pdf](https://docs.yieldbasis.com/pdf/audit/quantstamp.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [mixbytes.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [electisec.pdf](https://docs.yieldbasis.com/pdf/audit/electisec.pdf) | Electisec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov.pdf](https://docs.yieldbasis.com/pdf/audit/pashov.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [leveraged-liquidity-paper.pdf](https://raw.githubusercontent.com/yield-basis/yb-paper/69253975369a75a0b30f38bf5d498272566918d6/leveraged-liquidity-paper.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [mixbytes-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/mixbytes-hybrid-vault.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [chainsecurity-hybrid-vault.pdf](https://docs.yieldbasis.com/pdf/audit/chainsecurity-hybrid-vault.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [firepan.com/reports/yieldbasis-feedistributor](https://firepan.com/reports/yieldbasis-feedistributor) | Firepan | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 29 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 153 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=464

Zero-match audit list:

- [21087] Chainsecurity_LP_Oracle.md
- [21088] statemind.pdf
- [21089] chainsecurity.pdf
- [21090] quantstamp.pdf
- [21091] mixbytes.pdf
- [21092] electisec.pdf
- [21093] pashov.pdf
- [21094] leveraged-liquidity-paper.pdf
- [21095] mixbytes-hybrid-vault.pdf
- [21096] chainsecurity-hybrid-vault.pdf
- [21097] firepan.com/reports/yieldbasis-feedistributor

Fork inheritance lineage and inherited audits are included when available.
