# Agentic Audit Brief: Threshold Network

## Project Overview

- Project: Threshold Network (`threshold-network`)
- Website: [https://threshold.network/](https://threshold.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.476Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 222 unique implementations (222 raw deployments)
- DeFi Llama TVL: $298,413,904.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Decentralized BTC. Structurally: 209 project-authored contract(s) across 5 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 94 common project-authored base contract(s) (erc20withpermit, checkpoints, proxystorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 222; live-surface contracts included: 222 (222 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 21/197 (10.7%)
- Deployed-live implementations: 222 of 222 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 21/222
- Verified + Unaudited implementations: 201
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 222
- Raw deployments: 222
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 21 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Least Authority | Tier 2 | 16 | 7.2% | 2023-08 |
| ChainSecurity | Tier 1 | 4 | 1.8% | 2021-11 |
| CertiK | Tier 2 | 2 | 0.9% | 2021-11 |
| Thesis Defense | Tier 2 | 1 | 0.5% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ✅ Audited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ✅ Audited |
| Bridge | unknown | ethereum | n/a | [`0x13de6b...2402cc`](./contracts/ethereum-1/0x13de6b121ade8e3c0dc016d63cbd5e2ab22402cc/) | ✅ Audited |
| Deposit | unknown | ethereum | n/a | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | ✅ Audited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ✅ Audited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ✅ Audited |
| Fraud | unknown | ethereum | n/a | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | ✅ Audited |
| GrantStaking | unknown | ethereum | n/a | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ✅ Audited |
| L1BitcoinDepositor | unknown | ethereum | n/a | [`0x1fe738...e47dd7`](./contracts/ethereum-1/0x1fe7385497a45191c5321fdd903d880491e47dd7/) | ✅ Audited |
| MaintainerProxy | unknown | ethereum | n/a | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | ✅ Audited |
| MovingFunds | unknown | ethereum | n/a | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | ✅ Audited |
| Redemption | unknown | ethereum | n/a | [`0x1b0534...d7e29d`](./contracts/ethereum-1/0x1b0534bc3f43b11ebde71f0fc68cf61df4d7e29d/) | ✅ Audited |
| SortitionPool | unknown | ethereum | n/a | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | ✅ Audited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ✅ Audited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ✅ Audited |
| TBTCVault | unknown | ethereum | n/a | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | ✅ Audited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ✅ Audited |
| VendingMachine | unknown | ethereum | n/a | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | ✅ Audited |
| WalletRegistry | unknown | ethereum | n/a | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | ✅ Audited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ✅ Audited |
| Wallets | unknown | ethereum | n/a | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (201)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreMultiAssetVault | unknown | ethereum | n/a | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | ⚠️ Unaudited |
| ActivePool | unknown | ethereum | n/a | [`0x4dbcb0...008549`](./contracts/ethereum-1/0x4dbcb0cff525b91e8b9d18b224c1b45fef008549/) | ⚠️ Unaudited |
| Allowlist | unknown | ethereum | n/a | [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/) | ⚠️ Unaudited |
| AllVerifiers | unknown | ethereum | n/a | [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/) | ⚠️ Unaudited |
| ARM | unknown | ethereum | n/a | [`0x8b63b3...91fa1b`](./contracts/ethereum-1/0x8b63b3de93431c0f756a493644d128134291fa1b/) | ⚠️ Unaudited |
| ARMProxy | unknown | ethereum | n/a | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ⚠️ Unaudited |
| AssetPool | unknown | ethereum | n/a | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | n/a | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| BAMM | unknown | ethereum | n/a | [`0x1f4907...8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | ⚠️ Unaudited |
| BatchWithdraw | unknown | ethereum | n/a | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | ⚠️ Unaudited |
| BLens | unknown | ethereum | n/a | [`0x65222d...11a50c`](./contracts/ethereum-1/0x65222d72f13860913fef03f088c385cbfc11a50c/) | ⚠️ Unaudited |
| BlockPrice | unknown | ethereum | n/a | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x874a8e...66caa9`](./contracts/ethereum-1/0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9/) | ⚠️ Unaudited |
| BridgeGovernance | unknown | ethereum | n/a | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | ethereum | n/a | [`0x057152...1fe1b4`](./contracts/ethereum-1/0x057152db365b47851b0a0bd431644b8ee21fe1b4/) | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | ethereum | n/a | [`0x08b405...7b5abb`](./contracts/ethereum-1/0x08b4058f16d243c977ea1fe91b20af31057b5abb/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | ethereum | n/a | [`0x45a103...f84b6b`](./contracts/ethereum-1/0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b/) | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | ethereum | n/a | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | ⚠️ Unaudited |
| CairoBootloaderProgram | unknown | ethereum | n/a | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | n/a | [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/) | ⚠️ Unaudited |
| ChangeVerifiersExternalInitializer | unknown | ethereum | n/a | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0x3bec52...78f200`](./contracts/ethereum-1/0x3bec529c86317c64305dc161998fb7f40078f200/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | n/a | [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/) | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | ⚠️ Unaudited |
| CoveragePool | unknown | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | n/a | [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/) | ⚠️ Unaudited |
| CpuFrilessVerifier | unknown | ethereum | n/a | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | n/a | [`0x0acc32...9ec5cb`](./contracts/ethereum-1/0x0acc3292202b05175f86c7bf4bd6011eb79ec5cb/) | ⚠️ Unaudited |
| DefaultPool | unknown | ethereum | n/a | [`0xa8bdab...db7ba9`](./contracts/ethereum-1/0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9/) | ⚠️ Unaudited |
| DelayedExecutor | unknown | ethereum | n/a | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | ⚠️ Unaudited |
| DelegatedWithBalanceWeight | unknown | ethereum | n/a | [`0x1ecfb5...33f08a`](./contracts/ethereum-1/0x1ecfb5cd55dfd68a54f58f77b729b8a1c933f08a/) | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | n/a | [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/) | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | n/a | [`0x498b55...5fe9f3`](./contracts/ethereum-1/0x498b5546f1ee017227eb1db438d25ad1205fe9f3/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | [`0x0ab48c...c44554`](./contracts/ethereum-1/0x0ab48c500abd8392620c3c4e4fdd5d7063c44554/) | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | [`0x03cb4c...b834d9`](./contracts/ethereum-1/0x03cb4c67d01a78f44289541281e57c33e6b834d9/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/) | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | ethereum | n/a | [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/) | ⚠️ Unaudited |
| ForcedActions | unknown | ethereum | n/a | [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/) | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | n/a | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x34fbfd...47eca6`](./contracts/ethereum-1/0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GpsFactRegistryAdapter | unknown | ethereum | n/a | [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/) | ⚠️ Unaudited |
| GpsStatementVerifier | unknown | ethereum | n/a | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | ⚠️ Unaudited |
| HintHelpers | unknown | ethereum | n/a | [`0x2249e8...202f55`](./contracts/ethereum-1/0x2249e86a4b99eccc081600c11b2b30ff64202f55/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| KeepStake | unknown | ethereum | n/a | [`0x10de37...4af8b4`](./contracts/ethereum-1/0x10de37cf84202a20cae61069c617b3aa874af8b4/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| LockedTokenCommon | unknown | ethereum | n/a | [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/) | ⚠️ Unaudited |
| LockedTokenGrant | unknown | ethereum | n/a | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | ethereum | n/a | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | ⚠️ Unaudited |
| MemoryPageBatcher | unknown | ethereum | n/a | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | ⚠️ Unaudited |
| MemoryPageFactRegistry | unknown | ethereum | n/a | [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/) | ⚠️ Unaudited |
| MerkleStatementContract | unknown | ethereum | n/a | [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/) | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | ⚠️ Unaudited |
| MintManager | unknown | ethereum | n/a | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0x8836b6...05b36c`](./contracts/ethereum-1/0x8836b66727bbde25974110442bb46b7a4805b36c/) | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | ethereum | n/a | [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/) | ⚠️ Unaudited |
| NoOp | unknown | base | n/a | [`0x0972e6...adb887`](./contracts/base-8453/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | ⚠️ Unaudited |
| OnchainVaults | unknown | ethereum | n/a | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | n/a | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OrderRegistry | unknown | ethereum | n/a | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PCV | unknown | ethereum | n/a | [`0x097f1e...dd06cb`](./contracts/ethereum-1/0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb/) | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | n/a | [`0x047dd4...7e86d1`](./contracts/ethereum-1/0x047dd4275bbdc1ee6b8bf026239e203c617e86d1/) | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | n/a | [`0x1a6f3b...5899ed`](./contracts/ethereum-1/0x1a6f3bd4e4b80f85a0b1974b73d981f3295899ed/) | ⚠️ Unaudited |
| PerpetualEscapeVerifier | unknown | ethereum | n/a | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | ethereum | n/a | [`0x229bbd...a4fe21`](./contracts/ethereum-1/0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21/) | ⚠️ Unaudited |
| PerpetualState | unknown | ethereum | n/a | [`0x45de24...ba0175`](./contracts/ethereum-1/0x45de249eea8f9cdb70943b17ccedeb42f5ba0175/) | ⚠️ Unaudited |
| PerpetualTokensAndRamping | unknown | ethereum | n/a | [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| PolygonRoot | unknown | ethereum | n/a | [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | n/a | [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/) | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | n/a | [`0x1e8e41...3d5a94`](./contracts/ethereum-1/0x1e8e41141347e01f33d84718b7f4cefb433d5a94/) | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | n/a | [`0x2b1590...c46045`](./contracts/ethereum-1/0x2b159027d7f0e23d5c15b0517e33dda838c46045/) | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | n/a | [`0x1db84e...01e975`](./contracts/ethereum-1/0x1db84e79e8daec762d6adaa5bf358a4ba001e975/) | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | n/a | [`0x032e5c...b43046`](./contracts/ethereum-1/0x032e5cdb729ce94638aca9e82a22688109b43046/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x684645...db732d`](./contracts/ethereum-1/0x684645ccab4d55863a149c52ec3176051cdb732d/) | ⚠️ Unaudited |
| PriceRegistry | unknown | ethereum | n/a | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x0ff801...c3ce9d`](./contracts/ethereum-1/0x0ff801483577388160779881a95d023b3dc3ce9d/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1268cc...c96812`](./contracts/ethereum-1/0x1268cc171c54f2000402dff20e93e60df4c96812/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1ce5d7...353c65`](./contracts/ethereum-1/0x1ce5d7f52a8abd23551e91248151ca5a13353c65/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0x02612d...8a3db3`](./contracts/optimism-10/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | n/a | [`0x46fa00...5d7167`](./contracts/ethereum-1/0x46fa005e07e51732778a3745145b0d29ad5d7167/) | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | n/a | [`0x00b046...dd082b`](./contracts/ethereum-1/0x00b0466f8dc04b0782dbf1a1dfdce333f0dd082b/) | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | n/a | [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/) | ⚠️ Unaudited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | ethereum | n/a | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ⚠️ Unaudited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | n/a | [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/) | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | ethereum | n/a | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0x7fb589...fde90b`](./contracts/ethereum-1/0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | n/a | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | [`0xa5626c...986711`](./contracts/ethereum-1/0xa5626cba9a4448019e73ce59784bd22736986711/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0xa18ab4...475a9f`](./contracts/ethereum-1/0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StarkExchange | unknown | ethereum | n/a | [`0x29db02...8a1191`](./contracts/ethereum-1/0x29db022dbc824b78a0da699a77e3d177f08a1191/) | ⚠️ Unaudited |
| StarkExState | unknown | ethereum | n/a | [`0x28f234...42e91f`](./contracts/ethereum-1/0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f/) | ⚠️ Unaudited |
| StarkgateManager | unknown | ethereum | n/a | [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/) | ⚠️ Unaudited |
| Starknet | unknown | ethereum | n/a | [`0x16938e...4177e8`](./contracts/ethereum-1/0x16938e4b59297060484fa56a12594d8d6f4177e8/) | ⚠️ Unaudited |
| StarknetERC20Bridge | unknown | ethereum | n/a | [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/) | ⚠️ Unaudited |
| StarknetEthBridge | unknown | ethereum | n/a | [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TellorCaller | unknown | ethereum | n/a | [`0x0278ac...e15c32`](./contracts/ethereum-1/0x0278ac7067f66a66a91466cd420f6f8efae15c32/) | ⚠️ Unaudited |
| TestToken | unknown | ethereum | n/a | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | ⚠️ Unaudited |
| THUSDOwner | unknown | ethereum | n/a | [`0x033951...026468`](./contracts/ethereum-1/0x033951c469e54ef19be43b19c70a4dd273026468/) | ⚠️ Unaudited |
| THUSDToken | unknown | ethereum | n/a | [`0xcfc5bd...8d29cf`](./contracts/ethereum-1/0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x87f005...75f45f`](./contracts/ethereum-1/0x87f005317692d05baa4193ab0c961c69e175f45f/) | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenholderGovernor | unknown | ethereum | n/a | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | ⚠️ Unaudited |
| TokensAndRamping | unknown | ethereum | n/a | [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/) | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TransientProxy | unknown | ethereum | n/a | [`0x03bd59...eb4409`](./contracts/ethereum-1/0x03bd5915b56015773210ab8c8c101849daeb4409/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x018473...f85a45`](./contracts/ethereum-1/0x0184739c32edc3471d3e4860c8e39a5f3ff85a45/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x01b67b...765dd7`](./contracts/ethereum-1/0x01b67b1194c75264d06f808a921228a95c765dd7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x03e342...4ee0f6`](./contracts/ethereum-1/0x03e342731c08fddc34cfb43e91cb3a7e424ee0f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x186d04...00a1fe`](./contracts/ethereum-1/0x186d048097c7406c64efb0537886e3cae100a1fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x277d82...3d8b4d`](./contracts/ethereum-1/0x277d82b35fc8cec3bffcad6791a95cd3ca3d8b4d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x347cc7...edcf07`](./contracts/ethereum-1/0x347cc7ede7e5517bd47d20620b2cf1b406edcf07/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x35d670...f66db7`](./contracts/ethereum-1/0x35d6701640fca561bacfe4151063c8e55af66db7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5aab7e...93b3f8`](./contracts/ethereum-1/0x5aab7eabd63b2222b07442f04ca874366193b3f8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x75a6e4...2c619a`](./contracts/ethereum-1/0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc9031f...3bc155`](./contracts/ethereum-1/0xc9031f76006da0bd4bfa9e02adf0d448db3bc155/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1c8d7b...258f9e`](./contracts/arbitrum-42161/0x1c8d7b744b474c080faadd5bf9ad965be4258f9e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xd7cd99...34d9b7`](./contracts/arbitrum-42161/0xd7cd996a47b3293d4fec2dbcf49692370334d9b7/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0x27d7d0...3abb8c`](./contracts/ethereum-1/0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c/) | ⚠️ Unaudited |
| UnderwriterToken | unknown | ethereum | n/a | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | ⚠️ Unaudited |
| UpdatePerpetualConfigExternalInitializer | unknown | ethereum | n/a | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | ethereum | n/a | [`0x4a580c...0df59d`](./contracts/ethereum-1/0x4a580c62889ddcd6c2213582270e03ca130df59d/) | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | ethereum | n/a | [`0x175359...f92ed8`](./contracts/ethereum-1/0x1753593fb64c7338e945e3dac16df92ab1f92ed8/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/) | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WithBatcher | unknown | ethereum | n/a | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.threshold.network/vision) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [View PDF](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | Defense by Thesis | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [View PDF](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | Defense by Thesis | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [View PDF](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | Certora | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [View PDF](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | MixBytes | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [View PDF](https://app.notion.com/p/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link&__dm_a=1) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [View PDF](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | 16 | high |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | 4 | high |
| [Link to Least Authority](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Link to CertiK](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 2 | high |
| [Link to ChainSecurity](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | AcreMultiAssetVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dbcb0...008549`](./contracts/ethereum-1/0x4dbcb0cff525b91e8b9d18b224c1b45fef008549/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/) | AllVerifiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b63b3...91fa1b`](./contracts/ethereum-1/0x8b63b3de93431c0f756a493644d128134291fa1b/) | ARM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ARMProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | AssetPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | AuctionBidder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f4907...8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/) | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | BatchedPhasedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | BatchWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | BeaconBackportRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | BeaconBackportRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | BeaconDkg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | BeaconDkgValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | BeaconInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | BeaconRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | BeaconRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | BitcoinDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | BitcoinRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65222d...11a50c`](./contracts/ethereum-1/0x65222d72f13860913fef03f088c385cbfc11a50c/) | BLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | BlockPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | BLS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | BondedECDSAKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | BondedECDSAKeepFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | BondedSortitionPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x874a8e...66caa9`](./contracts/ethereum-1/0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | BridgeGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | BridgeGovernanceParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057152...1fe1b4`](./contracts/ethereum-1/0x057152db365b47851b0a0bd431644b8ee21fe1b4/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08b405...7b5abb`](./contracts/ethereum-1/0x08b4058f16d243c977ea1fe91b20af31057b5abb/) | BurnMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45a103...f84b6b`](./contracts/ethereum-1/0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b/) | BurnWithFromMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | BurnWithFromMintTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | CairoBootloaderProgram | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ChangeVerifiersExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bec52...78f200`](./contracts/ethereum-1/0x3bec529c86317c64305dc161998fb7f40078f200/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/) | CommitStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | CoveragePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | CoveragePoolBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | CpuFrilessVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0acc32...9ec5cb`](./contracts/ethereum-1/0x0acc3292202b05175f86c7bf4bd6011eb79ec5cb/) | CpuOods | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8bdab...db7ba9`](./contracts/ethereum-1/0xa8bdab0f0d3f5cd04d29df5f4ba6b43d7cdb7ba9/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | DelayedExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecfb5...33f08a`](./contracts/ethereum-1/0x1ecfb5cd55dfd68a54f58f77b729b8a1c933f08a/) | DelegatedWithBalanceWeight | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | DepositFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | DepositFunding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | DepositLiquidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | DepositRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | DepositStates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | DepositSweep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | DepositUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ECDSABackportRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ECDSABackportRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | EcdsaInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/) | EcdsaPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x498b55...5fe9f3`](./contracts/ethereum-1/0x498b5546f1ee017227eb1db438d25ad1205fe9f3/) | EcdsaPointsYColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ECDSARewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ECDSARewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ECDSARewardsDistributorEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ECDSARewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab48c...c44554`](./contracts/ethereum-1/0x0ab48c500abd8392620c3c4e4fdd5d7063c44554/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03cb4c...b834d9`](./contracts/ethereum-1/0x03cb4c67d01a78f44289541281e57c33e6b834d9/) | EVM2EVMOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | FeeRebateToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/) | FinalizableGpsFactAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/) | ForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | FundingScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34fbfd...47eca6`](./contracts/ethereum-1/0x34fbfd06cb537abd1a75e91a9cf7f5b61b47eca6/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/) | GpsFactRegistryAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | GpsStatementVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2249e8...202f55`](./contracts/ethereum-1/0x2249e86a4b99eccc081600c11b2b30ff64202f55/) | HintHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | KeepBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | KeepFactorySelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | KeepRandomBeaconOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | KeepRandomBeaconOperatorStatistics | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | KeepRandomBeaconServiceImplV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10de37...4af8b4`](./contracts/ethereum-1/0x10de37cf84202a20cae61069c617b3aa874af8b4/) | KeepStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | KeepTokenGeyserRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | KeepVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | LightRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | LightRelayMaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/) | LockedTokenCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | LockedTokenGrant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | LockReleaseTokenPoolAndProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | Locks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | LPRewardsKEEPETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | LPRewardsTBTCSaddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | LPRewardsTBTCv2Saddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | MemoryPageBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/) | MemoryPageFactRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/) | MerkleStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | MezoAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | MezoBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | MintManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8836b6...05b36c`](./contracts/ethereum-1/0x8836b66727bbde25974110442bb46b7a4805b36c/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/) | NativeBTCDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0972e6...adb887`](./contracts/base-8453/0x0972e6062eac0fe8686d82ea010504066dadb887/) | NoOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | OnchainVaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | OnDemandSPV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | OrderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | OutsourceDepositLogging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097f1e...dd06cb`](./contracts/ethereum-1/0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb/) | PCV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047dd4...7e86d1`](./contracts/ethereum-1/0x047dd4275bbdc1ee6b8bf026239e203c617e86d1/) | PedersenHashPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6f3b...5899ed`](./contracts/ethereum-1/0x1a6f3bd4e4b80f85a0b1974b73d981f3295899ed/) | PedersenHashPointsYColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | PerpetualEscapeVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229bbd...a4fe21`](./contracts/ethereum-1/0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21/) | PerpetualForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45de24...ba0175`](./contracts/ethereum-1/0x45de249eea8f9cdb70943b17ccedeb42f5ba0175/) | PerpetualState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/) | PerpetualTokensAndRamping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | PhasedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | PlainTransferEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/) | PolygonRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/) | PoseidonPoseidonFullRoundKey0Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e8e41...3d5a94`](./contracts/ethereum-1/0x1e8e41141347e01f33d84718b7f4cefb433d5a94/) | PoseidonPoseidonFullRoundKey1Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b1590...c46045`](./contracts/ethereum-1/0x2b159027d7f0e23d5c15b0517e33dda838c46045/) | PoseidonPoseidonFullRoundKey2Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1db84e...01e975`](./contracts/ethereum-1/0x1db84e79e8daec762d6adaa5bf358a4ba001e975/) | PoseidonPoseidonPartialRoundKey0Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x032e5c...b43046`](./contracts/ethereum-1/0x032e5cdb729ce94638aca9e82a22688109b43046/) | PoseidonPoseidonPartialRoundKey1Column | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x684645...db732d`](./contracts/ethereum-1/0x684645ccab4d55863a149c52ec3176051cdb732d/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/) | PriceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46fa00...5d7167`](./contracts/ethereum-1/0x46fa005e07e51732778a3745145b0d29ad5d7167/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b046...dd082b`](./contracts/ethereum-1/0x00b0466f8dc04b0782dbf1a1dfdce333f0dd082b/) | ProxyV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/) | ProxyV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | RandomBeaconChaosnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | RandomBeaconGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | RedemptionScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | RegistryModuleOwnerCustom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ReimbursementPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | RiskManagerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/) | RMN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | RolesExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fb589...fde90b`](./contracts/ethereum-1/0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | SignerBondsManualSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5626c...986711`](./contracts/ethereum-1/0xa5626cba9a4448019e73ce59784bd22736986711/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa18ab4...475a9f`](./contracts/ethereum-1/0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | StakerRewardsBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | StakingPoolRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29db02...8a1191`](./contracts/ethereum-1/0x29db022dbc824b78a0da699a77e3d177f08a1191/) | StarkExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f234...42e91f`](./contracts/ethereum-1/0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f/) | StarkExState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/) | StarkgateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16938e...4177e8`](./contracts/ethereum-1/0x16938e4b59297060484fa56a12594d8d6f4177e8/) | Starknet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/) | StarknetERC20Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/) | StarknetEthBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | TBTCConstants | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | TBTCDepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | TBTCSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0278ac...e15c32`](./contracts/ethereum-1/0x0278ac7067f66a66a91466cd420f6f8efae15c32/) | TellorCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x033951...026468`](./contracts/ethereum-1/0x033951c469e54ef19be43b19c70a4dd273026468/) | THUSDOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfc5bd...8d29cf`](./contracts/ethereum-1/0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf/) | THUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | TokenAdminRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | TokenholderGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/) | TokensAndRamping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | TokenStakingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bd59...eb4409`](./contracts/ethereum-1/0x03bd5915b56015773210ab8c8c101849daeb4409/) | TransientProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27d7d0...3abb8c`](./contracts/ethereum-1/0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | UnderwriterToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | UpdatePerpetualConfigExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a580c...0df59d`](./contracts/ethereum-1/0x4a580c62889ddcd6c2213582270e03ca130df59d/) | USDCTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x175359...f92ed8`](./contracts/ethereum-1/0x1753593fb64c7338e945e3dac16df92ab1f92ed8/) | V3toV45ChangesExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | VendingMachineV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | WalletCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | WithBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 197 |
| upstream | 0 |
| standard_library | 25 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=24

Zero-match audit list:

- [18384] DL audit link
- [18385] View Audit 1 PDF
- [18386] View Audit 2 PDF
- [18387] View PDF
- [18388] View PDF
- [18389] View PDF
- [18390] View PDF
- [18391] View PDF
- [18393] Link to Least Authority
- [18397] Link to Least Authority
- [18399] Link to ChainSecurity

Fork inheritance lineage and inherited audits are included when available.
