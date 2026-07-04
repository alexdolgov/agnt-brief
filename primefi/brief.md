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
| AaveOracle | operational_periphery | hyperliquid | n/a | [`0x8bd82c...e98dfb`](./contracts/hyperliquid-999/0x8bd82c5f94d2caff3f980f0137f16add71e98dfb/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3bc108...a6544a`](./contracts/hyperliquid-999/0x3bc108ca0202739fc65bf453a255e5c49ba6544a/); base `0x7b7cd0...0c856a` | ⚠️ Unaudited |
| AToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x1de975...826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/); hyperliquid `0x6e2c18...c7bfd0`; hyperliquid `0xa33479...06cc1d` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | hyperliquid | n/a | [`0x8c6357...bf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/) | ⚠️ Unaudited |
| BountyManager | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1d3f9b...df3d48`](./contracts/hyperliquid-999/0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48/); hyperliquid `0x24498e...390778` | ⚠️ Unaudited |
| BountyManager | governance | base | n/a | [`0x95d7a5...97c241`](./contracts/base-8453/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | ⚠️ Unaudited |
| Compounder | adapter | hyperliquid | n/a | [`0xb02411...789e0e`](./contracts/hyperliquid-999/0xb0241128b4e66ea783f12dcb2b73ff19d8789e0e/) | ⚠️ Unaudited |
| Compounder | adapter | base | n/a | [`0xb16aec...76450e`](./contracts/base-8453/0xb16aecafa1310a1c51f66ebdf6fb753bfa76450e/) | ⚠️ Unaudited |
| DataStreamConsumer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x04edbf...8a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/); base `0x163a1e...27f64b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | hyperliquid | n/a | 5 deployments: hyperliquid [`0x0590aa...9213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/); hyperliquid `0x2ce24d...fefb41`; hyperliquid `0x3bc295...bc5fa5`; hyperliquid `0xa2f901...cdef0c`; hyperliquid `0xc3062b...527d57` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb3dd71...07ba97`](./contracts/hyperliquid-999/0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97/); hyperliquid `0xc1f647...9d6e25` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | base | n/a | [`0xe8df0d...af4084`](./contracts/base-8453/0xe8df0d0cba73403ca89e07e6deca9252e1af4084/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| Flik | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x448356...8f219b`](./contracts/hyperliquid-999/0x4483564436120d7fbbac8a346ae0bbad4c8f219b/); hyperliquid `0xd27fb8...0c9576` | ⚠️ Unaudited |
| Flik | unknown | base | n/a | [`0x76c645...28f506`](./contracts/base-8453/0x76c6452e7c4711ee986b4911243ea20d8b28f506/) | ⚠️ Unaudited |
| GenericLogic | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3ad943...b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/); hyperliquid `0xf532fd...7f6b30` | ⚠️ Unaudited |
| IncentivesControllerDiamond | governance | hyperliquid | n/a | [`0x95d7a5...97c241`](./contracts/hyperliquid-999/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | ⚠️ Unaudited |
| IncentivesControllerGetter | governance | hyperliquid | n/a | [`0xc69ba5...6151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | 13 deployments: hyperliquid [`0x07cb5a...905690`](./contracts/hyperliquid-999/0x07cb5aa0c467df9b3a38df3fbfd465c454905690/); hyperliquid `0x182cfb...b9a9fa`; hyperliquid `0x6e811a...447a6e`; hyperliquid `0x71f719...1e8817`; hyperliquid `0x9601c4...2b2d5c`; hyperliquid `0xcf4642...7348ba`; base `0x1ff5e0...a30401`; base `0x47c4d7...46e0a4`; base `0x834695...ca4375`; base `0xaae0d3...95d656`; base `0xb9a14b...68741c`; base `0xc12bdd...2a9066`; base `0xdbed51...42d406` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | base | n/a | [`0x2a50be...fa954e`](./contracts/base-8453/0x2a50be4df06202a239384e828d6e67f9f2fa954e/) | ⚠️ Unaudited |
| LendingPool | unknown | hyperliquid | n/a | [`0x88b60d...0bb7d0`](./contracts/hyperliquid-999/0x88b60d926754accb8facadd092f68f066c0bb7d0/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | n/a | [`0x8a619d...c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x07093c...de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/); hyperliquid `0x66e368...69a8e3`; base `0xbc2adf...82be0c` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | hyperliquid | n/a | 3 deployments: hyperliquid [`0x69a3c3...0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/); hyperliquid `0xbc2adf...82be0c`; base `0xbfee73...162b07` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | hyperliquid | n/a | [`0x168826...3b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x163a1e...27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/); hyperliquid `0xfebc15...31747d` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7169bf...617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/); base `0xd71908...80b79d` | ⚠️ Unaudited |
| LockerList | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6584bf...2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/); base `0x7d08e4...7895a8` | ⚠️ Unaudited |
| Looper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1853d7...5f89e8`](./contracts/hyperliquid-999/0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8/); hyperliquid `0xc95766...9f0da1` | ⚠️ Unaudited |
| Looper | unknown | base | n/a | [`0x515fbd...a769f4`](./contracts/base-8453/0x515fbd7124a782818ba6719e48e94c489ba769f4/) | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1b2164...acb8f6`](./contracts/hyperliquid-999/0x1b2164d254c7fa14901d54fb1043fb228eacb8f6/); hyperliquid `0xfb5c7d...80ed8a` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | base | n/a | [`0x7f2ebf...6eb8df`](./contracts/base-8453/0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df/) | ⚠️ Unaudited |
| Multicall3 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5eb7ed...822dc9`](./contracts/hyperliquid-999/0x5eb7ed8e58e7ed4509612f3e9ccb5433ee822dc9/); base `0xc7c567...1942ad` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x33cd73...b813ef`](./contracts/hyperliquid-999/0x33cd734739c6ded500fd080d476d93135cb813ef/); hyperliquid `0x6a8255...10907c` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | base | n/a | [`0x5b6d95...debd80`](./contracts/base-8453/0x5b6d95545750f1bb1812f5c564d9a401d3debd80/) | ⚠️ Unaudited |
| PRFI | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7bbcf1...de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/); base [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |
| PRFIVesting | operational_periphery | base | n/a | [`0x16db15...50e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | ⚠️ Unaudited |
| PRFIVestingV2 | operational_periphery | base | n/a | [`0x9a01d4...52472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | ⚠️ Unaudited |
| PRFIVestingV2_1 | operational_periphery | base | n/a | [`0x0fe184...f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | ⚠️ Unaudited |
| PRFIVestingV2Proxy | unknown | base | n/a | 2 deployments: base [`0x44312d...80b89c`](./contracts/base-8453/0x44312db52c13fbd33a975db5d12840c17c80b89c/); base `0xc7f171...000c7a` | ⚠️ Unaudited |
| PriceProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x198c93...9ad850`](./contracts/hyperliquid-999/0x198c93ebd82e9285376f43e2a98b8d58969ad850/); hyperliquid `0xea0846...fd2159` | ⚠️ Unaudited |
| PriceProvider | operational_periphery | base | n/a | [`0x04edbf...8a2be6`](./contracts/base-8453/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | ⚠️ Unaudited |
| PrimeChainlinkOracle | operational_periphery | hyperliquid | n/a | [`0x97d76a...849011`](./contracts/hyperliquid-999/0x97d76a00eae8c8a8edc31a746f647dff12849011/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 2 deployments: hyperliquid [`0x11b545...78d4b4`](./contracts/hyperliquid-999/0x11b545129bd04e86a82969dc1d83089be078d4b4/); hyperliquid `0x77b9f5...c9d5fb` | ⚠️ Unaudited |
| ReserveLogic | unknown | hyperliquid | n/a | [`0x70a74f...b361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ⚠️ Unaudited |
| SidechainIncentivesController | governance | hyperliquid | n/a | [`0x68a17d...7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7b4ce0...6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/); hyperliquid `0xab008a...d46db6` | ⚠️ Unaudited |
| StableDebtToken | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5dff4b...2013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/); hyperliquid `0x668115...4da856` | ⚠️ Unaudited |
| StargateBorrow | core_logic | hyperliquid | n/a | [`0xb38063...0618d0`](./contracts/hyperliquid-999/0xb380637652cafbb37e08ecafc015ffcb800618d0/) | ⚠️ Unaudited |
| StargateBorrow | core_logic | base | n/a | [`0x944963...461d65`](./contracts/base-8453/0x944963ff76c7618edbf926469a3f77a78d461d65/) | ⚠️ Unaudited |
| StargatePoolNative | core_logic | base | n/a | [`0xdc181b...b6f7c7`](./contracts/base-8453/0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7/) | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | base | n/a | [`0x27a16d...4b5d26`](./contracts/base-8453/0x27a16dc786820b16e5c9028b75b99f6f604b5d26/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x43960b...faab1d`](./contracts/hyperliquid-999/0x43960b513147ee59bf7018e032add20df7faab1d/); hyperliquid `0x76c645...28f506` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7d87ba...7187d6`](./contracts/hyperliquid-999/0x7d87ba6c21612d96275299916baa295a527187d6/); hyperliquid `0xac4044...e73b4e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | n/a | [`0x69a3c3...0aab7f`](./contracts/base-8453/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | hyperliquid | n/a | [`0x53ced6...7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | core_logic | hyperliquid | n/a | [`0x7d08e4...7895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | ⚠️ Unaudited |
| UniswapPoolHelper | core_logic | hyperliquid | n/a | [`0x58933f...e4de6d`](./contracts/hyperliquid-999/0x58933fab624ed4e6b7eb9e64cb470bb61be4de6d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0x87b417...55bc36`](./contracts/base-8453/0x87b417af600312df37f551a05ae14bcc3d55bc36/) | ⚠️ Unaudited |
| ValidationLogic | unknown | hyperliquid | n/a | [`0x3a0a36...50c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ⚠️ Unaudited |
| VariableDebtToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x065fd3...a02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/); hyperliquid `0x2e6ba5...328988`; hyperliquid `0x924045...37b0d6` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | base | n/a | 2 deployments: hyperliquid `0xa911af...918af9`; base [`0x33cd73...b813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x88ae25...92fcae`](./contracts/hyperliquid-999/0x88ae2596dac8e7e9e235b465ee8215cc3192fcae/); hyperliquid `0xac57f0...74b2ca` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x01c46d...832fae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x089410...769292` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0bd6d1...18da2f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fd0ee...6f6f57` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x40d9ab...da0dc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x519e18...6baa44` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5275a0...dae649` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5382ce...99de88` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57e1fb...8ecb9d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x65a257...8755a4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6ebe64...953ed6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x722843...00212b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x78adb8...9fbbec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x83bb28...2f1ed0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x854dd2...073ca0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89563a...f4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9fa63c...1e330c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc32991...2b1057` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc75f6d...9b8e88` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0696a...40a56a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd75dda...b655be` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdd9308...a7df3b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc67d...10c4a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0412cd...901787` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x065fd3...a02847` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08bacc...ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c7558...93c8f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b2164...acb8f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2bd11f...022973` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x430102...ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5177a8...61a95b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x579d29...8536d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x647fd4...de5cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b25bd...088c41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb974...cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8899da...e96e25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8da56b...bc9fa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdb3ad...3ed570` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6a291...93e26e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf3206...22151a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb3ba9...e9e8e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2e2a4...c8f73d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf78ea7...33808c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfebc15...31747d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x1de975...826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8c6357...bf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/) | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1d3f9b...df3d48`](./contracts/hyperliquid-999/0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48/) | BountyManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x95d7a5...97c241`](./contracts/base-8453/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | BountyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04edbf...8a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | DataStreamConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0590aa...9213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb3dd71...07ba97`](./contracts/hyperliquid-999/0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe8df0d...af4084`](./contracts/base-8453/0xe8df0d0cba73403ca89e07e6deca9252e1af4084/) | EligibilityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x448356...8f219b`](./contracts/hyperliquid-999/0x4483564436120d7fbbac8a346ae0bbad4c8f219b/) | Flik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76c645...28f506`](./contracts/base-8453/0x76c6452e7c4711ee986b4911243ea20d8b28f506/) | Flik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ad943...b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x95d7a5...97c241`](./contracts/hyperliquid-999/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | IncentivesControllerDiamond | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc69ba5...6151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | IncentivesControllerGetter | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x88b60d...0bb7d0`](./contracts/hyperliquid-999/0x88b60d926754accb8facadd092f68f066c0bb7d0/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a619d...c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x07093c...de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/) | LendingPoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x69a3c3...0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x168826...3b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x163a1e...27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/) | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7169bf...617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6584bf...2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/) | LockerList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1853d7...5f89e8`](./contracts/hyperliquid-999/0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8/) | Looper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x515fbd...a769f4`](./contracts/base-8453/0x515fbd7124a782818ba6719e48e94c489ba769f4/) | Looper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1b2164...acb8f6`](./contracts/hyperliquid-999/0x1b2164d254c7fa14901d54fb1043fb228eacb8f6/) | MiddleFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7f2ebf...6eb8df`](./contracts/base-8453/0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df/) | MiddleFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x33cd73...b813ef`](./contracts/hyperliquid-999/0x33cd734739c6ded500fd080d476d93135cb813ef/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b6d95...debd80`](./contracts/base-8453/0x5b6d95545750f1bb1812f5c564d9a401d3debd80/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7bbcf1...de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | PRFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16db15...50e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | PRFIVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a01d4...52472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | PRFIVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fe184...f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | PRFIVestingV2_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44312d...80b89c`](./contracts/base-8453/0x44312db52c13fbd33a975db5d12840c17c80b89c/) | PRFIVestingV2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x198c93...9ad850`](./contracts/hyperliquid-999/0x198c93ebd82e9285376f43e2a98b8d58969ad850/) | PriceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04edbf...8a2be6`](./contracts/base-8453/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | PriceProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x97d76a...849011`](./contracts/hyperliquid-999/0x97d76a00eae8c8a8edc31a746f647dff12849011/) | PrimeChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x70a74f...b361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x68a17d...7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | SidechainIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b4ce0...6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5dff4b...2013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x53ced6...7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | UiPoolDataProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7d08e4...7895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | UiPoolDataProviderV2V3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3a0a36...50c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x065fd3...a02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33cd73...b813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x88ae25...92fcae`](./contracts/hyperliquid-999/0x88ae2596dac8e7e9e235b465ee8215cc3192fcae/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
