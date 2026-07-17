# Agentic Audit Brief: PrimeFi

## Project Overview

- Project: PrimeFi (`primefi`)
- Website: [https://primefi.xyz/](https://primefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.171Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, hyperliquid
- Contract surface: 124 unique implementations (171 raw deployments)
- DeFi Llama TVL: $174,869.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 69 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 34 common project-authored base contract(s) (debttokenbase, incentivizederc20, versionedinitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 187; live-surface contracts included: 164 (102 live, 62 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/50 (0.0%)
- Deployed-live implementations: 65 of 124 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/65
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 124
- Raw deployments: 171
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | hyperliquid | n/a | [`0x8bd82c5f94d2caff3f980f0137f16add71e98dfb`](./contracts/hyperliquid-999/0x8bd82c5f94d2caff3f980f0137f16add71e98dfb/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3bc108ca0202739fc65bf453a255e5c49ba6544a`](./contracts/hyperliquid-999/0x3bc108ca0202739fc65bf453a255e5c49ba6544a/); base `0x7b7cd09465ff2cab67360d5cd24a3cc3ad0c856a` | ⚠️ Unaudited |
| AToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x1de97549d6ce6ab9e44a2f5468ae003a00826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/); hyperliquid `0x6e2c18389f6eea695c9d7d1396efe4dddbc7bfd0`; hyperliquid `0xa334794d82fb7d6f292f77eb78ad5370d306cc1d` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | hyperliquid | n/a | [`0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/) | ⚠️ Unaudited |
| BountyManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48`](./contracts/hyperliquid-999/0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48/); hyperliquid `0x24498eb51a72d7cca8e005e81ed3c2e70f390778` | ⚠️ Unaudited |
| BountyManager | governance | base | n/a | [`0x95d7a59c230d184f16b497c3c1bb834ca397c241`](./contracts/base-8453/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | ⚠️ Unaudited |
| Compounder | adapter | hyperliquid | n/a | [`0xb0241128b4e66ea783f12dcb2b73ff19d8789e0e`](./contracts/hyperliquid-999/0xb0241128b4e66ea783f12dcb2b73ff19d8789e0e/) | ⚠️ Unaudited |
| Compounder | adapter | base | n/a | [`0xb16aecafa1310a1c51f66ebdf6fb753bfa76450e`](./contracts/base-8453/0xb16aecafa1310a1c51f66ebdf6fb753bfa76450e/) | ⚠️ Unaudited |
| DataStreamConsumer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x04edbf3904789d80b0c991e0b66577f2208a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/); base `0x163a1e3cd4726f3c92eb005a942308029c27f64b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | hyperliquid | n/a | 5 deployments: hyperliquid [`0x0590aab2b147adb08da1dcdc555fb0bb509213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/); hyperliquid `0x2ce24d319d7f5598f1c900025cdc939670fefb41`; hyperliquid `0x3bc295c25416721849dc69de40cfa531c8bc5fa5`; hyperliquid `0xa2f901f3e5f910d91cb76686a7fe8319bbcdef0c`; hyperliquid `0xc3062b884ab44aad5823730a52a394c132527d57` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97`](./contracts/hyperliquid-999/0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97/); hyperliquid `0xc1f647c2fb6d21ad13070fca9d543d8c2f9d6e25` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | base | n/a | [`0xe8df0d0cba73403ca89e07e6deca9252e1af4084`](./contracts/base-8453/0xe8df0d0cba73403ca89e07e6deca9252e1af4084/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| Flik | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4483564436120d7fbbac8a346ae0bbad4c8f219b`](./contracts/hyperliquid-999/0x4483564436120d7fbbac8a346ae0bbad4c8f219b/); hyperliquid `0xd27fb81fa6cc49838d181dcb9ab8a81cc60c9576` | ⚠️ Unaudited |
| Flik | unknown | base | n/a | [`0x76c6452e7c4711ee986b4911243ea20d8b28f506`](./contracts/base-8453/0x76c6452e7c4711ee986b4911243ea20d8b28f506/) | ⚠️ Unaudited |
| GenericLogic | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3ad9435fe5dc18d295a2816aaea590b710b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/); hyperliquid `0xf532fdfdf2787c5af15c2b09e8ec6a31247f6b30` | ⚠️ Unaudited |
| IncentivesControllerDiamond | governance | hyperliquid | n/a | [`0x95d7a59c230d184f16b497c3c1bb834ca397c241`](./contracts/hyperliquid-999/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | ⚠️ Unaudited |
| IncentivesControllerGetter | governance | hyperliquid | n/a | [`0xc69ba5c734e68aca6c034c2e5a4170e5966151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | 13 deployments: hyperliquid [`0x07cb5aa0c467df9b3a38df3fbfd465c454905690`](./contracts/hyperliquid-999/0x07cb5aa0c467df9b3a38df3fbfd465c454905690/); hyperliquid `0x182cfb49ad159f8c770ef7ad9ff56f3e61b9a9fa`; hyperliquid `0x6e811aa146f961c918d14be9ed9c0cd68f447a6e`; hyperliquid `0x71f719166c403ac15f55567babdd19b7da1e8817`; hyperliquid `0x9601c465c3c404465d968a2dda10fd807f2b2d5c`; hyperliquid `0xcf4642ef89683d0299b59738b1cc3ac0177348ba`; base `0x1ff5e0037b478547715a4ce337d9fcff86a30401`; base `0x47c4d740016411bb8f5c9d9bdb3f866c9b46e0a4`; base `0x834695a5d33967f8cc27e6d15684c0aa36ca4375`; base `0xaae0d3c0b4aa454ceb5b5346ba1e95a86395d656`; base `0xb9a14b24c6e669d24e76dab65f7c4dc52f68741c`; base `0xc12bdd620a54149df6b73fad9726d387402a9066`; base `0xdbed51f298901987651faf1daed8bb575942d406` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | base | n/a | [`0x2a50be4df06202a239384e828d6e67f9f2fa954e`](./contracts/base-8453/0x2a50be4df06202a239384e828d6e67f9f2fa954e/) | ⚠️ Unaudited |
| LendingPool | unknown | hyperliquid | n/a | [`0x88b60d926754accb8facadd092f68f066c0bb7d0`](./contracts/hyperliquid-999/0x88b60d926754accb8facadd092f68f066c0bb7d0/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | n/a | [`0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x07093ca1e6c8c03ff77dea07532f738d88de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/); hyperliquid `0x66e36833c6dc29befe29a633e4af0cb4dd69a8e3`; base `0xbc2adf6bee6e8468f9e60dfc017d4e2ce682be0c` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | hyperliquid | n/a | 3 deployments: hyperliquid [`0x69a3c30a85aa1e22791466a08819c1080f0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/); hyperliquid `0xbc2adf6bee6e8468f9e60dfc017d4e2ce682be0c`; base `0xbfee735e3868f8990787cceaa4b920c9ed162b07` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | hyperliquid | n/a | [`0x1688266ce67dc0894dfb71be2ef319feb03b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x163a1e3cd4726f3c92eb005a942308029c27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/); hyperliquid `0xfebc15460a5af7bd5c0f2d6746aab00c9531747d` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/); base `0xd719084151f1f47b7dcb937bb33845656580b79d` | ⚠️ Unaudited |
| LockerList | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/); base `0x7d08e488fa39e7f29701c90eb49cc766857895a8` | ⚠️ Unaudited |
| Looper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8`](./contracts/hyperliquid-999/0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8/); hyperliquid `0xc957668b2a4c507d44d0aeebd1f8f5fc139f0da1` | ⚠️ Unaudited |
| Looper | unknown | base | n/a | [`0x515fbd7124a782818ba6719e48e94c489ba769f4`](./contracts/base-8453/0x515fbd7124a782818ba6719e48e94c489ba769f4/) | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1b2164d254c7fa14901d54fb1043fb228eacb8f6`](./contracts/hyperliquid-999/0x1b2164d254c7fa14901d54fb1043fb228eacb8f6/); hyperliquid `0xfb5c7dc83caa47e9ab314073fb5152191380ed8a` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | base | n/a | [`0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df`](./contracts/base-8453/0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df/) | ⚠️ Unaudited |
| Multicall3 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5eb7ed8e58e7ed4509612f3e9ccb5433ee822dc9`](./contracts/hyperliquid-999/0x5eb7ed8e58e7ed4509612f3e9ccb5433ee822dc9/); base `0xc7c567e10656eb2f4b1024757263a587ac1942ad` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x33cd734739c6ded500fd080d476d93135cb813ef`](./contracts/hyperliquid-999/0x33cd734739c6ded500fd080d476d93135cb813ef/); hyperliquid `0x6a82558f226b3e7450024481d634694d3210907c` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | base | n/a | [`0x5b6d95545750f1bb1812f5c564d9a401d3debd80`](./contracts/base-8453/0x5b6d95545750f1bb1812f5c564d9a401d3debd80/) | ⚠️ Unaudited |
| PRFI | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7bbcf1b600565ae023a1806ef637af4739de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/); base [`0x7bbcf1b600565ae023a1806ef637af4739de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |
| PRFIVesting | operational_periphery | base | n/a | [`0x16db157393eb152a0c708d053c2b91e5a350e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | ⚠️ Unaudited |
| PRFIVestingV2 | operational_periphery | base | n/a | [`0x9a01d4f32a6ba70185b736588dfc77c25852472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | ⚠️ Unaudited |
| PRFIVestingV2_1 | operational_periphery | base | n/a | [`0x0fe1842557dd15b9c040486e68677c2eb3f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | ⚠️ Unaudited |
| PRFIVestingV2Proxy | unknown | base | n/a | 2 deployments: base [`0x44312db52c13fbd33a975db5d12840c17c80b89c`](./contracts/base-8453/0x44312db52c13fbd33a975db5d12840c17c80b89c/); base `0xc7f1716625d999fb8d70b67e47310fe401000c7a` | ⚠️ Unaudited |
| PriceProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x198c93ebd82e9285376f43e2a98b8d58969ad850`](./contracts/hyperliquid-999/0x198c93ebd82e9285376f43e2a98b8d58969ad850/); hyperliquid `0xea08468efd77bc42d09f629f890770bf19fd2159` | ⚠️ Unaudited |
| PriceProvider | operational_periphery | base | n/a | [`0x04edbf3904789d80b0c991e0b66577f2208a2be6`](./contracts/base-8453/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | ⚠️ Unaudited |
| PrimeChainlinkOracle | operational_periphery | hyperliquid | n/a | [`0x97d76a00eae8c8a8edc31a746f647dff12849011`](./contracts/hyperliquid-999/0x97d76a00eae8c8a8edc31a746f647dff12849011/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 2 deployments: hyperliquid [`0x11b545129bd04e86a82969dc1d83089be078d4b4`](./contracts/hyperliquid-999/0x11b545129bd04e86a82969dc1d83089be078d4b4/); hyperliquid `0x77b9f5c7ab2c1192869c704615eaee9981c9d5fb` | ⚠️ Unaudited |
| ReserveLogic | unknown | hyperliquid | n/a | [`0x70a74f992a2806e2921c4e9205e4e6237ab361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ⚠️ Unaudited |
| SidechainIncentivesController | governance | hyperliquid | n/a | [`0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/); hyperliquid `0xab008abd38ac3fb371d8c442d48e10225cd46db6` | ⚠️ Unaudited |
| StableDebtToken | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5dff4ba7a9858a03e7958aba906fdf8d702013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/); hyperliquid `0x6681155c2edc50f79535d8e4861c3fdb1d4da856` | ⚠️ Unaudited |
| StargateBorrow | core_logic | hyperliquid | n/a | [`0xb380637652cafbb37e08ecafc015ffcb800618d0`](./contracts/hyperliquid-999/0xb380637652cafbb37e08ecafc015ffcb800618d0/) | ⚠️ Unaudited |
| StargateBorrow | core_logic | base | n/a | [`0x944963ff76c7618edbf926469a3f77a78d461d65`](./contracts/base-8453/0x944963ff76c7618edbf926469a3f77a78d461d65/) | ⚠️ Unaudited |
| StargatePoolNative | core_logic | base | n/a | [`0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7`](./contracts/base-8453/0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7/) | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | base | n/a | [`0x27a16dc786820b16e5c9028b75b99f6f604b5d26`](./contracts/base-8453/0x27a16dc786820b16e5c9028b75b99f6f604b5d26/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x43960b513147ee59bf7018e032add20df7faab1d`](./contracts/hyperliquid-999/0x43960b513147ee59bf7018e032add20df7faab1d/); hyperliquid `0x76c6452e7c4711ee986b4911243ea20d8b28f506` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d87ba6c21612d96275299916baa295a527187d6`](./contracts/hyperliquid-999/0x7d87ba6c21612d96275299916baa295a527187d6/); hyperliquid `0xac4044aa30d3f8727cce1f7d527cb7bc02e73b4e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | n/a | [`0x69a3c30a85aa1e22791466a08819c1080f0aab7f`](./contracts/base-8453/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | hyperliquid | n/a | [`0x53ced6bedea3e1f0f729629ac59c698d4a7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | core_logic | hyperliquid | n/a | [`0x7d08e488fa39e7f29701c90eb49cc766857895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | ⚠️ Unaudited |
| UniswapPoolHelper | core_logic | hyperliquid | n/a | [`0x58933fab624ed4e6b7eb9e64cb470bb61be4de6d`](./contracts/hyperliquid-999/0x58933fab624ed4e6b7eb9e64cb470bb61be4de6d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0x87b417af600312df37f551a05ae14bcc3d55bc36`](./contracts/base-8453/0x87b417af600312df37f551a05ae14bcc3d55bc36/) | ⚠️ Unaudited |
| ValidationLogic | unknown | hyperliquid | n/a | [`0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ⚠️ Unaudited |
| VariableDebtToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x065fd3ba477c85503bfac48be7d1a2fcada02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/); hyperliquid `0x2e6ba568aaebadb4db3e018313ee34bad0328988`; hyperliquid `0x924045931252a4a5fa7dcbc32bd963939837b0d6` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | base | n/a | 2 deployments: hyperliquid `0xa911afd7db4226cee8073cda2da668b4cb918af9`; base [`0x33cd734739c6ded500fd080d476d93135cb813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x88ae2596dac8e7e9e235b465ee8215cc3192fcae`](./contracts/hyperliquid-999/0x88ae2596dac8e7e9e235b465ee8215cc3192fcae/); hyperliquid `0xac57f0d2f8ef17b8d26189ba0db353361374b2ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x01c46d99154b80f201803d6c16bccfb9a7832fae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0894102d71ee64342741fd5d15c601a027769292` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0bd6d1d83bee2d56c4be64cce156913c6c18da2f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1e8559dc36662ef13c924e0ef65a4c8bbcb97582` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fd0ee2db11a51e316d6dd26a6319ea00e6f6f57` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x40d9ab82b92d9bbf30a851b5c9fca840b5da0dc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x519e18819096019fa9281ff3bd71d837036baa44` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5275a0d20e9904122667b1bf0407280178dae649` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5382ce056de531290f3f69b28d84e075e299de88` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57e1fb32d4c36320fcc1fc9aa1441858238ecb9d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x65a2578e2bb5fe859bf637fec45b5a8e408755a4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6ebe64e923405610834c8e9694500a42eb953ed6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x722843b638dc6c2d8f8697fb2b65cae85700212b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x78adb8d91ab57332c49a0ae6bb3031f3909fbbec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x83bb28cc173814fecabad6d9be0baa03c02f1ed0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x854dd2b26b88411eca8493178e330f83d3073ca0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89563afbc36145d27c567dd4eefab766aaf4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9fa63c68d7d2b72f923f96cd95fbde70341e330c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc32991be6e2cb5f516f85cc512c3bde4632b1057` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc75f6d68b0efc3f20692b8a4b3750018639b8e88` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0696a0d8b584001905acbec62d899abdf40a56a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd75dda802a2cece36c542868a6f5ea590db655be` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdd93088e35e0b5423a394b934385229b13a7df3b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc67d79ecdd40f0702c38d7a50985275d10c4a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x065fd3ba477c85503bfac48be7d1a2fcada02847` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c7558f634b3465ff7637500d5a710731393c8f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b2164d254c7fa14901d54fb1043fb228eacb8f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e8559dc36662ef13c924e0ef65a4c8bbcb97582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bd11f0f5e36411d7587d8a8969f9db6c7022973` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d51540dfdda899ba2fc15fd7b78e53557563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x430102caac989c9259edb9a80a772ce547ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x647fd4d817e395616f2eb57b75ab49210cde5cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x793db56a15ca053dcfd9d62b9992eb1906bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f06ed5f7844037a01d7b3f690c2dcc1c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ceb2583db939ca2e3ddf638cd34e7654936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8da56bed633b73547535f0563f287472e1bc9fa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdb3ad3d8f873a9a1c35e36f4545b15e293ed570` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf320691ea30081a9c4179ab31ddb7e23e22151a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb3ba9f55ec6fa6395d64300ee2bb75f50e9e8e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2e2a49631927108086268c68c559c63c3c8f73d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfebc15460a5af7bd5c0f2d6746aab00c9531747d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x1de97549d6ce6ab9e44a2f5468ae003a00826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/) | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48`](./contracts/hyperliquid-999/0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48/) | BountyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x95d7a59c230d184f16b497c3c1bb834ca397c241`](./contracts/base-8453/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | BountyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04edbf3904789d80b0c991e0b66577f2208a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | DataStreamConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0590aab2b147adb08da1dcdc555fb0bb509213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97`](./contracts/hyperliquid-999/0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe8df0d0cba73403ca89e07e6deca9252e1af4084`](./contracts/base-8453/0xe8df0d0cba73403ca89e07e6deca9252e1af4084/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4483564436120d7fbbac8a346ae0bbad4c8f219b`](./contracts/hyperliquid-999/0x4483564436120d7fbbac8a346ae0bbad4c8f219b/) | Flik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76c6452e7c4711ee986b4911243ea20d8b28f506`](./contracts/base-8453/0x76c6452e7c4711ee986b4911243ea20d8b28f506/) | Flik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ad9435fe5dc18d295a2816aaea590b710b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x95d7a59c230d184f16b497c3c1bb834ca397c241`](./contracts/hyperliquid-999/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | IncentivesControllerDiamond | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc69ba5c734e68aca6c034c2e5a4170e5966151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | IncentivesControllerGetter | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x88b60d926754accb8facadd092f68f066c0bb7d0`](./contracts/hyperliquid-999/0x88b60d926754accb8facadd092f68f066c0bb7d0/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x07093ca1e6c8c03ff77dea07532f738d88de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/) | LendingPoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x69a3c30a85aa1e22791466a08819c1080f0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1688266ce67dc0894dfb71be2ef319feb03b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x163a1e3cd4726f3c92eb005a942308029c27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/) | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/) | LockerList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8`](./contracts/hyperliquid-999/0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8/) | Looper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x515fbd7124a782818ba6719e48e94c489ba769f4`](./contracts/base-8453/0x515fbd7124a782818ba6719e48e94c489ba769f4/) | Looper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1b2164d254c7fa14901d54fb1043fb228eacb8f6`](./contracts/hyperliquid-999/0x1b2164d254c7fa14901d54fb1043fb228eacb8f6/) | MiddleFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df`](./contracts/base-8453/0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df/) | MiddleFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x33cd734739c6ded500fd080d476d93135cb813ef`](./contracts/hyperliquid-999/0x33cd734739c6ded500fd080d476d93135cb813ef/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b6d95545750f1bb1812f5c564d9a401d3debd80`](./contracts/base-8453/0x5b6d95545750f1bb1812f5c564d9a401d3debd80/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7bbcf1b600565ae023a1806ef637af4739de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | PRFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16db157393eb152a0c708d053c2b91e5a350e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | PRFIVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a01d4f32a6ba70185b736588dfc77c25852472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | PRFIVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fe1842557dd15b9c040486e68677c2eb3f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | PRFIVestingV2_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44312db52c13fbd33a975db5d12840c17c80b89c`](./contracts/base-8453/0x44312db52c13fbd33a975db5d12840c17c80b89c/) | PRFIVestingV2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x198c93ebd82e9285376f43e2a98b8d58969ad850`](./contracts/hyperliquid-999/0x198c93ebd82e9285376f43e2a98b8d58969ad850/) | PriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04edbf3904789d80b0c991e0b66577f2208a2be6`](./contracts/base-8453/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | PriceProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x97d76a00eae8c8a8edc31a746f647dff12849011`](./contracts/hyperliquid-999/0x97d76a00eae8c8a8edc31a746f647dff12849011/) | PrimeChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x70a74f992a2806e2921c4e9205e4e6237ab361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | SidechainIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5dff4ba7a9858a03e7958aba906fdf8d702013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x53ced6bedea3e1f0f729629ac59c698d4a7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | UiPoolDataProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7d08e488fa39e7f29701c90eb49cc766857895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | UiPoolDataProviderV2V3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x065fd3ba477c85503bfac48be7d1a2fcada02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33cd734739c6ded500fd080d476d93135cb813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x88ae2596dac8e7e9e235b465ee8215cc3192fcae`](./contracts/hyperliquid-999/0x88ae2596dac8e7e9e235b465ee8215cc3192fcae/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 10 |
| standard_library | 7 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3

Fork inheritance lineage and inherited audits are included when available.
