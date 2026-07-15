# Agentic Audit Brief: PrimeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PrimeFi (`primefi`)
- Website: [https://primefi.xyz/](https://primefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, hyperliquid
- Contract surface: 155 unique implementations (198 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $174,869.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PrimeFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, hyperliquid. Structural roles: 13 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (13), core (1)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x009a18...fa748a`, chain 999)
- UnnamedContract (`0x11f746...46d373`, chain 999)
- UnnamedContract (`0x1952dd...1490e5`, chain 999)
- UnnamedContract (`0x386f40...21095b`, chain 999)
- UnnamedContract (`0x5fc173...31cab9`, chain 999)
- UnnamedContract (`0x98b705...89d2d6`, chain 999)
- UnnamedContract (`0xd00fe5...6e5365`, chain 999)
- UnnamedContract (`0xd218a5...e3114c`, chain 999)
- UnnamedContract (`0x3a577f...158a37`, chain 8453)
- UnnamedContract (`0xd9ba32...7bbfe8`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x07cb5a...905690`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x182cfb...b9a9fa`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6e811a...447a6e`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x71f719...1e8817`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9601c4...2b2d5c`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0xcf4642...7348ba`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1ff5e0...a30401`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2a50be...fa954e`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x47c4d7...46e0a4`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x834695...ca4375`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaae0d3...95d656`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9a14b...68741c`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc12bdd...2a9066`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdbed51...42d406`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 131 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 24 of 155 unique; 131 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 155
- Raw deployments: 198
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8bd82c...e98dfb` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3bc108...a6544a`; base `0x7b7cd0...0c856a` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x1de975...826a82`; hyperliquid `0x6e2c18...c7bfd0`; hyperliquid `0xa33479...06cc1d` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8c6357...bf83e8` | ⚠️ Unaudited |
| BountyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1d3f9b...df3d48`; hyperliquid `0x24498e...390778` | ⚠️ Unaudited |
| BountyManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x95d7a5...97c241` | ⚠️ Unaudited |
| Compounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb02411...789e0e` | ⚠️ Unaudited |
| Compounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb16aec...76450e` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x12dc92...e62cee`; base `0x21e673...d92b9e`; base `0x6b73d3...c4594b` | ⚠️ Unaudited |
| DataStreamConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x04edbf...8a2be6`; base `0x163a1e...27f64b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: hyperliquid `0x0590aa...9213a9`; hyperliquid `0x2ce24d...fefb41`; hyperliquid `0x3bc295...bc5fa5`; hyperliquid `0xa2f901...cdef0c`; hyperliquid `0xc3062b...527d57` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb3dd71...07ba97`; hyperliquid `0xc1f647...9d6e25` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe8df0d...af4084` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x08ed1d...44441e`; base `0x15efb7...e7b389`; base `0x17e450...ef9a34`; base `0xa76cd3...cc6184` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589...a02913` | ⚠️ Unaudited |
| Flik | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x448356...8f219b`; hyperliquid `0xd27fb8...0c9576` | ⚠️ Unaudited |
| Flik | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x76c645...28f506` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3ad943...b0462f`; hyperliquid `0xf532fd...7f6b30` | ⚠️ Unaudited |
| IncentivesControllerDiamond | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x95d7a5...97c241` | ⚠️ Unaudited |
| IncentivesControllerGetter | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc69ba5...6151be` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251787 | `0x07cb5a...905690` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251789 | `0x182cfb...b9a9fa` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251793 | `0x6e811a...447a6e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251794 | `0x71f719...1e8817` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251795 | `0x9601c4...2b2d5c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251797 | `0xcf4642...7348ba` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251777 | `0x1ff5e0...a30401` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | base | unit-251800 | `0x2a50be...fa954e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251779 | `0x47c4d7...46e0a4` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251780 | `0x834695...ca4375` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251781 | `0xaae0d3...95d656` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251782 | `0xb9a14b...68741c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251783 | `0xc12bdd...2a9066` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251785 | `0xdbed51...42d406` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x88b60d...0bb7d0` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8a619d...c739c3` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x07093c...de1d75`; hyperliquid `0x66e368...69a8e3`; base `0xbc2adf...82be0c` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x69a3c3...0aab7f`; hyperliquid `0xbc2adf...82be0c`; base `0xbfee73...162b07` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x168826...3b1b6b` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x163a1e...27f64b`; hyperliquid `0xfebc15...31747d` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7169bf...617632`; base `0xd71908...80b79d` | ⚠️ Unaudited |
| LockerList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6584bf...2f42ad`; base `0x7d08e4...7895a8` | ⚠️ Unaudited |
| Looper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1853d7...5f89e8`; hyperliquid `0xc95766...9f0da1` | ⚠️ Unaudited |
| Looper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x515fbd...a769f4` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1b2164...acb8f6`; hyperliquid `0xfb5c7d...80ed8a` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7f2ebf...6eb8df` | ⚠️ Unaudited |
| Multicall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5eb7ed...822dc9`; base `0xc7c567...1942ad` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x33cd73...b813ef`; hyperliquid `0x6a8255...10907c` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5b6d95...debd80` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd433ef...86f184` | ⚠️ Unaudited |
| ONFTDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x693a3a...78dcf5`; base `0x8da56b...bc9fa5` | ⚠️ Unaudited |
| ONFTMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47af6f...97d34e` | ⚠️ Unaudited |
| PRFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7bbcf1...de3255`; base `0x7bbcf1...de3255` | ⚠️ Unaudited |
| PRFIVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16db15...50e38e` | ⚠️ Unaudited |
| PRFIVestingV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a01d4...52472a` | ⚠️ Unaudited |
| PRFIVestingV2_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fe184...f38040` | ⚠️ Unaudited |
| PRFIVestingV2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x44312d...80b89c`; base `0xc7f171...000c7a` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x198c93...9ad850`; hyperliquid `0xea0846...fd2159` | ⚠️ Unaudited |
| PriceProvider | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x04edbf...8a2be6` | ⚠️ Unaudited |
| PrimeChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x97d76a...849011` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x11b545...78d4b4`; hyperliquid `0x77b9f5...c9d5fb` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x70a74f...b361f9` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22bdf9...8b35b8` | ⚠️ Unaudited |
| RewardRegistryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8db623...ff8331` | ⚠️ Unaudited |
| SidechainIncentivesController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68a17d...7a4878` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7b4ce0...6a8d98`; hyperliquid `0xab008a...d46db6` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5dff4b...2013cd`; hyperliquid `0x668115...4da856` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63af36...242a2c` | ⚠️ Unaudited |
| StargateBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb38063...0618d0` | ⚠️ Unaudited |
| StargateBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x944963...461d65` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc181b...b6f7c7` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27a16d...4b5d26` | ⚠️ Unaudited |
| TokenMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x41a5b0...a3420b`; base `0x5634c4...d86e47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43960b...faab1d`; hyperliquid `0x76c645...28f506` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d87ba...7187d6`; hyperliquid `0xac4044...e73b4e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x69a3c3...0aab7f` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb7a05a...e3ae58`; base `0xd47b03...9fd4d7` | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x53ced6...7fe409` | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d08e4...7895a8` | ⚠️ Unaudited |
| UniswapPoolHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x58933f...e4de6d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87b417...55bc36` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3a0a36...50c7dd` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x065fd3...a02847`; hyperliquid `0x2e6ba5...328988`; hyperliquid `0x924045...37b0d6` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: hyperliquid `0xa911af...918af9`; base `0x33cd73...b813ef` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x420000...000006` | ⚠️ Unaudited |
| WETHGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x88ae25...92fcae`; hyperliquid `0xac57f0...74b2ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251786 | `0x009a18...fa748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x01c46d...832fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x089410...769292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0bd6d1...18da2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251788 | `0x11f746...46d373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251790 | `0x1952dd...1490e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1fd0ee...6f6f57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251791 | `0x386f40...21095b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x40d9ab...da0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x519e18...6baa44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5275a0...dae649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5382ce...99de88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x57e1fb...8ecb9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251792 | `0x5fc173...31cab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x65a257...8755a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ebe64...953ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x722843...00212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78adb8...9fbbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x83bb28...2f1ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x854dd2...073ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x89563a...f4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251796 | `0x98b705...89d2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9fa63c...1e330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc32991...2b1057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc75f6d...9b8e88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251798 | `0xd00fe5...6e5365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd0696a...40a56a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251799 | `0xd218a5...e3114c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd75dda...b655be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdd9308...a7df3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdfc67d...10c4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0412cd...901787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x065fd3...a02847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08bacc...ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c7558...93c8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0eb744...50ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13379b...0d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1502fa...275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x160345...9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b2164...acb8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bd11f...022973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251778 | `0x3a577f...158a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430102...ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5177a8...61a95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579d29...8536d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c386d...b6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647fd4...de5cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b25bd...088c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb974...cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x816e81...81cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873cfb...dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8899da...e96e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdb3ad...3ed570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6a291...93e26e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251784 | `0xd9ba32...7bbfe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf3206...22151a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe520d7...3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb3ba9...e9e8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2e2a4...c8f73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6f832...c8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ea7...33808c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfebc15...31747d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view — no match: No explicit scope table; contracts extracted from findings targets and references.
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3 — no match: No contract names or scope section found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | RewardDistributionController | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-004 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | MultiFeeDistribution | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-005 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | EligibilityDataProvider | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPool | unmatched — not counted | — | Listed as target in finding PVE-006 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | ChefIncentivesController | unmatched — not counted | — | Referenced in finding PVE-007 (example setters) | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPoolAddressesProvider | unmatched — not counted | — | Mentioned in finding PVE-007 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 10 |
| standard_library | 19 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3

Fork inheritance lineage and inherited audits are included when available.
