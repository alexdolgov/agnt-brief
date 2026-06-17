# Agentic Audit Brief: ZeroLend

⚠️ Lifecycle status: DECLINING - TVL dropped 19.8% over 90 days

## Project Overview

- Project: ZeroLend (`zerolend`)
- Website: [https://zerolend.xyz/](https://zerolend.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:33.158Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, berachain, blast, ethereum, linea, manta, zksync-era
- Contract surface: 206 unique implementations (556 raw deployments)
- DeFi Llama TVL: $13,186,422.00
- On-chain TVL (included contracts): $352,379,680.69
- TVL by chain: Ethereum $314,123,925.96 | Base $23,353,047.25 | Linea $14,897,766.64 | Berachain $4,940.83

## Project Description

ZeroLend is a decentralized lending protocol and money market deployed across multiple L2 chains. It enables users to supply assets to earn yield, borrow against collateral, and participate in lending markets through a fork of the Aave v3 codebase. The protocol also includes vaults for optimized yield strategies and staking mechanisms for its native ZERO token.

### Architecture

The Lending Markets family forms the core of the protocol, with each chain deployment sharing a common architecture of Pool, tokens (AToken, VariableDebtToken), and governance (ACLManager, RewardsController). The Vaults family operates independently but may interact with lending markets for yield strategies. Staking and Rewards contracts incentivize participation across both lending and vault products, often using the ZERO token and its omnichain variants. Oracles provide price feeds essential for lending operations, while Tokens and Bridges enable cross-chain asset movement and representation within the ecosystem.

## Contract Surface Quality

- Indexed contracts: 2294; live-surface contracts included: 556 (370 live, 186 unknown).
- Excluded by liveness: 1278 inactive, 460 singleton, 0 uninitialized.
- Deployment units: 21/233 live.
- Detected codebases: aave-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 219/2332.

## Audit Coverage Summary

- Verified implementations audited: 29/162 (17.9%)
- Verified + Unaudited implementations: 133
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 206
- Raw deployments: 556
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $331,624,813.14
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $331,624,813.14 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 21 | 13.0% | n/a |
| ABDK | Tier 2 | 16 | 9.9% | 2022-01 |
| PeckShield | Tier 2 | 4 | 2.5% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Pool | core_logic | base | n/a | 2 deployments: manta `0x8676e3...04972e`; base [`0x6cdcb1...fb971d`](./contracts/base-8453/0x6cdcb1c4a4d1c3c6d054b27ac5b77e89eafb971d/) | ✅ Audited |
| WrappedTokenGatewayV3 | token | base | n/a | 8 deployments: ethereum `0x6ea9d9...5d38b4`; manta `0xe05361...09d69e`; base [`0x11ccdc...c85612`](./contracts/base-8453/0x11ccdcfb19151feb086ee6f1f62bfa0940c85612/); linea `0x405bda...b0cde1`; linea `0x5d50be...d7171c`; linea `0x60f973...cb6230`; berachain `0x411e97...e076dd`; blast `0xfadfb0...35dc3c` | ✅ Audited |
| AaveOracle | operational_periphery | manta | n/a | [`0xff679e...579385`](./contracts/manta-169/0xff679e5b4178a2f74a56f0e2c0e1fa1c80579385/) | ✅ Audited |
| ACLManager | governance | manta | n/a | [`0xb21781...23d0b8`](./contracts/manta-169/0xb2178109a414c3a869e5104283fcf1a18923d0b8/) | ✅ Audited |
| AToken | token | manta | n/a | [`0xd2a2a5...0aabb8`](./contracts/manta-169/0xd2a2a567674e85bedab9dcc402bcae6c4e0aabb8/) | ✅ Audited |
| BorrowLogic | core_logic | manta | n/a | [`0x9698fd...c13bc6`](./contracts/manta-169/0x9698fdf843cbe4531610ac231b0047d9ffc13bc6/) | ✅ Audited |
| BridgeLogic | operational_periphery | manta | n/a | [`0xcccf56...6377bf`](./contracts/manta-169/0xcccf56e2b6ad4c06af8214781b77cd98446377bf/) | ✅ Audited |
| ConfiguratorLogic | governance | manta | n/a | [`0x2f7e54...eb8a93`](./contracts/manta-169/0x2f7e54ff5d45f77bffa11f2aee67bd7621eb8a93/) | ✅ Audited |
| DefaultReserveInterestRateStrategy | operational_periphery | manta | n/a | 3 deployments: manta [`0x0f9bfa...c8936e`](./contracts/manta-169/0x0f9bfa294be6e3ca8c39221bb5dfb88032c8936e/); manta `0xaa999e...8a4973`; manta `0xb7ed49...e2b512` | ✅ Audited |
| DelegationAwareAToken | token | manta | n/a | [`0xf49ee3...4fd82c`](./contracts/manta-169/0xf49ee3ea9c56d90627881d88004aabdfc44fd82c/) | ✅ Audited |
| EmissionManager | operational_periphery | manta | n/a | [`0x749df8...3abba5`](./contracts/manta-169/0x749df84fd6de7c0a67db3827e5118259ed3abba5/) | ✅ Audited |
| EModeLogic | unknown | manta | n/a | [`0x59423c...090e10`](./contracts/manta-169/0x59423cceb710266520db98034ff62dd1e2090e10/) | ✅ Audited |
| ERC20Delegate | token | manta | n/a | [`0xcce714...f99b52`](./contracts/manta-169/0xcce7148e8fdfcd8645d072df1122d233dcf99b52/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | berachain | n/a | 74 deployments: ethereum `0x14b0f7...37b638`; ethereum `0x1e7f2a...46f578`; ethereum `0x3af8ba...c80fbc`; ethereum `0x4931da...e0dbec`; ethereum `0xe4fe2d...c17339`; manta `0x0684fc...fe9050`; manta `0x0ab214...c2d5ad`; manta `0x27c773...85d014`; manta `0x28d724...23f084`; manta `0x28f689...00b945`; manta `0x2e207e...4f081d`; manta `0x2f9bb7...c6b269`; manta `0x476f20...7a1817`; manta `0x508c39...e8f07a`; manta `0x607f42...453b06`; manta `0x759cb9...d9b0e7`; manta `0x7c2e57...814d16`; manta `0xa2703d...8133f6`; manta `0xb4ffef...9805f5`; manta `0xb5eef4...a181f1`; manta `0xb8e26f...a50b26`; manta `0xc1d9ca...38598b`; manta `0xcb2da0...5c6133`; manta `0xcc7b5f...cb6f00`; manta `0xd07e6a...4be024`; manta `0xe6b9b0...17cd1e`; manta `0xe7e54c...c5be48`; manta `0xf17218...616498`; manta `0xffa256...3beba4`; base `0x0a9de6...e52e2f`; base `0x1d32fd...d698b5`; base `0x316a44...ddd1c5`; base `0x3b225e...6c4802`; base `0x421b63...96fb6a`; base `0x6017b2...e6db5e`; base `0x80e898...198570`; base `0xb37519...8a3b7b`; base `0xcd18e7...63fcde`; base `0xe37b9d...960a47`; base `0xf71dad...ea2bf7`; base `0xfec889...af085c`; linea `0x607f42...453b06`; linea `0x7c2e57...814d16`; linea `0xb8e26f...a50b26`; linea `0xc1d9ca...38598b`; linea `0xe6b9b0...17cd1e`; berachain [`0x047db0...adf9d7`](./contracts/berachain-80094/0x047db0362fa8afc275417fb87ad4514ff6adf9d7/); berachain `0x0c0e63...96735b`; berachain `0x12ec8c...854757`; berachain `0x292f55...31b30b`; berachain `0x2e9ac4...d4693a`; berachain `0x2eaa29...9ec64a`; berachain `0x4ff3fd...905dbb`; berachain `0x51c0a5...c42806`; berachain `0x574e5a...59c168`; berachain `0x5d3fb9...7b70cf`; berachain `0x621d21...3484b3`; berachain `0x62dc40...2d785e`; berachain `0x65adc9...e68b1f`; berachain `0x67321f...a07888`; berachain `0x6c8362...002608`; berachain `0x7e29e4...28b3f7`; berachain `0x7e61e4...b77944`; berachain `0x802c1e...c37202`; berachain `0x8805ac...a8dbf9`; berachain `0x8f2f7b...f32c99`; berachain `0xaece97...e6c039`; berachain `0xc8f4fe...25a2d3`; berachain `0xca19a7...4a5bb6`; berachain `0xcd6d03...dad6a4`; berachain `0xda41c1...2f3750`; berachain `0xe479d8...3ede8e`; berachain `0xe70e30...dda05c`; berachain `0xee9635...73e76b` | ✅ Audited |
| LiquidationLogic | unknown | manta | n/a | [`0x89fec3...5d1b7a`](./contracts/manta-169/0x89fec31dad373922879bd6279ccdc3666c5d1b7a/) | ✅ Audited |
| LiquidationManager | governance | manta | n/a | [`0x317e6b...731acc`](./contracts/manta-169/0x317e6b6bca8862f514d1fa28488dcd9211731acc/) | ✅ Audited |
| PoolAddressesProvider | core_logic | manta | n/a | [`0xc44827...d200eb`](./contracts/manta-169/0xc44827c51d00381ed4c52646aeab45b455d200eb/) | ✅ Audited |
| PoolAddressesProviderRegistry | registry | manta | n/a | [`0xc3b6dd...56a74d`](./contracts/manta-169/0xc3b6ddc1c9876a922754f1d01d18893c7956a74d/) | ✅ Audited |
| PoolConfigurator | core_logic | manta | n/a | [`0x78ad3d...a2a7a7`](./contracts/manta-169/0x78ad3d53045b6582841e2a1a688c52be2ca2a7a7/) | ✅ Audited |
| PoolLogic | core_logic | manta | n/a | [`0xc6df4d...a08c10`](./contracts/manta-169/0xc6df4dddbfacb866e78dcc01b813a41c15a08c10/) | ✅ Audited |
| ReservesSetupHelper | periphery | manta | n/a | [`0xb8634e...a87e21`](./contracts/manta-169/0xb8634e0a320d0f4861062514a63b659e52a87e21/) | ✅ Audited |
| StabilityPool | core_logic | manta | n/a | [`0x2ba9a6...24b30e`](./contracts/manta-169/0x2ba9a67989ba181d0755d464dfa7a5a90024b30e/) | ✅ Audited |
| SupplyLogic | unknown | manta | n/a | [`0x15785c...3bc66d`](./contracts/manta-169/0x15785c5d383fa33339cf5d5720546c24313bc66d/) | ✅ Audited |
| Timelock | governance | linea | n/a | 2 deployments: linea [`0x4d580f...4f6fd7`](./contracts/linea-59144/0x4d580ff0867a198a25b1d0f544e45542c04f6fd7/); linea `0x661f2b...a225c6` | ✅ Audited |
| UiIncentiveDataProviderV3 | unknown | manta | n/a | [`0x81b318...91b2d2`](./contracts/manta-169/0x81b3184a3b5d4612f2c26a53da8d99474b91b2d2/) | ✅ Audited |
| UiPoolDataProviderV3 | core_logic | manta | n/a | [`0xa32eb7...e6fd32`](./contracts/manta-169/0xa32eb787f2a3dc1f2c2da0e5d8cae7ff74e6fd32/) | ✅ Audited |
| VariableDebtToken | token | manta | n/a | [`0x0a8058...76e6a8`](./contracts/manta-169/0x0a8058203387c15a711204908ed9efed9f76e6a8/) | ✅ Audited |
| WalletBalanceProvider | unknown | manta | n/a | [`0xcbdc0a...fabb98`](./contracts/manta-169/0xcbdc0aed7cdf2472784068abef23a902cafabb98/) | ✅ Audited |
| WrappedLendingCollateral | core_logic | manta | n/a | [`0x9d5054...2fb787`](./contracts/manta-169/0x9d505479e3d2abcefd1f8317d213d2c3792fb787/) | ✅ Audited |

### ⚠️ Verified + Unaudited (133)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MintableERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0x2f913c...b20b19`](./contracts/ethereum-1/0x2f913c820ed3beb3a67391a6eff64e70c4b20b19/); linea `0x5ffce6...1c868c`; linea `0xe4d584...0705f7` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | unit-20869 | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x657e8c...88c642`](./contracts/ethereum-1/0x657e8c867d8b37dcc18fa4caead9c45eb088c642/) | ⚠️ Unaudited |
| XERC20 | token | linea | unit-20949 | [`0x241609...cceea5`](./contracts/linea-59144/0x2416092f143378750bb29b79ed961ab195cceea5/) | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | unit-20866 | [`0x8c9532...3e9811`](./contracts/ethereum-1/0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | unit-20870 | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-20855 (3 proxies) | 3 deployments: ethereum [`0x1ab9e9...b803c5`](./contracts/ethereum-1/0x1ab9e92cfde84f38868753d30ffc43f812b803c5/); ethereum `0xc364fd...e900ef`; ethereum `0xc42d33...b57e8a` | ⚠️ Unaudited |
| LinkToken | token | base | n/a | 2 deployments: base [`0x88fb15...c6e196`](./contracts/base-8453/0x88fb150bdc53a65fe94dea0c9ba0a6daf8c6e196/); linea `0xa18152...9c95e9` | ⚠️ Unaudited |
| RsETHTokenWrapper | token | linea | unit-21043 | [`0xd26711...101e6c`](./contracts/linea-59144/0xd2671165570f41bbb3b0097893300b6eb6101e6c/) | ⚠️ Unaudited |
| PumpTokenOFT | token | base | n/a | [`0xf469fb...0a012e`](./contracts/base-8453/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| EditableERC20 | token | linea | n/a | [`0xf3b001...4ce12a`](./contracts/linea-59144/0xf3b001d64c656e30a62fbaaca003b1336b4ce12a/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | 3 deployments: ethereum [`0x332a8e...d3dcd6`](./contracts/ethereum-1/0x332a8ee60edff0a11cf3994b1b846bbc27d3dcd6/); ethereum `0x7baf25...d4098f`; ethereum `0xb997b3...1509a0` | ⚠️ Unaudited |
| GravitaDebtToken | token | linea | n/a | [`0x894134...cb9487`](./contracts/linea-59144/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | ⚠️ Unaudited |
| XERC20 | token | linea | n/a | [`0x5a7a18...b1d76d`](./contracts/linea-59144/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/) | ⚠️ Unaudited |
| EVault | core_logic | berachain | unit-21064 (6 proxies) | 6 deployments: berachain [`0x112b77...4e00a1`](./contracts/berachain-80094/0x112b77a77753b092306b1c04bd70215fed4e00a1/); berachain `0x1b33d2...1d5fb1`; berachain `0x2247b6...3a28db`; berachain `0x28c96c...261b5a`; berachain `0x2bf927...e0b38a`; berachain `0x401c46...3f54cf` | ⚠️ Unaudited |
| EVault | core_logic | linea | unit-20936 (2 proxies) | 2 deployments: linea [`0x085f80...65e852`](./contracts/linea-59144/0x085f80df643307e04f23281f6fdbfaa13865e852/); linea `0x14efcc...0beada` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | linea | n/a | [`0xecc68d...38ac7d`](./contracts/linea-59144/0xecc68d0451e20292406967fe7c04280e5238ac7d/) | ⚠️ Unaudited |
| stableQiVault | core_logic | linea | n/a | 2 deployments: linea [`0x7f9dd9...9a7a70`](./contracts/linea-59144/0x7f9dd991e8fd0cbb52cb8eb35dd35c474a9a7a70/); linea `0x8ab01c...626599` | ⚠️ Unaudited |
| StakedUSDeOFT | token | linea | n/a | [`0x211cc4...5fe5d2`](./contracts/linea-59144/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| USDzVault | core_logic | base | n/a | [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/) | ⚠️ Unaudited |
| AaveEcosystemReserveController | governance | manta | n/a | [`0x3fc90e...5e78fa`](./contracts/manta-169/0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa/) | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | manta | n/a | [`0xadc1eb...afb6c8`](./contracts/manta-169/0xadc1eb4e8c72f03339638a7b43b2097fc1afb6c8/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | manta | n/a | [`0x67f93d...28ad15`](./contracts/manta-169/0x67f93d36792c49a4493652b91ad4bd59f428ad15/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | base | n/a | 105 deployments: base [`0x00be87...bd552a`](./contracts/base-8453/0x00be872906c07d6d7d0ec3968b99c4e3d6bd552a/); base `0x038fa5...97c4b6`; base `0x04030d...0d7ded`; base `0x04d3d7...ee3bdd`; base `0x05acfe...ce42f2`; base `0x08f965...50c219`; base `0x0ee714...95a4aa`; base `0x1564df...d9f5ec`; base `0x16f542...d602fd`; base `0x19e682...514dc8`; base `0x21b1e4...0abe59`; base `0x233a45...b4e3d2`; base `0x23e47a...edd226`; base `0x290b97...71352b`; base `0x29a0bf...4796c0`; base `0x330ec3...033af3`; base `0x33cdd3...776bc1`; base `0x43f92e...baa261`; base `0x45867e...c6f8da`; base `0x484cc2...e68744`; base `0x4a61db...46f850`; base `0x4c8348...4a5d95`; base `0x4d1d92...0aad68`; base `0x52a12e...377b95`; base `0x52d743...355a00`; base `0x55012e...cc998d`; base `0x57d2d4...447077`; base `0x5d427e...59c4c5`; base `0x6228a4...536b9a`; base `0x63a3b4...323b3c`; base `0x6f22c6...d684b8`; base `0x6f9829...d6bc04`; base `0x72fc79...c6909a`; base `0x735326...a6250d`; base `0x74f70d...496a01`; base `0x79b0e8...553482`; base `0x801b6e...d1da99`; base `0x834ce4...4b8920`; base `0x84eff9...5d7ca6`; base `0x851a36...781805`; base `0x852ae0...976ca8`; base `0x8eda55...ba8c19`; base `0x918988...3fa30c`; base `0x9eb524...bff34c`; base `0xa1923f...c39f4d`; base `0xa24aaf...f494d2`; base `0xa5925a...e47526`; base `0xa9bdec...35e7f1`; base `0xaa1399...7d1523`; base `0xae4602...564a3d`; base `0xb76eec...ee9e3d`; base `0xb9b743...b4a2a4`; base `0xbf477e...7e88e3`; base `0xc18cc9...56d4b9`; base `0xc2b36e...bc057b`; base `0xc73b76...c27826`; base `0xc95cd3...88c482`; base `0xcad16d...dc216c`; base `0xd0407a...b2c3b4`; base `0xd27766...61828a`; base `0xdc2d2f...b12844`; base `0xe18672...66a8b5`; base `0xea990b...d222c3`; base `0xec509c...db500f`; base `0xf2d85e...dbdfdd`; base `0xf3764b...675c9a`; linea `0x063516...f064f8`; linea `0x11c47e...04cdf0`; linea `0x1bd1d8...512ba6`; linea `0x1e5777...95404b`; linea `0x279dbd...d8c7ef`; linea `0x2884f3...bb548b`; linea `0x2c30e9...d3a0a8`; linea `0x32a743...3aead4`; linea `0x347c78...3dbc82`; linea `0x391f84...6bc278`; linea `0x441351...2f6018`; linea `0x462f8e...34b380`; linea `0x50c7d9...bd5359`; linea `0x5852e7...e43489`; linea `0x67f8f3...ebc422`; linea `0x6ca398...96c32d`; linea `0x700e61...051fb1`; linea `0x7396a3...1ee94f`; linea `0x746fbd...3e2ecb`; linea `0x82b6a7...14f8c0`; linea `0x854d46...b9ad4e`; linea `0x90946f...c17562`; linea `0x917cab...eea2d5`; linea `0x92b4b8...323263`; linea `0xa6f728...82f9ff`; linea `0xa872f1...35b82d`; linea `0xa901c5...f86ed3`; linea `0xc93766...62ddf8`; linea `0xca3d6b...09157e`; linea `0xd3cdbd...a51e54`; linea `0xd691e4...233319`; linea `0xd71cd2...5647cc`; linea `0xd7bfed...dda4f6`; linea `0xda7ed0...32ee2a`; linea `0xde28ba...098435`; linea `0xe6ebca...535093`; linea `0xe77542...0d8fb3`; linea `0xfb27a9...4aed8a`; linea `0xfcc63c...263fbe` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | base | n/a | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| BaseBridgeHelperModule | operational_periphery | base | n/a | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | ⚠️ Unaudited |
| BeaconProxy | registry | linea | n/a | [`0x9ac2f0...2abb1f`](./contracts/linea-59144/0x9ac2f0a564b7396a8692e1558d23a12d5a2abb1f/) | ⚠️ Unaudited |
| BlastPoints | unknown | blast | n/a | [`0x81b318...91b2d2`](./contracts/blast-81457/0x81b3184a3b5d4612f2c26a53da8d99474b91b2d2/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | manta | n/a | [`0x0ae3a8...4cd117`](./contracts/manta-169/0x0ae3a8bb8300fbb1e3c53975fc83576b324cd117/) | ⚠️ Unaudited |
| BridgedWOETHStrategy | operational_periphery | base | unit-20904 | [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/) | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | base | n/a | 2 deployments: base [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/); base `0xcf791f...902542` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | base | n/a | [`0xe31ee1...cbf0cf`](./contracts/base-8453/0xe31ee12bdfdd0573d634124611e85338e2cbf0cf/) | ⚠️ Unaudited |
| ChildUSDz | unknown | base | n/a | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ⚠️ Unaudited |
| ClaimBribesSafeModule | operational_periphery | base | n/a | 4 deployments: base [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/); base `0x60d3d6...178893`; base `0xe16448...46b46f`; base `0xe58b21...7c08b0` | ⚠️ Unaudited |
| CollectorWithCustomImpl | unknown | ethereum | unit-20859 | [`0x464c71...d6e18c`](./contracts/ethereum-1/0x464c71f6c2f760dda6093dcb91c24c39e5d6e18c/) | ⚠️ Unaudited |
| CommitStore | unknown | base | n/a | 28 deployments: base [`0x0753da...33aac3`](./contracts/base-8453/0x0753dabe522a1bb9ea18005a015e3da5a833aac3/); base `0x0ae3c2...ca4f77`; base `0x17891f...56039f`; base `0x1ccd0d...675c3c`; base `0x229890...961292`; base `0x282741...411fc2`; base `0x2d3fc7...fee2f1`; base `0x36b3ea...bc95cf`; base `0x3d4d67...cc8a9c`; base `0x452750...59c1f5`; base `0x4cdca7...f409ea`; base `0x565f70...ccdf3b`; base `0x5f2ce9...41d411`; base `0x69a2f5...4aa9bc`; base `0x6fbe67...cc4d98`; base `0x700c67...98b5dd`; base `0x725f05...1010a4`; base `0x7acda4...5b50e9`; base `0x862642...356f20`; base `0x932d6d...56d837`; base `0xa8fa8a...0036cb`; base `0xb40659...58ce0b`; base `0xc4a8b1...dd62a4`; base `0xccb222...ef839a`; base `0xcff74c...347985`; base `0xdd2f2f...56b75b`; base `0xde480a...02f2d7`; base `0xfb35d3...26be78` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | core_logic | base | n/a | 4 deployments: base [`0x5f81a5...e7a92d`](./contracts/base-8453/0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d/); base `0x81d877...bc8a30`; base `0xc9d1b9...7a5091`; base `0xd7b852...9b5fca` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | unit-20966 (4 proxies) | 4 deployments: linea [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/); linea `0x4af15e...6b00d5`; linea `0xa21943...e12b93`; linea `0xb5bedd...68fc8f` | ⚠️ Unaudited |
| DebtTokenOnezProxy | token | manta | n/a | 4 deployments: manta [`0x38e63d...ec7f29`](./contracts/manta-169/0x38e63d8e3781e7e392a4e3ad351bcab9bcec7f29/); manta `0x9595ae...7a6e7b`; manta `0xbf8216...5bdcfb`; manta `0xf6561e...d87d45` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | linea | n/a | 22 deployments: base `0x64c911...bd848f`; base `0x71041d...16bb70`; linea [`0x0aac94...252741`](./contracts/linea-59144/0x0aac940015d333b8e4f93fce9c0f6f365d252741/); linea `0x18e0c8...52f9a8`; linea `0x1e2286...9e015e`; linea `0x452b40...9716d1`; linea `0x49768d...84d72f`; linea `0x579183...87785a`; linea `0x5cc678...5271ad`; linea `0x71df27...7b3940`; linea `0x81f4d3...867f2a`; linea `0x8b65a2...b05623`; linea `0x8b7fac...4722f4`; linea `0x8d6ceb...2b72b3`; linea `0x916580...ea8951`; linea `0x921000...191c5c`; linea `0x9e6c73...5926d3`; linea `0x9ecea8...828d7a`; linea `0xc834a5...9da339`; linea `0xdaad34...12065e`; linea `0xe3b01c...91e38a`; linea `0xe5aca1...4a1ede` | ⚠️ Unaudited |
| EarlyZERO | unknown | linea | n/a | [`0x40a59a...cfe180`](./contracts/linea-59144/0x40a59a3f3b16d9e74c811d24d8b7969664cfe180/) | ⚠️ Unaudited |
| EarlyZerolend | unknown | manta | n/a | 2 deployments: manta [`0x347a68...a5950e`](./contracts/manta-169/0x347a688ccc2256299195994767f5a6c3a6a5950e/); manta `0x642ce4...a7672d` | ⚠️ Unaudited |
| EmptyVault | core_logic | manta | n/a | [`0x861736...c7beb2`](./contracts/manta-169/0x861736ddbe57932ef15e6365a1d81a8458c7beb2/) | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| EthereumPriceFeedOsethethWithoutRoundsV1 | operational_periphery | ethereum | unit-20863 | [`0x66ac81...57b32c`](./contracts/ethereum-1/0x66ac817f997efd114edfcccdce99f3268557b32c/) | ⚠️ Unaudited |
| EthereumPriceFeedWeethethWithoutRoundsV1 | operational_periphery | ethereum | unit-20865 | [`0x8751f7...d9cc36`](./contracts/ethereum-1/0x8751f736e94f6cd167e8c5b97e245680fbd9cc36/) | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | unit-20947 | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | base | n/a | 26 deployments: base [`0x03ee83...ae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/); base `0x0a44db...553286`; base `0x18095f...732062`; base `0x25f8fc...bf1504`; base `0x300977...310661`; base `0x335581...a20ab3`; base `0x45d524...751083`; base `0x5204a4...cd1af1`; base `0x53ab03...ddfdab`; base `0x61c3f6...afccdf`; base `0x62fae5...233cca`; base `0x639dc0...feab0d`; base `0x73a600...aa6e96`; base `0x74d574...78adb7`; base `0x7d38c6...f58d93`; base `0x7e2b07...4dfe10`; base `0x9c095e...497653`; base `0x9c32df...bdea73`; base `0xaa2805...cd18e9`; base `0xc18ef0...9f72b6`; base `0xca0416...5371f1`; base `0xd3680a...57913e`; base `0xd47363...5a907c`; base `0xd8fc83...ec2926`; base `0xe4e567...97a4d7`; base `0xeff089...247d9d` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | base | n/a | 8 deployments: base [`0x048f2f...85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/); base `0x31389d...4eac52`; base `0x4db62b...dfeed3`; base `0x62e8d1...abe3f9`; base `0x7898d0...db287e`; base `0xbd15d0...5c5977`; base `0xc06dc9...700ce5`; base `0xd531e3...786d26` | ⚠️ Unaudited |
| Factory | registry | manta | n/a | [`0xc11bd1...05298a`](./contracts/manta-169/0xc11bd1e365e0050ddc6de5f3cf51e7e6f605298a/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | n/a | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | ⚠️ Unaudited |
| FeeReceiver | unknown | manta | n/a | 2 deployments: manta [`0x97bcd5...275b46`](./contracts/manta-169/0x97bcd5a5206f589276650d4eda0452081b275b46/); manta `0xa185ca...13e580` | ⚠️ Unaudited |
| FeesClaimer | operational_periphery | manta | n/a | 2 deployments: manta [`0x309cfe...cc76eb`](./contracts/manta-169/0x309cfe19f7963d0fc355e6acb1f82299a8cc76eb/); manta `0xf51fd4...f3def2` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-20918 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | linea | unit-20944 | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-20905 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | n/a | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | unit-20898 | [`0x6f5ae6...ac61b4`](./contracts/base-8453/0x6f5ae60d89dbbc4eed4b08d08a68dd5679ac61b4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | unit-20941 | [`0x14aad4...9ccd8a`](./contracts/linea-59144/0x14aad4668de2115e30a5feee42cfa436899ccd8a/) | ⚠️ Unaudited |
| HypernativeTrigger | unknown | linea | n/a | [`0x608382...a30e41`](./contracts/linea-59144/0x608382bb732156fe2324817b3f45c92325a30e41/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | manta | n/a | [`0x97e597...92cbf6`](./contracts/manta-169/0x97e59722318f1324008484aca9c343863792cbf6/) | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | base | n/a | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | ⚠️ Unaudited |
| L2Stone | unknown | manta | n/a | [`0x801375...747bf7`](./contracts/manta-169/0x80137510979822322193fc997d400d5a6c747bf7/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | n/a | [`0xa1bc65...a3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LockerToken | token | base | n/a | 2 deployments: base [`0x5f4250...fae7e6`](./contracts/base-8453/0x5f4250ed435124199adc5cc102d2aa59defae7e6/); base `0xdb1a47...54f6e4` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | base | n/a | [`0xdea04d...69fdb8`](./contracts/base-8453/0xdea04d42e30ad4f82c74e7e9a3f092fd2169fdb8/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | base | n/a | [`0xc64f6e...cbc01f`](./contracts/base-8453/0xc64f6e56a19678190b8263f05beeed9fc5cbc01f/) | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | n/a | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| LyveDebtToken | token | linea | n/a | [`0xb20116...8bc951`](./contracts/linea-59144/0xb20116ee399f15647bb1eef9a74f6ef3b58bc951/) | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | base | n/a | 2 deployments: base [`0xe1068b...10ca21`](./contracts/base-8453/0xe1068bc0a5197540108eade33ed4cc394510ca21/); base `0xea4b3e...68573c` | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MockAggregator | unknown | manta | n/a | 2 deployments: manta [`0x9667e1...3337c4`](./contracts/manta-169/0x9667e12be07adc2151f85a36a79ce6eb653337c4/); manta `0x9aebe5...cf351e` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | n/a | [`0x15eefe...ef4d25`](./contracts/linea-59144/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| MultiCollateralHintHelpers | periphery | manta | n/a | [`0xa51fc1...fa79de`](./contracts/manta-169/0xa51fc17109817b2728004b85d9a58de486fa79de/) | ⚠️ Unaudited |
| MultiSigWallet | governance | manta | n/a | [`0xd10da5...8e2489`](./contracts/manta-169/0xd10da5797d0e79a4ef6ffc240ac2d19aec8e2489/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | manta | n/a | [`0x30c673...8c1173`](./contracts/manta-169/0x30c673197de801eb58eabde30a49198cb68c1173/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | manta | n/a | [`0x351125...127590`](./contracts/manta-169/0x3511257bdaee658918e832cacd0f9e11c3127590/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| OETHBaseZapper | adapter | base | n/a | [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/) | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | core_logic | base | n/a | [`0xc5d369...4f38e0`](./contracts/base-8453/0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0/) | ⚠️ Unaudited |
| OFT | unknown | linea | n/a | [`0xb55e89...477827`](./contracts/linea-59144/0xb55e892d38056481bb5bb361eddbc8c2c1477827/) | ⚠️ Unaudited |
| ONEZ | unknown | manta | n/a | 4 deployments: manta [`0x7db270...3ba69b`](./contracts/manta-169/0x7db270182e12bfe88dca47c98cb1ef563c3ba69b/); manta `0xafe9b5...72a616`; manta `0xc3f57e...f2bbd9`; manta `0xe00261...61fdf3` | ⚠️ Unaudited |
| OUSDVault | core_logic | base | n/a | [`0xa96fd1...3820f9`](./contracts/base-8453/0xa96fd141e92de60394103c7f9e045662913820f9/) | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | base | n/a | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | ⚠️ Unaudited |
| PriceFeedPyth | operational_periphery | manta | n/a | 3 deployments: manta [`0x1167d1...a5238c`](./contracts/manta-169/0x1167d1339011e6495d4e1d3824c522f1d4a5238c/); manta `0x5dc0f3...5cfbca`; manta `0xc1d36f...013dc6` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | base | n/a | [`0xc79224...fed50b`](./contracts/base-8453/0xc792246cf4f41100ca3c67cbf3888d5cf8fed50b/) | ⚠️ Unaudited |
| PrismaCore | unknown | manta | n/a | 3 deployments: manta [`0x195e99...5dccb9`](./contracts/manta-169/0x195e9907efb240938099bb88f66f15ad6b5dccb9/); manta `0xc1d98a...4ce3de`; manta `0xf92383...d01195` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | manta | n/a | [`0x2acc2b...48732b`](./contracts/manta-169/0x2acc2b9fc1123ab649895c9e825260f31348732b/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | manta | n/a | 9 deployments: ethereum `0xd04a2e...732a37`; manta [`0x0bd276...f7a742`](./contracts/manta-169/0x0bd27617e20f09a8e7ffdae281e383b4b2f7a742/); manta `0x1615ea...f5b1d8`; manta `0x41b192...70d705`; manta `0x420168...0dee29`; manta `0x5046c3...7f08cb`; manta `0x5e35d9...9bb0ef`; manta `0x7fab93...605663`; manta `0xd85bbd...55f7e3` | ⚠️ Unaudited |
| RedStoneAggregator | unknown | manta | n/a | 3 deployments: manta [`0x06d3dd...f86356`](./contracts/manta-169/0x06d3ddb240a0848ff6d6952742fe814306f86356/); manta `0x1b26a6...9b27c6`; manta `0x36c44b...6967a3` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | base | n/a | [`0x1a5f2d...ae1a77`](./contracts/base-8453/0x1a5f2d0c090ddb7ee437051da5e6f03b6bae1a77/) | ⚠️ Unaudited |
| RestrictedERC20 | token | berachain | n/a | [`0xaf9849...588fc4`](./contracts/berachain-80094/0xaf984977ff898e2c014ac91f5b9a44a8c0588fc4/) | ⚠️ Unaudited |
| RewardsController | governance | manta | n/a | [`0x6e9d0c...0ca947`](./contracts/manta-169/0x6e9d0ce24d14fb1750ba0369e300413b230ca947/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardToken | token | berachain | n/a | [`0xe35e2d...2c5a6e`](./contracts/berachain-80094/0xe35e2dec86d09d6f95ff4045985f4054592c5a6e/) | ⚠️ Unaudited |
| RMN | unknown | base | n/a | [`0x91cb19...b007c3`](./contracts/base-8453/0x91cb19e7c4ba9b08cf544cdc9143042150b007c3/) | ⚠️ Unaudited |
| Router | adapter | base | n/a | 3 deployments: base [`0x881e3a...f58bcd`](./contracts/base-8453/0x881e3a65b4d4a04dd529061dd0071cf975f58bcd/); base `0xcd06f1...d5ba56`; base `0xcf77a3...874e43` | ⚠️ Unaudited |
| SortedTroves | unknown | manta | n/a | [`0x7a2be8...05cd51`](./contracts/manta-169/0x7a2be8f4d864cddad322e62e62f1f369a405cd51/) | ⚠️ Unaudited |
| StableDebtTokenDisabled | token | manta | n/a | [`0x859c2c...7e84e8`](./contracts/manta-169/0x859c2ca97ead2742a0758bc9dd889e9d0e7e84e8/) | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | n/a | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/); ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StoneCross | unknown | linea | n/a | 2 deployments: manta `0xec901d...0652c3`; linea [`0x93f4d0...d21116`](./contracts/linea-59144/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0xb90a47...26c686` | ⚠️ Unaudited |
| TerminatedContract | unknown | ethereum | n/a | [`0x1b7406...46194a`](./contracts/ethereum-1/0x1b7406b06ce2ff145c274f39941211c2a146194a/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | base | n/a | [`0x6f6c37...731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | n/a | [`0xf6301b...a80940`](./contracts/manta-169/0xf6301be5f006a2dd1fe480d27c0a8aa439a80940/) | ⚠️ Unaudited |
| TroveManager | governance | manta | n/a | 2 deployments: manta [`0x05031f...db1f30`](./contracts/manta-169/0x05031fe002c8f01f3e76612bf88709f81bdb1f30/); manta `0x861af6...515a4f` | ⚠️ Unaudited |
| TroveManagerGetters | governance | manta | n/a | [`0xc89d40...5dc650`](./contracts/manta-169/0xc89d4070d02410daf0032dcaa99ed173b45dc650/) | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | token | base | unit-20887 | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | ⚠️ Unaudited |
| USDeOFT | unknown | linea | n/a | [`0x5d3a1f...52ef34`](./contracts/linea-59144/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| UsdzMarket | unknown | base | n/a | [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingMachine | unknown | ethereum | n/a | [`0x06a179...77bfb6`](./contracts/ethereum-1/0x06a1795a88b82700896583e123f46be43877bfb6/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/); linea `0xe5d7c2...5cf34f` | ⚠️ Unaudited |
| WOETHBase | unknown | base | unit-20902 | [`0x7fcd17...f58ea6`](./contracts/base-8453/0x7fcd174e80f264448ebee8c88a7c4476aaf58ea6/) | ⚠️ Unaudited |
| YieldBearingWETH | token | manta | n/a | [`0x429b2c...04eb5b`](./contracts/manta-169/0x429b2c12ea2a718ae5fc61f3ad4a84d83704eb5b/) | ⚠️ Unaudited |
| ZaiOFTWithRestaking | unknown | base | n/a | [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ⚠️ Unaudited |
| ZeroLend | unknown | linea | n/a | 2 deployments: linea [`0x78354f...c3c7a7`](./contracts/linea-59144/0x78354f8dccb269a615a7e0a24f9b0718fdc3c7a7/); blast `0x861af6...515a4f` | ⚠️ Unaudited |
| ZeroOFT | unknown | ethereum | n/a | 6 deployments: ethereum [`0x11dcc2...fc429e`](./contracts/ethereum-1/0x11dcc26d4bdac03ffa8841f69313c38240fc429e/); manta `0x35a57e...cafa1d`; manta `0x39655d...97d94e`; manta `0x64d904...222797`; manta `0xebe090...15fe0e`; blast `0x357f93...65d00f` | ⚠️ Unaudited |
| ZeroOFTAdapter | adapter | linea | n/a | [`0x1dad69...039e8e`](./contracts/linea-59144/0x1dad693787c5817ef3102f513025fa6a66039e8e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3db28e...1ee7a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x458de0...1d2edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0e7e6b...5c6510` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x0fac52...9ce43a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x195112...f11c48` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x24a4b5...c7e2b1` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x2b1d94...47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x458ad5...7a5583` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x712298...45bd3c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x795b70...eb92c7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x98d56d...9eb611` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb0811a...cf587b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb1cf24...b3f9ca` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xb6f77e...df233d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc6660c...1bdb23` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xfeafb5...8466c1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x016341...2da7cc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1890f9...49d18d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x431df5...cf977c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d9429...e3b8f8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x54ab34...a5bedc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x56f58d...b080cf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5fac4f...e54dff` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x627b8a...39ef3b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6aac09...735bac` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6f977f...2f442d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x767b4a...bad3d2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7ae492...400f7f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7d3b3a...abb9cd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9002ec...119914` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9993c0...50f7c3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9c9158...209b9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9ca480...d21505` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xba9969...41c3de` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdf36f5...88df8d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe8178f...b6e38e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfce579...49b553` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6590e6...d0c7d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdd61b...42b9e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x801375...747bf7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [zerolend_report_depcheck_final.pdf (also discovered via alternate URL)](https://github.com/zerolend/audits/blob/main/mundus/zerolend_report_depcheck_final.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 29 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/certora/Aave_V3_Formal_Verification_Report_Jan2022.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABDK (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name|n/a | 92 | high |
| [{% embed url="<>" %}](https://www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf](https://github.com/zerolend/audits/blob/main/peckshield/PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x657e8c...88c642`](./contracts/ethereum-1/0x657e8c867d8b37dcc18fa4caead9c45eb088c642/) | BoringVault | core_logic | $17,197,815.83 | Verified native implementation with $17,197,815.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf469fb...0a012e`](./contracts/base-8453/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | PumpTokenOFT | token | $1,215,899.19 | Verified native implementation with $1,215,899.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf3b001...4ce12a`](./contracts/linea-59144/0xf3b001d64c656e30a62fbaaca003b1336b4ce12a/) | EditableERC20 | token | $707,605.00 | Verified native implementation with $707,605.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x894134...cb9487`](./contracts/linea-59144/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | GravitaDebtToken | token | $30,123.40 | Verified native implementation with $30,123.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5a7a18...b1d76d`](./contracts/linea-59144/0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d/) | XERC20 | token | $11,021.75 | Verified native implementation with $11,021.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xecc68d...38ac7d`](./contracts/linea-59144/0xecc68d0451e20292406967fe7c04280e5238ac7d/) | BurnableMintableCappedERC20 | token | $839.19 | Verified native implementation with $839.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x211cc4...5fe5d2`](./contracts/linea-59144/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFT | token | $451.10 | Verified native implementation with $451.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0ae3a8...4cd117`](./contracts/manta-169/0x0ae3a8bb8300fbb1e3c53975fc83576b324cd117/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ChildUSDz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x464c71...d6e18c`](./contracts/ethereum-1/0x464c71f6c2f760dda6093dcb91c24c39e5d6e18c/) | CollectorWithCustomImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x38e63d...ec7f29`](./contracts/manta-169/0x38e63d8e3781e7e392a4e3ad351bcab9bcec7f29/) | DebtTokenOnezProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x347a68...a5950e`](./contracts/manta-169/0x347a688ccc2256299195994767f5a6c3a6a5950e/) | EarlyZerolend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x861736...c7beb2`](./contracts/manta-169/0x861736ddbe57932ef15e6365a1d81a8458c7beb2/) | EmptyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03ee83...ae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x048f2f...85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/) | EVM2EVMOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc11bd1...05298a`](./contracts/manta-169/0xc11bd1e365e0050ddc6de5f3cf51e7e6f605298a/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x97bcd5...275b46`](./contracts/manta-169/0x97bcd5a5206f589276650d4eda0452081b275b46/) | FeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x309cfe...cc76eb`](./contracts/manta-169/0x309cfe19f7963d0fc355e6acb1f82299a8cc76eb/) | FeesClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1bc65...a3845a`](./contracts/ethereum-1/0xa1bc65ecf8bc7b2faa22c53bcc49b0376da3845a/) | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb20116...8bc951`](./contracts/linea-59144/0xb20116ee399f15647bb1eef9a74f6ef3b58bc951/) | LyveDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9667e1...3337c4`](./contracts/manta-169/0x9667e12be07adc2151f85a36a79ce6eb653337c4/) | MockAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa51fc1...fa79de`](./contracts/manta-169/0xa51fc17109817b2728004b85d9a58de486fa79de/) | MultiCollateralHintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x351125...127590`](./contracts/manta-169/0x3511257bdaee658918e832cacd0f9e11c3127590/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7db270...3ba69b`](./contracts/manta-169/0x7db270182e12bfe88dca47c98cb1ef563c3ba69b/) | ONEZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1167d1...a5238c`](./contracts/manta-169/0x1167d1339011e6495d4e1d3824c522f1d4a5238c/) | PriceFeedPyth | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x195e99...5dccb9`](./contracts/manta-169/0x195e9907efb240938099bb88f66f15ad6b5dccb9/) | PrismaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2acc2b...48732b`](./contracts/manta-169/0x2acc2b9fc1123ab649895c9e825260f31348732b/) | PullRewardsTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x6e9d0c...0ca947`](./contracts/manta-169/0x6e9d0ce24d14fb1750ba0369e300413b230ca947/) | RewardsController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7a2be8...05cd51`](./contracts/manta-169/0x7a2be8f4d864cddad322e62e62f1f369a405cd51/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x859c2c...7e84e8`](./contracts/manta-169/0x859c2ca97ead2742a0758bc9dd889e9d0e7e84e8/) | StableDebtTokenDisabled | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f352...083b02`](./contracts/ethereum-1/0x21f352fc288b5e030867eed41f7402482b083b02/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x93f4d0...d21116`](./contracts/linea-59144/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7406...46194a`](./contracts/ethereum-1/0x1b7406b06ce2ff145c274f39941211c2a146194a/) | TerminatedContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x05031f...db1f30`](./contracts/manta-169/0x05031fe002c8f01f3e76612bf88709f81bdb1f30/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc89d40...5dc650`](./contracts/manta-169/0xc89d4070d02410daf0032dcaa99ed173b45dc650/) | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | UpgradeableOptimismMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5d3a1f...52ef34`](./contracts/linea-59144/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a179...77bfb6`](./contracts/ethereum-1/0x06a1795a88b82700896583e123f46be43877bfb6/) | VotingMachine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x429b2c...04eb5b`](./contracts/manta-169/0x429b2c12ea2a718ae5fc61f3ad4a84d83704eb5b/) | YieldBearingWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ZaiOFTWithRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x78354f...c3c7a7`](./contracts/linea-59144/0x78354f8dccb269a615a7e0a24f9b0718fdc3c7a7/) | ZeroLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dcc2...fc429e`](./contracts/ethereum-1/0x11dcc26d4bdac03ffa8841f69313c38240fc429e/) | ZeroOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1dad69...039e8e`](./contracts/linea-59144/0x1dad693787c5817ef3102f513025fa6a66039e8e/) | ZeroOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 111 |
| upstream | 15 |
| standard_library | 21 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=830

Zero-match audit list:

- [11749] Rendered PDF capture
- [11750] Rendered PDF capture
- [11751] Rendered PDF capture
- [11752] Rendered PDF capture
- [11753] Rendered PDF capture
- [11760] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
