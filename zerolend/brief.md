# Agentic Audit Brief: ZeroLend

⚠️ Lifecycle status: DECLINING - TVL dropped 9.6% over 90 days

## Project Overview

- Project: ZeroLend (`zerolend`)
- Website: [https://zerolend.xyz/](https://zerolend.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T20:29:23.510Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: base, berachain, blast, ethereum, linea, manta, zksync-era
- Contract surface: 614 unique implementations (2294 raw deployments)
- DeFi Llama TVL: $13,186,422.00
- On-chain TVL (included contracts): $352,446,208.30
- TVL by chain: Ethereum $314,123,925.96 | Base $23,415,923.74 | Linea $14,901,417.77 | Berachain $4,940.83

## Project Description

ZeroLend is a decentralized lending protocol and money market deployed across multiple L2 chains. It enables users to supply assets to earn yield, borrow against collateral, and participate in lending markets through a fork of the Aave v3 codebase. The protocol also includes vaults for optimized yield strategies and staking mechanisms for its native ZERO token.

### Architecture

The Lending Markets family forms the core of the protocol, with each chain deployment sharing a common architecture of Pool, tokens (AToken, VariableDebtToken), and governance (ACLManager, RewardsController). The Vaults family operates independently but may interact with lending markets for yield strategies. Staking and Rewards contracts incentivize participation across both lending and vault products, often using the ZERO token and its omnichain variants. Oracles provide price feeds essential for lending operations, while Tokens and Bridges enable cross-chain asset movement and representation within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 36/391 (9.2%)
- Verified + Unaudited implementations: 348
- Verified by bytecode match: 8
- Unverified implementations: 223
- Unique implementations: 614
- Raw deployments: 2294
- Audits discovered: 9
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $331,690,196.41
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $331,690,196.41 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 22 | 5.6% | 2022-01 |
| unknown | Tier 2 | 22 | 5.6% | n/a |
| PeckShield | Tier 2 | 5 | 1.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (35)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Pool | core_logic | linea | 17 deployments: ethereum `0x3bc3d3...bab4c0`; ethereum `0x5bc6cb...1978ed`; ethereum `0x9667aa...ba6451`; ethereum `0xc99de0...abe907`; ethereum `0xff679e...579385`; manta `0x8676e3...04972e`; base `0x420dd3...ce40da`; base `0x6cdcb1...fb971d`; base `0x766f21...d0c671`; base `0x80102a...3c3a80`; base `0xa4e46b...3cd6d7`; linea [`0x2f9bb7...c6b269`](./contracts/linea-59144/0x2f9bb73a8e98793e26cb2f6c4ad037bdf1c6b269/); linea `0x8676e3...04972e`; linea `0xb2db36...e2a4dd`; berachain `0x642ce4...a7672d`; berachain `0x67f93d...28ad15`; berachain `0xe96fee...d7ab84` | ✅ Audited |
| StableDebtTokenDisabled | token | blast | 19 deployments: ethereum `0x346623...0092ed`; ethereum `0x7fae82...fca718`; ethereum `0x856905...85e049`; ethereum `0x90aa23...5b055c`; ethereum `0xbe5c82...5d1144`; ethereum `0xe230cf...520ba7`; manta `0x859c2c...7e84e8`; base `0x5d50be...d7171c`; linea `0x26e429...280ee4`; linea `0x27c773...85d014`; linea `0x859c2c...7e84e8`; linea `0xb4d5d8...245d26`; linea `0xd07e6a...4be024`; linea `0xe5ef53...01e2b2`; berachain `0x30835d...6eda84`; berachain `0xc682d4...8ef5c8`; blast [`0x045d56...9d5106`](./contracts/blast-81457/0x045d5602faf1abb4c3f3c62fa70293450d9d5106/); blast `0x1cc993...733385`; blast `0xbc83dc...6f90e8` | ✅ Audited |
| StabilityPool | core_logic | linea | 4 deployments: manta `0x2ba9a6...24b30e`; linea [`0x1aec76...4f8311`](./contracts/linea-59144/0x1aec7682a3623a6c3642e75d973938ca1a4f8311/); linea `0x42865c...c3b1be`; linea `0x5c3b45...d3f525` | ✅ Audited |
| WrappedTokenGatewayV3 | token | linea | 15 deployments: ethereum `0x1ea694...4b1274`; ethereum `0x2787c0...4b2466`; ethereum `0x6ea9d9...5d38b4`; ethereum `0x6f28cb...bb33fa`; ethereum `0xaf728d...3c10b2`; manta `0xe05361...09d69e`; base `0x11ccdc...c85612`; linea [`0x01d3bb...c3e5ff`](./contracts/linea-59144/0x01d3bb31f1948ba32ee9c725435291e425c3e5ff/); linea `0x405bda...b0cde1`; linea `0x5d50be...d7171c`; linea `0x60f973...cb6230`; linea `0xf51aa0...d16d52`; berachain `0x411e97...e076dd`; berachain `0xe230cf...520ba7`; blast `0xfadfb0...35dc3c` | ✅ Audited |
| AaveOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x1cc993...733385`](./contracts/ethereum-1/0x1cc993f2c8b6fbc43a9bafd2a44398e739733385/); ethereum `0xad19a5...c4da41`; manta `0xff679e...579385`; base `0xf49ee3...4fd82c`; linea `0xff679e...579385`; berachain `0xa24957...b1933b`; blast `0xbe0ab6...5547d8` | ✅ Audited |
| ACLManager | governance | base | 10 deployments: ethereum `0x6c9e32...f5c8c8`; ethereum `0x749df8...3abba5`; ethereum `0x984a0d...4461f4`; manta `0xb21781...23d0b8`; base [`0x1cc993...733385`](./contracts/base-8453/0x1cc993f2c8b6fbc43a9bafd2a44398e739733385/); linea `0x44a57b...8c6f88`; linea `0x47dd67...0b1386`; linea `0xb21781...23d0b8`; linea `0xbec379...07e771`; blast `0x7503a8...5791eb` | ✅ Audited |
| AToken | token | base | 32 deployments: ethereum `0x29a3a6...6f987b`; ethereum `0x3fafa5...83e16a`; ethereum `0x68fd75...1f35e7`; ethereum `0x84e55c...15a0c5`; ethereum `0xb2feb2...347a5c`; ethereum `0xb38d31...61c501`; ethereum `0xb7ed49...e2b512`; ethereum `0xef4a41...830bed`; ethereum `0xfb932a...f0d88c`; manta `0xd2a2a5...0aabb8`; base [`0x033f5d...08e3d4`](./contracts/base-8453/0x033f5d67d4262d53c300a90c01cc2686ad08e3d4/); base `0x3c2b86...2b53ae`; base `0x467720...c3ab29`; base `0xd09600...1efcb3`; base `0xe230cf...520ba7`; linea `0x2e207e...4f081d`; linea `0x508c39...e8f07a`; linea `0x759cb9...d9b0e7`; linea `0x83f47f...f46472`; linea `0xb4ffef...9805f5`; linea `0xb83e50...76e1b5`; linea `0xc33e9c...64a581`; linea `0xd2a2a5...0aabb8`; linea `0xe6f88f...98b6fe`; linea `0xe7e54c...c5be48`; berachain `0x1518b7...ccc272`; berachain `0x3db28e...1ee7a3`; berachain `0x710184...edcec6`; berachain `0xa13463...040a9c`; berachain `0xb2b4a2...b8205b`; berachain `0xf228dc...6a8697`; blast `0xa754b2...f38588` | ✅ Audited |
| ATokenAerodromeLP | token | base | 3 deployments: base [`0x9d6273...5ec009`](./contracts/base-8453/0x9d6273c3cd657593ab168c2c68fce25bba5ec009/); base `0xb6ccd8...eebfee`; base `0xd8e429...cc9817` | ✅ Audited |
| BlastAToken | token | blast | 4 deployments: blast [`0x23a58c...5f9c34`](./contracts/blast-81457/0x23a58cbe25e36e26639bdd969b0531d3ad5f9c34/); blast `0x53a3aa...037b04`; blast `0x749df8...3abba5`; blast `0xcffe40...c85401` | ✅ Audited |
| BlastPool | core_logic | blast | 2 deployments: blast [`0x3fc90e...5e78fa`](./contracts/blast-81457/0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa/); blast `0xa70b0f...bea7a8` | ✅ Audited |
| BorrowLogic | core_logic | berachain | 8 deployments: ethereum `0x8676e3...04972e`; manta `0x9698fd...c13bc6`; base `0xb8634e...a87e21`; linea `0xd85bbd...55f7e3`; linea `0xe99f29...58d721`; berachain [`0x15785c...3bc66d`](./contracts/berachain-80094/0x15785c5d383fa33339cf5d5720546c24313bc66d/); berachain `0x5452c0...1e0794`; blast `0x5e35d9...9bb0ef` | ✅ Audited |
| BridgeLogic | operational_periphery | ethereum | 8 deployments: ethereum [`0x3365d8...7b9f9d`](./contracts/ethereum-1/0x3365d8691cd54313fa3df201bb33bd1ec37b9f9d/); manta `0xcccf56...6377bf`; base `0xfd856e...f75fcf`; linea `0xc3b6dd...56a74d`; linea `0xce2488...5c144b`; berachain `0x59423c...090e10`; berachain `0x666aa3...0d8ac2`; blast `0xb0b0b1...f452a2` | ✅ Audited |
| ConfiguratorLogic | governance | berachain | 8 deployments: ethereum `0xb8634e...a87e21`; manta `0x2f7e54...eb8a93`; base `0xb47d41...97e603`; linea `0x9660b3...6262ee`; linea `0xaf2be6...13c712`; berachain [`0x1f8c52...25a600`](./contracts/berachain-80094/0x1f8c525dca90ca30d2f9d476355eb5bcc425a600/); berachain `0xcccf56...6377bf`; blast `0xc3b6dd...56a74d` | ✅ Audited |
| DefaultReserveInterestRateStrategy | operational_periphery | ethereum | 54 deployments: ethereum [`0x01475c...1c10e7`](./contracts/ethereum-1/0x01475c4e87252ad066e0a7de08e7ac80171c10e7/); ethereum `0x052c1e...4284a0`; ethereum `0x070b0d...791703`; ethereum `0x211d92...7ddfe2`; ethereum `0x3789f7...1db19b`; ethereum `0x4d2fe1...06b675`; ethereum `0x66ec6e...76460b`; ethereum `0x6b534c...9f5a63`; ethereum `0x716cbf...0690d3`; ethereum `0x811bfc...71e86d`; ethereum `0x81b318...91b2d2`; ethereum `0x92a833...87e821`; ethereum `0x9aa872...555377`; ethereum `0xa32eb7...e6fd32`; ethereum `0xcbdc0a...fabb98`; ethereum `0xe2617d...5ac946`; ethereum `0xe99ddf...02016a`; ethereum `0xf161d4...d2e37e`; ethereum `0xfce495...acd712`; manta `0x0f9bfa...c8936e`; manta `0xaa999e...8a4973`; manta `0xb7ed49...e2b512`; base `0x65fc52...c1d05a`; base `0x6c498f...9e4c8d`; base `0x795b70...eb92c7`; base `0xa32eb7...e6fd32`; base `0xf771a3...f2d8ac`; linea `0x04911a...3748ea`; linea `0x0f9bfa...c8936e`; linea `0x18cb9a...2e6c64`; linea `0x1e62b7...2982df`; linea `0x257194...32ab97`; linea `0x365b60...ee6cf6`; linea `0x47e821...dbbff5`; linea `0x522e72...8144c9`; linea `0x5418c5...ea9e1a`; linea `0x91c1df...976f72`; linea `0x9c50bb...ade367`; linea `0xa2c3a2...1ba8d8`; linea `0xaa999e...8a4973`; linea `0xb7ed49...e2b512`; linea `0xb95d26...43412e`; linea `0xdbea54...b22854`; linea `0xf1ab16...4ae975`; linea `0xfbc45e...0fa5d2`; berachain `0x19a397...f67e6a`; berachain `0x2e43bc...5b1e67`; berachain `0x4b752c...6dd2fe`; berachain `0x854138...69e0ad`; berachain `0x859c2c...7e84e8`; berachain `0xca428a...d32a23`; blast `0x0a8058...76e6a8`; blast `0x854138...69e0ad`; blast `0x859c2c...7e84e8` | ✅ Audited |
| DelegationAwareAToken | token | ethereum | 9 deployments: ethereum [`0x1f609c...720b36`](./contracts/ethereum-1/0x1f609c45559f29d0e6c6a1165dbf32efa2720b36/); ethereum `0x4fcb7f...871468`; ethereum `0xedcf6e...28b041`; manta `0xf49ee3...4fd82c`; linea `0x45420d...5a6e99`; linea `0x7af5f4...68bff4`; linea `0xa35538...674ec3`; linea `0xf49ee3...4fd82c`; blast `0xcc8a5b...fbbd26` | ✅ Audited |
| EmissionManager | operational_periphery | base | 12 deployments: ethereum `0x859c2c...7e84e8`; ethereum `0xbdd0f1...8d044b`; ethereum `0xf85090...73d86d`; manta `0x749df8...3abba5`; base [`0x0f9bfa...c8936e`](./contracts/base-8453/0x0f9bfa294be6e3ca8c39221bb5dfb88032c8936e/); linea `0x240f38...238c70`; linea `0x749df8...3abba5`; linea `0x8ccddb...cf5fd3`; linea `0xd59171...39ca56`; berachain `0xa754b2...f38588`; berachain `0xc34ba8...46f0d5`; blast `0xfd856e...f75fcf` | ✅ Audited |
| EModeLogic | unknown | berachain | 8 deployments: ethereum `0x78ad3d...a2a7a7`; manta `0x59423c...090e10`; base `0xb21781...23d0b8`; linea `0xb0b0b1...f452a2`; linea `0xe99380...385eb1`; berachain [`0x147fb1...880336`](./contracts/berachain-80094/0x147fb1c36f4e0a579c69a54522d4730567880336/); berachain `0x89fec3...5d1b7a`; blast `0x7fab93...605663` | ✅ Audited |
| ERC20Delegate | token | manta | [`0xcce714...f99b52`](./contracts/manta-169/0xcce7148e8fdfcd8645d072df1122d233dcf99b52/) | ✅ Audited |
| FlashLoanLogic | unknown | linea | 5 deployments: ethereum `0x86b07c...9db5a1`; base `0x91900e...f9ed85`; linea [`0x15785c...3bc66d`](./contracts/linea-59144/0x15785c5d383fa33339cf5d5720546c24313bc66d/); linea `0xa96045...321984`; berachain `0xf48ba4...cf6b7c` | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | berachain | 88 deployments: ethereum `0x14b0f7...37b638`; ethereum `0x1e7f2a...46f578`; ethereum `0x227f86...968275`; ethereum `0x27c170...19a690`; ethereum `0x3af8ba...c80fbc`; ethereum `0x4931da...e0dbec`; ethereum `0x6c7359...ce14fb`; ethereum `0xdaccf4...b6ccb7`; ethereum `0xe4fe2d...c17339`; manta `0x0684fc...fe9050`; manta `0x0ab214...c2d5ad`; manta `0x27c773...85d014`; manta `0x28d724...23f084`; manta `0x28f689...00b945`; manta `0x2e207e...4f081d`; manta `0x2f9bb7...c6b269`; manta `0x476f20...7a1817`; manta `0x508c39...e8f07a`; manta `0x607f42...453b06`; manta `0x759cb9...d9b0e7`; manta `0x7c2e57...814d16`; manta `0xa2703d...8133f6`; manta `0xb4ffef...9805f5`; manta `0xb5eef4...a181f1`; manta `0xb8e26f...a50b26`; manta `0xc1d9ca...38598b`; manta `0xcb2da0...5c6133`; manta `0xcc7b5f...cb6f00`; manta `0xd07e6a...4be024`; manta `0xe6b9b0...17cd1e`; manta `0xe7e54c...c5be48`; manta `0xf17218...616498`; manta `0xffa256...3beba4`; base `0x0a9de6...e52e2f`; base `0x1d32fd...d698b5`; base `0x2e1f66...efb74c`; base `0x316a44...ddd1c5`; base `0x3b225e...6c4802`; base `0x421b63...96fb6a`; base `0x6017b2...e6db5e`; base `0x80e898...198570`; base `0xb37519...8a3b7b`; base `0xcd18e7...63fcde`; base `0xe37b9d...960a47`; base `0xf71dad...ea2bf7`; base `0xfec889...af085c`; linea `0x607f42...453b06`; linea `0x7c2e57...814d16`; linea `0xb8e26f...a50b26`; linea `0xc1d9ca...38598b`; linea `0xe6b9b0...17cd1e`; berachain [`0x047db0...adf9d7`](./contracts/berachain-80094/0x047db0362fa8afc275417fb87ad4514ff6adf9d7/); berachain `0x0c0e63...96735b`; berachain `0x12ec8c...854757`; berachain `0x14a1ec...8a6789`; berachain `0x194e89...695773`; berachain `0x292f55...31b30b`; berachain `0x2e9ac4...d4693a`; berachain `0x2eaa29...9ec64a`; berachain `0x385867...773139`; berachain `0x4ff3fd...905dbb`; berachain `0x51c0a5...c42806`; berachain `0x574e5a...59c168`; berachain `0x5d3fb9...7b70cf`; berachain `0x621d21...3484b3`; berachain `0x62dc40...2d785e`; berachain `0x65adc9...e68b1f`; berachain `0x67321f...a07888`; berachain `0x6ad572...4ac9ba`; berachain `0x6c8362...002608`; berachain `0x7e29e4...28b3f7`; berachain `0x7e61e4...b77944`; berachain `0x802c1e...c37202`; berachain `0x8805ac...a8dbf9`; berachain `0x893dbf...3a4f75`; berachain `0x89befe...b39cd4`; berachain `0x8f2f7b...f32c99`; berachain `0x966473...e53cd3`; berachain `0xa494d5...8e1d31`; berachain `0xaece97...e6c039`; berachain `0xc8f4fe...25a2d3`; berachain `0xca19a7...4a5bb6`; berachain `0xca47be...90b52e`; berachain `0xcd6d03...dad6a4`; berachain `0xda41c1...2f3750`; berachain `0xe479d8...3ede8e`; berachain `0xe70e30...dda05c`; berachain `0xee9635...73e76b` | ✅ Audited |
| LiquidationLogic | unknown | linea | 8 deployments: ethereum `0xbe0ab6...5547d8`; manta `0x89fec3...5d1b7a`; base `0x86b07c...9db5a1`; linea [`0x7fab93...605663`](./contracts/linea-59144/0x7fab93af49ce663dbc2f94bc4def5c84d6605663/); linea `0xabe374...e1badf`; berachain `0x957afc...712c28`; berachain `0x9698fd...c13bc6`; blast `0xd85bbd...55f7e3` | ✅ Audited |
| LiquidationManager | governance | manta | [`0x317e6b...731acc`](./contracts/manta-169/0x317e6b6bca8862f514d1fa28488dcd9211731acc/) | ✅ Audited |
| PoolAddressesProvider | core_logic | ethereum | 12 deployments: ethereum [`0x17878a...abb857`](./contracts/ethereum-1/0x17878afdd5772f4ec93c265ac7ad8e2b29abb857/); ethereum `0xe3c3c5...ddff00`; ethereum `0xfd856e...f75fcf`; manta `0xc44827...d200eb`; base `0x5213ab...a31007`; linea `0xaf9ab0...dde595`; linea `0xc44827...d200eb`; linea `0xf38b16...4e15ed`; linea `0xf5196c...30969f`; berachain `0x33b13f...6cf1be`; berachain `0x817a4f...80aa26`; blast `0xb0811a...cf587b` | ✅ Audited |
| PoolAddressesProviderRegistry | registry | linea | 7 deployments: ethereum `0x504b99...c2cfd6`; ethereum `0x7503a8...5791eb`; manta `0xc3b6dd...56a74d`; linea [`0x5046c3...7f08cb`](./contracts/linea-59144/0x5046c3c0d7a362709df433d5431d64973c7f08cb/); linea `0x70ab77...e10dfa`; linea `0x7ab7bd...f4a9a9`; blast `0xbbaef3...eabdc7` | ✅ Audited |
| PoolConfigurator | core_logic | ethereum | 13 deployments: ethereum [`0x09edc8...d68b5f`](./contracts/ethereum-1/0x09edc8f101897aa693932c1966725e05d6d68b5f/); ethereum `0x97672c...eecbbb`; ethereum `0x9c6f13...c96ca6`; manta `0x78ad3d...a2a7a7`; base `0x749df8...3abba5`; base `0xb40e21...e4e6e3`; linea `0x78ad3d...a2a7a7`; linea `0xd47cf0...8066e9`; linea `0xf17218...616498`; berachain `0x148c5e...eeeec9`; berachain `0x2acc2b...48732b`; blast `0x22d3cd...efcda1`; blast `0x844bd3...e35fb4` | ✅ Audited |
| PoolLogic | core_logic | blast | 8 deployments: ethereum `0xb21781...23d0b8`; manta `0xc6df4d...a08c10`; base `0xff679e...579385`; linea `0x5148c3...5d1f33`; linea `0x9698fd...c13bc6`; berachain `0x4c692e...4b84ac`; berachain `0xb0811a...cf587b`; blast [`0x15785c...3bc66d`](./contracts/blast-81457/0x15785c5d383fa33339cf5d5720546c24313bc66d/) | ✅ Audited |
| RewardsController | governance | linea | 22 deployments: ethereum `0x355a9b...e1309c`; ethereum `0x5be89b...5a73a2`; ethereum `0x854138...69e0ad`; ethereum `0xae1509...7e36dd`; ethereum `0xbc2fdc...98725b`; manta `0x6e9d0c...0ca947`; base `0x73a7a4...082cae`; base `0xaa999e...8a4973`; linea [`0x28f689...00b945`](./contracts/linea-59144/0x28f6899ff643261ca9766ddc251b359a2d00b945/); linea `0x35ad7e...b0e02f`; linea `0x5c40f3...99689d`; linea `0x6e9d0c...0ca947`; linea `0x887eb2...9aba79`; linea `0x897e43...300470`; linea `0xd98541...ff95ef`; linea `0xdaaa6b...b7d7f8`; linea `0xe819a5...30f214`; berachain `0xacd46d...dd8402`; berachain `0xb3f2b6...607c83`; berachain `0xc58715...3e8011`; blast `0x94dc19...5e4012`; blast `0xb47d41...97e603` | ✅ Audited |
| SupplyLogic | unknown | manta | 8 deployments: ethereum `0x4db095...381fdc`; manta [`0x15785c...3bc66d`](./contracts/manta-169/0x15785c5d383fa33339cf5d5720546c24313bc66d/); base `0x3365d8...7b9f9d`; linea `0x5e35d9...9bb0ef`; linea `0x7a9073...2dfcbc`; berachain `0x58b628...13034f`; berachain `0x9660b3...6262ee`; blast `0x5046c3...7f08cb` | ✅ Audited |
| Timelock | governance | linea | 4 deployments: base `0xf817cb...61464f`; linea [`0x1a9942...5520a4`](./contracts/linea-59144/0x1a9942b9eca8ec175261fd0f60a71ae4745520a4/); linea `0x4d580f...4f6fd7`; linea `0x661f2b...a225c6` | ✅ Audited |
| UiIncentiveDataProviderV3 | unknown | ethereum | 11 deployments: ethereum [`0x0a1198...ee100b`](./contracts/ethereum-1/0x0a1198ddb5247a283f76077bb1e45e5858ee100b/); manta `0x81b318...91b2d2`; base `0xa1e6bc...2b4e0d`; base `0xd1225c...969001`; linea `0x94e637...3ab649`; linea `0xbbb913...292df2`; linea `0xbbe954...8a5af8`; linea `0xcbdc0a...fabb98`; berachain `0x42cd51...64bc2c`; berachain `0x5d50be...d7171c`; blast `0x66f301...68dd5b` | ✅ Audited |
| UiPoolDataProviderV3 | core_logic | base | 15 deployments: ethereum `0x3f5dbe...de724b`; ethereum `0x457f4b...638d1e`; ethereum `0x8878ee...10d759`; ethereum `0xa6ea08...68ef01`; manta `0xa32eb7...e6fd32`; base [`0x0a1198...ee100b`](./contracts/base-8453/0x0a1198ddb5247a283f76077bb1e45e5858ee100b/); base `0xbe76e0...fe1fe4`; linea `0x19dd9e...fdd826`; linea `0x81b318...91b2d2`; linea `0xa16057...5cca45`; linea `0xd56ef7...4e7a2b`; linea `0xe94e70...dbbac5`; berachain `0xb518f4...1f8be4`; berachain `0xe05361...09d69e`; blast `0xe230cf...520ba7` | ✅ Audited |
| VariableDebtToken | token | ethereum | 24 deployments: ethereum [`0x0047ca...ab3b47`](./contracts/ethereum-1/0x0047cac82cf5fb36954de1b9d86d657915ab3b47/); ethereum `0x53c94f...d4a11e`; ethereum `0x5a2d1f...a13085`; ethereum `0x5d50be...d7171c`; ethereum `0x7b9d0d...bbff11`; ethereum `0x7ef98c...da1941`; manta `0x0a8058...76e6a8`; base `0x5e4043...3d08ee`; base `0x98ef76...8d3400`; base `0xa39739...419c38`; base `0xcbdc0a...fabb98`; linea `0x0a8058...76e6a8`; linea `0x4667f5...4c3afe`; linea `0x476f20...7a1817`; linea `0x77b42a...5af939`; linea `0xa2703d...8133f6`; linea `0xb0fba9...8b1997`; linea `0xcb2da0...5c6133`; berachain `0x48a498...4f6dd5`; berachain `0x4b0a70...8a5bcb`; berachain `0xe208b8...f62454`; blast `0x0e914b...4f91d1`; blast `0x29c2bc...03c8cd`; blast `0xd2a2a5...0aabb8` | ✅ Audited |
| Vault | core_logic | base | [`0xd4cd16...cbbaac`](./contracts/base-8453/0xd4cd16f8470ad3d72d06e344f2997d9e59cbbaac/) | ✅ Audited |
| WalletBalanceProvider | unknown | ethereum | 13 deployments: ethereum [`0x09a59f...136521`](./contracts/ethereum-1/0x09a59f55b6268d635cbaf26df41c0593fb136521/); ethereum `0x8f3715...709c27`; ethereum `0xa1e6bc...2b4e0d`; manta `0xcbdc0a...fabb98`; base `0x6ea9d9...5d38b4`; linea `0x379714...a6d593`; linea `0xa770af...276752`; linea `0xc766f9...81a690`; linea `0xe05361...09d69e`; linea `0xe1a4e2...98e826`; berachain `0x7f2642...01777d`; berachain `0xc77518...0f5f37`; blast `0x4fcb7f...871468` | ✅ Audited |
| WrappedLendingCollateral | core_logic | manta | [`0x9d5054...2fb787`](./contracts/manta-169/0x9d505479e3d2abcefd1f8317d213d2c3792fb787/) | ✅ Audited |

### ⚠️ Verified + Unaudited (348)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MintableERC20 | token | ethereum | 3 deployments: ethereum [`0x2f913c...b20b19`](./contracts/ethereum-1/0x2f913c820ed3beb3a67391a6eff64e70c4b20b19/); linea `0x5ffce6...1c868c`; linea `0xe4d584...0705f7` | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x657e8c...88c642`](./contracts/ethereum-1/0x657e8c867d8b37dcc18fa4caead9c45eb088c642/) | ⚠️ Unaudited |
| XERC20 | token | linea | 2 deployments: linea [`0x241609...cceea5`](./contracts/linea-59144/0x2416092f143378750bb29b79ed961ab195cceea5/); linea `0x5a7a18...b1d76d` | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | [`0x8c9532...3e9811`](./contracts/ethereum-1/0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| EVault | core_logic | linea | 11 deployments: ethereum `0x1ab9e9...b803c5`; ethereum `0xc364fd...e900ef`; ethereum `0xc42d33...b57e8a`; linea [`0x085f80...65e852`](./contracts/linea-59144/0x085f80df643307e04f23281f6fdbfaa13865e852/); linea `0x14efcc...0beada`; berachain `0x112b77...4e00a1`; berachain `0x1b33d2...1d5fb1`; berachain `0x2247b6...3a28db`; berachain `0x28c96c...261b5a`; berachain `0x2bf927...e0b38a`; berachain `0x401c46...3f54cf` | ⚠️ Unaudited |
| LinkToken | token | base | 3 deployments: base [`0x880387...714f1e`](./contracts/base-8453/0x88038752750d7717a19f2a681ef75e65fb714f1e/); base `0x88fb15...c6e196`; linea `0xa18152...9c95e9` | ⚠️ Unaudited |
| RsETHTokenWrapper | token | linea | [`0xd26711...101e6c`](./contracts/linea-59144/0xd2671165570f41bbb3b0097893300b6eb6101e6c/) | ⚠️ Unaudited |
| PumpTokenOFT | token | base | [`0xf469fb...0a012e`](./contracts/base-8453/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | ⚠️ Unaudited |
| EditableERC20 | token | linea | 2 deployments: linea [`0xbf1aea...b087ae`](./contracts/linea-59144/0xbf1aea8670d2528e08334083616dd9c5f3b087ae/); linea `0xf3b001...4ce12a` | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | 3 deployments: ethereum [`0x332a8e...d3dcd6`](./contracts/ethereum-1/0x332a8ee60edff0a11cf3994b1b846bbc27d3dcd6/); ethereum `0x7baf25...d4098f`; ethereum `0xb997b3...1509a0` | ⚠️ Unaudited |
| OETHBaseVault | core_logic | base | 2 deployments: base [`0x98a0cb...38cc93`](./contracts/base-8453/0x98a0cbef61bd2d21435f433be4cd42b56b38cc93/); base `0xfdbe6a...7393e8` | ⚠️ Unaudited |
| GravitaDebtToken | token | linea | [`0x894134...cb9487`](./contracts/linea-59144/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | linea | 3 deployments: linea [`0x0a3137...b7bdfa`](./contracts/linea-59144/0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa/); linea `0x5bd5b4...5c92ee`; linea `0x88f720...7b290c` | ⚠️ Unaudited |
| ActivePool | core_logic | linea | 7 deployments: linea [`0x0d2c4a...cb2a09`](./contracts/linea-59144/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/); linea `0x24ae02...8b09e7`; linea `0x4f39f1...0356a6`; linea `0x6f23ce...919f96`; linea `0x89f1ec...070351`; linea `0xc818f8...0af15c`; linea `0xf31d88...1d18ce` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | linea | [`0xecc68d...38ac7d`](./contracts/linea-59144/0xecc68d0451e20292406967fe7c04280e5238ac7d/) | ⚠️ Unaudited |
| stableQiVault | core_logic | linea | 4 deployments: linea [`0x60d133...83b733`](./contracts/linea-59144/0x60d133c666919b54a3254e0d3f14332cb783b733/); linea `0x759d0e...07a43d`; linea `0x7f9dd9...9a7a70`; linea `0x8ab01c...626599` | ⚠️ Unaudited |
| StakedUSDeOFT | token | linea | [`0x211cc4...5fe5d2`](./contracts/linea-59144/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TransferStrategySimple | core_logic | ethereum | 7 deployments: ethereum [`0x14b2a1...7ab1d8`](./contracts/ethereum-1/0x14b2a1d1a501f8f3ec7d728762a3bf9db57ab1d8/); ethereum `0x56a386...d659cd`; ethereum `0x843305...666624`; base `0xf7dc74...34bf9f`; linea `0x5196be...e942b0`; linea `0x67c78e...791017`; linea `0xf247ec...bc636d` | ⚠️ Unaudited |
| RewardToken | token | linea | 3 deployments: linea [`0x5ffec9...4226f4`](./contracts/linea-59144/0x5ffec9bf14016420cdf073a3007f92a9764226f4/); linea `0xf3573f...9959ec`; berachain `0xe35e2d...2c5a6e` | ⚠️ Unaudited |
| TransferStrategyZERO | core_logic | blast | 6 deployments: linea `0x3a52bc...5c4735`; linea `0x655353...b4cf28`; linea `0xa57c9e...dbaaf9`; linea `0xd6c4e2...810006`; blast [`0x0ec998...af81e2`](./contracts/blast-81457/0x0ec9982ab50c43d001d5fb93e72ac7ccb0af81e2/); blast `0xc1c342...e7708d` | ⚠️ Unaudited |
| DefaultPool | core_logic | linea | 3 deployments: linea [`0x07b031...3da47d`](./contracts/linea-59144/0x07b031686d0f513337765982422a0cec2f3da47d/); linea `0x57a195...cd23cc`; linea `0x6adaa3...4046ca` | ⚠️ Unaudited |
| USDzVault | core_logic | base | 2 deployments: base [`0xa87c98...1f6f4d`](./contracts/base-8453/0xa87c9808c0ebe20a1427b5c769623c77201f6f4d/); base `0xc34292...3eb526` | ⚠️ Unaudited |
| LockerToken | token | blast | 56 deployments: base `0x0b01d6...eeabc9`; base `0x1362a7...5243c7`; base `0x2125bd...6b92f9`; base `0x27e28c...f469bf`; base `0x475f19...5244e0`; base `0x5f4250...fae7e6`; base `0x6847b2...013677`; base `0x72a8ea...fd6802`; base `0x7eddcb...f073d2`; base `0x88afd3...624b01`; base `0xc16223...201fd2`; base `0xc6d457...7343af`; base `0xc99976...f7d675`; base `0xce5fa5...c911d5`; base `0xdae7cd...6ae2c0`; base `0xdb1a47...54f6e4`; base `0xdc3bf4...906d9f`; linea `0x01475c...1c10e7`; linea `0x08d5fe...ee02f8`; linea `0x120b80...bbfb40`; linea `0x122963...a887ce`; linea `0x125e77...e5b5fe`; linea `0x143e8e...eb9ca9`; linea `0x1b26a6...9b27c6`; linea `0x1ee53b...7739e9`; linea `0x23dc14...fce2cf`; linea `0x281c46...270f0f`; linea `0x2bdfdd...010e53`; linea `0x2e9d26...3d25b6`; linea `0x31671b...15a872`; linea `0x3fafa5...83e16a`; linea `0x4e2e09...3d7916`; linea `0x5906d0...efa5c4`; linea `0x6076f4...895a7d`; linea `0x691ca5...2bb645`; linea `0x697cc2...ba1ffb`; linea `0x6d0fd4...eb5d8e`; linea `0x70f448...434b7b`; linea `0x80f8e8...86706a`; linea `0x9d33e9...864a41`; linea `0xa81ef4...630073`; linea `0xb902d1...19ca5f`; linea `0xc31582...52b6da`; linea `0xc64bac...4c7075`; linea `0xe18d7a...3e8941`; linea `0xe4d14f...72626b`; linea `0xebe090...15fe0e`; linea `0xf2511a...aeea39`; linea `0xf361c1...3d5214`; linea `0xf46c11...10b177`; linea `0xff5b19...74e696`; linea `0xff7e0b...6d60c9`; blast [`0x010b57...07a5dc`](./contracts/blast-81457/0x010b575ee38d2235940e961a951c618a9907a5dc/); blast `0x42c172...ad7cb4`; blast `0xa8e2f7...fabb89`; blast `0xf7dc74...34bf9f` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | berachain | 10 deployments: ethereum `0x298ecd...22e287`; ethereum `0x31063f...68a611`; ethereum `0x47223d...fadfcf`; manta `0x67f93d...28ad15`; base `0xa754b2...f38588`; linea `0x67f93d...28ad15`; linea `0x9afb91...36e173`; linea `0xee9ec6...ba5bb0`; berachain [`0x26416e...deb74f`](./contracts/berachain-80094/0x26416e170adb35b0d23800602cf98853dbdeb74f/); blast `0xc6df4d...a08c10` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | base | 115 deployments: base [`0x00be87...bd552a`](./contracts/base-8453/0x00be872906c07d6d7d0ec3968b99c4e3d6bd552a/); base `0x038fa5...97c4b6`; base `0x04030d...0d7ded`; base `0x04d3d7...ee3bdd`; base `0x05acfe...ce42f2`; base `0x08f965...50c219`; base `0x0ee714...95a4aa`; base `0x1564df...d9f5ec`; base `0x16f542...d602fd`; base `0x19e682...514dc8`; base `0x21b1e4...0abe59`; base `0x233a45...b4e3d2`; base `0x23e47a...edd226`; base `0x290b97...71352b`; base `0x29a0bf...4796c0`; base `0x2c3321...faca44`; base `0x330ec3...033af3`; base `0x33cdd3...776bc1`; base `0x3c6490...392642`; base `0x43f92e...baa261`; base `0x45867e...c6f8da`; base `0x484cc2...e68744`; base `0x4a61db...46f850`; base `0x4c8348...4a5d95`; base `0x4d1d92...0aad68`; base `0x52a12e...377b95`; base `0x52d743...355a00`; base `0x55012e...cc998d`; base `0x57d2d4...447077`; base `0x5d427e...59c4c5`; base `0x61140c...1cae95`; base `0x6228a4...536b9a`; base `0x63a3b4...323b3c`; base `0x6f22c6...d684b8`; base `0x6f9829...d6bc04`; base `0x728bbc...f6cca6`; base `0x72fc79...c6909a`; base `0x735326...a6250d`; base `0x74f70d...496a01`; base `0x777936...b76c55`; base `0x79b0e8...553482`; base `0x801b6e...d1da99`; base `0x834ce4...4b8920`; base `0x84eff9...5d7ca6`; base `0x851a36...781805`; base `0x852ae0...976ca8`; base `0x8eda55...ba8c19`; base `0x918988...3fa30c`; base `0x9eb524...bff34c`; base `0xa1923f...c39f4d`; base `0xa24aaf...f494d2`; base `0xa33eab...60486f`; base `0xa5925a...e47526`; base `0xa9bdec...35e7f1`; base `0xaa1399...7d1523`; base `0xad2581...1b6f3e`; base `0xae4602...564a3d`; base `0xb5882f...809ccf`; base `0xb76eec...ee9e3d`; base `0xb9b743...b4a2a4`; base `0xbbdcbc...f145f5`; base `0xbf477e...7e88e3`; base `0xc18cc9...56d4b9`; base `0xc2b36e...bc057b`; base `0xc73b76...c27826`; base `0xc95cd3...88c482`; base `0xca3177...1739b0`; base `0xcad16d...dc216c`; base `0xd0407a...b2c3b4`; base `0xd27766...61828a`; base `0xdc2d2f...b12844`; base `0xe18672...66a8b5`; base `0xea990b...d222c3`; base `0xec509c...db500f`; base `0xf2d85e...dbdfdd`; base `0xf3764b...675c9a`; linea `0x063516...f064f8`; linea `0x11c47e...04cdf0`; linea `0x1bd1d8...512ba6`; linea `0x1e5777...95404b`; linea `0x279dbd...d8c7ef`; linea `0x2884f3...bb548b`; linea `0x2c30e9...d3a0a8`; linea `0x32a743...3aead4`; linea `0x347c78...3dbc82`; linea `0x391f84...6bc278`; linea `0x441351...2f6018`; linea `0x462f8e...34b380`; linea `0x50c7d9...bd5359`; linea `0x5852e7...e43489`; linea `0x67f8f3...ebc422`; linea `0x6ca398...96c32d`; linea `0x700e61...051fb1`; linea `0x7396a3...1ee94f`; linea `0x746fbd...3e2ecb`; linea `0x82b6a7...14f8c0`; linea `0x854d46...b9ad4e`; linea `0x90946f...c17562`; linea `0x917cab...eea2d5`; linea `0x92b4b8...323263`; linea `0xa6f728...82f9ff`; linea `0xa872f1...35b82d`; linea `0xa901c5...f86ed3`; linea `0xc93766...62ddf8`; linea `0xca3d6b...09157e`; linea `0xd3cdbd...a51e54`; linea `0xd691e4...233319`; linea `0xd71cd2...5647cc`; linea `0xd7bfed...dda4f6`; linea `0xda7ed0...32ee2a`; linea `0xde28ba...098435`; linea `0xe6ebca...535093`; linea `0xe77542...0d8fb3`; linea `0xfb27a9...4aed8a`; linea `0xfcc63c...263fbe` | ⚠️ Unaudited |
| ACLManagerEnumerable | governance | base | 4 deployments: base [`0x26e429...280ee4`](./contracts/base-8453/0x26e429ca67f0d6e0cd0ad34b7002f9daa9280ee4/); base `0xe33e9f...3878a9`; berachain `0x3365d8...7b9f9d`; berachain `0xab11e3...2d87ff` | ⚠️ Unaudited |
| AdminContract | governance | linea | 4 deployments: linea [`0xc8a25e...53a9f8`](./contracts/linea-59144/0xc8a25ea0cbd92a6f787aeed8387e04559053a9f8/); linea `0xcfcd25...77a1d8`; linea `0xdb5dac...ce0977`; linea `0xe38a8e...7ad637` | ⚠️ Unaudited |
| Aero | token | base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromeLPOracle | operational_periphery | base | 10 deployments: base [`0x15c3ee...35a6cd`](./contracts/base-8453/0x15c3ee18221592de846014f9ad574fbc4c35a6cd/); base `0x187ba1...94504e`; base `0x297f89...de1bcf`; base `0x2cd50f...dfd377`; base `0x44263a...ea3b01`; base `0x90ce34...ceaecc`; base `0xb2140c...2b5b4c`; base `0xc9c0f9...227984`; base `0xd2c52d...da06a0`; base `0xefcc86...ce47ad` | ⚠️ Unaudited |
| AEROUSDC_vAMM_Oracle | operational_periphery | base | 4 deployments: base [`0x195e99...5dccb9`](./contracts/base-8453/0x195e9907efb240938099bb88f66f15ad6b5dccb9/); base `0x97bcd5...275b46`; base `0xafe9b5...72a616`; base `0xc1d36f...013dc6` | ⚠️ Unaudited |
| AEROUSDCvAMMOracle | operational_periphery | base | [`0xbf8216...5bdcfb`](./contracts/base-8453/0xbf8216841b3c3032381bd3f7233895fe3b5bdcfb/) | ⚠️ Unaudited |
| AgentLaunchpad | unknown | base | 2 deployments: base [`0x1fd19c...69d9ee`](./contracts/base-8453/0x1fd19c91fcd2cbe58500bac80017c791a669d9ee/); base `0x543ba2...6acbfc` | ⚠️ Unaudited |
| AIP2ProposalPayload | unknown | ethereum | [`0x4b7c3e...eb8eb5`](./contracts/ethereum-1/0x4b7c3e3ea48f80a78487067cd08b9a8430eb8eb5/) | ⚠️ Unaudited |
| AIP3ProposalPayload | unknown | ethereum | [`0x3f0cfa...5bf9d1`](./contracts/ethereum-1/0x3f0cfa3cad621c3651faf9de014489e20e5bf9d1/) | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| AirdropRewarder | operational_periphery | linea | 12 deployments: linea [`0x085a03...451cf2`](./contracts/linea-59144/0x085a03f96bc203c54a3a711c838ad49fff451cf2/); linea `0x5426a0...77abdf`; linea `0x569982...f3035f`; linea `0x57635d...87f354`; linea `0x580fa8...9a96b4`; linea `0x7107d1...e7c867`; linea `0x7b9d0d...bbff11`; linea `0x89db0a...671ccb`; linea `0x90aa23...5b055c`; linea `0x9667aa...ba6451`; linea `0xaf63cc...018c8f`; linea `0xd4cc7d...0ae243` | ⚠️ Unaudited |
| AirdropRewarderS2 | operational_periphery | linea | 8 deployments: linea [`0x55553e...beaf03`](./contracts/linea-59144/0x55553e2381f6ff121dc9252dab662f3d2bbeaf03/); linea `0x59235f...cc42b8`; linea `0x841e9e...d71650`; linea `0x8ecd83...730619`; linea `0x96682c...2d7df3`; linea `0xa681a6...7a55f4`; linea `0xaea64e...9f62e5`; linea `0xedac99...f15293` | ⚠️ Unaudited |
| AnzenGenericOFTAdapter | adapter | base | [`0xdfdc54...877c88`](./contracts/base-8453/0xdfdc54f14a4783fe8e8ef7de7159744725877c88/) | ⚠️ Unaudited |
| Api3AggregatorETH | unknown | linea | 3 deployments: linea [`0x102ba7...358909`](./contracts/linea-59144/0x102ba7a2b0d6423659e6d2a6f7c387da53358909/); linea `0x12e9da...cbfab3`; linea `0x86c1c9...14413c` | ⚠️ Unaudited |
| API3ConsumerExchRate | unknown | linea | [`0x093066...8cf411`](./contracts/linea-59144/0x0930665cb598e8868a9492e66453bb0ca18cf411/) | ⚠️ Unaudited |
| Api3Oracle | operational_periphery | linea | 2 deployments: linea [`0x536821...30d3f4`](./contracts/linea-59144/0x5368218848a4b5412dae4e6a4bd07a372a30d3f4/); linea `0xb6b41a...04e420` | ⚠️ Unaudited |
| ArbAdapter | adapter | ethereum | 4 deployments: ethereum [`0x1726c1...4d806c`](./contracts/ethereum-1/0x1726c13fb9d89abad27787480ae597b3df4d806c/); ethereum `0x5e06b1...e02922`; ethereum `0x88d6d0...755883`; ethereum `0xe2a334...ed0e3c` | ⚠️ Unaudited |
| ARM | unknown | base | [`0x38660c...5cce5f`](./contracts/base-8453/0x38660c8cc222c0192b635c2ac09687b4f25cce5f/) | ⚠️ Unaudited |
| ARMProxy | unknown | base | [`0xc842c6...3dd3e8`](./contracts/base-8453/0xc842c69d54f83170c42c4d556b4f6b2ca53dd3e8/) | ⚠️ Unaudited |
| AssetRouter | adapter | ethereum | 3 deployments: ethereum [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/); ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| ATokenWithDelegation | token | ethereum | 4 deployments: ethereum [`0x366ae3...f20593`](./contracts/ethereum-1/0x366ae337897223aea70e3ebe1862219386f20593/); ethereum `0x6accc1...d51238`; ethereum `0xc383aa...f1e626`; ethereum `0xee96b7...7034a1` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | ⚠️ Unaudited |
| BalancesUIHelper | periphery | base | [`0x945705...d92295`](./contracts/base-8453/0x94570514bb6153e1a70398188120cb5f30d92295/) | ⚠️ Unaudited |
| BaseBridgeHelperModule | operational_periphery | base | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | ⚠️ Unaudited |
| BeaconProxy | registry | linea | [`0x9ac2f0...2abb1f`](./contracts/linea-59144/0x9ac2f0a564b7396a8692e1558d23a12d5a2abb1f/) | ⚠️ Unaudited |
| BlastLogic | unknown | blast | [`0x1615ea...f5b1d8`](./contracts/blast-81457/0x1615ea4be9a29b62e59b58d02b7549d954f5b1d8/) | ⚠️ Unaudited |
| BlastPoints | unknown | blast | [`0x81b318...91b2d2`](./contracts/blast-81457/0x81b3184a3b5d4612f2c26a53da8d99474b91b2d2/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | manta | 5 deployments: manta [`0x0ae3a8...4cd117`](./contracts/manta-169/0x0ae3a8bb8300fbb1e3c53975fc83576b324cd117/); linea `0x40e0e2...d45c20`; linea `0x7719cb...fd9b2b`; linea `0xaa0987...2bb654`; linea `0xc49b73...c631d0` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | ⚠️ Unaudited |
| BridgedWOETH | operational_periphery | base | 2 deployments: base [`0xd87243...bbf839`](./contracts/base-8453/0xd8724322f44e5c58d7a815f542036fb17dbbf839/); base `0xf66886...440270` | ⚠️ Unaudited |
| BridgedWOETHStrategy | operational_periphery | base | 2 deployments: base [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/); base `0x8af48a...95123b` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/); ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | base | 42 deployments: base [`0x03f255...cafc38`](./contracts/base-8453/0x03f255a5a8040efb81f7b7d77cddb8d2c9cafc38/); base `0x0786b7...5ee86a`; base `0x0a995a...b7ac72`; base `0x0db8a9...4152a0`; base `0x0f0f71...dbd917`; base `0x1568a4...11f4ff`; base `0x162a6d...7b8e00`; base `0x194173...070c75`; base `0x19ef16...ef6d16`; base `0x1c9ee1...f3c107`; base `0x1e89f9...b8bb94`; base `0x227400...a5a9da`; base `0x25fad4...bdcd93`; base `0x34bc9b...d0475e`; base `0x3640a6...7bf8ed`; base `0x3b01cb...4ee6b8`; base `0x419cbf...039228`; base `0x5e3eb9...ca8f31`; base `0x5f8b0b...347989`; base `0x6ba211...8048e9`; base `0x7c7b15...82bcba`; base `0x88c053...ab9def`; base `0x8cce61...f69e69`; base `0x9118c2...6f7372`; base `0x919d98...032f2c`; base `0x926f1b...acda96`; base `0xa2d1bc...d454f1`; base `0xa84a33...05ac4c`; base `0xa8619f...1fe0bd`; base `0xac9b7f...cd5a71`; base `0xb5e347...cd4545`; base `0xbb9c6a...178258`; base `0xbd0800...ef77fa`; base `0xc253cb...dd06b6`; base `0xc3c6c1...5d1cca`; base `0xd0c34c...a8bd4e`; base `0xd21662...6aad64`; base `0xd54fe6...518eb7`; base `0xda5aa6...b13b6f`; base `0xe0f53a...a3b52e`; base `0xe6d469...3bbefa`; base `0xedfd76...d2e811` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | base | 56 deployments: base [`0x13d579...bb036f`](./contracts/base-8453/0x13d579664baab9adcc4c6b19956f7b7eadbb036f/); base `0x154d09...0ce034`; base `0x1766bc...14c5dc`; base `0x1cb5a9...8f0b00`; base `0x1cee35...447b57`; base `0x1e88d6...ac6cc0`; base `0x206e9a...3cbb95`; base `0x288b9b...5afbb0`; base `0x2f6f66...a8074f`; base `0x335cad...44ef34`; base `0x3ea696...73019e`; base `0x3efd83...1b77a8`; base `0x43fadc...f1c309`; base `0x4d87cb...36ea4c`; base `0x53cf4d...ead7ee`; base `0x580017...072fcb`; base `0x5c7509...7a09cf`; base `0x5f49e3...25e121`; base `0x644741...8209e0`; base `0x69797e...047346`; base `0x6f82c3...ce22a4`; base `0x7159e9...fa095d`; base `0x71aafd...a54729`; base `0x797c54...80fa74`; base `0x7deafd...7f5052`; base `0x8aa508...7206c6`; base `0x8fd488...a142af`; base `0x906124...d86a8e`; base `0x935b22...a5b383`; base `0x9c764e...afe5db`; base `0x9d5665...d614b2`; base `0xa12f40...7b32b3`; base `0xa2302b...a8c110`; base `0xa68899...83bc21`; base `0xa77ca3...75490f`; base `0xa9b679...695495`; base `0xaa0f88...c6aab4`; base `0xafc7e9...8128e1`; base `0xb90079...acd54d`; base `0xb96ae0...e74115`; base `0xbee038...ddb1ce`; base `0xbfcff6...2adc44`; base `0xc45f54...3c9e7b`; base `0xc6ed8b...9ccfde`; base `0xcaf4e8...01b943`; base `0xd206eb...a07d6b`; base `0xded11e...c38997`; base `0xdfeaa4...ed9dee`; base `0xe19723...2fcfec`; base `0xe45e35...83ceef`; base `0xe8e17c...7279b8`; base `0xee9ea9...36e7ea`; base `0xf0247d...b69f69`; base `0xf3fbba...e685f7`; base `0xfe8671...735a43`; base `0xffa859...6c4fce` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | base | [`0x20dd6b...4041a7`](./contracts/base-8453/0x20dd6b66e0453b5f3c7cb2fd008370cac24041a7/) | ⚠️ Unaudited |
| CBaseAdapter | adapter | ethereum | 3 deployments: ethereum [`0x124a93...aa108d`](./contracts/ethereum-1/0x124a93c62db29c2ef68b79f1709fe377feaa108d/); ethereum `0xa5948b...3d58a0`; ethereum `0xeb4422...0fb936` | ⚠️ Unaudited |
| CbEthSynchronicityPriceAdapter | operational_periphery | ethereum | 2 deployments: ethereum [`0x7ae293...09332c`](./contracts/ethereum-1/0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c/); ethereum `0xd0f0bc...571fea` | ⚠️ Unaudited |
| CCIPAdapter | adapter | ethereum | 4 deployments: ethereum [`0x382994...bf90ba`](./contracts/ethereum-1/0x3829943c53f2d00e20b58475af19716724bf90ba/); ethereum `0xb7a661...f3ef29`; ethereum `0xc2422e...df53df`; ethereum `0xdb8953...8719d5` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | base | 2 deployments: base [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/); base `0xcf791f...902542` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | base | [`0xe31ee1...cbf0cf`](./contracts/base-8453/0xe31ee12bdfdd0573d634124611e85338e2cbf0cf/) | ⚠️ Unaudited |
| ChildUSDz | unknown | base | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ⚠️ Unaudited |
| CLAdapter | adapter | ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | ⚠️ Unaudited |
| ClaimBribesSafeModule | operational_periphery | base | 5 deployments: base [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/); base `0x5bd738...0d2c98`; base `0x60d3d6...178893`; base `0xe16448...46b46f`; base `0xe58b21...7c08b0` | ⚠️ Unaudited |
| CLrETHSynchronicityPriceAdapter | operational_periphery | ethereum | [`0x05225c...e99d56`](./contracts/ethereum-1/0x05225cd708bca9253789c1374e4337a019e99d56/) | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | operational_periphery | ethereum | 2 deployments: ethereum [`0x230e03...1fe56f`](./contracts/ethereum-1/0x230e0321cf38f09e247e50afc7801ea2351fe56f/); ethereum `0xfd858c...392247` | ⚠️ Unaudited |
| CLwstETHSynchronicityPriceAdapter | operational_periphery | ethereum | 2 deployments: ethereum [`0x981ab5...1b8774`](./contracts/ethereum-1/0x981ab570ac289938f296b975c524b66fbf1b8774/); ethereum `0xa9f30e...cebb45` | ⚠️ Unaudited |
| Collector | unknown | ethereum | [`0x80f2c0...dd5439`](./contracts/ethereum-1/0x80f2c02224a2e548fc67c0bf705ebfa825dd5439/) | ⚠️ Unaudited |
| CollectorWithCustomImpl | unknown | ethereum | [`0x464c71...d6e18c`](./contracts/ethereum-1/0x464c71f6c2f760dda6093dcb91c24c39e5d6e18c/) | ⚠️ Unaudited |
| CommitStore | unknown | base | 46 deployments: base [`0x01b21f...2cc42e`](./contracts/base-8453/0x01b21f0351638b309678c289fe112787882cc42e/); base `0x0753da...33aac3`; base `0x0ae3c2...ca4f77`; base `0x16f72c...3724e4`; base `0x174e3c...2c3472`; base `0x17891f...56039f`; base `0x1ccd0d...675c3c`; base `0x229890...961292`; base `0x275db6...a8c053`; base `0x282741...411fc2`; base `0x2d3fc7...fee2f1`; base `0x327e13...357916`; base `0x36b3ea...bc95cf`; base `0x398d21...41612e`; base `0x3d4d67...cc8a9c`; base `0x452750...59c1f5`; base `0x4cdca7...f409ea`; base `0x52b5b4...31ccb8`; base `0x565f70...ccdf3b`; base `0x575f92...67878f`; base `0x5f2ce9...41d411`; base `0x672dbd...5f33c9`; base `0x69a2f5...4aa9bc`; base `0x6fbe67...cc4d98`; base `0x700c67...98b5dd`; base `0x725f05...1010a4`; base `0x7acda4...5b50e9`; base `0x862642...356f20`; base `0x87e77c...3bf6e1`; base `0x932d6d...56d837`; base `0x96fc2d...89a1d9`; base `0x98f3dd...2625ce`; base `0x9ae736...b512b7`; base `0x9d5522...598326`; base `0xa8fa8a...0036cb`; base `0xaedbe5...b78363`; base `0xb40659...58ce0b`; base `0xb71961...67af9f`; base `0xc4a8b1...dd62a4`; base `0xccb222...ef839a`; base `0xcff74c...347985`; base `0xd0b13b...14f562`; base `0xdd2f2f...56b75b`; base `0xde480a...02f2d7`; base `0xf97127...9f72b0`; base `0xfb35d3...26be78` | ⚠️ Unaudited |
| Consortium | unknown | ethereum | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | ⚠️ Unaudited |
| Create2Factory | registry | linea | [`0x317e6b...731acc`](./contracts/linea-59144/0x317e6b6bca8862f514d1fa28488dcd9211731acc/) | ⚠️ Unaudited |
| CrossChainController | governance | ethereum | 3 deployments: ethereum [`0x0bf5bb...da68f1`](./contracts/ethereum-1/0x0bf5bbfae7808d329e0ba8277e0b746bbfda68f1/); ethereum `0x27b849...c3bfac`; ethereum `0xbdfa4b...529940` | ⚠️ Unaudited |
| CrossChainControllerRev2 | governance | ethereum | [`0x04458a...e6a400`](./contracts/ethereum-1/0x04458abf3844995fa28fd5503034ae69a3e6a400/) | ⚠️ Unaudited |
| CrossChainControllerUpgradeRev2 | governance | ethereum | [`0x28559c...8fe215`](./contracts/ethereum-1/0x28559c2f4b038b1e836fa419dccde7454d8fe215/) | ⚠️ Unaudited |
| CrosschainForwarderBase | periphery | ethereum | [`0x321522...078942`](./contracts/ethereum-1/0x3215225538da1546fe0da88ee13019f402078942/) | ⚠️ Unaudited |
| CrossChainRemoteStrategy | core_logic | base | 4 deployments: base [`0x5f81a5...e7a92d`](./contracts/base-8453/0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d/); base `0x81d877...bc8a30`; base `0xc9d1b9...7a5091`; base `0xd7b852...9b5fca` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | 4 deployments: linea [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/); linea `0x4af15e...6b00d5`; linea `0xa21943...e12b93`; linea `0xb5bedd...68fc8f` | ⚠️ Unaudited |
| DataWarehouse | unknown | ethereum | [`0xa638c1...4c3981`](./contracts/ethereum-1/0xa638c14525caee8e498a67b409ccb1b7b34c3981/) | ⚠️ Unaudited |
| DebtTokenOnezProxy | token | manta | 4 deployments: manta [`0x38e63d...ec7f29`](./contracts/manta-169/0x38e63d8e3781e7e392a4e3ad351bcab9bcec7f29/); manta `0x9595ae...7a6e7b`; manta `0xbf8216...5bdcfb`; manta `0xf6561e...d87d45` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | base | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | ⚠️ Unaudited |
| Deployer | unknown | base | [`0x21f0f7...5b0fb0`](./contracts/base-8453/0x21f0f750e2d576ad5d01cfddcf2095e8da5b0fb0/) | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | base | [`0xdb282a...b4c1e3`](./contracts/base-8453/0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3/) | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | base | [`0x851de5...37904b`](./contracts/base-8453/0x851de5ea424557b52d1d6debe5bda12a7d37904b/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | base | 113 deployments: base [`0x07da0e...a59f9d`](./contracts/base-8453/0x07da0e54543a844a80abe69c8a12f22b3aa59f9d/); base `0x0b68ac...8c40e9`; base `0x0f8e05...f52519`; base `0x12129a...1fd25f`; base `0x15364c...e3feea`; base `0x17cab8...0f9d65`; base `0x1eba1d...1ad093`; base `0x30a76f...3ae6f7`; base `0x30fccf...b67d72`; base `0x35e9d7...e2c181`; base `0x3e3a6b...569060`; base `0x42868e...c479b0`; base `0x43a5c2...74251a`; base `0x4b7836...b453b1`; base `0x4ec597...0fcff0`; base `0x591e79...64c78f`; base `0x5e988c...12b113`; base `0x63af83...b4d385`; base `0x64c911...bd848f`; base `0x67283a...027691`; base `0x676c4c...0e2f9d`; base `0x6f064e...c9753c`; base `0x71041d...16bb70`; base `0x790181...ffe73b`; base `0x79cf4a...81e533`; base `0x7bafa1...2c51e5`; base `0x7e8600...a2bc6b`; base `0x7fced5...4dcb80`; base `0x800457...47727a`; base `0x806b4a...41440b`; base `0x868a50...ce5f04`; base `0x88a984...dd36f4`; base `0x8b2af3...387716`; base `0x91d7ae...cd3d9e`; base `0x91d91c...068786`; base `0x9452ca...f57f07`; base `0x960bdd...a113a3`; base `0x962c0d...9ab23c`; base `0x975043...12462d`; base `0x97b770...9f8f7c`; base `0x99daf7...21616b`; base `0x9dda78...5ba428`; base `0x9e8ee7...1600bd`; base `0x9fb8b5...cc7382`; base `0xa669e5...3f4380`; base `0xaa98ae...bde0b1`; base `0xaae87e...d0cbdf`; base `0xb12638...2b458f`; base `0xb366e8...d6cfea`; base `0xb58c5c...0e6978`; base `0xb88bac...5bc061`; base `0xba0db0...db7cde`; base `0xbc7c50...eef410`; base `0xbd8674...2b4c91`; base `0xc15d99...32c5fe`; base `0xc4300b...46f5d8`; base `0xc5e652...9f3a12`; base `0xccadc6...4e071e`; base `0xd7221b...365296`; base `0xd78182...1e817d`; base `0xd89c7f...c07582`; base `0xdae398...7f8250`; base `0xded37f...1b23aa`; base `0xe25969...d60b48`; base `0xe3971e...612075`; base `0xe62bce...5799c2`; base `0xe70f2d...f5cd92`; base `0xe96eb1...64e1b9`; base `0xedc243...94d2e5`; base `0xf19d56...5721f9`; base `0xf397bf...02e9a5`; base `0xf586d0...def5a0`; base `0xfaf372...da1ca5`; base `0xfc1415...775c65`; base `0xff8c37...99eaba`; linea `0x095610...c41714`; linea `0x09b0a8...b6df1d`; linea `0x0aac94...252741`; linea `0x18e0c8...52f9a8`; linea `0x1e2286...9e015e`; linea `0x28606f...3a1bbd`; linea `0x3c6cd9...3354da`; linea `0x3c8a95...d87cb7`; linea `0x452b40...9716d1`; linea `0x49768d...84d72f`; linea `0x5133d6...4e309a`; linea `0x579183...87785a`; linea `0x5c5ee0...79d7bc`; linea `0x5cc678...5271ad`; linea `0x637cf1...f7d935`; linea `0x71df27...7b3940`; linea `0x7a9909...28e1f9`; linea `0x81f4d3...867f2a`; linea `0x8b65a2...b05623`; linea `0x8b7fac...4722f4`; linea `0x8d6ceb...2b72b3`; linea `0x8df01c...545998`; linea `0x8ece1a...01f565`; linea `0x916580...ea8951`; linea `0x921000...191c5c`; linea `0x9ce447...480803`; linea `0x9e6c73...5926d3`; linea `0x9ecea8...828d7a`; linea `0xaadaa4...bfdcb5`; linea `0xb71f79...606731`; linea `0xc4194f...0604ce`; linea `0xc834a5...9da339`; linea `0xdaad34...12065e`; linea `0xde1408...b07c07`; linea `0xe3b01c...91e38a`; linea `0xe5aca1...4a1ede`; linea `0xef77b4...6d189c`; linea `0xefca2b...f4a7db` | ⚠️ Unaudited |
| EarlyZERO | unknown | linea | [`0x40a59a...cfe180`](./contracts/linea-59144/0x40a59a3f3b16d9e74c811d24d8b7969664cfe180/) | ⚠️ Unaudited |
| EarlyZerolend | unknown | manta | 2 deployments: manta [`0x347a68...a5950e`](./contracts/manta-169/0x347a688ccc2256299195994767f5a6c3a6a5950e/); manta `0x642ce4...a7672d` | ⚠️ Unaudited |
| EmptyVault | core_logic | manta | [`0x861736...c7beb2`](./contracts/manta-169/0x861736ddbe57932ef15e6365a1d81a8458c7beb2/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | linea | 4 deployments: linea [`0x3eb7dc...294af2`](./contracts/linea-59144/0x3eb7dcbb7db840753d241de4a078e8da35294af2/); linea `0x55c42b...cf7979`; linea `0x5e96a5...c1f953`; linea `0xd87929...2ac8dc` | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | ethereum | 6 deployments: ethereum [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/); ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| EsLyve | unknown | linea | 3 deployments: linea [`0x533778...573202`](./contracts/linea-59144/0x533778430b3724d40f4b515b3172085427573202/); linea `0x8aa7ae...18765b`; linea `0xf998a1...a9336d` | ⚠️ Unaudited |
| EthereumPriceFeedOsethethWithoutRoundsV1 | operational_periphery | ethereum | [`0x66ac81...57b32c`](./contracts/ethereum-1/0x66ac817f997efd114edfcccdce99f3268557b32c/) | ⚠️ Unaudited |
| EthereumPriceFeedWeethethWithoutRoundsV1 | operational_periphery | ethereum | [`0x8751f7...d9cc36`](./contracts/ethereum-1/0x8751f736e94f6cd167e8c5b97e245680fbd9cc36/) | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | linea | [`0x1bf74c...0b8aa6`](./contracts/linea-59144/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6/) | ⚠️ Unaudited |
| EthLongMovePermissionsPayload | unknown | ethereum | [`0x274a46...0b179c`](./contracts/ethereum-1/0x274a46efd4364ccba654dc74ddb793f9010b179c/) | ⚠️ Unaudited |
| EthLongV3Payload | unknown | ethereum | [`0xaf0c90...e81e2a`](./contracts/ethereum-1/0xaf0c901489790c35d9cef02cfa11123009e81e2a/) | ⚠️ Unaudited |
| EthShortMovePermissionsPayload | unknown | ethereum | 3 deployments: ethereum [`0x7fc3eb...c27364`](./contracts/ethereum-1/0x7fc3ebdb376ff38de2cd597671a6270113c27364/); ethereum `0xdbb023...7894cf`; ethereum `0xe40e84...77fee6` | ⚠️ Unaudited |
| EthShortV2Payload | unknown | ethereum | 2 deployments: ethereum [`0x62f5c2...584148`](./contracts/ethereum-1/0x62f5c2c54495567537c0f9c4b66a6adb3b584148/); ethereum `0x837181...bfaa6f` | ⚠️ Unaudited |
| EthShortV3Payload | unknown | ethereum | 2 deployments: ethereum [`0x30db87...ef41c5`](./contracts/ethereum-1/0x30db87b980d42c060ed90fc890b3b64a24ef41c5/); ethereum `0x92b64d...e5007a` | ⚠️ Unaudited |
| EthToUsdOracleProxy | operational_periphery | blast | [`0x2fa2c1...78b001`](./contracts/blast-81457/0x2fa2c1585684524f0e7b25d518a580c08f78b001/) | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | base | 46 deployments: base [`0x03ee83...ae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/); base `0x0a44db...553286`; base `0x10ab90...4f581e`; base `0x12aaad...eea829`; base `0x15f54f...d86401`; base `0x18095f...732062`; base `0x1861ed...e1b12b`; base `0x25f8fc...bf1504`; base `0x260ac2...90da7e`; base `0x300977...310661`; base `0x335581...a20ab3`; base `0x391b9b...08b9c7`; base `0x45d524...751083`; base `0x48a51f...c91a18`; base `0x5204a4...cd1af1`; base `0x53ab03...ddfdab`; base `0x61c3f6...afccdf`; base `0x62fae5...233cca`; base `0x639dc0...feab0d`; base `0x6d1eef...ae1da9`; base `0x73a600...aa6e96`; base `0x74d574...78adb7`; base `0x75f29f...c7b5d7`; base `0x7d38c6...f58d93`; base `0x7e2b07...4dfe10`; base `0x8345f2...8e00ad`; base `0x8531e6...95f3d5`; base `0x9001d6...0803c0`; base `0x90e04b...08f13d`; base `0x941f0e...916f01`; base `0x98b7a9...c8dd9a`; base `0x9c095e...497653`; base `0x9c32df...bdea73`; base `0xa24d3b...d78f18`; base `0xaa2805...cd18e9`; base `0xbd3b19...d4a404`; base `0xc18ef0...9f72b6`; base `0xca0416...5371f1`; base `0xd3680a...57913e`; base `0xd47363...5a907c`; base `0xd8fc83...ec2926`; base `0xe4e567...97a4d7`; base `0xec0cfe...88f0bb`; base `0xeff089...247d9d`; base `0xf50c0d...153e4f`; base `0xfc30bf...f18848` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | base | 50 deployments: base [`0x048f2f...85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/); base `0x064f09...75aa0d`; base `0x11897f...8423ef`; base `0x1c179c...b2f341`; base `0x1e5ca7...2feb21`; base `0x223953...984c60`; base `0x2c8557...0d9a12`; base `0x31389d...4eac52`; base `0x362e6b...ad98c1`; base `0x3db8be...95d6a5`; base `0x4be6e0...646fd7`; base `0x4db62b...dfeed3`; base `0x557540...6b6c1c`; base `0x56b30a...1fa78e`; base `0x588990...14a285`; base `0x5d5191...a65c9c`; base `0x5de068...e4f622`; base `0x626acc...f429ba`; base `0x62e8d1...abe3f9`; base `0x757dad...7723d1`; base `0x75d1a8...f044d6`; base `0x7898d0...db287e`; base `0x88ced3...6b9268`; base `0x9292f9...ea639a`; base `0x98eecf...1d2790`; base `0x9a5983...e36266`; base `0x9d0ffa...a8ca69`; base `0xac58a3...20df4b`; base `0xadfe8e...224c46`; base `0xb1dddd...8af670`; base `0xbc8e66...52f894`; base `0xbd15d0...5c5977`; base `0xbd852e...1a27db`; base `0xbe5a9e...a42d96`; base `0xbe6b55...3c31a2`; base `0xc06dc9...700ce5`; base `0xccc32e...68ab81`; base `0xcdd0e9...a4a363`; base `0xd3bde6...1dd203`; base `0xd44371...c2e181`; base `0xd531e3...786d26`; base `0xd952fe...dd6457`; base `0xdcfb24...1f984b`; base `0xdd4fb4...c8c981`; base `0xdea286...4ea1cb`; base `0xe5fd5a...0eb754`; base `0xe96563...889c6c`; base `0xea2036...5d2c68`; base `0xeb50fc...e6e184`; base `0xf2bf69...ccad93` | ⚠️ Unaudited |
| Executor | unknown | ethereum | 5 deployments: ethereum [`0x17dd33...be6957`](./contracts/ethereum-1/0x17dd33ed0e3dd2a80e37489b8a63063161be6957/); ethereum `0x378514...474111`; ethereum `0x5300a1...9b192a`; ethereum `0x95fa2c...d7db5b`; ethereum `0xda4b60...29aab5` | ⚠️ Unaudited |
| EzEthToUsdOracleProxy | operational_periphery | blast | 2 deployments: linea `0x8053ed...b2619d`; blast [`0x05031f...db1f30`](./contracts/blast-81457/0x05031fe002c8f01f3e76612bf88709f81bdb1f30/) | ⚠️ Unaudited |
| Factory | registry | manta | [`0xc11bd1...05298a`](./contracts/manta-169/0xc11bd1e365e0050ddc6de5f3cf51e7e6f605298a/) | ⚠️ Unaudited |
| FactoryRegistry | registry | base | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | ⚠️ Unaudited |
| Faucet | unknown | linea | [`0xc6df4d...a08c10`](./contracts/linea-59144/0xc6df4dddbfacb866e78dcc01b813a41c15a08c10/) | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | ethereum | 3 deployments: ethereum [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/); ethereum `0x80a896...ec572b`; ethereum `0xb2fb03...34ae5a` | ⚠️ Unaudited |
| FeeCollector | unknown | linea | 4 deployments: linea [`0x15f744...1eefe4`](./contracts/linea-59144/0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4/); linea `0x347c80...b366ee`; linea `0x9d8bb5...214b6d`; linea `0xc1f401...e795c1` | ⚠️ Unaudited |
| FeeReceiver | unknown | manta | 2 deployments: manta [`0x97bcd5...275b46`](./contracts/manta-169/0x97bcd5a5206f589276650d4eda0452081b275b46/); manta `0xa185ca...13e580` | ⚠️ Unaudited |
| FeesBuybackBurn | unknown | linea | 8 deployments: linea [`0x069b71...3d8423`](./contracts/linea-59144/0x069b71236b163a941913c9804bd6c87a2d3d8423/); linea `0x21d6fc...17cba7`; linea `0x29bcbc...06c2a1`; linea `0x3beed1...6a0a07`; linea `0x5394cc...e141a4`; linea `0x7f03c9...9443f6`; linea `0xcc2bfc...4e2638`; linea `0xf25d64...8b4926` | ⚠️ Unaudited |
| FeesClaimer | operational_periphery | manta | 4 deployments: manta [`0x309cfe...cc76eb`](./contracts/manta-169/0x309cfe19f7963d0fc355e6acb1f82299a8cc76eb/); manta `0xf51fd4...f3def2`; linea `0x38e63d...ec7f29`; blast `0xef73ca...12b31d` | ⚠️ Unaudited |
| FeesClaimerBase | operational_periphery | base | 4 deployments: base [`0x76d416...3d0a79`](./contracts/base-8453/0x76d4161aa6feacf416b1da9db07713edbb3d0a79/); base `0x7f5c18...251900`; base `0xd6ba88...278dee`; base `0xde7a8b...79c95a` | ⚠️ Unaudited |
| FeesClaimerLinea | operational_periphery | linea | 3 deployments: linea [`0x4389a0...e85313`](./contracts/linea-59144/0x4389a0d72781f4fffa6df040c98d50b625e85313/); linea `0xc04002...fedab4`; linea `0xd20cda...f71f03` | ⚠️ Unaudited |
| FeesClaimerMainnetBtc | operational_periphery | ethereum | 2 deployments: ethereum [`0x6138e1...25a3ec`](./contracts/ethereum-1/0x6138e156b4cb78350ccc749e560404bb6425a3ec/); ethereum `0x92b650...0f4574` | ⚠️ Unaudited |
| FeesClaimSwap | unknown | linea | 8 deployments: linea [`0x03a41c...233f52`](./contracts/linea-59144/0x03a41c13378a816edd7ced1acaead4554b233f52/); linea `0x1e6b04...2ddf71`; linea `0x896d80...426489`; linea `0x9a7088...04fcf3`; linea `0xb252bf...fe85ce`; linea `0xb43aa2...0f145a`; linea `0xbdb77f...c4e325`; linea `0xd4a19d...03c260` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | linea | 3 deployments: base `0x6d0c9a...c8d0c1`; base `0xcbb7c0...ed33bf`; linea [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FixedAggregator | unknown | linea | [`0x458ad5...7a5583`](./contracts/linea-59144/0x458ad5b487f4442245e4c5ea7249009e607a5583/) | ⚠️ Unaudited |
| FixedOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x08e8ec...0f7551`](./contracts/ethereum-1/0x08e8ec507968185efb94efd2d355f9932a0f7551/); base `0x78ad3d...a2a7a7` | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | base | [`0xeaa79a...c9f971`](./contracts/base-8453/0xeaa79aac2decf71f07c3208df05b198d09c9f971/) | ⚠️ Unaudited |
| FixedRateDripper | unknown | base | 2 deployments: base [`0x02f2c6...d7f8d6`](./contracts/base-8453/0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6/); base `0xa3a475...eccdae` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x0904e6...78f32f`](./contracts/ethereum-1/0x0904e628c9d1b86c9745185e2587798f5d78f32f/); ethereum `0x3182e9...708f9b`; ethereum `0xdf6c35...e89973` | ⚠️ Unaudited |
| FixedRatioSynchronicityPriceAdapterBaseToPeg | operational_periphery | ethereum | [`0xac3af0...06d93b`](./contracts/ethereum-1/0xac3af0f4a52c577cc2c241df51a01fde3d06d93b/) | ⚠️ Unaudited |
| Flags | unknown | base | 3 deployments: base [`0x26e0e1...0bf332`](./contracts/base-8453/0x26e0e12b1682884a557e67743c6a575fd00bf332/); base `0xa1887f...e751f0`; linea `0xd72b3c...a0b90e` | ⚠️ Unaudited |
| Forwarder | unknown | base | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | ⚠️ Unaudited |
| GasPool | core_logic | linea | 2 deployments: linea [`0x95c045...06b0f6`](./contracts/linea-59144/0x95c045a13311589ba5ef429a7ab71572df06b0f6/); linea `0xadea04...badd61` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GelatoOracle | operational_periphery | linea | [`0xbd5ade...72bb88`](./contracts/linea-59144/0xbd5ade6009666f81456cfbeffdd01fc47572bb88/) | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | ⚠️ Unaudited |
| GnosisChainAdapter | adapter | ethereum | 3 deployments: ethereum [`0x0bed83...6d485e`](./contracts/ethereum-1/0x0bed83079c2c994c54112d07110f09c9be6d485e/); ethereum `0x7238d7...e9c9d8`; ethereum `0xe95b40...059858` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | 2 deployments: base `0x6f5ae6...ac61b4`; linea [`0x14aad4...9ccd8a`](./contracts/linea-59144/0x14aad4668de2115e30a5feee42cfa436899ccd8a/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | 4 deployments: ethereum [`0x0b4f63...d4913f`](./contracts/ethereum-1/0x0b4f6342ecaccd82cf9269a97eb09bf23ed4913f/); ethereum `0x58bcb6...3f2cdd`; ethereum `0x8543a1...740b1d`; ethereum `0xc8a2ad...eb420d` | ⚠️ Unaudited |
| Governance_V2_5 | unknown | ethereum | [`0x323f2c...b9b1d7`](./contracts/ethereum-1/0x323f2c8e227b3f0d88b047ed16581fc0b6b9b1d7/) | ⚠️ Unaudited |
| GovernanceDataHelper | periphery | ethereum | 2 deployments: ethereum [`0x41d2df...775996`](./contracts/ethereum-1/0x41d2df327d079125e4619474d793f66cc4775996/); ethereum `0x971c82...7f1856` | ⚠️ Unaudited |
| GovernancePowerStrategy | core_logic | ethereum | [`0xa198fa...ad1e04`](./contracts/ethereum-1/0xa198fac58e02a5c5f8f7e877895d50cfa9ad1e04/) | ⚠️ Unaudited |
| GovernanceUiHelper | periphery | base | [`0x5576e8...bc0442`](./contracts/base-8453/0x5576e868ca293714b9514a95102ae56140bc0442/) | ⚠️ Unaudited |
| HyperLaneAdapter | adapter | ethereum | 7 deployments: ethereum [`0x01dcb9...f3ccc1`](./contracts/ethereum-1/0x01dcb90cf13b82cde4a0bacc655585a83af3ccc1/); ethereum `0x03f51c...183af2`; ethereum `0x1d8dbc...90220a`; ethereum `0x6abb61...2e75a8`; ethereum `0x834607...4917ef`; ethereum `0xff1137...4e6327`; ethereum `0xff8c72...7a5e64` | ⚠️ Unaudited |
| HypernativeTrigger | unknown | linea | 2 deployments: linea [`0x113329...b6eeba`](./contracts/linea-59144/0x113329d34e8f8148aed0b3b3f9358ac8abb6eeba/); linea `0x608382...a30e41` | ⚠️ Unaudited |
| IBCVoucher | unknown | ethereum | 3 deployments: ethereum [`0x77d81c...8a5b9f`](./contracts/ethereum-1/0x77d81c09e64972fef1a785e9c6357847c08a5b9f/); ethereum `0x9972c1...35c697`; ethereum `0xac1f03...7e54ae` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | linea | 2 deployments: manta `0x97e597...92cbf6`; linea [`0x7fc513...4741a7`](./contracts/linea-59144/0x7fc513b2823a89c6e0430fe44b91e859fd4741a7/) | ⚠️ Unaudited |
| InitializableUpgradeabilityProxy | unknown | ethereum | [`0x3a6a6c...53bec5`](./contracts/ethereum-1/0x3a6a6c89be2db6e8e938156cb42c41551a53bec5/) | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | base | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | ⚠️ Unaudited |
| L2DepositCollateral | unknown | base | 3 deployments: base [`0x04831f...ae12eb`](./contracts/base-8453/0x04831f84de757444fb577245fac1d1d0d7ae12eb/); base `0x543f1c...d5ed8a`; base `0x737ce7...8ef424` | ⚠️ Unaudited |
| L2DepositCollateralL0 | unknown | base | 16 deployments: base [`0x0f0147...86c72f`](./contracts/base-8453/0x0f014753b7cb4c74ec90ca385282bb2cb986c72f/); base `0x118843...90653e`; base `0x27a6a6...1ca20f`; base `0x2ff921...852fc9`; base `0x3f9df8...13c06f`; base `0x74108a...65c647`; base `0x809e6b...1006ea`; base `0x8e5e55...97bd1e`; base `0x9127be...2e6a2f`; base `0x93b50e...a44c47`; base `0xa07cf1...a51255`; base `0xb4de51...9bff83`; base `0xbb0368...ff8058`; base `0xc5f00d...48f46e`; base `0xd31ed2...d64c3c`; base `0xd7a497...66027d` | ⚠️ Unaudited |
| L2RestakingSweeperCron | unknown | base | 4 deployments: base [`0x24ff41...c03d2a`](./contracts/base-8453/0x24ff4165f1bc1621e23efe9437ba8bef8ac03d2a/); base `0x601dcc...c7247e`; base `0x6df563...976d09`; base `0xcaebd3...518f52` | ⚠️ Unaudited |
| L2Stone | unknown | manta | [`0x801375...747bf7`](./contracts/manta-169/0x80137510979822322193fc997d400d5a6c747bf7/) | ⚠️ Unaudited |
| LBTC | unknown | ethereum | 5 deployments: ethereum [`0x12364c...348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/); ethereum `0x4cbd88...d0c4bc`; ethereum `0x80a23c...00053c`; ethereum `0xa1a961...bc0122`; ethereum `0xa1bc65...a3845a` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | ethereum | 9 deployments: ethereum [`0x1290a6...8f44ad`](./contracts/ethereum-1/0x1290a6b480f7ef14925229fdb66f5680ad8f44ad/); ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0x9f1831...eeda4e`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31`; ethereum `0xb635e6...a38263`; ethereum `0xcfeac6...b0d3cd` | ⚠️ Unaudited |
| LendingPool | core_logic | ethereum | [`0x017788...93f423`](./contracts/ethereum-1/0x017788dded30fdd859d295b90d4e41a19393f423/) | ⚠️ Unaudited |
| ListingContract | unknown | base | 13 deployments: ethereum `0x43ccf5...84f79e`; ethereum `0x665e47...776fbf`; ethereum `0x7bc85b...4c8ad7`; ethereum `0xb7f3c8...f2a69c`; ethereum `0xc4fcea...1524fd`; base [`0x06ebbf...34ae48`](./contracts/base-8453/0x06ebbfe85bec9e21e47f5d53ce56905f1d34ae48/); base `0x76d34c...474dc6`; base `0xe5d82c...e2776e`; linea `0x4c076e...3df531`; linea `0xf0180a...e7dfae`; blast `0x3db28e...1ee7a3`; blast `0x458de0...1d2edf`; blast `0xd6ba88...278dee` | ⚠️ Unaudited |
| LockedUSDzMarket | unknown | base | 2 deployments: base [`0x3d36ff...16a6fa`](./contracts/base-8453/0x3d36ff21e0417d4656296a6ffd20e243d516a6fa/); base `0xe5bbf4...404441` | ⚠️ Unaudited |
| Locker | unknown | base | 2 deployments: base [`0x0ca04d...2d9a24`](./contracts/base-8453/0x0ca04d2dddd5ff6b9629221b0ada4f47652d9a24/); base `0xa1d34d...3a5123` | ⚠️ Unaudited |
| LockerLP | unknown | linea | 17 deployments: linea [`0x251c11...edd44a`](./contracts/linea-59144/0x251c11eecbfe5fc0c4272eeaafabfd6a29edd44a/); linea `0x269918...eabef2`; linea `0x2dc1d3...d8a774`; linea `0x2f16e7...9eae50`; linea `0x415974...721947`; linea `0x7c31ee...779997`; linea `0x7d2acf...3d5ab6`; linea `0x8bb8b0...20ab06`; linea `0x94bbce...149c79`; linea `0x9c010c...1e00c0`; linea `0x9d6dac...ef85b6`; linea `0xa9ccac...4d9e5d`; linea `0xb4cc21...f67f1e`; linea `0xb987c5...b96671`; linea `0xd898d3...5fa27c`; linea `0xe0b6b5...db59ca`; linea `0xfb725f...ee3a6e` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | base | 2 deployments: base [`0xdc4855...7f266d`](./contracts/base-8453/0xdc4855ac349097be4c840d9325b5c6c6837f266d/); base `0xdea04d...69fdb8` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | base | 2 deployments: base [`0x56b827...ae8dc7`](./contracts/base-8453/0x56b82775d7f442c4ac1d76e6ed570bff10ae8dc7/); base `0xc64f6e...cbc01f` | ⚠️ Unaudited |
| LombardConsortium | unknown | ethereum | 3 deployments: ethereum [`0x2e1871...763565`](./contracts/ethereum-1/0x2e1871fc8ac793dcf2a74ce004ee21d913763565/); ethereum `0x67927d...0f1a1b`; ethereum `0xed6d64...d780e0` | ⚠️ Unaudited |
| LombardTimeLock | governance | ethereum | [`0x055e84...e77e59`](./contracts/ethereum-1/0x055e84e7fe8955e2781010b866f10ef6e1e77e59/) | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | ethereum | 3 deployments: ethereum [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/); ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| LPOracle | operational_periphery | linea | 2 deployments: linea [`0x303598...986647`](./contracts/linea-59144/0x303598dddebb8a48ce0132b3ba6c2fdc14986647/); linea `0xf98946...e92dff` | ⚠️ Unaudited |
| LsdRateOracle | operational_periphery | linea | [`0x6bce83...b435d0`](./contracts/linea-59144/0x6bce839e9772001a917041be2ea69fea87b435d0/) | ⚠️ Unaudited |
| LynexSwapper | adapter | linea | [`0x9496c1...82802d`](./contracts/linea-59144/0x9496c1160693fc88e0908d1d25b4c2642d82802d/) | ⚠️ Unaudited |
| Lyve | unknown | linea | [`0x21c445...ac979e`](./contracts/linea-59144/0x21c4451914082ef76e2bdd4cdd689388e4ac979e/) | ⚠️ Unaudited |
| LyveDebtToken | token | linea | 2 deployments: linea [`0x3759c2...8f9805`](./contracts/linea-59144/0x3759c22fe341235243b7613d6e54c2ed4b8f9805/); linea `0xb20116...8bc951` | ⚠️ Unaudited |
| LyvePublicSale | unknown | linea | [`0x6d4d2c...da2cf0`](./contracts/linea-59144/0x6d4d2c203f41fce0e66f7a273e275ea277da2cf0/) | ⚠️ Unaudited |
| LyveSale | unknown | linea | 2 deployments: linea [`0x1cce70...016b25`](./contracts/linea-59144/0x1cce70e357057b850066a046bcfdaa83d8016b25/); linea `0x887538...2b90fc` | ⚠️ Unaudited |
| MAHAProxy | proxy | base | 8 deployments: base [`0x3374d3...251b16`](./contracts/base-8453/0x3374d3c191c45c82cedf0a2e47246de37b251b16/); base `0x33ffc6...75f773`; base `0x350925...689594`; base `0x5525b0...6f508f`; base `0x8b046b...160de2`; base `0xbfc936...662297`; base `0xc8370d...7fab37`; base `0xdbf822...f62cd7` | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | base | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| Mediator | unknown | ethereum | 2 deployments: ethereum [`0xe34949...93c9ac`](./contracts/ethereum-1/0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac/); ethereum `0xf60bdd...a8a003` | ⚠️ Unaudited |
| MergedAdapterWithoutRoundsOsethethV1 | adapter | ethereum | [`0x6e6348...7bb8b7`](./contracts/ethereum-1/0x6e63484daacd224c447b7e2913eaaf659c7bb8b7/) | ⚠️ Unaudited |
| MergedAdapterWithoutRoundsOsethethV2 | adapter | ethereum | [`0xbf7d92...7c8dbb`](./contracts/ethereum-1/0xbf7d92afdf01c8370e0b164338fdef105a7c8dbb/) | ⚠️ Unaudited |
| MergedAdapterWithRoundsWeethethV1 | adapter | ethereum | [`0x031a4f...5407eb`](./contracts/ethereum-1/0x031a4f6342175c6b1207c98575258be3b55407eb/) | ⚠️ Unaudited |
| MergedAdapterWithRoundsWeethV1 | adapter | ethereum | 2 deployments: ethereum [`0x0c2c7d...d6be0a`](./contracts/ethereum-1/0x0c2c7ded01ccdfab16f04aff82af766b23d6be0a/); ethereum `0xddb6f9...f41136` | ⚠️ Unaudited |
| MerkleRewardDistributor | operational_periphery | base | 3 deployments: base [`0xcd04c3...321dfb`](./contracts/base-8453/0xcd04c35177b059360ba7219ebaab5c5e94321dfb/); base `0xe1068b...10ca21`; base `0xea4b3e...68573c` | ⚠️ Unaudited |
| MetaDelegateHelper | periphery | ethereum | [`0x6bd55b...a75b0e`](./contracts/ethereum-1/0x6bd55b4ad64a1c79c69015f2e3ae0d8407a75b0e/) | ⚠️ Unaudited |
| MetisAdapter | adapter | ethereum | 3 deployments: ethereum [`0x619643...b39860`](./contracts/ethereum-1/0x619643b346e3389062527cdb60c8720415b39860/); ethereum `0x6b3dc8...35dc14`; ethereum `0x92bce0...30f6a4` | ⚠️ Unaudited |
| MigratorProposalPayload | periphery | ethereum | [`0x1e5636...a3f70d`](./contracts/ethereum-1/0x1e563683226824be87685feb8cb733b6aaa3f70d/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MockAggregator | unknown | linea | 5 deployments: ethereum `0x20efeb...0817f6`; ethereum `0x4a440e...026d2b`; manta `0x9667e1...3337c4`; manta `0x9aebe5...cf351e`; linea [`0x1c2b98...c842dc`](./contracts/linea-59144/0x1c2b983e1fe9830b80c315b7dd2a331960c842dc/) | ⚠️ Unaudited |
| MockDestination | unknown | ethereum | 3 deployments: ethereum [`0x191986...52ece1`](./contracts/ethereum-1/0x19198689ffbe82207f023248dca175a84c52ece1/); ethereum `0x5eb700...0e7e4f`; ethereum `0xcb1f67...2773da` | ⚠️ Unaudited |
| MockERC20 | token | base | 2 deployments: base [`0xeaf0be...f37067`](./contracts/base-8453/0xeaf0bed9de10a345468579a41b2e8ae443f37067/); base `0xf4c420...226d12` | ⚠️ Unaudited |
| MockGovernance | unknown | ethereum | 2 deployments: ethereum [`0xac5536...aca056`](./contracts/ethereum-1/0xac55366fe98d068c8deea1b82f3697aa7baca056/); ethereum `0xe3d355...9c1e5a` | ⚠️ Unaudited |
| MorphoFixedPriceOracleProxy | operational_periphery | base | [`0xc20092...49403f`](./contracts/base-8453/0xc200927e5265c94b55ab9f39caeef7236e49403f/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | [`0x15eefe...ef4d25`](./contracts/linea-59144/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| MultiCollateralHintHelpers | periphery | manta | [`0xa51fc1...fa79de`](./contracts/manta-169/0xa51fc17109817b2728004b85d9a58de486fa79de/) | ⚠️ Unaudited |
| MultiSigWallet | governance | manta | [`0xd10da5...8e2489`](./contracts/manta-169/0xd10da5797d0e79a4ef6ffc240ac2d19aec8e2489/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | manta | [`0x30c673...8c1173`](./contracts/manta-169/0x30c673197de801eb58eabde30a49198cb68c1173/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | manta | [`0x351125...127590`](./contracts/manta-169/0x3511257bdaee658918e832cacd0f9e11c3127590/) | ⚠️ Unaudited |
| NativeLBTC | unknown | ethereum | 2 deployments: ethereum [`0x6b89d7...df635d`](./contracts/ethereum-1/0x6b89d757668a830f17d693a88d46073501df635d/); ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | [`0xcc00f9...9e4d75`](./contracts/linea-59144/0xcc00f934a7541868b9a09f98d7928f727b9e4d75/) | ⚠️ Unaudited |
| OETH | unknown | base | [`0x10b342...439989`](./contracts/base-8453/0x10b342e0205fc20a0934d1a0f25e270520439989/) | ⚠️ Unaudited |
| OETHBase | unknown | base | 5 deployments: base [`0x1c62a3...b82be9`](./contracts/base-8453/0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9/); base `0x2f8b78...821443`; base `0x9518af...c7c4b0`; base `0xccd483...a88249`; base `0xdbfefd...ea60a3` | ⚠️ Unaudited |
| OETHBaseHarvester | operational_periphery | base | [`0xa50fd5...5ffad8`](./contracts/base-8453/0xa50fd560af7433d00d231b397512f5df375ffad8/) | ⚠️ Unaudited |
| OETHBaseOracleRouter | operational_periphery | base | 3 deployments: base [`0xbc80da...97c75b`](./contracts/base-8453/0xbc80da22601eae8720ed8ab117eb88c92b97c75b/); base `0xc72bda...16fd83`; base `0xf1b2b8...556cd1` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | core_logic | base | 3 deployments: base [`0xd50f7d...70d1a7`](./contracts/base-8453/0xd50f7d13632ccadcf24fb74676981099fe70d1a7/); base `0xf1d0bb...8c69b4`; base `0xf9547c...78bf78` | ⚠️ Unaudited |
| OETHBaseVaultCore | core_logic | base | 4 deployments: base [`0x4a759f...6caaab`](./contracts/base-8453/0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab/); base `0x8a42e6...92f255`; base `0xf2d049...c33104`; base `0xfcd2c9...ab45f9` | ⚠️ Unaudited |
| OETHBaseZapper | adapter | base | 2 deployments: base [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/); base `0x993b1d...9a9689` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | core_logic | base | [`0xc5d369...4f38e0`](./contracts/base-8453/0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0/) | ⚠️ Unaudited |
| OETHDripper | unknown | base | [`0x0030c7...e6b16a`](./contracts/base-8453/0x0030c7dc6cb7f449e9566f273342c3370ee6b16a/) | ⚠️ Unaudited |
| OETHVault | core_logic | base | [`0xe9f783...92fd66`](./contracts/base-8453/0xe9f783e7d9fceb90988fdf89bbb2bc3e7092fd66/) | ⚠️ Unaudited |
| OETHVaultValueChecker | core_logic | base | [`0x9d98cf...7bcf6a`](./contracts/base-8453/0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a/) | ⚠️ Unaudited |
| OFT | unknown | linea | 5 deployments: linea [`0x3d61b1...4e19d6`](./contracts/linea-59144/0x3d61b18dfc781ec404f3812a43dcbe57484e19d6/); linea `0x8a2d27...de9272`; linea `0xb54aa3...5f0887`; linea `0xb55e89...477827`; linea `0xc8ae0a...a6a02d` | ⚠️ Unaudited |
| OmnichainGovernanceExecutorL2 | unknown | base | [`0x5bad28...5132df`](./contracts/base-8453/0x5bad28dc681712552e4b6ddbb0118e83875132df/) | ⚠️ Unaudited |
| OmnichainProposalSenderL1 | unknown | linea | [`0xad9981...f302ed`](./contracts/linea-59144/0xad9981763552383c92500c5242981bf270f302ed/) | ⚠️ Unaudited |
| OmnichainStaking | unknown | linea | 38 deployments: linea [`0x0d2221...e2d24d`](./contracts/linea-59144/0x0d22219806af9db237cb73202398a67f27e2d24d/); linea `0x0ecb41...3b7cc8`; linea `0x129074...cafe6a`; linea `0x146746...ea19b9`; linea `0x1705a3...47bed9`; linea `0x211d92...7ddfe2`; linea `0x27e6cd...f487b6`; linea `0x2fab0d...55ed55`; linea `0x3da241...d91df8`; linea `0x4ceada...6c98b0`; linea `0x616ff6...4f2a8a`; linea `0x648297...966423`; linea `0x6a587e...a7684b`; linea `0x83ea62...3a044f`; linea `0x89e309...49be4d`; linea `0x8dc0ad...c8ce47`; linea `0x8ec583...8872c4`; linea `0x93cc58...0e27e0`; linea `0x9e08ba...4af3c1`; linea `0xaa1207...91a0fe`; linea `0xb391b2...0a7c9c`; linea `0xb659fb...e37c8d`; linea `0xb73dd5...14b46a`; linea `0xb957ff...f53daa`; linea `0xc0ae96...ac7dab`; linea `0xc5257a...eb86ea`; linea `0xc52d3f...039693`; linea `0xc91f06...aad6ef`; linea `0xcf0448...a7445d`; linea `0xd30e23...7e2a54`; linea `0xd8c0f8...fac301`; linea `0xd8e635...d747a4`; linea `0xe07d3f...efd7b6`; linea `0xf1526c...4e4e30`; blast `0x309cfe...cc76eb`; blast `0x3108d2...95b236`; blast `0xaea2fa...e6eaa6`; blast `0xfd1355...9cd504` | ⚠️ Unaudited |
| OmnichainStakingLP | unknown | linea | 26 deployments: linea [`0x0374ae...2369b4`](./contracts/linea-59144/0x0374ae8e866723adae4a62dce376129f292369b4/); linea `0x065c6a...3d35c9`; linea `0x11645b...c0823c`; linea `0x321efe...90dc21`; linea `0x3a07f2...0d9121`; linea `0x4ca072...cc9251`; linea `0x4d203e...d15090`; linea `0x521da4...064d2c`; linea `0x52719e...00653d`; linea `0x7756c1...31b728`; linea `0x912c49...a03287`; linea `0x9781a9...cbc5db`; linea `0x9b6094...9a0621`; linea `0xafac45...e64412`; linea `0xb5327e...e9035e`; linea `0xb89817...19804b`; linea `0xc76e36...401642`; linea `0xca4f40...2a3586`; linea `0xcddf7f...4b95ed`; linea `0xce099e...1492d6`; linea `0xcff6ae...2f923f`; linea `0xd16f82...905704`; linea `0xdce9c1...a89d85`; linea `0xdd8e22...340a01`; linea `0xe0bd24...bfcce5`; linea `0xe98f5d...275a19` | ⚠️ Unaudited |
| OmnichainStakingToken | token | linea | 25 deployments: base `0x0779af...1c1880`; base `0x193b33...27ea47`; base `0x3ff7d7...ebaf7c`; base `0x5441ff...b565bd`; base `0x59e415...846361`; base `0x6cdb1d...981b6b`; base `0x8e1c59...f2a51f`; base `0xa69214...5cc82a`; base `0xade133...50205d`; base `0xcc275f...df7d96`; base `0xd5b0ef...919b34`; base `0xd99b02...532b6f`; base `0xea84ce...35d07d`; base `0xf68e1b...b38235`; base `0xfc57bf...f268c8`; base `0xfd487a...c0276e`; linea [`0x022105...740222`](./contracts/linea-59144/0x022105571d4fb943f05ff4ff8e589584c8740222/); linea `0x0a2d7a...aed94e`; linea `0x0b9fb2...a070c9`; linea `0x369c30...079c2f`; linea `0x8dc64d...fb7c8a`; linea `0x9067ce...98dd1b`; linea `0xb320fa...badb5d`; linea `0xc343db...541da5`; linea `0xf37422...b68888` | ⚠️ Unaudited |
| ONEZ | unknown | manta | 4 deployments: manta [`0x7db270...3ba69b`](./contracts/manta-169/0x7db270182e12bfe88dca47c98cb1ef563c3ba69b/); manta `0xafe9b5...72a616`; manta `0xc3f57e...f2bbd9`; manta `0xe00261...61fdf3` | ⚠️ Unaudited |
| OpAdapter | adapter | ethereum | 4 deployments: ethereum [`0x091a76...e1a460`](./contracts/ethereum-1/0x091a76a70d9e9ef3eae895d3b72dcd587ae1a460/); ethereum `0x0e2452...e930b3`; ethereum `0x2ecc4f...330d6b`; ethereum `0x3c06dc...50d090` | ⚠️ Unaudited |
| OUSDVault | core_logic | base | [`0xa96fd1...3820f9`](./contracts/base-8453/0xa96fd141e92de60394103c7f9e045662913820f9/) | ⚠️ Unaudited |
| PairFactory | registry | linea | [`0xa75436...8d41b0`](./contracts/linea-59144/0xa75436a74a9f5c7a8892f907ff37e15c558d41b0/) | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | adapter | ethereum | 3 deployments: ethereum [`0x189cfd...9645af`](./contracts/ethereum-1/0x189cfdb4d7a08d926ca209d84a713c4c629645af/); ethereum `0x924a60...3318ea`; ethereum `0xae4585...fe2fba` | ⚠️ Unaudited |
| ParaSwapRepayAdapter | adapter | ethereum | 3 deployments: ethereum [`0x14f0d2...467100`](./contracts/ethereum-1/0x14f0d25dd75081df1c14bb60d69899406c467100/); ethereum `0x80ce5a...0acc18`; ethereum `0x9f6ab0...e6d75b` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | registry | base | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | ⚠️ Unaudited |
| PayloadsController | governance | ethereum | 3 deployments: ethereum [`0x3c25b9...229747`](./contracts/ethereum-1/0x3c25b96ff62d21e90556869272a277ee2e229747/); ethereum `0x722218...d64578`; ethereum `0x8657cd...0d720a` | ⚠️ Unaudited |
| PerlinNoise | unknown | base | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | base | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | ⚠️ Unaudited |
| PermissionsRegistry | registry | linea | [`0xe23800...74f207`](./contracts/linea-59144/0xe23800635c4ff549ca6ec3ad72c37c69af74f207/) | ⚠️ Unaudited |
| PointsVault | core_logic | base | 2 deployments: base [`0x60ed4b...6a4651`](./contracts/base-8453/0x60ed4bfb90bcbf8b6c16e986f1001215336a4651/); base `0xc8f188...a18487` | ⚠️ Unaudited |
| PolygonAdapterEthereum | adapter | ethereum | 2 deployments: ethereum [`0x1562f1...510a71`](./contracts/ethereum-1/0x1562f1b2487f892bba8ef325af054fd157510a71/); ethereum `0x35f0e8...7974d6` | ⚠️ Unaudited |
| PoolUIHelper | core_logic | base | 6 deployments: base [`0x0a01ab...69bdbb`](./contracts/base-8453/0x0a01ab83ad1a13cfc237ad4e875866c6e569bdbb/); base `0x0fc9c9...4acbc4`; base `0x1bc8d0...40dcda`; base `0xad0bf0...eb249a`; base `0xb1f415...41e800`; base `0xd6919a...f33e70` | ⚠️ Unaudited |
| PoolVoter | core_logic | linea | 19 deployments: linea [`0x36b06e...59ba26`](./contracts/linea-59144/0x36b06eb09459216bd6dba9755183531e8259ba26/); linea `0x449ddc...59c4da`; linea `0x4d2fe1...06b675`; linea `0x51c353...720187`; linea `0x5346e9...13f0af`; linea `0x6c9e32...f5c8c8`; linea `0x802fc5...3b4915`; linea `0x8e5521...43eb93`; linea `0x917eae...4d2aee`; linea `0x9a4bf8...2f762e`; linea `0xa91484...305aa1`; linea `0xad19a5...c4da41`; linea `0xb49bfa...d3cc73`; linea `0xba221f...95b139`; linea `0xc7319b...5c3dbb`; linea `0xcc6b5a...a646a0`; linea `0xde2ad2...df0689`; linea `0xf2e56e...32a6e5`; linea `0xff1e4e...47e3a1` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | linea | 2 deployments: linea [`0x725c68...4747d4`](./contracts/linea-59144/0x725c6873033f957ce3196197eaa57cb7384747d4/); linea `0xad1b98...efbb2e` | ⚠️ Unaudited |
| PriceFeedL2 | operational_periphery | linea | 2 deployments: linea [`0x4d1267...0c48a2`](./contracts/linea-59144/0x4d1267e46dda15e819c08c95109ab10cb90c48a2/); linea `0xc9036d...cf5787` | ⚠️ Unaudited |
| PriceFeedL3 | operational_periphery | linea | 10 deployments: linea [`0x33a3a2...766262`](./contracts/linea-59144/0x33a3a2c85890d7728f073c7b2250522c4e766262/); linea `0x3f349a...aa60f6`; linea `0x6000dd...e56b19`; linea `0x67c77c...3777d0`; linea `0x74c97a...0bae5d`; linea `0xbf496e...c354a1`; linea `0xc79c9e...9efa06`; linea `0xcdb2e0...248c27`; linea `0xf4facf...ecb1b6`; linea `0xf8aff8...c5692d` | ⚠️ Unaudited |
| PriceFeedPyth | operational_periphery | manta | 3 deployments: manta [`0x1167d1...a5238c`](./contracts/manta-169/0x1167d1339011e6495d4e1d3824c522f1d4a5238c/); manta `0x5dc0f3...5cfbca`; manta `0xc1d36f...013dc6` | ⚠️ Unaudited |
| PriceFeedsAdapterAngleEthV2 | operational_periphery | ethereum | [`0x564d81...c588b5`](./contracts/ethereum-1/0x564d81b839573761b38ceeb4c0142d1222c588b5/) | ⚠️ Unaudited |
| PriceFeedsAdapterStaderEthxWithRounds | operational_periphery | ethereum | [`0x41fded...3542ad`](./contracts/ethereum-1/0x41fded6845d19c7236d2c3fb53fe5bcd503542ad/) | ⚠️ Unaudited |
| PriceFeedsAdapterStaderEthxWithRoundsV2 | operational_periphery | ethereum | [`0x2a9e09...04e5cf`](./contracts/ethereum-1/0x2a9e09ede0e569223f05737f846b51591a04e5cf/) | ⚠️ Unaudited |
| PriceFeedsAdapterSwellWithRoundsV5 | operational_periphery | ethereum | [`0x293af9...5e57a3`](./contracts/ethereum-1/0x293af9ca6c6f4b1ec799328d1759ef213a5e57a3/) | ⚠️ Unaudited |
| PriceFeedStaderEthxEthxWithRounds | operational_periphery | ethereum | [`0x5a74ce...f2e9fa`](./contracts/ethereum-1/0x5a74cef7f818f556732a61c7aa6bad1502f2e9fa/) | ⚠️ Unaudited |
| PriceFeedStaderEthxWithoutRoundsV3 | operational_periphery | ethereum | [`0x1ba0c3...57920a`](./contracts/ethereum-1/0x1ba0c3c2db83b34961dfa683038e11852f57920a/) | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | base | 4 deployments: base [`0x1ba15c...8acf46`](./contracts/base-8453/0x1ba15c57c8b74cd32443d7583e7f6d7c638acf46/); base `0x6337a5...79923a`; base `0xb1b31d...12ee78`; base `0xc79224...fed50b` | ⚠️ Unaudited |
| PrismaCore | unknown | manta | 3 deployments: manta [`0x195e99...5dccb9`](./contracts/manta-169/0x195e9907efb240938099bb88f66f15ad6b5dccb9/); manta `0xc1d98a...4ce3de`; manta `0xf92383...d01195` | ⚠️ Unaudited |
| ProposalPayloadLong | unknown | ethereum | [`0x889c0c...827b4b`](./contracts/ethereum-1/0x889c0cc3283db588a34e89ad1e8f25b0fc827b4b/) | ⚠️ Unaudited |
| ProposalPayloadShort | unknown | ethereum | [`0x4a4c73...653805`](./contracts/ethereum-1/0x4a4c73d563395ad827511f70097d4ef82e653805/) | ⚠️ Unaudited |
| ProtocolGovernor | governance | base | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 6 deployments: base [`0x4107a2...cec3c6`](./contracts/base-8453/0x4107a2c7728500aea7846dcb9be00b8a82cec3c6/); base `0x6d0fd4...eb5d8e`; base `0x8ec71d...8036ef`; linea `0xddaca7...c03ea4`; linea `0xf6b0ca...7c1a37`; linea `0xf874ea...8c6f28` | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | [`0x72233f...dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ⚠️ Unaudited |
| ProxyZEROlz | unknown | blast | [`0xf6301b...a80940`](./contracts/blast-81457/0xf6301be5f006a2dd1fe480d27c0a8aa439a80940/) | ⚠️ Unaudited |
| PTcbETHMay292024Oracle | operational_periphery | base | [`0x3f538b...3d37c7`](./contracts/base-8453/0x3f538b74a7ed0ac854a4cee6eb15bf6baa3d37c7/) | ⚠️ Unaudited |
| PTeBTCDec262024Oracle | operational_periphery | ethereum | 5 deployments: ethereum [`0x2584f7...5dadd6`](./contracts/ethereum-1/0x2584f712f19fb57e0700e7303f5e4c3ff85dadd6/); ethereum `0x3ee746...bd71ae`; ethereum `0x5db0a2...d4d021`; ethereum `0x72fefd...67646f`; ethereum `0xa91484...305aa1` | ⚠️ Unaudited |
| PTeBTCMar272025Oracle | operational_periphery | ethereum | [`0xbe43ec...0c8e6e`](./contracts/ethereum-1/0xbe43eccf64742c1e49a67e0e6e9c7f73710c8e6e/) | ⚠️ Unaudited |
| PTezETHDec262024Oracle | operational_periphery | ethereum | [`0x6d8a6b...a96d39`](./contracts/ethereum-1/0x6d8a6ba0e998b7967efd05ccfcb5f540a0a96d39/) | ⚠️ Unaudited |
| PTLBTCDec262024Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x802fc5...3b4915`](./contracts/ethereum-1/0x802fc5abc3c0e3428a833cf459c9ecf4673b4915/); ethereum `0x89db0a...671ccb` | ⚠️ Unaudited |
| PTLBTCMar272025Oracle | operational_periphery | ethereum | [`0xe06aa1...73abaa`](./contracts/ethereum-1/0xe06aa134e8e3a207388521ed494f99811a73abaa/) | ⚠️ Unaudited |
| PTLBTCMay292024Oracle | operational_periphery | base | [`0xe123f7...98166b`](./contracts/base-8453/0xe123f7cc644ac9dab93cf53874fd2f2e6d98166b/) | ⚠️ Unaudited |
| PTrsETHSept262024Oracle | operational_periphery | ethereum | [`0x90a2c1...8cbd47`](./contracts/ethereum-1/0x90a2c1f9a91bc1f9c8988d043e0e9dcbe38cbd47/) | ⚠️ Unaudited |
| PTsUSDeMar272025Oracle | operational_periphery | ethereum | [`0xfa4b5f...08c473`](./contracts/ethereum-1/0xfa4b5f9b5961c052dd47f4e78901dedfcd08c473/) | ⚠️ Unaudited |
| PTUSD0ppMar272025Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x45b45d...e90343`](./contracts/ethereum-1/0x45b45db078ffb1f614c91c65f86f34d2ffe90343/); ethereum `0xad55b8...8f4ac2` | ⚠️ Unaudited |
| PTUSD0ppOct312024Oracle | operational_periphery | ethereum | [`0x36169b...67daac`](./contracts/ethereum-1/0x36169baf1a7542b5029c8c257fc7eaf69d67daac/) | ⚠️ Unaudited |
| PTUSDeMar272025Oracle | operational_periphery | ethereum | [`0x08362b...d3e92f`](./contracts/ethereum-1/0x08362b926051b2fc209c74dce6670b9608d3e92f/) | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | manta | 4 deployments: ethereum `0x4b0a70...8a5bcb`; manta [`0x2acc2b...48732b`](./contracts/manta-169/0x2acc2b9fc1123ab649895c9e825260f31348732b/); linea `0xd23f2a...de2291`; blast `0x72f756...97425a` | ⚠️ Unaudited |
| PumpStaking | unknown | base | 2 deployments: base [`0x1fcca6...404e1e`](./contracts/base-8453/0x1fcca65fb6ae3b2758b9b2b394cb227eae404e1e/); base `0xdba4c3...a86bed` | ⚠️ Unaudited |
| PythUpdater | unknown | ethereum | 8 deployments: ethereum [`0x20d123...6f8913`](./contracts/ethereum-1/0x20d12300b4805708d4293d29cb83c1e01d6f8913/); base `0xc0ae96...ac7dab`; base `0xf361c1...3d5214`; linea `0x518974...30480b`; linea `0x7f525c...6ac015`; linea `0xd718fd...ef923d`; berachain `0xd73be7...78ebce`; berachain `0xe7d097...b0f8bf` | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | [`0x1e662e...6c0b10`](./contracts/linea-59144/0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10/) | ⚠️ Unaudited |
| RedStoneAggregator | unknown | manta | 3 deployments: manta [`0x06d3dd...f86356`](./contracts/manta-169/0x06d3ddb240a0848ff6d6952742fe814306f86356/); manta `0x1b26a6...9b27c6`; manta `0x36c44b...6967a3` | ⚠️ Unaudited |
| RedstoneTokenFactory | registry | ethereum | [`0x7419bc...6da83b`](./contracts/ethereum-1/0x7419bcc1c97d369f1426310ae7372e3dd26da83b/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | base | 2 deployments: base [`0x1a5f2d...ae1a77`](./contracts/base-8453/0x1a5f2d0c090ddb7ee437051da5e6f03b6bae1a77/); base `0xb0f1e5...16d4d7` | ⚠️ Unaudited |
| RepFixedPriceAdapter | operational_periphery | ethereum | [`0xc77514...0610f7`](./contracts/ethereum-1/0xc7751400f809cdb0c167f87985083c558a0610f7/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RMN | unknown | base | 2 deployments: base [`0x41ec51...6f93c7`](./contracts/base-8453/0x41ec51afa59b762d1c7698154d7f4d91186f93c7/); base `0x91cb19...b007c3` | ⚠️ Unaudited |
| Router | adapter | base | 5 deployments: base [`0x673aa8...427a28`](./contracts/base-8453/0x673aa85efd75080031d44fca061575d1da427a28/); base `0x881e3a...f58bcd`; base `0xa63124...9b29a7`; base `0xcd06f1...d5ba56`; base `0xcf77a3...874e43` | ⚠️ Unaudited |
| RouterV2 | adapter | linea | [`0xbf963f...6b7eae`](./contracts/linea-59144/0xbf963f39d07b437d66040218263eeb3b276b7eae/) | ⚠️ Unaudited |
| SafeL2 | unknown | berachain | 2 deployments: berachain [`0x1f9066...be8ff4`](./contracts/berachain-80094/0x1f906603a027e686b43fab7f395c11228ebe8ff4/); berachain `0x54061e...3b29e0` | ⚠️ Unaudited |
| SameChainAdapter | adapter | ethereum | 2 deployments: ethereum [`0x118dfd...1d283c`](./contracts/ethereum-1/0x118dfd5418890c0332042ab05173db4a2c1d283c/); ethereum `0x6cfbd2...228fcf` | ⚠️ Unaudited |
| SimpleTracker | unknown | linea | [`0xe47ca0...4f34ec`](./contracts/linea-59144/0xe47ca047cb7e6a9ade9405ca68077d63424f34ec/) | ⚠️ Unaudited |
| SortedTroves | unknown | manta | [`0x7a2be8...05cd51`](./contracts/manta-169/0x7a2be8f4d864cddad322e62e62f1f369a405cd51/) | ⚠️ Unaudited |
| SortedVessels | unknown | linea | 4 deployments: linea [`0x532e0c...f81b75`](./contracts/linea-59144/0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75/); linea `0x83ed04...8b78e2`; linea `0x86528c...efcc4b`; linea `0xf0e091...51b66a` | ⚠️ Unaudited |
| StakeAndBake | unknown | ethereum | 4 deployments: ethereum [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/); ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5`; ethereum `0xec2631...d21455` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | ⚠️ Unaudited |
| StakedLBTC | token | ethereum | 4 deployments: ethereum [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/); ethereum `0x21f352...083b02`; ethereum `0x8236a8...634494`; ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x5e28ef...1fdc1c`](./contracts/ethereum-1/0x5e28ef6d59fa87530fd058e0d5a94f657f1fdc1c/); ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StakedTokenV2Rev4 | token | ethereum | [`0xe2e8ba...2d4e19`](./contracts/ethereum-1/0xe2e8badc5d50f8a6188577b89f50701cde2d4e19/) | ⚠️ Unaudited |
| StakingBonus | unknown | linea | 40 deployments: linea [`0x02eb73...c0507b`](./contracts/linea-59144/0x02eb736f88125c05c863da6cf061a5d4cfc0507b/); linea `0x0303ca...3bc290`; linea `0x06d3dd...f86356`; linea `0x096dcc...e7b666`; linea `0x14c8d7...f625fe`; linea `0x1c3fa1...b7b30e`; linea `0x2d70ae...bdf09f`; linea `0x3ad103...83b9b9`; linea `0x3baf03...da1b0d`; linea `0x4107a2...cec3c6`; linea `0x445a2a...311987`; linea `0x47af61...3119ed`; linea `0x4b538c...d5edeb`; linea `0x6c498f...9e4c8d`; linea `0x6e2281...a6775d`; linea `0x72fefd...67646f`; linea `0x747aa1...5a4219`; linea `0x770f39...01d390`; linea `0x78d25b...3643be`; linea `0x7a00e6...d004eb`; linea `0x897aef...fb7cad`; linea `0xa0d5e8...defa16`; linea `0xa1a17d...4d9c91`; linea `0xa1c6a3...459c45`; linea `0xa77ee5...b4bfcb`; linea `0xa9ee3e...3d6d2c`; linea `0xab3d1c...f47428`; linea `0xabfba1...0440d3`; linea `0xb3d7c6...a7b0ee`; linea `0xc1f4cb...d6d155`; linea `0xc6660c...1bdb23`; linea `0xcdfd58...362fbd`; linea `0xd676c5...17b3ea`; linea `0xd8e429...cc9817`; linea `0xdd69de...13053d`; linea `0xfe3e1e...f155fd`; blast `0x8a7672...0b0420`; blast `0xa7af9b...0e0b70`; blast `0xd81194...8205b4`; blast `0xf51fd4...f3def2` | ⚠️ Unaudited |
| StakingLPRewards | unknown | base | 9 deployments: base [`0x1097df...a520b0`](./contracts/base-8453/0x1097dfe9539350cb466df9ca89a5e61195a520b0/); base `0x1e54f4...efe5b5`; base `0x4a487c...efabc5`; base `0x57b7f8...2350af`; base `0x7d5a39...cac586`; base `0x7e580f...9d5582`; base `0xd87ece...5bbe34`; base `0xe77b40...70cd8c`; base `0xeb2419...760e6d` | ⚠️ Unaudited |
| StaticATokenFactory | registry | ethereum | 3 deployments: ethereum [`0x4b1c42...28680d`](./contracts/ethereum-1/0x4b1c42a068ee0267cc94dd7c36ad2905c428680d/); ethereum `0x5aabb0...3ee8cd`; ethereum `0xd896bf...08ae4c` | ⚠️ Unaudited |
| StaticATokenLM | token | ethereum | 2 deployments: ethereum [`0x208d1e...9b30af`](./contracts/ethereum-1/0x208d1ef6ff6509eae897b1ef4096ecf1269b30af/); ethereum `0x404dd6...a97cd4` | ⚠️ Unaudited |
| StETHtoETHSynchronicityPriceAdapter | operational_periphery | ethereum | [`0xade6cb...39d901`](./contracts/ethereum-1/0xade6cba6c45aa8e9d0337cac3d2619eabc39d901/) | ⚠️ Unaudited |
| StoneCross | unknown | linea | 2 deployments: manta `0xec901d...0652c3`; linea [`0x93f4d0...d21116`](./contracts/linea-59144/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | ⚠️ Unaudited |
| Subsidy | unknown | linea | 3 deployments: linea [`0x23828e...cf87df`](./contracts/linea-59144/0x23828ee0e8e50d90cec4a0c967b3d8502bcf87df/); linea `0x8c8683...5b8dbb`; linea `0xf80068...35af28` | ⚠️ Unaudited |
| SuperOETHHarvester | operational_periphery | base | 4 deployments: base [`0x0cbeac...54c22e`](./contracts/base-8453/0x0cbeacf86232fc04050cd679d860516f7254c22e/); base `0x247872...0c6b29`; base `0x74c909...81d32d`; base `0x8d8400...c8f9fa` | ⚠️ Unaudited |
| SwapRouter02 | adapter | linea | [`0xa328e9...776eb4`](./contracts/linea-59144/0xa328e968906f5c5922accc197d6dcfe2c2776eb4/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | ethereum | 4 deployments: ethereum [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/); ethereum `0x7c2881...e23cce`; ethereum `0xb90a47...26c686`; ethereum `0xf70bec...ac541c` | ⚠️ Unaudited |
| TerminatedContract | unknown | ethereum | [`0x1b7406...46194a`](./contracts/ethereum-1/0x1b7406b06ce2ff145c274f39941211c2a146194a/) | ⚠️ Unaudited |
| TestnetERC20 | token | linea | 4 deployments: linea [`0x3fc90e...5e78fa`](./contracts/linea-59144/0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa/); linea `0x817a4f...80aa26`; linea `0x844bd3...e35fb4`; linea `0x97e597...92cbf6` | ⚠️ Unaudited |
| TickLens | periphery | linea | [`0xb86284...3b4604`](./contracts/linea-59144/0xb86284160348d0727e7fc6b131812082243b4604/) | ⚠️ Unaudited |
| TimelockControllerEnumerable | governance | linea | [`0x00000a...c6599d`](./contracts/linea-59144/0x00000ab6ee5a6c1a7ac819b01190b020f7c6599d/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | base | [`0x6f6c37...731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | ⚠️ Unaudited |
| TokenDistributor | operational_periphery | ethereum | [`0x62c936...2325ad`](./contracts/ethereum-1/0x62c936a16905afc49b589a41d033ee222a2325ad/) | ⚠️ Unaudited |
| TokenEmissionsStrategy | operational_periphery | base | 4 deployments: base [`0x146746...ea19b9`](./contracts/base-8453/0x1467462c74a4bb8f73e1ca1836fe05e8cbea19b9/); base `0x89e309...49be4d`; base `0xa0d5e8...defa16`; base `0xf46c11...10b177` | ⚠️ Unaudited |
| Transfer | unknown | linea | [`0xedd174...b0569a`](./contracts/linea-59144/0xedd174fd7717561f073da3cf07706827f0b0569a/) | ⚠️ Unaudited |
| TransferStrategyMultipleSimple | core_logic | ethereum | [`0x5afa8b...13d45c`](./contracts/ethereum-1/0x5afa8b5faeac59a44933d4436f9363367813d45c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | 2 deployments: manta `0xf6301b...a80940`; linea [`0xb62992...0562c5`](./contracts/linea-59144/0xb62992abcf07fd0e6f440957c41ba02b920562c5/) | ⚠️ Unaudited |
| Trig | unknown | base | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | ⚠️ Unaudited |
| TroveManager | governance | manta | 2 deployments: manta [`0x05031f...db1f30`](./contracts/manta-169/0x05031fe002c8f01f3e76612bf88709f81bdb1f30/); manta `0x861af6...515a4f` | ⚠️ Unaudited |
| TroveManagerGetters | governance | manta | [`0xc89d40...5dc650`](./contracts/manta-169/0xc89d4070d02410daf0032dcaa99ed173b45dc650/) | ⚠️ Unaudited |
| TxChecker | unknown | base | 2 deployments: base [`0xa87513...20d861`](./contracts/base-8453/0xa87513548b8d1b6d0ddc8e706fbe3a38d220d861/); base `0xb31d11...429f31` | ⚠️ Unaudited |
| UniEth2UsdPriceAggregator | operational_periphery | linea | [`0x3fe299...9b8924`](./contracts/linea-59144/0x3fe299d8337a709b06e06af761883389539b8924/) | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | [`0x07507a...241c91`](./contracts/linea-59144/0x07507a719e7d040ebcbcf54715d7ce7ce5241c91/) | ⚠️ Unaudited |
| UpdateZeroNFTScript | token | linea | 3 deployments: linea [`0x12205d...d1b615`](./contracts/linea-59144/0x12205d78b28b7a3f350dbc703fc610db13d1b615/); linea `0xb1f930...a6c18f`; linea `0xcc5749...91c27e` | ⚠️ Unaudited |
| UpgradeableOptimismMintableERC20 | token | base | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | ⚠️ Unaudited |
| USDCTokenPool | core_logic | base | 2 deployments: base [`0x13f967...acb6d5`](./contracts/base-8453/0x13f967f4431a44b604990ad4ad27bc0616acb6d5/); base `0x55a578...c61ba9` | ⚠️ Unaudited |
| USDeOFT | unknown | linea | [`0x5d3a1f...52ef34`](./contracts/linea-59144/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| UsdzMarket | unknown | base | 2 deployments: base [`0x8e7884...efeea5`](./contracts/base-8453/0x8e788484cab6359e65fece14a4d6e510e2efeea5/); base `0xa452af...6a4efb` | ⚠️ Unaudited |
| V3Migrator | periphery | linea | [`0xa8b49c...707c34`](./contracts/linea-59144/0xa8b49c4cbf805f3252ddbf4de465c34986707c34/) | ⚠️ Unaudited |
| VaultFactory | registry | linea | [`0x37f2a7...84aaeb`](./contracts/linea-59144/0x37f2a71d35062e89ca69ed80793b91afdf84aaeb/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VelocoreLens | periphery | linea | 4 deployments: linea [`0x4bfd36...0e917e`](./contracts/linea-59144/0x4bfd361713ce3a31abbbc614ba882e68300e917e/); linea `0x955741...de7c4f`; linea `0xc793c3...8bfe59`; linea `0xdcd715...831b5e` | ⚠️ Unaudited |
| VesselManager | governance | linea | 5 deployments: linea [`0x103087...516611`](./contracts/linea-59144/0x10308774e482e16671d8dcc847ac6b701f516611/); linea `0xd742ab...729b63`; linea `0xd9751a...aad008`; linea `0xdc4409...f7fbfa`; linea `0xef5895...3e0c8f` | ⚠️ Unaudited |
| VesselManagerOperations | governance | linea | 4 deployments: linea [`0x468fab...ef98fc`](./contracts/linea-59144/0x468fab73dd9be2d38ec58ee0cd5de2e2e9ef98fc/); linea `0x53525a...2443e4`; linea `0xac67a8...f27dc4`; linea `0xe5c168...a4a18f` | ⚠️ Unaudited |
| VestedZeroNFT | operational_periphery | linea | 41 deployments: linea [`0x02a258...cd552b`](./contracts/linea-59144/0x02a258c1aa2091d747f085357ee96a7386cd552b/); linea `0x03a80a...418d68`; linea `0x06fc23...d5524b`; linea `0x1372dd...495e3b`; linea `0x1a73b0...cd7ca8`; linea `0x1e44d4...007268`; linea `0x1f609c...720b36`; linea `0x24158f...5ada19`; linea `0x2f4af3...c839c5`; linea `0x33e47f...72f4e4`; linea `0x36c44b...6967a3`; linea `0x3a7a62...4a5d6a`; linea `0x46ad01...e827c8`; linea `0x47f00a...6b749c`; linea `0x483dee...d5963c`; linea `0x50f20c...b13d4e`; linea `0x5903fa...eac199`; linea `0x6195fd...c644dd`; linea `0x61e985...ca0da5`; linea `0x6b534c...9f5a63`; linea `0x767171...a32804`; linea `0x7e9fd8...f135f2`; linea `0x8ec71d...8036ef`; linea `0x998601...a15849`; linea `0x9d38e3...d7d48a`; linea `0x9fa72e...fa6c12`; linea `0xa6ea63...e5a1fd`; linea `0xb0a209...d835b5`; linea `0xb129f9...06398f`; linea `0xba0030...475675`; linea `0xbae5d9...6f03bf`; linea `0xbdd0f1...8d044b`; linea `0xc3b8eb...2d5818`; linea `0xc93c5d...4d7096`; linea `0xe5d82c...e2776e`; linea `0xe71c56...b6cc51`; linea `0xefbee0...8d4345`; blast `0x449462...8e1d0b`; blast `0x63189c...468b03`; blast `0x99f4f9...f56f73`; blast `0xa711ff...1562c7` | ⚠️ Unaudited |
| VestUiHelper | operational_periphery | linea | 2 deployments: linea [`0x917942...a9f95b`](./contracts/linea-59144/0x917942d1e1e2ed144fe4c9fbe754800ad9a9f95b/); linea `0xbeca96...efd4fa` | ⚠️ Unaudited |
| VestUiHelperV2 | operational_periphery | linea | 2 deployments: linea [`0x05ca37...6e7997`](./contracts/linea-59144/0x05ca37df1b23a58777f19d44f8242a32126e7997/); linea `0xcad503...693f92` | ⚠️ Unaudited |
| Voter | unknown | base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingMachine | unknown | ethereum | 5 deployments: ethereum [`0x06a179...77bfb6`](./contracts/ethereum-1/0x06a1795a88b82700896583e123f46be43877bfb6/); ethereum `0x307d7f...cdfa8c`; ethereum `0x3ff5b9...0ca740`; ethereum `0x4d2043...dbc481`; ethereum `0x617332...8975eb` | ⚠️ Unaudited |
| VotingPowerCombined | unknown | linea | 2 deployments: linea [`0x266695...097647`](./contracts/linea-59144/0x2666951a62d82860e8e1385581e2fb7669097647/); linea `0x270918...2f94da` | ⚠️ Unaudited |
| VotingRewardsFactory | registry | base | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | ⚠️ Unaudited |
| weEthToUsdOracleProxy | operational_periphery | linea | [`0x68c889...87adda`](./contracts/linea-59144/0x68c889e2243ad454f6c8bb6e3290b91f8f87adda/) | ⚠️ Unaudited |
| WETH9 | token | base | 2 deployments: base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/); linea `0xe5d7c2...5cf34f` | ⚠️ Unaudited |
| WETH9Mock | token | linea | [`0xadc1eb...afb6c8`](./contracts/linea-59144/0xadc1eb4e8c72f03339638a7b43b2097fc1afb6c8/) | ⚠️ Unaudited |
| WOETH | unknown | base | [`0x9745a0...52d478`](./contracts/base-8453/0x9745a051bd218d78eb6b5d0f53c685f6b052d478/) | ⚠️ Unaudited |
| WOETHBase | unknown | base | 4 deployments: base [`0x2e1826...583408`](./contracts/base-8453/0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408/); base `0x6d961a...23e3f3`; base `0x7fcd17...f58ea6`; base `0xcc36f8...922674` | ⚠️ Unaudited |
| WrappedStakingLPRewards | unknown | base | 3 deployments: base [`0x231fe0...a3f5c9`](./contracts/base-8453/0x231fe000062e2e3b48ae9a70040e0b99aea3f5c9/); base `0x483f7a...fd7c4c`; base `0x9a52fc...0659cc` | ⚠️ Unaudited |
| WstETHSynchronicityPriceAdapter | operational_periphery | ethereum | [`0x8b6851...05ac93`](./contracts/ethereum-1/0x8b6851156023f4f5a66f68bea80851c3d905ac93/) | ⚠️ Unaudited |
| YieldBearingWETH | token | manta | [`0x429b2c...04eb5b`](./contracts/manta-169/0x429b2c12ea2a718ae5fc61f3ad4a84d83704eb5b/) | ⚠️ Unaudited |
| ZaiOFTWithRestaking | unknown | base | 2 deployments: base [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/); base `0x154f52...adccda` | ⚠️ Unaudited |
| ZAIUSDCvAMMOracle | operational_periphery | base | [`0xa185ca...13e580`](./contracts/base-8453/0xa185ca8b2894b8d0c26448a7ac6902a96d13e580/) | ⚠️ Unaudited |
| Zap | adapter | linea | 6 deployments: linea [`0x018a56...e7986a`](./contracts/linea-59144/0x018a56dc40ad9e0d973730f63d0dbc05c5e7986a/); linea `0x1073c6...2415ec`; linea `0x71bdab...206e6e`; linea `0x73ad3d...f8df68`; linea `0x913e76...2e0a4a`; linea `0xe1317b...332e8b` | ⚠️ Unaudited |
| ZapAerodromePoolMAHA | adapter | base | [`0xc9004e...bb5dd5`](./contracts/base-8453/0xc9004eab920655bdbd8463120e68195832bb5dd5/) | ⚠️ Unaudited |
| ZapAerodromePoolUSDC | adapter | base | 4 deployments: base [`0x1ba5f6...64eb22`](./contracts/base-8453/0x1ba5f6ccab972ed5aabf4d7faf0cda1f9364eb22/); base `0x71fbd1...52223c`; base `0x7b9069...128c77`; base `0x7fa330...3ca644` | ⚠️ Unaudited |
| ZapLockerLP | adapter | linea | 2 deployments: linea [`0xaec644...51146b`](./contracts/linea-59144/0xaec644fea891e35b17d4d5845105bc49f251146b/); linea `0xc8f456...0071c5` | ⚠️ Unaudited |
| ZERO | unknown | blast | [`0x861736...c7beb2`](./contracts/blast-81457/0x861736ddbe57932ef15e6365a1d81a8458c7beb2/) | ⚠️ Unaudited |
| ZeroLend | unknown | linea | 3 deployments: ethereum `0xedb357...092d69`; linea [`0x78354f...c3c7a7`](./contracts/linea-59144/0x78354f8dccb269a615a7e0a24f9b0718fdc3c7a7/); blast `0x861af6...515a4f` | ⚠️ Unaudited |
| ZeroLendTest | unknown | linea | [`0x351125...127590`](./contracts/linea-59144/0x3511257bdaee658918e832cacd0f9e11c3127590/) | ⚠️ Unaudited |
| ZeroOFTAdapter | adapter | linea | 6 deployments: linea [`0x0e397d...29c0c6`](./contracts/linea-59144/0x0e397dd4d36b152618696b8042663a801029c0c6/); linea `0x13f11c...65a830`; linea `0x1dad69...039e8e`; linea `0x2d6f5b...5b5693`; linea `0x357f93...65d00f`; linea `0x39655d...97d94e` | ⚠️ Unaudited |
| ZkEVMAdapterEthereum | adapter | ethereum | [`0xe0a6ee...b89eb6`](./contracts/ethereum-1/0xe0a6eee6d0c883734a7a7e7b378bd09fffb89eb6/) | ⚠️ Unaudited |
| ZLShares | unknown | ethereum | [`0x420c44...757265`](./contracts/ethereum-1/0x420c440d4fce299f9c0ccb9b2de42f5139757265/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ReservesSetupHelper | periphery | ethereum | 12 deployments: ethereum [`0x061122...b67c59`](./contracts/ethereum-1/0x0611224e19599a47431641d79e5af42981b67c59/); ethereum `0x616ff6...4f2a8a`; ethereum `0xc58715...3e8011`; manta `0xb8634e...a87e21`; base `0xcc8a5b...fbbd26`; linea `0x0b73d9...a3ba52`; linea `0x4cc1ab...ad1dce`; linea `0x8a209c...e65c0d`; linea `0xb8634e...a87e21`; berachain `0xb02382...c6ad72`; berachain `0xbe0ab6...5547d8`; blast `0xc44827...d200eb` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (7)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AaveEcosystemReserveController | governance | manta | 5 deployments: manta [`0x3fc90e...5e78fa`](./contracts/manta-169/0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa/); linea `0x59423c...090e10`; berachain `0x97e597...92cbf6`; berachain `0xdc4f0a...592f89`; blast `0x89fec3...5d1b7a` | ⚠️ Unaudited (bytecode match) |
| AaveEcosystemReserveV2 | unknown | berachain | 11 deployments: ethereum `0xc3f57e...f2bbd9`; manta `0xadc1eb...afb6c8`; linea `0x89fec3...5d1b7a`; linea `0xbbe092...ea2bbf`; linea `0xcccf56...6377bf`; berachain [`0x26f223...61523a`](./contracts/berachain-80094/0x26f2232cd83e5fc6789f2a1d36274753d161523a/); berachain `0x3fc90e...5e78fa`; berachain `0xb0990b...d2e197`; berachain `0xc6df4d...a08c10`; blast `0x59423c...090e10`; blast `0x9698fd...c13bc6` | ⚠️ Unaudited (bytecode match) |
| ConfirmedTransactionModule | unknown | base | 7 deployments: base [`0x2dc44c...6f5fa2`](./contracts/base-8453/0x2dc44ca93a1207cb50671dca68991f64776f5fa2/); base `0x869428...72c086`; base `0x9081d0...df7f27`; base `0xe640ac...55d51f`; base `0xe6b386...f1cc05`; base `0xf3c72d...5c0237`; linea `0x4f4ffd...4e4011` | ⚠️ Unaudited (bytecode match) |
| EthUsdAggregator | unknown | ethereum | 11 deployments: ethereum [`0x01d3bb...c3e5ff`](./contracts/ethereum-1/0x01d3bb31f1948ba32ee9c725435291e425c3e5ff/); ethereum `0x33b13f...6cf1be`; ethereum `0x643a25...4b30e7`; berachain `0x1615ea...f5b1d8`; berachain `0x41b192...70d705`; berachain `0x5046c3...7f08cb`; berachain `0x5e35d9...9bb0ef`; berachain `0x7fab93...605663`; berachain `0xb0b0b1...f452a2`; berachain `0xd85bbd...55f7e3`; blast `0x6076f4...895a7d` | ⚠️ Unaudited (bytecode match) |
| PythAggregatorV3 | unknown | base | 26 deployments: ethereum `0x2d7405...07736e`; ethereum `0x4ee12a...7c8d78`; ethereum `0x62a023...ace057`; ethereum `0x8738b2...45f6c9`; ethereum `0xd04a2e...732a37`; manta `0x0bd276...f7a742`; manta `0x1615ea...f5b1d8`; manta `0x41b192...70d705`; manta `0x420168...0dee29`; manta `0x5046c3...7f08cb`; manta `0x5e35d9...9bb0ef`; manta `0x7fab93...605663`; manta `0xd85bbd...55f7e3`; base [`0x0ab478...7ee8b8`](./contracts/base-8453/0x0ab47831b368099d8a976a8ce1695913547ee8b8/); base `0x2da17f...085c22`; base `0x4891e1...11cb58`; base `0xa7af9b...0e0b70`; linea `0x0bd276...f7a742`; linea `0x130cc6...733054`; linea `0x41b192...70d705`; linea `0xbbaef3...eabdc7`; linea `0xc785a3...4a9ece`; linea `0xfc8734...6307a8`; berachain `0x0bd276...f7a742`; berachain `0x458ad5...7a5583`; berachain `0xbbaef3...eabdc7` | ⚠️ Unaudited (bytecode match) |
| RestrictedERC20 | token | linea | 5 deployments: linea [`0x08b03d...bec01f`](./contracts/linea-59144/0x08b03db5f52e2975a8a0450ef4db85a606bec01f/); linea `0x49465f...c0348c`; linea `0x66d5d6...071a4e`; berachain `0x7fc513...4741a7`; berachain `0xaf9849...588fc4` | ⚠️ Unaudited (bytecode match) |
| ZeroOFT | unknown | ethereum | 15 deployments: ethereum [`0x11dcc2...fc429e`](./contracts/ethereum-1/0x11dcc26d4bdac03ffa8841f69313c38240fc429e/); ethereum `0x180372...6bae3d`; ethereum `0x340d3a...932405`; ethereum `0x747aa1...5a4219`; ethereum `0xc4d701...19634f`; ethereum `0xcb9c27...3103bb`; manta `0x35a57e...cafa1d`; manta `0x39655d...97d94e`; manta `0x64d904...222797`; manta `0xebe090...15fe0e`; linea `0x7775f9...fc9217`; blast `0x357f93...65d00f`; blast `0x39655d...97d94e`; blast `0x75948c...0fc6fb`; blast `0xde7a8b...79c95a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (223)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1cae1c...fee853` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24affc...86d78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ef783...161848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30835d...6eda84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33a440...57c21c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3db28e...1ee7a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x458de0...1d2edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x746c67...5009bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d5351...fb1b70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e1a21...76e911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0476c...c84213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb659fb...e37c8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde243b...2a3b87` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x0e7e6b...5c6510` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x0fac52...9ce43a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x195112...f11c48` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x24a4b5...c7e2b1` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2b1d94...47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x458ad5...7a5583` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x712298...45bd3c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x795b70...eb92c7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x98d56d...9eb611` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb0811a...cf587b` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb1cf24...b3f9ca` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb6f77e...df233d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc6660c...1bdb23` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xfeafb5...8466c1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x016341...2da7cc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x09869d...7051fd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x102699...633510` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1890f9...49d18d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x27d0a2...222e36` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x3a8ea5...516031` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x424c09...742f12` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x431df5...cf977c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4d9429...e3b8f8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4f285e...8ba259` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x54ab34...a5bedc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x54d6f9...3811e0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x56f58d...b080cf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5fac4f...e54dff` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x627b8a...39ef3b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x677c3c...2d7326` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6aac09...735bac` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6cde8a...0d30af` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6f977f...2f442d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x70ca80...073031` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x72d2ab...bf0f19` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x767b4a...bad3d2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x785765...0142b8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x78b93f...b7787b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7ae492...400f7f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7d3b3a...abb9cd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x81d6b9...a2f7b1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x861cc6...16aeec` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x86bd52...bc2c92` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8731d4...2e46a0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8855fd...7feaf9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8fbc87...a40810` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8fe0ac...b43367` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9002ec...119914` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x91ccf5...b7e960` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9223dc...d487e5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9993c0...50f7c3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9a60cc...e67389` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9c3058...3ab1ed` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9c9158...209b9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9ca480...d21505` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa333c6...70f831` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa48acc...a305cb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa8d16f...47daaa` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb73550...33175e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb76f76...af9acc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xba9969...41c3de` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc59971...1f82c8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xcaa502...52aab8` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xd84e95...153c23` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xdeea10...5e9f70` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xdf36f5...88df8d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe00d79...958dfb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe52540...c09133` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe60e19...c65004` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe8178f...b6e38e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xedac06...ac198a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfce579...49b553` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x054ba1...12c53a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ab881...6eb94b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0e9ed7...9f9f86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x145a70...cb5326` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e3edd...39b569` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x243d66...a54509` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2699a9...42f726` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4008a1...63dbe5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x403840...0e2197` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x427c21...3b28b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4b09db...306af8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4d47c9...eb3214` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x507e00...c5eb0c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x52056e...46e8c6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5a1b8c...6ea129` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6590e6...d0c7d9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x77c475...228213` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d1f70...8f4589` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7e1c22...e40358` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x817c9f...27769d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81ce73...8e7246` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x891e30...9b829c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8b94b5...59f23f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8d5ca7...a9a944` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8e6ef8...cccc89` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8f975f...5ee0f5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x98c0e8...2577e3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9a1d57...3d7ee8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9c4ced...cbfe36` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa03bbd...fc00d6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa04983...c5926e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa824d...e73cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb16953...4f462a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc197fb...85ede7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc94cc2...ca9c33` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcaa085...9a664a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd0a614...0155b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd0bd21...cb5e43` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd764c1...0221f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdca4ef...5a3c96` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xee3690...4f04e9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfc678a...7fa961` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdd61b...42b9e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x030dca...9d7594` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x04c806...63edc4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0516af...0a20d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x077ac2...cbc719` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0a0c41...90ccc1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0aa158...79cd88` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x13b248...62f750` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x15a330...e11324` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x16c34b...9c896f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1907a1...4702ff` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x22a6d1...ce9593` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x260e47...9330cc` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2624ef...28a3f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x359c1a...002763` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3a1a10...967282` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x400e15...6f4bf6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x40dcff...b4c65f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4a0279...594808` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4bd5ac...479dd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x54bb70...b49e8e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5590c8...56ab2a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5a49a0...254e7b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5b5fac...c0e403` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x61b951...6b4e95` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x61f986...990b1b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x66bf52...882277` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7530cd...7a4d16` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7619b7...0f8692` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x793174...31eb34` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x79cad7...ae143b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7c42a1...652029` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7c43d4...118a49` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7e3bac...09fc37` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7e91c3...042781` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x800f32...801114` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x801375...747bf7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x830d11...1639bd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x88f205...7b7f55` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8a7672...0b0420` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8d6ceb...09fad6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8e4b62...355f84` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x98fcdc...54d1ba` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x99f4f9...f56f73` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9cbfdd...fa72fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9d3e9e...a30fb4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x9dbd5a...3c64d5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xaa9424...c47089` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb2e92f...8d6b37` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb69cda...dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb6cc57...1b7cca` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb8d4d4...c2d27d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbad4dd...9592c3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbca7af...e94d29` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbf0e2a...bcb01d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbfc921...f037e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc3a531...7eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc673ac...e4efac` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdcb864...8df925` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe16575...a5cf16` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe1af04...e26841` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe245cf...3d5f86` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe33329...1c3eda` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe61878...309db1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe664eb...7b5919` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe9f6ed...50ec33` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xecae65...1851f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf0a192...8716f6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf56588...fea980` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf62e0f...91a734` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf7cb28...0abb73` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf7dc74...34bf9f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfb836c...a99dda` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfc7b6a...003292` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfede7b...4d802a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xff0756...9b9992` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2f7e54...eb8a93` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4db095...381fdc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0a1198...ee100b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0bd276...f7a742` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x429b2c...04eb5b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x458ad5...7a5583` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x47223d...fadfcf` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x80102a...3c3a80` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9660b3...6262ee` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa6ea08...68ef01` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbbaa35...0eb559` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc2764d...0a90dd` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf10fd5...46f975` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [zerolend_report_depcheck_final.pdf (also discovered via alternate URL)](https://github.com/zerolend/audits/blob/main/mundus/zerolend_report_depcheck_final.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 243 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/certora/Aave_V3_Formal_Verification_Report_Jan2022.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/aave/aave-v3-core/782f51917056a53a2c228701058a6c3fb233684a/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABDK (also discovered via alternate URL)](https://github.com/aave/aave-v3-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name|n/a | 336 | high |
| [{% embed url="<>" %}](https://www.halborn.com/case-studies/post/case-study-strengthening-zerolend-s-multi-chain-lending-platform-with-halborn) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf](https://github.com/zerolend/audits/blob/main/peckshield/PeckShield-Audit-Report-ZeroLend-v1.0rc.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x657e8c...88c642`](./contracts/ethereum-1/0x657e8c867d8b37dcc18fa4caead9c45eb088c642/) | BoringVault | core_logic | $17,197,815.83 | Verified native implementation with $17,197,815.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf469fb...0a012e`](./contracts/base-8453/0xf469fbd2abcd6b9de8e169d128226c0fc90a012e/) | PumpTokenOFT | token | $1,215,899.19 | Verified native implementation with $1,215,899.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xbf1aea...b087ae`](./contracts/linea-59144/0xbf1aea8670d2528e08334083616dd9c5f3b087ae/) | EditableERC20 | token | $707,605.00 | Verified native implementation with $707,605.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x894134...cb9487`](./contracts/linea-59144/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | GravitaDebtToken | token | $30,123.40 | Verified native implementation with $30,123.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xecc68d...38ac7d`](./contracts/linea-59144/0xecc68d0451e20292406967fe7c04280e5238ac7d/) | BurnableMintableCappedERC20 | token | $839.19 | Verified native implementation with $839.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x211cc4...5fe5d2`](./contracts/linea-59144/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFT | token | $451.10 | Verified native implementation with $451.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14b2a1...7ab1d8`](./contracts/ethereum-1/0x14b2a1d1a501f8f3ec7d728762a3bf9db57ab1d8/) | TransferStrategySimple | core_logic | $43.89 | Verified native implementation with $43.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x26f223...61523a`](./contracts/berachain-80094/0x26f2232cd83e5fc6789f2a1d36274753d161523a/) | AaveEcosystemReserveV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26e429...280ee4`](./contracts/base-8453/0x26e429ca67f0d6e0cd0ad34b7002f9daa9280ee4/) | ACLManagerEnumerable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15c3ee...35a6cd`](./contracts/base-8453/0x15c3ee18221592de846014f9ad574fbc4c35a6cd/) | AerodromeLPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbf8216...5bdcfb`](./contracts/base-8453/0xbf8216841b3c3032381bd3f7233895fe3b5bdcfb/) | AEROUSDCvAMMOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1fd19c...69d9ee`](./contracts/base-8453/0x1fd19c91fcd2cbe58500bac80017c791a669d9ee/) | AgentLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b7c3e...eb8eb5`](./contracts/ethereum-1/0x4b7c3e3ea48f80a78487067cd08b9a8430eb8eb5/) | AIP2ProposalPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f0cfa...5bf9d1`](./contracts/ethereum-1/0x3f0cfa3cad621c3651faf9de014489e20e5bf9d1/) | AIP3ProposalPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1726c1...4d806c`](./contracts/ethereum-1/0x1726c13fb9d89abad27787480ae597b3df4d806c/) | ArbAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82335...48bd80`](./contracts/ethereum-1/0xb823359367978a28eae71e90f79d95b62348bd80/) | AssetRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x366ae3...f20593`](./contracts/ethereum-1/0x366ae337897223aea70e3ebe1862219386f20593/) | ATokenWithDelegation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0ae3a8...4cd117`](./contracts/manta-169/0x0ae3a8bb8300fbb1e3c53975fc83576b324cd117/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b67c2...7a4717`](./contracts/ethereum-1/0x1b67c2908ef408f6612e025fe3cf12c8507a4717/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1fe8a...2059c8`](./contracts/ethereum-1/0xc1fe8a0daed7e912d3b5b56ff6e05f17d82059c8/) | BridgeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13d579...bb036f`](./contracts/base-8453/0x13d579664baab9adcc4c6b19956f7b7eadbb036f/) | BurnMintTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124a93...aa108d`](./contracts/ethereum-1/0x124a93c62db29c2ef68b79f1709fe377feaa108d/) | CBaseAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382994...bf90ba`](./contracts/ethereum-1/0x3829943c53f2d00e20b58475af19716724bf90ba/) | CCIPAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04d5dd...7f1938`](./contracts/base-8453/0x04d5ddf5f3a8939889f11e97f8c4bb48317f1938/) | ChildUSDz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2298d4...9b1fbb`](./contracts/ethereum-1/0x2298d44cfda0ceafe7f5ef5fd587b67d7b9b1fbb/) | CLAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05225c...e99d56`](./contracts/ethereum-1/0x05225cd708bca9253789c1374e4337a019e99d56/) | CLrETHSynchronicityPriceAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x230e03...1fe56f`](./contracts/ethereum-1/0x230e0321cf38f09e247e50afc7801ea2351fe56f/) | CLSynchronicityPriceAdapterPegToBase | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x981ab5...1b8774`](./contracts/ethereum-1/0x981ab570ac289938f296b975c524b66fbf1b8774/) | CLwstETHSynchronicityPriceAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80f2c0...dd5439`](./contracts/ethereum-1/0x80f2c02224a2e548fc67c0bf705ebfa825dd5439/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x464c71...d6e18c`](./contracts/ethereum-1/0x464c71f6c2f760dda6093dcb91c24c39e5d6e18c/) | CollectorWithCustomImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f8048...c5478e`](./contracts/ethereum-1/0x9f8048c81d00da5e757e20ad5fc89f8a32c5478e/) | Consortium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf5bb...da68f1`](./contracts/ethereum-1/0x0bf5bbfae7808d329e0ba8277e0b746bbfda68f1/) | CrossChainController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04458a...e6a400`](./contracts/ethereum-1/0x04458abf3844995fa28fd5503034ae69a3e6a400/) | CrossChainControllerRev2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28559c...8fe215`](./contracts/ethereum-1/0x28559c2f4b038b1e836fa419dccde7454d8fe215/) | CrossChainControllerUpgradeRev2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa638c1...4c3981`](./contracts/ethereum-1/0xa638c14525caee8e498a67b409ccb1b7b34c3981/) | DataWarehouse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x38e63d...ec7f29`](./contracts/manta-169/0x38e63d8e3781e7e392a4e3ad351bcab9bcec7f29/) | DebtTokenOnezProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x347a68...a5950e`](./contracts/manta-169/0x347a688ccc2256299195994767f5a6c3a6a5950e/) | EarlyZerolend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x861736...c7beb2`](./contracts/manta-169/0x861736ddbe57932ef15e6365a1d81a8458c7beb2/) | EmptyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9873...a10fc7`](./contracts/ethereum-1/0x3f987372a1ae29f834deaea66d2e72137ba10fc7/) | ERC4626VaultWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274a46...0b179c`](./contracts/ethereum-1/0x274a46efd4364ccba654dc74ddb793f9010b179c/) | EthLongMovePermissionsPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf0c90...e81e2a`](./contracts/ethereum-1/0xaf0c901489790c35d9cef02cfa11123009e81e2a/) | EthLongV3Payload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fc3eb...c27364`](./contracts/ethereum-1/0x7fc3ebdb376ff38de2cd597671a6270113c27364/) | EthShortMovePermissionsPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f5c2...584148`](./contracts/ethereum-1/0x62f5c2c54495567537c0f9c4b66a6adb3b584148/) | EthShortV2Payload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30db87...ef41c5`](./contracts/ethereum-1/0x30db87b980d42c060ed90fc890b3b64a24ef41c5/) | EthShortV3Payload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03ee83...ae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/) | EVM2EVMOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x048f2f...85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/) | EVM2EVMOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17dd33...be6957`](./contracts/ethereum-1/0x17dd33ed0e3dd2a80e37489b8a63063161be6957/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc11bd1...05298a`](./contracts/manta-169/0xc11bd1e365e0050ddc6de5f3cf51e7e6f605298a/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x512258...8f198c`](./contracts/ethereum-1/0x512258182db0ad147cdc1a116191be823f8f198c/) | FBTCPartnerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x97bcd5...275b46`](./contracts/manta-169/0x97bcd5a5206f589276650d4eda0452081b275b46/) | FeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x309cfe...cc76eb`](./contracts/manta-169/0x309cfe19f7963d0fc355e6acb1f82299a8cc76eb/) | FeesClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x458ad5...7a5583`](./contracts/linea-59144/0x458ad5b487f4442245e4c5ea7249009e607a5583/) | FixedAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08e8ec...0f7551`](./contracts/ethereum-1/0x08e8ec507968185efb94efd2d355f9932a0f7551/) | FixedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0904e6...78f32f`](./contracts/ethereum-1/0x0904e628c9d1b86c9745185e2587798f5d78f32f/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac3af0...06d93b`](./contracts/ethereum-1/0xac3af0f4a52c577cc2c241df51a01fde3d06d93b/) | FixedRatioSynchronicityPriceAdapterBaseToPeg | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3ecfe...9338ed`](./contracts/ethereum-1/0xc3ecfe771564e3f28cfb7a9b203f4d10279338ed/) | GMPBasculeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4f63...d4913f`](./contracts/ethereum-1/0x0b4f6342ecaccd82cf9269a97eb09bf23ed4913f/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d2df...775996`](./contracts/ethereum-1/0x41d2df327d079125e4619474d793f66cc4775996/) | GovernanceDataHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa198fa...ad1e04`](./contracts/ethereum-1/0xa198fac58e02a5c5f8f7e877895d50cfa9ad1e04/) | GovernancePowerStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7fc513...4741a7`](./contracts/linea-59144/0x7fc513b2823a89c6e0430fe44b91e859fd4741a7/) | InitializableAdminUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04831f...ae12eb`](./contracts/base-8453/0x04831f84de757444fb577245fac1d1d0d7ae12eb/) | L2DepositCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f0147...86c72f`](./contracts/base-8453/0x0f014753b7cb4c74ec90ca385282bb2cb986c72f/) | L2DepositCollateralL0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12364c...348eea`](./contracts/ethereum-1/0x12364c9d095a2a43abb71b0d8313663ff0348eea/) | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017788...93f423`](./contracts/ethereum-1/0x017788dded30fdd859d295b90d4e41a19393f423/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ebbf...34ae48`](./contracts/base-8453/0x06ebbfe85bec9e21e47f5d53ce56905f1d34ae48/) | ListingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca04d...2d9a24`](./contracts/base-8453/0x0ca04d2dddd5ff6b9629221b0ada4f47652d9a24/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61003b...f56095`](./contracts/ethereum-1/0x61003ba35d6f57e0b61442bc88c2c7a45bf56095/) | LombardTokenPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3374d3...251b16`](./contracts/base-8453/0x3374d3c191c45c82cedf0a2e47246de37b251b16/) | MAHAProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052359...2f0080`](./contracts/ethereum-1/0x052359563d104867a42c48cb7e688b1af22f0080/) | Mailbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe34949...93c9ac`](./contracts/ethereum-1/0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac/) | Mediator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c2c7d...d6be0a`](./contracts/ethereum-1/0x0c2c7ded01ccdfab16f04aff82af766b23d6be0a/) | MergedAdapterWithRoundsWeethV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bd55b...a75b0e`](./contracts/ethereum-1/0x6bd55b4ad64a1c79c69015f2e3ae0d8407a75b0e/) | MetaDelegateHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x619643...b39860`](./contracts/ethereum-1/0x619643b346e3389062527cdb60c8720415b39860/) | MetisAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5636...a3f70d`](./contracts/ethereum-1/0x1e563683226824be87685feb8cb733b6aaa3f70d/) | MigratorProposalPayload | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x191986...52ece1`](./contracts/ethereum-1/0x19198689ffbe82207f023248dca175a84c52ece1/) | MockDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac5536...aca056`](./contracts/ethereum-1/0xac55366fe98d068c8deea1b82f3697aa7baca056/) | MockGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xa51fc1...fa79de`](./contracts/manta-169/0xa51fc17109817b2728004b85d9a58de486fa79de/) | MultiCollateralHintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x351125...127590`](./contracts/manta-169/0x3511257bdaee658918e832cacd0f9e11c3127590/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7db270...3ba69b`](./contracts/manta-169/0x7db270182e12bfe88dca47c98cb1ef563c3ba69b/) | ONEZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091a76...e1a460`](./contracts/ethereum-1/0x091a76a70d9e9ef3eae895d3b72dcd587ae1a460/) | OpAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c25b9...229747`](./contracts/ethereum-1/0x3c25b96ff62d21e90556869272a277ee2e229747/) | PayloadsController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1562f1...510a71`](./contracts/ethereum-1/0x1562f1b2487f892bba8ef325af054fd157510a71/) | PolygonAdapterEthereum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a01ab...69bdbb`](./contracts/base-8453/0x0a01ab83ad1a13cfc237ad4e875866c6e569bdbb/) | PoolUIHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1167d1...a5238c`](./contracts/manta-169/0x1167d1339011e6495d4e1d3824c522f1d4a5238c/) | PriceFeedPyth | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41fded...3542ad`](./contracts/ethereum-1/0x41fded6845d19c7236d2c3fb53fe5bcd503542ad/) | PriceFeedsAdapterStaderEthxWithRounds | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a9e09...04e5cf`](./contracts/ethereum-1/0x2a9e09ede0e569223f05737f846b51591a04e5cf/) | PriceFeedsAdapterStaderEthxWithRoundsV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293af9...5e57a3`](./contracts/ethereum-1/0x293af9ca6c6f4b1ec799328d1759ef213a5e57a3/) | PriceFeedsAdapterSwellWithRoundsV5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba0c3...57920a`](./contracts/ethereum-1/0x1ba0c3c2db83b34961dfa683038e11852f57920a/) | PriceFeedStaderEthxWithoutRoundsV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x195e99...5dccb9`](./contracts/manta-169/0x195e9907efb240938099bb88f66f15ad6b5dccb9/) | PrismaCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889c0c...827b4b`](./contracts/ethereum-1/0x889c0cc3283db588a34e89ad1e8f25b0fc827b4b/) | ProposalPayloadLong | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a4c73...653805`](./contracts/ethereum-1/0x4a4c73d563395ad827511f70097d4ef82e653805/) | ProposalPayloadShort | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72233f...dee7db`](./contracts/ethereum-1/0x72233ff361ebd3e157e3fa5224365137b6dee7db/) | ProxyMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2584f7...5dadd6`](./contracts/ethereum-1/0x2584f712f19fb57e0700e7303f5e4c3ff85dadd6/) | PTeBTCDec262024Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe43ec...0c8e6e`](./contracts/ethereum-1/0xbe43eccf64742c1e49a67e0e6e9c7f73710c8e6e/) | PTeBTCMar272025Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d8a6b...a96d39`](./contracts/ethereum-1/0x6d8a6ba0e998b7967efd05ccfcb5f540a0a96d39/) | PTezETHDec262024Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x802fc5...3b4915`](./contracts/ethereum-1/0x802fc5abc3c0e3428a833cf459c9ecf4673b4915/) | PTLBTCDec262024Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe06aa1...73abaa`](./contracts/ethereum-1/0xe06aa134e8e3a207388521ed494f99811a73abaa/) | PTLBTCMar272025Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90a2c1...8cbd47`](./contracts/ethereum-1/0x90a2c1f9a91bc1f9c8988d043e0e9dcbe38cbd47/) | PTrsETHSept262024Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa4b5f...08c473`](./contracts/ethereum-1/0xfa4b5f9b5961c052dd47f4e78901dedfcd08c473/) | PTsUSDeMar272025Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45b45d...e90343`](./contracts/ethereum-1/0x45b45db078ffb1f614c91c65f86f34d2ffe90343/) | PTUSD0ppMar272025Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36169b...67daac`](./contracts/ethereum-1/0x36169baf1a7542b5029c8c257fc7eaf69d67daac/) | PTUSD0ppOct312024Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08362b...d3e92f`](./contracts/ethereum-1/0x08362b926051b2fc209c74dce6670b9608d3e92f/) | PTUSDeMar272025Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2acc2b...48732b`](./contracts/manta-169/0x2acc2b9fc1123ab649895c9e825260f31348732b/) | PullRewardsTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc77514...0610f7`](./contracts/ethereum-1/0xc7751400f809cdb0c167f87985083c558a0610f7/) | RepFixedPriceAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7a2be8...05cd51`](./contracts/manta-169/0x7a2be8f4d864cddad322e62e62f1f369a405cd51/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9088d8...be497a`](./contracts/ethereum-1/0x9088d8a41744e9cca78d01e6185f2acb81be497a/) | StakeAndBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bca0f...7eae88`](./contracts/ethereum-1/0x0bca0fb61480530e87dddbb3bb5f0539c97eae88/) | StakeAndBakeNativeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x072072...782bd9`](./contracts/ethereum-1/0x072072317469ebb6c340a47e41561c9c3b782bd9/) | StakedLBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2e8ba...2d4e19`](./contracts/ethereum-1/0xe2e8badc5d50f8a6188577b89f50701cde2d4e19/) | StakedTokenV2Rev4 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x208d1e...9b30af`](./contracts/ethereum-1/0x208d1ef6ff6509eae897b1ef4096ecf1269b30af/) | StaticATokenLM | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xade6cb...39d901`](./contracts/ethereum-1/0xade6cba6c45aa8e9d0337cac3d2619eabc39d901/) | StETHtoETHSynchronicityPriceAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x93f4d0...d21116`](./contracts/linea-59144/0x93f4d0ab6a8b4271f4a28db399b5e30612d21116/) | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d9c2...bf1a5f`](./contracts/ethereum-1/0x51d9c2e5f23cc9234fe6a8f9b56fec5f1fbf1a5f/) | TellerWithMultiAssetSupportDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b7406...46194a`](./contracts/ethereum-1/0x1b7406b06ce2ff145c274f39941211c2a146194a/) | TerminatedContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3fc90e...5e78fa`](./contracts/linea-59144/0x3fc90e521397b251d4aaa1fbeac7cc32f25e78fa/) | TestnetERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x00000a...c6599d`](./contracts/linea-59144/0x00000ab6ee5a6c1a7ac819b01190b020f7c6599d/) | TimelockControllerEnumerable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62c936...2325ad`](./contracts/ethereum-1/0x62c936a16905afc49b589a41d033ee222a2325ad/) | TokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5afa8b...13d45c`](./contracts/ethereum-1/0x5afa8b5faeac59a44933d4436f9363367813d45c/) | TransferStrategyMultipleSimple | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x05031f...db1f30`](./contracts/manta-169/0x05031fe002c8f01f3e76612bf88709f81bdb1f30/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc89d40...5dc650`](./contracts/manta-169/0xc89d4070d02410daf0032dcaa99ed173b45dc650/) | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ae3f1...0dec22`](./contracts/base-8453/0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22/) | UpgradeableOptimismMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13f967...acb6d5`](./contracts/base-8453/0x13f967f4431a44b604990ad4ad27bc0616acb6d5/) | USDCTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5d3a1f...52ef34`](./contracts/linea-59144/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a179...77bfb6`](./contracts/ethereum-1/0x06a1795a88b82700896583e123f46be43877bfb6/) | VotingMachine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x68c889...87adda`](./contracts/linea-59144/0x68c889e2243ad454f6c8bb6e3290b91f8f87adda/) | weEthToUsdOracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x429b2c...04eb5b`](./contracts/manta-169/0x429b2c12ea2a718ae5fc61f3ad4a84d83704eb5b/) | YieldBearingWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a27e0...a62853`](./contracts/base-8453/0x0a27e060c0406f8ab7b64e3bee036a37e5a62853/) | ZaiOFTWithRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa185ca...13e580`](./contracts/base-8453/0xa185ca8b2894b8d0c26448a7ac6902a96d13e580/) | ZAIUSDCvAMMOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ba5f6...64eb22`](./contracts/base-8453/0x1ba5f6ccab972ed5aabf4d7faf0cda1f9364eb22/) | ZapAerodromePoolUSDC | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x78354f...c3c7a7`](./contracts/linea-59144/0x78354f8dccb269a615a7e0a24f9b0718fdc3c7a7/) | ZeroLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11dcc2...fc429e`](./contracts/ethereum-1/0x11dcc26d4bdac03ffa8841f69313c38240fc429e/) | ZeroOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0e397d...29c0c6`](./contracts/linea-59144/0x0e397dd4d36b152618696b8042663a801029c0c6/) | ZeroOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0a6ee...b89eb6`](./contracts/ethereum-1/0xe0a6eee6d0c883734a7a7e7b378bd09fffb89eb6/) | ZkEVMAdapterEthereum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x420c44...757265`](./contracts/ethereum-1/0x420c440d4fce299f9c0ccb9b2de42f5139757265/) | ZLShares | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 230 |
| upstream | 30 |
| standard_library | 29 |
| needs_review | 325 |

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
