# Agentic Audit Brief: PrimeFi

⚠️ Lifecycle status: DECLINING - TVL dropped 45.8% over 90 days

## Project Overview

- Project: PrimeFi (`primefi`)
- Website: [https://primefi.xyz/](https://primefi.xyz/)
- Lifecycle: declining (Tier 0, 93% below peak)
- Generated: 2026-06-17T07:00:40.618Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, hyperliquid
- Contract surface: 84 unique implementations (125 raw deployments)
- DeFi Llama TVL: $243,013.37
- On-chain TVL (included contracts): $4,115,964.04
- TVL by chain: Base $4,115,964.04

## Project Description

PrimeFi is a cross-chain lending protocol that enables users to supply assets to earn interest and borrow against collateral. It supports deployments across HyperEVM/Hyperliquid, Base, and XDC. Third-party tokens, pools, Multicall, WETH/native wrappers, Circle USDC, and upstream bridge or liquidity infrastructure should be treated as dependencies or integrations rather than PrimeFi-owned contract surface or TVL.

### Architecture

The Core Protocol family provides the lending infrastructure, with pTokens and vdTokens representing supply and borrow positions respectively. Incentives, Fees & Governance contracts distribute rewards and manage protocol parameters, while cross-chain adapters like StargateBorrow and HyperliquidExtension extend functionality to external liquidity and trading venues.

## Contract Surface Quality

- Indexed contracts: 189; live-surface contracts included: 125 (118 live, 7 unknown).
- Excluded by liveness: 23 inactive, 41 singleton, 0 uninitialized.
- Deployment units: 18/39 live.
- Detected codebases: aave-v2, uniswap-v2
- Unverified dependencies: 1/6.

## Audit Coverage Summary

- Verified implementations audited: 0/54 (0.0%)
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 4
- Unverified implementations: 30
- Unique implementations: 84
- Raw deployments: 125
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,115,964.04
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,115,964.04 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StargatePoolUSDC | core_logic | base | n/a | [`0x27a16d...4b5d26`](./contracts/base-8453/0x27a16dc786820b16e5c9028b75b99f6f604b5d26/) | ⚠️ Unaudited |
| StargatePoolNative | core_logic | base | n/a | [`0xdc181b...b6f7c7`](./contracts/base-8453/0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3bc108...a6544a`](./contracts/hyperliquid-999/0x3bc108ca0202739fc65bf453a255e5c49ba6544a/); base `0x7b7cd0...0c856a` | ⚠️ Unaudited |
| AToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x1de975...826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/); hyperliquid `0x6e2c18...c7bfd0`; hyperliquid `0xa33479...06cc1d` | ⚠️ Unaudited |
| BountyManager | governance | base | unit-24828 | [`0x95d7a5...97c241`](./contracts/base-8453/0x95d7a59c230d184f16b497c3c1bb834ca397c241/) | ⚠️ Unaudited |
| Compounder | adapter | hyperliquid | unit-24810 | [`0xb02411...789e0e`](./contracts/hyperliquid-999/0xb0241128b4e66ea783f12dcb2b73ff19d8789e0e/) | ⚠️ Unaudited |
| Compounder | adapter | base | unit-24829 | [`0xb16aec...76450e`](./contracts/base-8453/0xb16aecafa1310a1c51f66ebdf6fb753bfa76450e/) | ⚠️ Unaudited |
| DataStreamConsumer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x04edbf...8a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/); base `0x163a1e...27f64b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | hyperliquid | n/a | 5 deployments: hyperliquid [`0x0590aa...9213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/); hyperliquid `0x2ce24d...fefb41`; hyperliquid `0x3bc295...bc5fa5`; hyperliquid `0xa2f901...cdef0c`; hyperliquid `0xc3062b...527d57` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | base | unit-24831 | [`0xe8df0d...af4084`](./contracts/base-8453/0xe8df0d0cba73403ca89e07e6deca9252e1af4084/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-24830 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-24825 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| Flik | unknown | base | unit-24823 | [`0x76c645...28f506`](./contracts/base-8453/0x76c6452e7c4711ee986b4911243ea20d8b28f506/) | ⚠️ Unaudited |
| GenericLogic | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x3ad943...b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/); hyperliquid `0xf532fd...7f6b30` | ⚠️ Unaudited |
| IncentivesControllerGetter | governance | hyperliquid | n/a | [`0xc69ba5...6151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | 13 deployments: hyperliquid [`0x07cb5a...905690`](./contracts/hyperliquid-999/0x07cb5aa0c467df9b3a38df3fbfd465c454905690/); hyperliquid `0x182cfb...b9a9fa`; hyperliquid `0x6e811a...447a6e`; hyperliquid `0x71f719...1e8817`; hyperliquid `0x9601c4...2b2d5c`; hyperliquid `0xcf4642...7348ba`; base `0x1ff5e0...a30401`; base `0x47c4d7...46e0a4`; base `0x834695...ca4375`; base `0xaae0d3...95d656`; base `0xb9a14b...68741c`; base `0xc12bdd...2a9066`; base `0xdbed51...42d406` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | base | unit-24817 | [`0x2a50be...fa954e`](./contracts/base-8453/0x2a50be4df06202a239384e828d6e67f9f2fa954e/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | unit-24826 | [`0x8a619d...c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x07093c...de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/); hyperliquid `0x66e368...69a8e3`; base `0xbc2adf...82be0c` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | hyperliquid | n/a | 3 deployments: hyperliquid [`0x69a3c3...0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/); hyperliquid `0xbc2adf...82be0c`; base `0xbfee73...162b07` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | hyperliquid | n/a | [`0x168826...3b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x163a1e...27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/); hyperliquid `0xfebc15...31747d` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7169bf...617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/); base `0xd71908...80b79d` | ⚠️ Unaudited |
| LockerList | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6584bf...2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/); base `0x7d08e4...7895a8` | ⚠️ Unaudited |
| Looper | unknown | base | unit-24819 | [`0x515fbd...a769f4`](./contracts/base-8453/0x515fbd7124a782818ba6719e48e94c489ba769f4/) | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | base | unit-24824 | [`0x7f2ebf...6eb8df`](./contracts/base-8453/0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df/) | ⚠️ Unaudited |
| Multicall3 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5eb7ed...822dc9`](./contracts/hyperliquid-999/0x5eb7ed8e58e7ed4509612f3e9ccb5433ee822dc9/); base `0xc7c567...1942ad` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | base | unit-24820 | [`0x5b6d95...debd80`](./contracts/base-8453/0x5b6d95545750f1bb1812f5c564d9a401d3debd80/) | ⚠️ Unaudited |
| PRFI | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7bbcf1...de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/); base [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |
| PRFIVesting | operational_periphery | base | n/a | [`0x16db15...50e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | ⚠️ Unaudited |
| PRFIVestingV2 | operational_periphery | base | n/a | [`0x9a01d4...52472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | ⚠️ Unaudited |
| PRFIVestingV2_1 | operational_periphery | base | n/a | [`0x0fe184...f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | ⚠️ Unaudited |
| PriceProvider | operational_periphery | base | unit-24816 | [`0x04edbf...8a2be6`](./contracts/base-8453/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | ⚠️ Unaudited |
| PrimeChainlinkOracle | operational_periphery | hyperliquid | unit-24808 | [`0x97d76a...849011`](./contracts/hyperliquid-999/0x97d76a00eae8c8a8edc31a746f647dff12849011/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 2 deployments: hyperliquid [`0x11b545...78d4b4`](./contracts/hyperliquid-999/0x11b545129bd04e86a82969dc1d83089be078d4b4/); hyperliquid `0x77b9f5...c9d5fb` | ⚠️ Unaudited |
| ReserveLogic | unknown | hyperliquid | n/a | [`0x70a74f...b361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ⚠️ Unaudited |
| SidechainIncentivesController | governance | hyperliquid | n/a | [`0x68a17d...7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | ⚠️ Unaudited |
| StableDebtToken | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5dff4b...2013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/); hyperliquid `0x668115...4da856` | ⚠️ Unaudited |
| StargateBorrow | core_logic | hyperliquid | unit-24812 | [`0xb38063...0618d0`](./contracts/hyperliquid-999/0xb380637652cafbb37e08ecafc015ffcb800618d0/) | ⚠️ Unaudited |
| StargateBorrow | core_logic | base | unit-24827 | [`0x944963...461d65`](./contracts/base-8453/0x944963ff76c7618edbf926469a3f77a78d461d65/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | unit-24822 | [`0x69a3c3...0aab7f`](./contracts/base-8453/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | hyperliquid | n/a | [`0x53ced6...7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | core_logic | hyperliquid | n/a | [`0x7d08e4...7895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | ⚠️ Unaudited |
| UniswapPoolHelper | core_logic | hyperliquid | unit-24806 | [`0x58933f...e4de6d`](./contracts/hyperliquid-999/0x58933fab624ed4e6b7eb9e64cb470bb61be4de6d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0x87b417...55bc36`](./contracts/base-8453/0x87b417af600312df37f551a05ae14bcc3d55bc36/) | ⚠️ Unaudited |
| ValidationLogic | unknown | hyperliquid | n/a | [`0x3a0a36...50c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ⚠️ Unaudited |
| VariableDebtToken | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x065fd3...a02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/); hyperliquid `0x2e6ba5...328988`; hyperliquid `0x924045...37b0d6` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | base | n/a | 2 deployments: hyperliquid `0xa911af...918af9`; base [`0x33cd73...b813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x88ae25...92fcae`](./contracts/hyperliquid-999/0x88ae2596dac8e7e9e235b465ee8215cc3192fcae/); hyperliquid `0xac57f0...74b2ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | unknown | base | n/a | 2 deployments: hyperliquid `0x8bd82c...e98dfb`; base [`0x2bd11f...022973`](./contracts/base-8453/0x2bd11f0f5e36411d7587d8a8969f9db6c7022973/) | ⚠️ Unaudited (bytecode match) |
| ATokensAndRatesHelper | token | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8c6357...bf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/); base `0xeb3ba9...e9e8e5` | ⚠️ Unaudited (bytecode match) |
| IncentivesControllerDiamond | unknown | base | n/a | 2 deployments: hyperliquid `0x95d7a5...97c241`; base [`0x0c7558...93c8f2`](./contracts/base-8453/0x0c7558f634b3465ff7637500d5a710731393c8f2/) | ⚠️ Unaudited (bytecode match) |
| StableAndVariableTokensHelper | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x7b4ce0...6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/); hyperliquid `0xab008a...d46db6`; base `0xfebc15...31747d` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x01c46d...832fae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x089410...769292` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0bd6d1...18da2f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fd0ee...6f6f57` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x519e18...6baa44` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5275a0...dae649` | ❓ Unverified |
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
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc67d...10c4a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x065fd3...a02847` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b2164...acb8f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf3206...22151a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2e2a4...c8f73d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [| **Report** | <> |](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [See report](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x2bd11f...022973`](./contracts/base-8453/0x2bd11f0f5e36411d7587d8a8969f9db6c7022973/) | AaveOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1de975...826a82`](./contracts/hyperliquid-999/0x1de97549d6ce6ab9e44a2f5468ae003a00826a82/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8c6357...bf83e8`](./contracts/hyperliquid-999/0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8/) | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04edbf...8a2be6`](./contracts/hyperliquid-999/0x04edbf3904789d80b0c991e0b66577f2208a2be6/) | DataStreamConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0590aa...9213a9`](./contracts/hyperliquid-999/0x0590aab2b147adb08da1dcdc555fb0bb509213a9/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ad943...b0462f`](./contracts/hyperliquid-999/0x3ad9435fe5dc18d295a2816aaea590b710b0462f/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c7558...93c8f2`](./contracts/base-8453/0x0c7558f634b3465ff7637500d5a710731393c8f2/) | IncentivesControllerDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc69ba5...6151be`](./contracts/hyperliquid-999/0xc69ba5c734e68aca6c034c2e5a4170e5966151be/) | IncentivesControllerGetter | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x07cb5a...905690`](./contracts/hyperliquid-999/0x07cb5aa0c467df9b3a38df3fbfd465c454905690/) | InitializableImmutableAdminUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a50be...fa954e`](./contracts/base-8453/0x2a50be4df06202a239384e828d6e67f9f2fa954e/) | InitializableImmutableAdminUpgradeabilityProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a619d...c739c3`](./contracts/base-8453/0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3/) | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x07093c...de1d75`](./contracts/hyperliquid-999/0x07093ca1e6c8c03ff77dea07532f738d88de1d75/) | LendingPoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x69a3c3...0aab7f`](./contracts/hyperliquid-999/0x69a3c30a85aa1e22791466a08819c1080f0aab7f/) | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x168826...3b1b6b`](./contracts/hyperliquid-999/0x1688266ce67dc0894dfb71be2ef319feb03b1b6b/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x163a1e...27f64b`](./contracts/hyperliquid-999/0x163a1e3cd4726f3c92eb005a942308029c27f64b/) | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7169bf...617632`](./contracts/hyperliquid-999/0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6584bf...2f42ad`](./contracts/hyperliquid-999/0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad/) | LockerList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7bbcf1...de3255`](./contracts/hyperliquid-999/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | PRFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16db15...50e38e`](./contracts/base-8453/0x16db157393eb152a0c708d053c2b91e5a350e38e/) | PRFIVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a01d4...52472a`](./contracts/base-8453/0x9a01d4f32a6ba70185b736588dfc77c25852472a/) | PRFIVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fe184...f38040`](./contracts/base-8453/0x0fe1842557dd15b9c040486e68677c2eb3f38040/) | PRFIVestingV2_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x70a74f...b361f9`](./contracts/hyperliquid-999/0x70a74f992a2806e2921c4e9205e4e6237ab361f9/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x68a17d...7a4878`](./contracts/hyperliquid-999/0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878/) | SidechainIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b4ce0...6a8d98`](./contracts/hyperliquid-999/0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5dff4b...2013cd`](./contracts/hyperliquid-999/0x5dff4ba7a9858a03e7958aba906fdf8d702013cd/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x53ced6...7fe409`](./contracts/hyperliquid-999/0x53ced6bedea3e1f0f729629ac59c698d4a7fe409/) | UiPoolDataProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7d08e4...7895a8`](./contracts/hyperliquid-999/0x7d08e488fa39e7f29701c90eb49cc766857895a8/) | UiPoolDataProviderV2V3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3a0a36...50c7dd`](./contracts/hyperliquid-999/0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd/) | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x065fd3...a02847`](./contracts/hyperliquid-999/0x065fd3ba477c85503bfac48be7d1a2fcada02847/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33cd73...b813ef`](./contracts/base-8453/0x33cd734739c6ded500fd080d476d93135cb813ef/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2750] | **Report** | <> |
- [2751] See report

Fork inheritance lineage and inherited audits are included when available.
