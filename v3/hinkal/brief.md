# Agentic Audit Brief: Hinkal

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hinkal (`hinkal`)
- Website: [https://hinkal.pro](https://hinkal.pro)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon, sepolia
- Contract surface: 1518 unique implementations (1518 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $620,966.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Hinkal in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 37 contracts are derived from known codebases. 37 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f5d2c...695c54`, chain 1)
- UnnamedContract (`0x1228c9...776557`, chain 1)
- UnnamedContract (`0x163fe0...3dfec5`, chain 1)
- UnnamedContract (`0x22ec89...71fd95`, chain 1)
- UnnamedContract (`0x4a2313...e5e97b`, chain 1)
- UnnamedContract (`0x680689...6d6738`, chain 1)
- UnnamedContract (`0x74aff3...cf90e9`, chain 1)
- UnnamedContract (`0x83927c...70c95b`, chain 1)
- UnnamedContract (`0x93a4b8...956e29`, chain 1)
- UnnamedContract (`0xa15485...ba1ea3`, chain 1)
- UnnamedContract (`0xab6363...f1ee52`, chain 1)
- UnnamedContract (`0xb0748b...6f3b42`, chain 1)
- UnnamedContract (`0xb2883b...dacd36`, chain 1)
- UnnamedContract (`0xc4ee2a...3e92db`, chain 1)
- UnnamedContract (`0xde88ff...e27a4b`, chain 1)
- UnnamedContract (`0xf498fa...d12562`, chain 1)
- UnnamedContract (`0xfa3164...32da2a`, chain 1)
- UnnamedContract (`0x35afb3...96a198`, chain 10)
- UnnamedContract (`0x73c894...8b8bdc`, chain 10)
- UnnamedContract (`0xe23b63...cc97ed`, chain 10)
- UnnamedContract (`0xf77734...3e4da7`, chain 10)
- UnnamedContract (`0xf95e20...e23482`, chain 10)
- UnnamedContract (`0x0f5d2c...695c54`, chain 137)
- UnnamedContract (`0x5332c7...6de395`, chain 137)
- UnnamedContract (`0x8ddda4...fca4f6`, chain 137)
- UnnamedContract (`0xb0748b...6f3b42`, chain 137)
- UnnamedContract (`0xc4ee2a...3e92db`, chain 137)
- UnnamedContract (`0x08a552...f432c2`, chain 8453)
- UnnamedContract (`0x4c1c12...11622f`, chain 8453)
- UnnamedContract (`0x58a510...8042ee`, chain 8453)
- UnnamedContract (`0x7f7028...6273e9`, chain 8453)
- UnnamedContract (`0xd079ad...581a19`, chain 8453)
- UnnamedContract (`0x140698...4f015b`, chain 42161)
- UnnamedContract (`0x163fe0...3dfec5`, chain 42161)
- UnnamedContract (`0x27e943...67eca8`, chain 42161)
- UnnamedContract (`0x595b89...e349b6`, chain 42161)
- UnnamedContract (`0x680689...6d6738`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/63 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 37 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1470 discovered implementations shown in the inventory but excluded from coverage (160 third-party/infra; 54 standard proxy/library)
- Proxy deployments represented within implementation groups: 168
- Confirmed-live implementations: 37 of 1518 unique; 1481 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1470
- Verified + Unaudited implementations: 1470
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 1518
- Raw deployments: 1518
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1470)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x051cae...b176b6` | ⚠️ Unaudited |
| AccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21cd9d...1bb592` | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6e0d...afd18d` | ⚠️ Unaudited |
| ActionAddRemoveLiq | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbacd...a897da` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec4b...002744` | ⚠️ Unaudited |
| ActionCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f4ac...1c3d07` | ⚠️ Unaudited |
| ActionInfoStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9f34...88f23b` | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f707...f0a836` | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519f39...698080` | ⚠️ Unaudited |
| ActionMintRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dba36...185369` | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812a7...437ed6` | ⚠️ Unaudited |
| ActionMisc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc49c4...94065c` | ⚠️ Unaudited |
| ActionStorageStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a60b5...46d2a1` | ⚠️ Unaudited |
| ActionSwapPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0df4...51bf50` | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209829...9747fd` | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f438e...41c3b7` | ⚠️ Unaudited |
| ActionSwapYT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d81d...1a0d64` | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ed8f...1d158d` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed976...ea0aab` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x534148...e05d7b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8e870d...8289e1` | ⚠️ Unaudited |
| AgentTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x180326...ae9688` | ⚠️ Unaudited |
| AgEthRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc276db...1813fe` | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b5...48e62b` | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d4b4...a1da29` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| AGLDLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244baf...92285b` | ⚠️ Unaudited |
| AGLDSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184a07...8733cf` | ⚠️ Unaudited |
| AGLDUniV3ChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x791aab...91dcc1` | ⚠️ Unaudited |
| AgTokenSideChainMultiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ab641...142ddb` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e05...2f629e` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1071f3...bb70c0` | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025c6d...205a1f` | ⚠️ Unaudited |
| Alchemist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21d35...9fe35b` | ⚠️ Unaudited |
| AlchemistEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5665...7d03ab` | ⚠️ Unaudited |
| AlchemixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| AlEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010054...ff7ee6` | ⚠️ Unaudited |
| AllocationExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a53cf...94385f` | ⚠️ Unaudited |
| AllocationIDTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b2f33...d9fe7c` | ⚠️ Unaudited |
| AlToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AmmVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d1098...cfb7a9` | ⚠️ Unaudited |
| AmpleforthWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b9d7...947dc5` | ⚠️ Unaudited |
| AnchorStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x360f8d...4e73c3` | ⚠️ Unaudited |
| AngleRouterOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d7105...eccf52` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9bfdd...5d2d8c` | ⚠️ Unaudited |
| AnyswapV4ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xfbdd19...5d01b8` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x130966...b8c18d` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x4e720d...6f4642` | ⚠️ Unaudited |
| ApeMatchingMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5135fc...2d612e` | ⚠️ Unaudited |
| ApeStakingLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499618...5d438f` | ⚠️ Unaudited |
| ApexConsumerWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20612e...36210e` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33...919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad...47ca14` | ⚠️ Unaudited |
| AssetPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21b86f...d28d5d` | ⚠️ Unaudited |
| Astgik | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2244...594381` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45a01e...2033cd` | ⚠️ Unaudited |
| AuctionBidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773a4c...37b3c4` | ⚠️ Unaudited |
| Auditor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f55a3...243c46` | ⚠️ Unaudited |
| aUSTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a760...d3116c` | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e734e...6dae11` | ⚠️ Unaudited |
| BAKCApeStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0915d8...e135a0` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79bca9...1f8dce` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa489fd...f00ee9` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BanxaWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9e1aa...a8a34a` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x689440...ece1c8` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35878c...a618a2` | ⚠️ Unaudited |
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0807d0...41b7c3` | ⚠️ Unaudited |
| BasicLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x168901...6fd311` | ⚠️ Unaudited |
| BatchClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6fd879...bebd0b` | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e50...f831ca` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1070f7...fe17e8` | ⚠️ Unaudited |
| BAYCApeStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266def...d59eeb` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578...b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e...e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2095be...0de6cd` | ⚠️ Unaudited |
| BeaconAuthorization | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x632c2d...6e83e8` | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fec9c...ffbfff` | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c0fb...f07647` | ⚠️ Unaudited |
| BeaconDkg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024a69...2abd84` | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4edc83...653f94` | ⚠️ Unaudited |
| BeaconInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a26f...941ec0` | ⚠️ Unaudited |
| BeaconRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf5180...f5f491` | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b15fe...e68ff0` | ⚠️ Unaudited |
| BeamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d0a8...b0bfce` | ⚠️ Unaudited |
| BeanstalkERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea000...d1efab` | ⚠️ Unaudited |
| BeefyFeeConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc036a...3e9292` | ⚠️ Unaudited |
| BeefyMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64920a...72f164` | ⚠️ Unaudited |
| BeefyMultiHopSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa720b7...b0b885` | ⚠️ Unaudited |
| BeefyOracleAlgebra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd404bd...f7f64c` | ⚠️ Unaudited |
| BeefyOracleStableRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65db8f...f71dbd` | ⚠️ Unaudited |
| BeefyOracleStableRouterEthBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x902156...e473a1` | ⚠️ Unaudited |
| BeefySolidlyZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2f035...f25fec` | ⚠️ Unaudited |
| BeefyTimelockCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46a188...f4af2b` | ⚠️ Unaudited |
| BeefyVaultV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0673a2...d24d1a` | ⚠️ Unaudited |
| BeefyVaultV6Native | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ae135...c4bdf3` | ⚠️ Unaudited |
| BeefyVaultV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047c41...c23f1f` | ⚠️ Unaudited |
| BeefyVaultV7Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8396f3...4953f7` | ⚠️ Unaudited |
| BeefyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x48bf3a...a83a36` | ⚠️ Unaudited |
| BeefyZapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52a743...3b0ad2` | ⚠️ Unaudited |
| BentoBoxOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b55d...878211` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303...9b619f` | ⚠️ Unaudited |
| Billing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b07d3...48477a` | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2881c...0c0fa0` | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0b316...86dd63` | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe086e...d6a6f3` | ⚠️ Unaudited |
| BinaryOptionMarketMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89df50...033cdb` | ⚠️ Unaudited |
| BinaryOptionMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8947da...a8c3c5` | ⚠️ Unaudited |
| BirdsArentReal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07379...0f615a` | ⚠️ Unaudited |
| BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b94f...0f4d32` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2766...4839a5` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd0...5da3dc` | ⚠️ Unaudited |
| BlockNumber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06d538...c2173e` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655205...e020cd` | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e838...22c105` | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7cd8...35c5d7` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c46f4...2ede4f` | ⚠️ Unaudited |
| BondingCurve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693604...562341` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f349...40d356` | ⚠️ Unaudited |
| BorrowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c734...80bc0d` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa84ea9...6b748e` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d6e6...012330` | ⚠️ Unaudited |
| BridgeGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94dd6...0778ee` | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4b16...0d3443` | ⚠️ Unaudited |
| BSCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae3...464ed6` | ⚠️ Unaudited |
| BSCWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e...cf18ea` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11716a...aee110` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1258d7...61902a` | ⚠️ Unaudited |
| BulkSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3753...f00f73` | ⚠️ Unaudited |
| BulkSellerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ae6d...cb7c85` | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9acc60...6bd320` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23ee23...c6810f` | ⚠️ Unaudited |
| BuybackMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f47a1...8379d4` | ⚠️ Unaudited |
| CappedETHDonation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62b40...9752e6` | ⚠️ Unaudited |
| CauldronLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480a0a...51eb4d` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a99...c0b3d3` | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9cb5...c7c7d2` | ⚠️ Unaudited |
| CauldronV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476b1e...a85c1f` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df188...dd9e51` | ⚠️ Unaudited |
| CauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe965db...d6010b` | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82...9ff5ab` | ⚠️ Unaudited |
| CCIPBlockHashSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a00f...5d9e61` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd0...2b930f` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041...41c157` | ⚠️ Unaudited |
| CCTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0800...909b9e` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079...ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00e5c0...c84bf3` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x011a01...230afa` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e821d...11c2cb` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2db6c8...5066d6` | ⚠️ Unaudited |
| CErc20Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x066c98...d2848d` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d...270ed5` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1...171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae...4d5b57` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888f...25b653` | ⚠️ Unaudited |
| ChildWUSDR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08a3f2...833ba1` | ⚠️ Unaudited |
| ClaimingNativeStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6756ef...e8f9ef` | ⚠️ Unaudited |
| ClaimingStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa655aa...e0a143` | ⚠️ Unaudited |
| ClassicalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cf8c...cc5220` | ⚠️ Unaudited |
| CLFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3fc8e6...38e2eb` | ⚠️ Unaudited |
| CLGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x629e12...7cd905` | ⚠️ Unaudited |
| CLGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x282ac0...f1592a` | ⚠️ Unaudited |
| ClonexEggAirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f8558...d70a08` | ⚠️ Unaudited |
| CLPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x209ce0...98e3f5` | ⚠️ Unaudited |
| CollateralAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e94e1...afedd9` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8...1b96c1` | ⚠️ Unaudited |
| CollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026803...33eee7` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x626efc...60f72a` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09044d...3b199a` | ⚠️ Unaudited |
| Comp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592...7cb200` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b94...4b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb...6aa870` | ⚠️ Unaudited |
| ComposableStablePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a61b...66c5a9` | ⚠️ Unaudited |
| ComposableStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a303b...5d3007` | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4239dd...faf64a` | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886c9a...00442d` | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a65b...7341fe` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053...63df29` | ⚠️ Unaudited |
| ConfigProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e2719...a7538a` | ⚠️ Unaudited |
| Constitution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47e037...cf437c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a8491...b2c97e` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e...8039ca` | ⚠️ Unaudited |
| ConvertibleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6525fc...bd0769` | ⚠️ Unaudited |
| ConvexRewardPool | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x6b7b84...8a8ea6` | ⚠️ Unaudited |
| ConvexWrapperLevSwapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x134dd2...fa6a89` | ⚠️ Unaudited |
| ConvexWrapperSwapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9bee1f...bec67c` | ⚠️ Unaudited |
| CoreBorrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1a7e4e...fcbce8` | ⚠️ Unaudited |
| CoveragePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22428b...2ee39b` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b7df...ff3146` | ⚠️ Unaudited |
| CreamEth2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e...9fdb64` | ⚠️ Unaudited |
| CreamLiquidate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7...40ca64` | ⚠️ Unaudited |
| CreamLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75...7a8b45` | ⚠️ Unaudited |
| CreamVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf...20d0f9` | ⚠️ Unaudited |
| Create2Deployer | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0e55ae...a4afab` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d0...5d322e` | ⚠️ Unaudited |
| Cross-Chain Gauge Mass Killer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08fa0...7d4e7d` | ⚠️ Unaudited |
| CrossChainBridgeBacker_OPTI_Celer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f35dc...084ed0` | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67ccea...2205be` | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x843b66...7fad92` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x484c2d...36578c` | ⚠️ Unaudited |
| CrossChainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31aa22...b86509` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35c696...ea66de` | ⚠️ Unaudited |
| CroToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b73e...34450b` | ⚠️ Unaudited |
| CrowdProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62134f...45df23` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398e41...a446f7` | ⚠️ Unaudited |
| CRVDisperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e6c8...65dcde` | ⚠️ Unaudited |
| CrvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f795...50af50` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1...41f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706...f81d74` | ⚠️ Unaudited |
| crvUSDPoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x538e98...d3df2d` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9a...ed5c30` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce...db7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e762...3ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae9...c91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d8...e1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbd...32ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d788...113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434...fc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b...3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6...51b304` | ⚠️ Unaudited |
| CSLPDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722...151ffb` | ⚠️ Unaudited |
| CTokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44...2a038d` | ⚠️ Unaudited |
| CTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b5d4...8bdbe5` | ⚠️ Unaudited |
| Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234071...fa4606` | ⚠️ Unaudited |
| CurveStableSwap2Prices | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1539c2...ca2c92` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1f7e93...1ffd95` | ⚠️ Unaudited |
| Custodian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1789cc...4764eb` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bc0e3...bf1c8f` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a6f7f...26678a` | ⚠️ Unaudited |
| CYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2af8...34b4a4` | ⚠️ Unaudited |
| DaoCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26227b...fd8d0b` | ⚠️ Unaudited |
| DAONFTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e919b...d10364` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098e17...c370b9` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b...05f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311999...effe49` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x379900...341c2f` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb03201...3058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9822...4acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e343...017405` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d7b6c...054f0a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14add4...98897a` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e69da...c38f1e` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bb...9cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407...3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ed8f...2962f2` | ⚠️ Unaudited |
| DebtNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7d868...ef926c` | ⚠️ Unaudited |
| DebtVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08422a...f80442` | ⚠️ Unaudited |
| DeciMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c779c...60fb14` | ⚠️ Unaudited |
| DefiedgeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1946cb...4d6d3e` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48...fc2cce` | ⚠️ Unaudited |
| DegenBoxConvexWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a89a...cdc4a4` | ⚠️ Unaudited |
| DelegatedVEQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0d533...b0dc50` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x737464...aefd30` | ⚠️ Unaudited |
| DemandMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbe0ec...69c6fe` | ⚠️ Unaudited |
| DeploymentHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758888...18ce84` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac184...c04dc5` | ⚠️ Unaudited |
| DepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87effe...0faf8b` | ⚠️ Unaudited |
| DepositFunding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d128...ccd125` | ⚠️ Unaudited |
| DepositLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca506...081a56` | ⚠️ Unaudited |
| DepositRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817c0f...372323` | ⚠️ Unaudited |
| DepositStates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8695ff...ae1c80` | ⚠️ Unaudited |
| DepositSweep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392635...ac9b95` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad83d...212517` | ⚠️ Unaudited |
| DestSwapperUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x595167...3968d7` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ff192...a8373a` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9992e9...8d3a58` | ⚠️ Unaudited |
| DisputeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0ab2b0...e3bd46` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0...cfa017` | ⚠️ Unaudited |
| DistributionCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x53d6ea...9eebbe` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd56e99...469e73` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08...368d6d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x52b88b...1a8253` | ⚠️ Unaudited |
| DolaBorrowingRights | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad038e...c5d710` | ⚠️ Unaudited |
| DolaFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf45c5e...055a18` | ⚠️ Unaudited |
| DolaPayroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32eddd...15358f` | ⚠️ Unaudited |
| DonationVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa544b7...50e672` | ⚠️ Unaudited |
| Donator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc368ed...d28839` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4...92640e` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9...4b5f60` | ⚠️ Unaudited |
| EasyConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a...224790` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ca1a...c036fa` | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ab5f...c76108` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0125c8...d4ef27` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8263ef...46f764` | ⚠️ Unaudited |
| ECDSARewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ac5a...ffca88` | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9e48...91bbb3` | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77ec9...952042` | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037a91...5efb84` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47d022...90a65a` | ⚠️ Unaudited |
| ELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42873d...48091b` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6...559ad4` | ⚠️ Unaudited |
| EmptyUUPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f69a9...297807` | ⚠️ Unaudited |
| ENA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e114...1e6061` | ⚠️ Unaudited |
| EpochManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fab25...d2ee31` | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x312966...a8a43c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d8688...b6f378` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147379...f2d786` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd9a442...306a72` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x005980...1f46b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x2e8012...9c8850` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x865377...dc9ce4` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x690df4...ebc653` | ⚠️ Unaudited |
| ERC20Impl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6704ba...df4ade` | ⚠️ Unaudited |
| ERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056fd4...b6d5cd` | ⚠️ Unaudited |
| ERC20Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17254...fcc6f2` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd806a4...247b2b` | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154547...f96f11` | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f7b0...d50d32` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10819c...1fb64f` | ⚠️ Unaudited |
| EscrowedEXA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d550e...51e280` | ⚠️ Unaudited |
| EscrowedMultipleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x195f6f...aba307` | ⚠️ Unaudited |
| EscrowThales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x566d35...aac9c2` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56f979...8758a0` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3828f...0207ef` | ⚠️ Unaudited |
| EthereumDIDRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9aeb1...047638` | ⚠️ Unaudited |
| ETHEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48ee5...d9764d` | ⚠️ Unaudited |
| EthRepayAllHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0c96...adfeae` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dcdca...d8b277` | ⚠️ Unaudited |
| EURSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdb25f2...807ad8` | ⚠️ Unaudited |
| EventfulDataEdge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed16ce...223aec` | ⚠️ Unaudited |
| EXA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0810a8...d4c076` | ⚠️ Unaudited |
| ExaAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3427a5...79616e` | ⚠️ Unaudited |
| ExaPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2bbaf5...c26887` | ⚠️ Unaudited |
| ExaPreviewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc711...02d470` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x159f28...499660` | ⚠️ Unaudited |
| ExchangeEfx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcdb42...dd5851` | ⚠️ Unaudited |
| ExternalRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b1d11...ae2597` | ⚠️ Unaudited |
| ExtraReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8674...697392` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06d538...c2173e` | ⚠️ Unaudited |
| FactoryPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0084b0...42a262` | ⚠️ Unaudited |
| FactoryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4c67c...aa1d7b` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e...c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e3...9fef3f` | ⚠️ Unaudited |
| FantomAnimals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd3fe...5e08d3` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b27de...d983e6` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068f28...2167c7` | ⚠️ Unaudited |
| Fed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3454...5b90fd` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x313d1d...a347fb` | ⚠️ Unaudited |
| FeeRebateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3fff...f94789` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868cef...d96b33` | ⚠️ Unaudited |
| FeeSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09dcde...70199f` | ⚠️ Unaudited |
| FetchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031b41...91fa7f` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x431d5d...f37bdb` | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfaa95...5fd4ee` | ⚠️ Unaudited |
| FixedRateIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d6dd...e6f1a7` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b5...f2893a` | ⚠️ Unaudited |
| FlashAngle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf1ddca...efe123` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06824d...29ab74` | ⚠️ Unaudited |
| FoundationFunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd84d...480993` | ⚠️ Unaudited |
| Fountain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb24b7b...9d5191` | ⚠️ Unaudited |
| FPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca135...cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c...469e37` | ⚠️ Unaudited |
| FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2544a...901fdb` | ⚠️ Unaudited |
| Fraud | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bbef...ba3559` | ⚠️ Unaudited |
| FraxlendPair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3835a5...752510` | ⚠️ Unaudited |
| FrxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594618...29a158` | ⚠️ Unaudited |
| FTTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a376...7da186` | ⚠️ Unaudited |
| FundingScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c70c...93d063` | ⚠️ Unaudited |
| Fundraising | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b8978...f81e5f` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f09...6dc10f` | ⚠️ Unaudited |
| FXB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de54c...f1df1e` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x839725...afa28a` | ⚠️ Unaudited |
| FxnOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e08f5...8fd11e` | ⚠️ Unaudited |
| FxStateRootTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7dd5c...87fc66` | ⚠️ Unaudited |
| fxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116172...3fcd35` | ⚠️ Unaudited |
| FxUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7988...f94327` | ⚠️ Unaudited |
| GamesOddsObtainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc647ab...b7c03c` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0a34...e46ab3` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503670...67a24e` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8391fe...835071` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd2...61081c` | ⚠️ Unaudited |
| Generalized4626Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167747...98d425` | ⚠️ Unaudited |
| GenericOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4142bb...e18410` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3...b8b5f0` | ⚠️ Unaudited |
| GHIToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be1f1...2faf4a` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8...1ac258` | ⚠️ Unaudited |
| GlpBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e0bb...a4ebce` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321f65...e22649` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x012341...d7c7b8` | ⚠️ Unaudited |
| GmxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b45e...118a81` | ⚠️ Unaudited |
| GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28037b...05daeb` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e96...9d8a47` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212f...0cb735` | ⚠️ Unaudited |
| GovernanceAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2489df...d0453c` | ⚠️ Unaudited |
| Governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a5ff7...7be76e` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260ac7...4534b1` | ⚠️ Unaudited |
| GovernorMills | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeccb6...359bf6` | ⚠️ Unaudited |
| GrantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02612d...8a3db3` | ⚠️ Unaudited |
| GraphCurationToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47a0d5...7d209c` | ⚠️ Unaudited |
| GraphPayments | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bc86e...cca86a` | ⚠️ Unaudited |
| GraphPreToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9611...559e10` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadca0d...7b6825` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55041...1263b9` | ⚠️ Unaudited |
| GraphProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x65e1a5...9fd302` | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x298393...8ca5fd` | ⚠️ Unaudited |
| GraphSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09695a...afa68b` | ⚠️ Unaudited |
| GraphTallyCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f69f5...111a9e` | ⚠️ Unaudited |
| GraphToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc944e9...da44a7` | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628404...095883` | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ec7a...7f2ca1` | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5e63...5a2255` | ⚠️ Unaudited |
| GRTTokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde2f97...548b94` | ⚠️ Unaudited |
| Guardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941c26...39259d` | ⚠️ Unaudited |
| gVEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d007...dfa2e6` | ⚠️ Unaudited |
| gVECOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00a7e...036057` | ⚠️ Unaudited |
| GyroECLPPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0ad20...47d5c2` | ⚠️ Unaudited |
| HBTCStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72869...26eefd` | ⚠️ Unaudited |
| HBTCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0316eb...c6d380` | ⚠️ Unaudited |
| HCTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b920...9dd9ad` | ⚠️ Unaudited |
| HDTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42ef5...cd06a6` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee...830d6a` | ⚠️ Unaudited |
| HedgeExchanger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x03afe3...799479` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2...a1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086...e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061940...082f23` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658890...a1c266` | ⚠️ Unaudited |
| Hinkal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25e5e8...fca826` | ⚠️ Unaudited |
| HorizonStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x00669a...61ef03` | ⚠️ Unaudited |
| HorizonStakingExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3396f4...219d64` | ⚠️ Unaudited |
| hToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270b77...695389` | ⚠️ Unaudited |
| HUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a683d...13e846` | ⚠️ Unaudited |
| Hypervisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02203f...b7d814` | ⚠️ Unaudited |
| IBAgreement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254...37f812` | ⚠️ Unaudited |
| IBAgreementV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50b...46b3ff` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705d...f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11...3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fe...3ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d...ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb...a867fa` | ⚠️ Unaudited |
| IDCard_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2df86a...c13448` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d11a4...d3954a` | ⚠️ Unaudited |
| IdentityEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac16c...fa4d86` | ⚠️ Unaudited |
| IDNFT_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd84855...2d0da1` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8a...268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029fea...44c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135...50edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680...884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0...cd25eb` | ⚠️ Unaudited |
| IJPEGDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d1cb6...56557d` | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d030...72011f` | ⚠️ Unaudited |
| IMXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57e7e...6e79ff` | ⚠️ Unaudited |
| InchSpellSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5...a52111` | ⚠️ Unaudited |
| InchSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf96fc9...b01a88` | ⚠️ Unaudited |
| IndirectOFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef06f4...c81f15` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7a43b0...51ee52` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x018008...754e63` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x028171...5b68a3` | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a925...2e4c10` | ⚠️ Unaudited |
| InjectiveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28b3b...ceca30` | ⚠️ Unaudited |
| InstallmentsPreviewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfb4f5...5c3043` | ⚠️ Unaudited |
| InstallmentsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5cf950...a2fa38` | ⚠️ Unaudited |
| InsuranceEtsOpUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x8767a4...a67516` | ⚠️ Unaudited |
| InsuranceExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85bd0a...063018` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e...2863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d...457bcf` | ⚠️ Unaudited |
| InterestRateDataResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a753...708909` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x005eee...b8d8b6` | ⚠️ Unaudited |
| InterestStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec271...b0d377` | ⚠️ Unaudited |
| INV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d7...9dfb68` | ⚠️ Unaudited |
| InvariantWatchdog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aa7d1...58f722` | ⚠️ Unaudited |
| InverseOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ac24...60d318` | ⚠️ Unaudited |
| InvFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210ac5...90258f` | ⚠️ Unaudited |
| IssuerChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59a644...4feb3a` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca...104e3e` | ⚠️ Unaudited |
| JPEG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80c0c...8345a3` | ⚠️ Unaudited |
| JPEGAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d7849...d99728` | ⚠️ Unaudited |
| JPEGAirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff844...131a8e` | ⚠️ Unaudited |
| JPEGAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb49d...282630` | ⚠️ Unaudited |
| JPEGC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x839795...eba6f4` | ⚠️ Unaudited |
| JPEGCardsCigStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9233...64d3b7` | ⚠️ Unaudited |
| JPEGCStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c2d9...066f81` | ⚠️ Unaudited |
| JPEGIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415cf...5ac0ac` | ⚠️ Unaudited |
| JPEGIndexStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f501...f1ef9c` | ⚠️ Unaudited |
| JPEGOraclesAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb4c7...305e7a` | ⚠️ Unaudited |
| JPGD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce722f...a89dd6` | ⚠️ Unaudited |
| JPGDStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05fc48...fdf6cb` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556202...7b57e7` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872...d2e1a6` | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f6fb8...02631e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f358...2f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772...af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7d...02d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5c...185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2...5a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739689...ab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef20...924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733538...70282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4...f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6...132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf162...c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be...7880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec...ba0f82` | ⚠️ Unaudited |
| KeepBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27321f...89a3d5` | ⚠️ Unaudited |
| KeepFactorySelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fa8f...78261c` | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7084...fcf9de` | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3975ce...5718e7` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x099597...599eab` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b586...13fd7d` | ⚠️ Unaudited |
| KeepVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf00da...016c87` | ⚠️ Unaudited |
| KernelDepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x534b51...6332bb` | ⚠️ Unaudited |
| Kwenta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x920cf6...99456b` | ⚠️ Unaudited |
| KyberSwapRewardUsdcDaiLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4b4a2...3315a6` | ⚠️ Unaudited |
| KyberSwapRewardUsdcUsdtLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8928f...81fc7d` | ⚠️ Unaudited |
| L1MantleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3c3a81...6bf354` | ⚠️ Unaudited |
| L2Curation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b7551...45168d` | ⚠️ Unaudited |
| L2GNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cbdb6...d71667` | ⚠️ Unaudited |
| L2GraphToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x962306...7e88c7` | ⚠️ Unaudited |
| L2GraphTokenLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f74c7...f9d911` | ⚠️ Unaudited |
| L2GraphTokenLockTransferTool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x23c9c8...e68028` | ⚠️ Unaudited |
| L2GraphTokenLockWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6864cd...8b51b0` | ⚠️ Unaudited |
| L2Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x069fac...5750d3` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ae125...ce7384` | ⚠️ Unaudited |
| L3USD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c2d8a...a90d5f` | ⚠️ Unaudited |
| LayerZeroBridgeToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | optimism | n/a | `0x840b25...230a72` | ⚠️ Unaudited |
| LayerZeroBridgeTokenERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | optimism | n/a | `0x9201cc...15313a` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775...c5d0f3` | ⚠️ Unaudited |
| Lens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941a22...5e7fb7` | ⚠️ Unaudited |
| LEO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af5d2...912ca3` | ⚠️ Unaudited |
| LEOController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17ebb...9e5672` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e454b...e1c7e9` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa...7f2eac` | ⚠️ Unaudited |
| LibCobbDouglas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bca89...855d57` | ⚠️ Unaudited |
| LibExponential | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x208f63...c289ee` | ⚠️ Unaudited |
| LightRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836cdf...35896e` | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca2f6...efa3c8` | ⚠️ Unaudited |
| LimitBackendHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599609...08bfcd` | ⚠️ Unaudited |
| LinearPreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73187e...5f2ad6` | ⚠️ Unaudited |
| LiquidationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58f6a7...1ca85d` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57896e...6660ab` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d...a3e8ce` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59bc9f...3b1963` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17063a...a00ed7` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288324...5a56cd` | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39cd9c...c76d23` | ⚠️ Unaudited |
| LizardPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cb911...2dedbc` | ⚠️ Unaudited |
| LlamalendCrvStakeDaoERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3558b...96ab73` | ⚠️ Unaudited |
| LlamalendCrvUsdStakeDaoERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfcd3...81ed47` | ⚠️ Unaudited |
| LlamalendWeth2StakeDaoERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x531bba...42633d` | ⚠️ Unaudited |
| LlamalendWethStakeDaoERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de1bd...6998f1` | ⚠️ Unaudited |
| LlamaPayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24529a...8a7ae3` | ⚠️ Unaudited |
| LlamaSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2346...dd1dc6` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0...dbd93a` | ⚠️ Unaudited |
| LoanRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb2b8...dfe433` | ⚠️ Unaudited |
| Locks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| Lockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x019cfa...51a273` | ⚠️ Unaudited |
| LpFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56775f...aa41ff` | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a5f2...9d6f44` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78aa83...482edd` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad9e8...03f76d` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x224d8f...277f03` | ⚠️ Unaudited |
| LPStakingTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3000...3122fc` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x597457...84985a` | ⚠️ Unaudited |
| LRTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c391...291fb4` | ⚠️ Unaudited |
| LRTConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc711...a45993` | ⚠️ Unaudited |
| LRTDepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fb23...3eb5e7` | ⚠️ Unaudited |
| LRTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144853...d94221` | ⚠️ Unaudited |
| LRTUnstakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc8ee...e5a2a4` | ⚠️ Unaudited |
| LRTWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecde3...684e19` | ⚠️ Unaudited |
| MagicInternetGold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5624b4...8c5fd0` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MainApeMatchingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ba384...87f163` | ⚠️ Unaudited |
| MaintainerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535e01...40140f` | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcdd958...05cff0` | ⚠️ Unaudited |
| MarchMadness | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b05d4...2a4c31` | ⚠️ Unaudited |
| Mark2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7cb1b3...ca2789` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x096f2c...39235d` | ⚠️ Unaudited |
| MarketETHRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x29babf...a10258` | ⚠️ Unaudited |
| MarketMathStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9433...2e4f50` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060917...e5aa2f` | ⚠️ Unaudited |
| MAYCApeStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x066de3...8b50d9` | ⚠️ Unaudited |
| MeritID | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79903...afe4a2` | ⚠️ Unaudited |
| MeritNFTDropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8015...7e1f42` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b38c5...a71df9` | ⚠️ Unaudited |
| MerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00d59b...777a49` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81028...bc6b00` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03caec...560e7e` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa8...0a9372` | ⚠️ Unaudited |
| MetaStablePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36bf22...91943f` | ⚠️ Unaudited |
| MetaStablePreview | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21a9fd...d59cd3` | ⚠️ Unaudited |
| MezoAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e1d7e...e2b5df` | ⚠️ Unaudited |
| MezoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af817...27d1f5` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb422...af6ddf` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9ac0...2a12b8` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d0e30...0e6a4f` | ⚠️ Unaudited |
| MintableBurnableSyntheticTokenPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79af5d...47d043` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3460dc...a4102d` | ⚠️ Unaudited |
| MinterAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6b1dc...084247` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5628...ce22b4` | ⚠️ Unaudited |
| MintGatewayProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x05387a...c6b1aa` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x137730...b04804` | ⚠️ Unaudited |
| MinuteTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52bebd...a7f428` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6315dc...3056a3` | ⚠️ Unaudited |
| MixOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4f5e...584458` | ⚠️ Unaudited |
| MobixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5311cf...cb9999` | ⚠️ Unaudited |
| ModernTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x581c05...20b0db` | ⚠️ Unaudited |
| MonthlyBounty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1515bc...0a7a9a` | ⚠️ Unaudited |
| MovingFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x310667...d42123` | ⚠️ Unaudited |
| mSpellSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440ec...e80815` | ⚠️ Unaudited |
| mSpellSenderManual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2796...13a4c0` | ⚠️ Unaudited |
| mSpellStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94635b...53f41d` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0xfbdd19...5d01b8` | ⚠️ Unaudited |
| Multicall3p | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb782c6...d2d202` | ⚠️ Unaudited |
| MultiCallWithFailure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6cd24a...07eaf5` | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x221050...11a0fd` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| MultiDAO_VotePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2503c0...1c518d` | ⚠️ Unaudited |
| MultiDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba87b...207f76` | ⚠️ Unaudited |
| MultiHonor_1155Querier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x113ce4...58a713` | ⚠️ Unaudited |
| MultiHonor_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ff9b7...42111b` | ⚠️ Unaudited |
| MultipleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1964cf...37f6f5` | ⚠️ Unaudited |
| MultiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e064e...a50d3d` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3547df...6b0043` | ⚠️ Unaudited |
| MultiSend | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4f85a4...d12ed0` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6...57e225` | ⚠️ Unaudited |
| NativeStakingChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47f92...a5a0da` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e75...231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6...5d14a7` | ⚠️ Unaudited |
| NectarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e55c5...7ba76d` | ⚠️ Unaudited |
| NectarTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85104...864125` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a288...de7a28` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x829f78...61bea9` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d85a...8f38e8` | ⚠️ Unaudited |
| NFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x887230...bdd1bb` | ⚠️ Unaudited |
| NFTSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x005c6a...f9fa16` | ⚠️ Unaudited |
| NFTVaultSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40eda5...94aac1` | ⚠️ Unaudited |
| NodeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266a15...c44abc` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c71...fdd7f3` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b98e0...8a7356` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0452df...02e3c7` | ⚠️ Unaudited |
| NoOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5b85...590daf` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a6...f023aa` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075108...1d6363` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x63fcd4...465ec0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fdfbb...e43dec` | ⚠️ Unaudited |
| OETHHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d017a...a6785c` | ⚠️ Unaudited |
| OETHOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccd26...b61dba` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x392540...8bd7ab` | ⚠️ Unaudited |
| OETHVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c91b...940d74` | ⚠️ Unaudited |
| OETHVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109158...1c89f3` | ⚠️ Unaudited |
| OETHZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c135f...5b66b0` | ⚠️ Unaudited |
| OFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e62ca...2837d2` | ⚠️ Unaudited |
| OgvStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61110...590a42` | ⚠️ Unaudited |
| OKBImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dba7d...605621` | ⚠️ Unaudited |
| OKBImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75231f...42a86c` | ⚠️ Unaudited |
| OmniCat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2046...a6a356` | ⚠️ Unaudited |
| OnDemandSPV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1531b6...a4b154` | ⚠️ Unaudited |
| OneTimeListingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8714f6...d2a48a` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024b...41f38c` | ⚠️ Unaudited |
| OpThales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x217d47...a5bb11` | ⚠️ Unaudited |
| OptimismGlobalPayoutListener | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c97eb...10a641` | ⚠️ Unaudited |
| OptimismPayoutListener | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33b15a...21d72a` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6d...76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1...d86309` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe146...10cce8` | ⚠️ Unaudited |
| OracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83682...f8f087` | ⚠️ Unaudited |
| OracleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022abb...aad735` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d...c10ecc` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06c7a3...cc89ff` | ⚠️ Unaudited |
| OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5...fa9eda` | ⚠️ Unaudited |
| OracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f...167f53` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e...8a2acb` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27c20...62bc21` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7257ac...32c3fb` | ⚠️ Unaudited |
| OriginToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8207c1...41ae26` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf6308...1ed0f1` | ⚠️ Unaudited |
| OTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fdfa...334c0e` | ⚠️ Unaudited |
| OUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ae95d...18f805` | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478409...ec29ed` | ⚠️ Unaudited |
| OvertimeVoucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5442ff...a3c671` | ⚠️ Unaudited |
| Ovn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3a1806...00ea42` | ⚠️ Unaudited |
| OvnGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x279a30...1c091e` | ⚠️ Unaudited |
| OvnTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82c470...b018f6` | ⚠️ Unaudited |
| OvnTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e2b2e...2a5679` | ⚠️ Unaudited |
| OvnToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x448e87...7b2615` | ⚠️ Unaudited |
| OwnedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ba860...99ffc5` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3c6ef5...7fb735` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25cbdd...b6b746` | ⚠️ Unaudited |
| PAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c0326...90f17e` | ⚠️ Unaudited |
| ParlayMarketsAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x912f88...1e4d4e` | ⚠️ Unaudited |
| ParlayVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a9397...08aacd` | ⚠️ Unaudited |
| ParlayVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x146444...8017b6` | ⚠️ Unaudited |
| Patch0000 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d594d...da69b4` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f468e...142e9c` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8cc053...f6f2a3` | ⚠️ Unaudited |
| PAXImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffcb0...da9ce6` | ⚠️ Unaudited |
| PAXImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86eee0...55310a` | ⚠️ Unaudited |
| PaymentsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc493e8...da11f7` | ⚠️ Unaudited |
| Payroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e802c...4e560e` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845...6c5445` | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c28d2...9dfb74` | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x269b2a...a98161` | ⚠️ Unaudited |
| PendleAgETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb1b915...02752a` | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcb611d...887da3` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc0ca1e...01e9dc` | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7f531a...ef8463` | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdf7083...3dd915` | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9bdb1d...c89e56` | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8c76e1...a159ea` | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8267fd...dc9820` | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb5cd09...36f044` | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xd7b2a4...e97c45` | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xaaa576...a6ab94` | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x042677...5f55da` | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x98f8c6...2589ed` | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa28b24...806f45` | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x71364e...e6335d` | ⚠️ Unaudited |
| PendleCommonSYFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfe906f...c4fff4` | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x83cb5e...ba4723` | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x24e957...4f0b6b` | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7258e5...1e2790` | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xa42436...2b4e68` | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9a90fd...440423` | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xc86cc6...3ebfe7` | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9d6ec7...7f223e` | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x23e068...8b5f80` | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x83e1d1...cc5593` | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd393d1...81bc04` | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xba04c9...ac8037` | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc0...21d33b` | ⚠️ Unaudited |
| PendleEBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc7b695...8c10a6` | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x7acdf2...961880` | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x782374...b21923` | ⚠️ Unaudited |
| PendleERC20SY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8b9d89...c29c48` | ⚠️ Unaudited |
| PendleERC20SYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x982be5...064c9d` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x8e5e01...7ba515` | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x338e2c...d718cb` | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf6193c...ec980f` | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x86e2a1...c185a8` | ⚠️ Unaudited |
| PendleERC4626SY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x90f193...0e978e` | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcf120a...d5eab0` | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x0a9116...520b78` | ⚠️ Unaudited |
| PendleEUSDSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7e16e4...c207f1` | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x78d686...3cd7a0` | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb6d07d...024d33` | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb0caa6...2ce8cb` | ⚠️ Unaudited |
| PendleFeeSetter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd4dfcf...d09f10` | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdeaa58...6f2d76` | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x13945b...18d2ab` | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7762cb...a31c9a` | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x47d745...c24e57` | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x6f1bfd...0b4188` | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x86f681...e457ed` | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x4726fc...141191` | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x1b6418...c8e19e` | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd63a35...85b0e8` | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x8db42a...873796` | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x82199b...e5e43b` | ⚠️ Unaudited |
| PendleLBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc781c0...5c6f36` | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x14ff57...1b9748` | ⚠️ Unaudited |
| PendleLimitRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20e5f...38f2db` | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x3d9819...b01aff` | ⚠️ Unaudited |
| PendleMarketFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xefbfc4...1a8ee4` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc79ace...3a218b` | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xef0a48...6839c4` | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x210e15...f7422b` | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x749087...0202f9` | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xbcd952...c7797e` | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7b91b6...df9718` | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x640467...18291f` | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x198139...b00346` | ⚠️ Unaudited |
| PendleMidasSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x01e0f0...88bb5c` | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8077b6...34d130` | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x07b101...2e989f` | ⚠️ Unaudited |
| PendleMulticall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xca54ac...166640` | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x726db0...609a19` | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8a28d3...6c9c24` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x4ae541...b33fff` | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x905af8...636732` | ⚠️ Unaudited |
| PendlePtOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbd487...4a3e30` | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x253008...a0c905` | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x78f9af...f19ab2` | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x43d665...4a7931` | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x212670...edd15e` | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8eb1a6...20c3e4` | ⚠️ Unaudited |
| PendleRLPSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9c846e...426f76` | ⚠️ Unaudited |
| PendleRsETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x730a5e...da793c` | ⚠️ Unaudited |
| PendleRswETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x778672...c615d9` | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x8946f6...f5a14e` | ⚠️ Unaudited |
| PendleSENASY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa36ecc...a12c3d` | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xeb8300...210673` | ⚠️ Unaudited |
| PendleSGHOSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xae14ae...71f609` | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe05082...bbb04c` | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x67e58f...c609d7` | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x859c11...5b4e34` | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbe9a9b...2ea1e4` | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x74c5a0...45d986` | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3fa71e...9e7d35` | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x0a9b2c...6cf6f9` | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x0ee69a...a0d075` | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdb0170...8415de` | ⚠️ Unaudited |
| PendleStEURSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xd353ae...43dfde` | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7fbd26...f71df1` | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x33e889...af8bee` | ⚠️ Unaudited |
| PendleSUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xabf816...781d9b` | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee16d...6bd155` | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbe3d4e...018ba7` | ⚠️ Unaudited |
| PendleSwap | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd33ae2...bfd782` | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9660ac...64f924` | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xddceec...2370bc` | ⚠️ Unaudited |
| PendleSyrupSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc9e9c8...71551d` | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x89c649...4afe3e` | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x0d2984...7451b3` | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xb2dbc1...4bf20b` | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x39f47a...be7830` | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x1d292b...d93151` | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x87b8e4...407d78` | ⚠️ Unaudited |
| PendleUniETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xc430db...6d16b7` | ⚠️ Unaudited |
| PendleUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x925a15...58340e` | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x508def...36697b` | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x44087e...21f2f0` | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xe27967...95894a` | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbf8cf...982d32` | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x772079...b3400a` | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x012bad...02c9c5` | ⚠️ Unaudited |
| PendleWEEthSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xac0047...970d65` | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x905109...63b3f2` | ⚠️ Unaudited |
| PendleWstEthSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcbc72d...40c0bc` | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xa47e35...85f431` | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x70ee0a...75bafd` | ⚠️ Unaudited |
| PendleYieldToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x029aad...fe64bf` | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x96af5d...cf8b6b` | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x7a493b...434744` | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x34349c...0a9789` | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0x293c69...256e30` | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | `0xd7df7e...20bfa7` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08947e...3f75d4` | ⚠️ Unaudited |
| PerpetualPoolParty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3dec...33fb4c` | ⚠️ Unaudited |
| PETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x821a27...195c0c` | ⚠️ Unaudited |
| PhasedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964d45...2ec157` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa3ef...3666c0` | ⚠️ Unaudited |
| POC_SemiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x431e70...1dbc24` | ⚠️ Unaudited |
| PoLidoNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60a91e...082e46` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101816...390a2e` | ⚠️ Unaudited |
| PoolBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0...1cdcb8` | ⚠️ Unaudited |
| PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca99f...e079c2` | ⚠️ Unaudited |
| PoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2f2e...7d1683` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b459c...ddeafd` | ⚠️ Unaudited |
| PortfolioManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x039d77...1090bc` | ⚠️ Unaudited |
| PositionalMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63f072...5e9a84` | ⚠️ Unaudited |
| PositionalMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x734c6c...38fdc2` | ⚠️ Unaudited |
| PositionalMarketMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x470a69...9564ff` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a02e6...af93b2` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb7c...8cb78f` | ⚠️ Unaudited |
| PositionRouterReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a74c7...802f74` | ⚠️ Unaudited |
| PositionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264294...e616a4` | ⚠️ Unaudited |
| PRBMathCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dea8b...2bdc1b` | ⚠️ Unaudited |
| PRBMathSD59x18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ad0c...ea91f2` | ⚠️ Unaudited |
| PreJPEG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff28c...8599f6` | ⚠️ Unaudited |
| PremiumHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x135b6e...0793d1` | ⚠️ Unaudited |
| Previewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x135abf...67a2a2` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00dd3f...b9c732` | ⚠️ Unaudited |
| PriceFeedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5fe09b...3a13d3` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffd...d43a8b` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8...525cf7` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c0...e53ba1` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5...297266` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22c7e5...1c0fea` | ⚠️ Unaudited |
| PriceProvidersRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2ca9...05029f` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa...3be471` | ⚠️ Unaudited |
| PrintLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72519f...c5c047` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869b9...0d49b5` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f7...187103` | ⚠️ Unaudited |
| ProposalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x681797...1c8338` | ⚠️ Unaudited |
| ProposalReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd67881...bab514` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547516...bdbadf` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637278...2447c8` | ⚠️ Unaudited |
| ProtocolOwnedDebtCauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcf19...08f12a` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d880b...69b47a` | ⚠️ Unaudited |
| ProtoStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e5efd...96c012` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x02a5b3...4a9d9c` | ⚠️ Unaudited |
| ProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e74c9...ea31cb` | ⚠️ Unaudited |
| ProxyOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0aa94...e36212` | ⚠️ Unaudited |
| ProxyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea220...4b8855` | ⚠️ Unaudited |
| PunkLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f6f1...e331b1` | ⚠️ Unaudited |
| PxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e276d...454666` | ⚠️ Unaudited |
| pxETHvETHBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054b28...dec947` | ⚠️ Unaudited |
| QiStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99...6997f1` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1486aa...11465f` | ⚠️ Unaudited |
| RamsesStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46dcaf...f21058` | ⚠️ Unaudited |
| RandomBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23fc1...b0294a` | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a308...cb1c63` | ⚠️ Unaudited |
| RangedMarketMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d53c8...2c39c4` | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x086cc1...49e89d` | ⚠️ Unaudited |
| RangedPositionMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34ed3d...0c5658` | ⚠️ Unaudited |
| RatesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f551a...266869` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1136b8...bac9fa` | ⚠️ Unaudited |
| RebalancingStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcc3b...f907a6` | ⚠️ Unaudited |
| RebaseHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcd70...ef6c5c` | ⚠️ Unaudited |
| RebaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0c13ca...c590b6` | ⚠️ Unaudited |
| RecapitalizationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d1ac...1bd062` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d807e...a25914` | ⚠️ Unaudited |
| RedemptionReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x846e82...25a951` | ⚠️ Unaudited |
| RedemptionScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0972e6...adb887` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa382...76f5c8` | ⚠️ Unaudited |
| Referrals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a59ac...530d57` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2249d0...923392` | ⚠️ Unaudited |
| Refunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fa807...c6da51` | ⚠️ Unaudited |
| RegistryAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d3747...39bb56` | ⚠️ Unaudited |
| RegistryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0594cb...4db34c` | ⚠️ Unaudited |
| ReimbursementPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369fce...17f9cc` | ⚠️ Unaudited |
| RenBTCCrvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be431...f361b0` | ⚠️ Unaudited |
| RenCrvLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab72...45ed2a` | ⚠️ Unaudited |
| RenCrvSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d65c...29df42` | ⚠️ Unaudited |
| RenderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1fdf...e73af0` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2d36...8c1bee` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2740...7894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6...a01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec18b...a77efd` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1...d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262...2b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4...744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044906...0ad01c` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679...eb40ed` | ⚠️ Unaudited |
| RepayHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d07e5...634f21` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482...9fcebd` | ⚠️ Unaudited |
| ReserveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf1...1beaed` | ⚠️ Unaudited |
| RestrictedTeam | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a16cb...41d305` | ⚠️ Unaudited |
| RETHPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4548a9...ec229d` | ⚠️ Unaudited |
| RewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fcfd0...998884` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6726...4a0496` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1066a8...e75be2` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5da3ea...c3f5c2` | ⚠️ Unaudited |
| RewardMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x123706...5a5b8e` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bfb8e...6d40e0` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d55...980fba` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x159854...a3ce9b` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0399cf...a95f7f` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d5bea...3f784f` | ⚠️ Unaudited |
| RewardsEligibilityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7381f9...e7eb01` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x225ab8...9c64d0` | ⚠️ Unaudited |
| RewardsPuller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e60d...6a1503` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0755d3...1e5e93` | ⚠️ Unaudited |
| RiskManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2355d7...f62b30` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073931...e8fe50` | ⚠️ Unaudited |
| RodeoCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f958...94fc14` | ⚠️ Unaudited |
| RodeoMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb34891...a5ed9e` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8731d5...e01e98` | ⚠️ Unaudited |
| RouterETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150f94...cc2376` | ⚠️ Unaudited |
| RouterStatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c0fa6...c47161` | ⚠️ Unaudited |
| RouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9084b5...906dce` | ⚠️ Unaudited |
| RSETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101152...b45fbd` | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b0ed6...8cf0e4` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7e2a9a...02b4f2` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea...fb3c40` | ⚠️ Unaudited |
| SaleHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f4a31...25932e` | ⚠️ Unaudited |
| sAPE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ba20...1539c5` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb23786...e4dc14` | ⚠️ Unaudited |
| scrvUsdERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2d70...39236f` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041...8aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f16...b10f9c` | ⚠️ Unaudited |
| SellingRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc045...e696de` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2878...5b40dd` | ⚠️ Unaudited |
| ServiceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x072884...588f8a` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7...551036` | ⚠️ Unaudited |
| SewerPassAirdropClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2738af...ea6adf` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecff...ce11bc` | ⚠️ Unaudited |
| sfrxETHERC4626Strat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342209...5d72f6` | ⚠️ Unaudited |
| ShareCollateralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27d17...9ac9f8` | ⚠️ Unaudited |
| ShareValueHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0259e6...7671fa` | ⚠️ Unaudited |
| ShibLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c893...a92a12` | ⚠️ Unaudited |
| ShibSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085fa...0081ce` | ⚠️ Unaudited |
| ShibUniV3ChainlinkOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x959c61...5bb378` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4713...876cac` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf58eec...d434da` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee...5c6c2a` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb...7081fc` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43faf6...f7442f` | ⚠️ Unaudited |
| SiloFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d919c...737589` | ⚠️ Unaudited |
| SiloGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8031...8ab1f8` | ⚠️ Unaudited |
| SiloGovernanceTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0c899...fc3248` | ⚠️ Unaudited |
| SiloGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89163...eeaf61` | ⚠️ Unaudited |
| SiloLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12c37...8d92ea` | ⚠️ Unaudited |
| SiloLiquidationLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bed4...2680a4` | ⚠️ Unaudited |
| SiloModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb98bc3...37f1af` | ⚠️ Unaudited |
| SiloRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd998c3...cf309d` | ⚠️ Unaudited |
| SiloRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2374f...322a0c` | ⚠️ Unaudited |
| SiloSnapshotWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3d2e...b168a4` | ⚠️ Unaudited |
| SiloToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b2dd...486bb0` | ⚠️ Unaudited |
| SimpleERC20Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06053...0c010f` | ⚠️ Unaudited |
| SimpleUserProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3808e0...ffdc0d` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd...bf4b8a` | ⚠️ Unaudited |
| SinkConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x585af0...34f18d` | ⚠️ Unaudited |
| SinkDrain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58f62e...cbfca2` | ⚠️ Unaudited |
| SinkManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f...abcdae` | ⚠️ Unaudited |
| SinkManagerFacilitator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x45ff00...ce78a4` | ⚠️ Unaudited |
| Skimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f0b8...6829c1` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f...9f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba...b120a3` | ⚠️ Unaudited |
| SnapshotHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad930...26b147` | ⚠️ Unaudited |
| Sonne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1db246...2245f0` | ⚠️ Unaudited |
| SonneTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b22bd...e163b0` | ⚠️ Unaudited |
| SortitionPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e4cba...ecbcf6` | ⚠️ Unaudited |
| SpellLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b59...0ce015` | ⚠️ Unaudited |
| SpellOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e142...69ec10` | ⚠️ Unaudited |
| SpellPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb52...de9430` | ⚠️ Unaudited |
| SpellSuperSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66436c...19765d` | ⚠️ Unaudited |
| SpellSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663ef4...1aeb38` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a045...76e526` | ⚠️ Unaudited |
| SportAMMLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x14c50f...938636` | ⚠️ Unaudited |
| SportAMMLiquidityPoolRoundMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaea1be...93952a` | ⚠️ Unaudited |
| SportPositionalMarketData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef9865...ebff4a` | ⚠️ Unaudited |
| SportPositionalMarketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46b1ec...18e154` | ⚠️ Unaudited |
| SportsAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08e2c2...f4e5ae` | ⚠️ Unaudited |
| SportsAMMUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x060112...aa2344` | ⚠️ Unaudited |
| sSpellOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8beb5...de90c7` | ⚠️ Unaudited |
| sSpellV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| StabilizeCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8299ba...7d53df` | ⚠️ Unaudited |
| StabilizeMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad8b9d...5380a9` | ⚠️ Unaudited |
| Stabilizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec0d9...795cdd` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e2...9eb4cd` | ⚠️ Unaudited |
| StableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a220...5e3f6d` | ⚠️ Unaudited |
| StableConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0236b7...a8a42e` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9e...ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17...26f5f9` | ⚠️ Unaudited |
| StablePhantomPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd639...78ed23` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d...d834e7` | ⚠️ Unaudited |
| StakedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41279e...171166` | ⚠️ Unaudited |
| StakedENA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd57b...e1018b` | ⚠️ Unaudited |
| StakedEXA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33c69e...e682a1` | ⚠️ Unaudited |
| StakedGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af26...ba1c55` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb63366...aba240` | ⚠️ Unaudited |
| StakedLIF3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34ada0...a2acd2` | ⚠️ Unaudited |
| StakedMvlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ee50c...6894e3` | ⚠️ Unaudited |
| StakedPendle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98d14...749032` | ⚠️ Unaudited |
| StakedVectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6733f0...0fd2bc` | ⚠️ Unaudited |
| StakedVECVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5291d0...5d26a0` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe547ca...d02fd2` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb59f4...8a0b81` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2787f8...495a06` | ⚠️ Unaudited |
| StakingData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab599b...e0995a` | ⚠️ Unaudited |
| StakingExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be385...ba3571` | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118b76...069bd8` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74...d7deca` | ⚠️ Unaudited |
| StakingPortBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x236aa5...ab794b` | ⚠️ Unaudited |
| StakingRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x280d48...0810bd` | ⚠️ Unaudited |
| StakingRewardDistributorGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27b465...7151ed` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a758a...e3e9a6` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad30...a80356` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a...85e150` | ⚠️ Unaudited |
| StakingThales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0886e6...08d9cd` | ⚠️ Unaudited |
| StakingThalesBonusRewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5830e9...6afb49` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x13ad51...5efa60` | ⚠️ Unaudited |
| StandardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a220e...254675` | ⚠️ Unaudited |
| StargateCurveLevSwapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3e4216...8a5c12` | ⚠️ Unaudited |
| StargateCurveSwapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x674621...296080` | ⚠️ Unaudited |
| StargateLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0eef51...f9bcc3` | ⚠️ Unaudited |
| StargateToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x296f55...cb3f97` | ⚠️ Unaudited |
| Stash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376e8...726c2e` | ⚠️ Unaudited |
| StethFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0867...156deb` | ⚠️ Unaudited |
| StMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15152e...448303` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23724d...d2b022` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1a8bf9...effb76` | ⚠️ Unaudited |
| StrategyArrakisDaiUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x5518ed...942725` | ⚠️ Unaudited |
| StrategyArrakisUsdcDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1b7974...3dce4c` | ⚠️ Unaudited |
| StrategyAutoPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cc7de...ca5fc9` | ⚠️ Unaudited |
| StrategyBeethovenxSonne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x821863...848eb6` | ⚠️ Unaudited |
| StrategyBeethovenxUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2b65fb...2fad6d` | ⚠️ Unaudited |
| StrategyBifiMaxiV5Solidly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x012416...80ccef` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d9...f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98...549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf...d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354...11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c77...a64bd8` | ⚠️ Unaudited |
| StrategyEnnead | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5125b...90579a` | ⚠️ Unaudited |
| StrategyEts | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0275bf...5647c5` | ⚠️ Unaudited |
| StrategyEtsDaiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2de28...977694` | ⚠️ Unaudited |
| StrategyEtsUsdcDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x028adf...27e740` | ⚠️ Unaudited |
| StrategyFedPartner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d110...f8b2dc` | ⚠️ Unaudited |
| StrategyGammaUsdcDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x081fc0...854064` | ⚠️ Unaudited |
| StrategyGLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x216eee...6a638d` | ⚠️ Unaudited |
| StrategyGM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbf258...fc5d56` | ⚠️ Unaudited |
| StrategyGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca3d8...5a1780` | ⚠️ Unaudited |
| StrategyGMXUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b5f9...61f603` | ⚠️ Unaudited |
| StrategyGNS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56154f...5aecb0` | ⚠️ Unaudited |
| StrategyHop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ba51...ec690b` | ⚠️ Unaudited |
| StrategyHopCamelot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50d694...6213af` | ⚠️ Unaudited |
| StrategyHopCamelotUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd456d...a187b5` | ⚠️ Unaudited |
| StrategyHopUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebf278...49acbf` | ⚠️ Unaudited |
| StrategyKyberSwapUsdcDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x337800...aaf0fd` | ⚠️ Unaudited |
| StrategyKyberSwapUsdcUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x062d8e...3e92d0` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a4...e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a...69156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510...e0b81c` | ⚠️ Unaudited |
| StrategyPassiveManagerCamelot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c02fc...c4e147` | ⚠️ Unaudited |
| StrategyPassiveManagerPancake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b7c6d...b94193` | ⚠️ Unaudited |
| StrategyPassiveManagerRamses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb3ded...9ac440` | ⚠️ Unaudited |
| StrategyPikaUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x9520ae...ffe641` | ⚠️ Unaudited |
| StrategyPikaV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03df70...104b9e` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20c...597c7a` | ⚠️ Unaudited |
| StrategyReaperSonneDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x345db9...8b20cb` | ⚠️ Unaudited |
| StrategyReaperSonneDaiDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5b4f6f...6de836` | ⚠️ Unaudited |
| StrategyReaperSonneUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4aa217...220cf4` | ⚠️ Unaudited |
| StrategyReaperSonneUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d2126...528298` | ⚠️ Unaudited |
| StrategyRubiconDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x304d04...b1f4ef` | ⚠️ Unaudited |
| StrategyRubiconUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ddd03...93e09d` | ⚠️ Unaudited |
| StrategyRubiconUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fbba9...2802bc` | ⚠️ Unaudited |
| StrategySiloCollateralOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cf7f5...185755` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c4...4ec989` | ⚠️ Unaudited |
| StrategySonneDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2e25b0...705e72` | ⚠️ Unaudited |
| StrategySonneUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a3fde...89f9f7` | ⚠️ Unaudited |
| StrategySushiswapUsdcUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0b2876...09d31d` | ⚠️ Unaudited |
| StrategySynapseUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22c40e...f4047b` | ⚠️ Unaudited |
| StrategyTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3da26...7b800a` | ⚠️ Unaudited |
| StrategyUs3UsdcWethOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b60ff...f9edcf` | ⚠️ Unaudited |
| StrategyUsdPlusDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x291120...e5e88c` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4...ba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca...20d8d6` | ⚠️ Unaudited |
| StrategyVelodromeUsdcDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f343c...7cb373` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50bf8...5cff27` | ⚠️ Unaudited |
| StrategyVesperUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2955ba...d018ec` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e...da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93...88797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055...edfa70` | ⚠️ Unaudited |
| SubaccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c48a9...1efa44` | ⚠️ Unaudited |
| SubgraphAvailabilityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10223d...16ad4d` | ⚠️ Unaudited |
| SubgraphNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fbd54...22b23f` | ⚠️ Unaudited |
| SubgraphNFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96cce9...815ebe` | ⚠️ Unaudited |
| SubgraphService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80d1a2...4747cd` | ⚠️ Unaudited |
| Subscriptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x482f58...67a750` | ⚠️ Unaudited |
| SugarHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x495193...447a69` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb91...41978f` | ⚠️ Unaudited |
| SupplyMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f307e...0b7e2b` | ⚠️ Unaudited |
| SupplySchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e8b82...cb9c26` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cb...6efef7` | ⚠️ Unaudited |
| sVEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d5c6...9b3365` | ⚠️ Unaudited |
| sVECVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c894...812733` | ⚠️ Unaudited |
| svETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad4bfa...7a1879` | ⚠️ Unaudited |
| svETHZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2875...ec1314` | ⚠️ Unaudited |
| sVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9485db...4a97d9` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf47b8b...b33535` | ⚠️ Unaudited |
| Swapper1InchV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0fcf...d18366` | ⚠️ Unaudited |
| SwapperEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23f20b...6be18b` | ⚠️ Unaudited |
| SwapperSidechain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa014a4...97a549` | ⚠️ Unaudited |
| SweeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3d9f...40ff26` | ⚠️ Unaudited |
| SwETHPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7ab07...415334` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a4...e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9...38ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a4...f8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf...04c2cf` | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50057...86823f` | ⚠️ Unaudited |
| T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf702...94bee5` | ⚠️ Unaudited |
| TaleOfThalesNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41cccb...486d1f` | ⚠️ Unaudited |
| TAPVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33f9e9...a0f05a` | ⚠️ Unaudited |
| TBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18084f...d93a88` | ⚠️ Unaudited |
| TBTCConstants | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a152...26750d` | ⚠️ Unaudited |
| TBTCDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b66b...37cdf0` | ⚠️ Unaudited |
| TBTCSystem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20a5c...1ab64a` | ⚠️ Unaudited |
| TBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52818e...277fd4` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6...e24a9f` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e109e...c07aef` | ⚠️ Unaudited |
| ThalesAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x129e14...554c2f` | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x092e6b...d58b70` | ⚠️ Unaudited |
| ThalesAMMLiquidityPoolRoundMastercopy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f8cc3...132018` | ⚠️ Unaudited |
| ThalesAMMUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x279c0d...341373` | ⚠️ Unaudited |
| ThalesStakingRewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0abc94...7a4ee3` | ⚠️ Unaudited |
| TherundownConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2447ce...9f9985` | ⚠️ Unaudited |
| ThreeCrvLevSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc83f...aae530` | ⚠️ Unaudited |
| ThreeCrvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f193...24ddab` | ⚠️ Unaudited |
| ThreeCrvSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286ed6...0af7c5` | ⚠️ Unaudited |
| ThreeCryptoLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d938...3889bf` | ⚠️ Unaudited |
| ThreeCryptoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20915f...0605f1` | ⚠️ Unaudited |
| ThreeCryptoSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1ea2...b5bc85` | ⚠️ Unaudited |
| ThreePoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641e3b...8e23da` | ⚠️ Unaudited |
| ThreePoolStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x67023c...dfdd6d` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df934...60da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09214c...9b15b8` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1fda02...08e674` | ⚠️ Unaudited |
| TimelockControllerWithCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x343902...5e8227` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b...1dfb61` | ⚠️ Unaudited |
| TimeLockNonTransferablePoolUnlocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf049...47edbc` | ⚠️ Unaudited |
| TimeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b...ae8917` | ⚠️ Unaudited |
| TokenBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f2e21...2b44a2` | ⚠️ Unaudited |
| TokenClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f38c...fdc3a5` | ⚠️ Unaudited |
| TokenContinuousDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f517...e0bc85` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf48a59...b34bfc` | ⚠️ Unaudited |
| TokenListingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c317...0bc92d` | ⚠️ Unaudited |
| TokenListingManagerAdvanced | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe468...6e5705` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ef815...75ad59` | ⚠️ Unaudited |
| TokenMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334b18...e5783c` | ⚠️ Unaudited |
| TokenMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be03b...3d27f6` | ⚠️ Unaudited |
| TokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f995...582dab` | ⚠️ Unaudited |
| TokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e37df...6ad622` | ⚠️ Unaudited |
| TokenSideChainMultiBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x42dc54...4830ea` | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda534b...681365` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe43a...655f41` | ⚠️ Unaudited |
| TopUps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c9b5...79d91a` | ⚠️ Unaudited |
| TotalEthValueReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788f0b...3854aa` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| TransferGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124ab7...cf81df` | ⚠️ Unaudited |
| TransferRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68818d...a9a6c1` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7a49...122086` | ⚠️ Unaudited |
| TransmuterEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f81e...ff674b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0081fc...f52123` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0780ac...abba73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08234d...276ec7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x097651...bd6a72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d3ac0...fe6489` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0e628a...aa5913` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x126e6d...7d9a38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x152de6...2900ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18d51a...0ce0e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x194996...2c29f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1de562...32008d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x319eee...35cf8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x374434...6ca40c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3e6eba...0e4637` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4e91f1...5afb32` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x548cab...08c3ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x57dff3...49e7bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6733cb...d86a91` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6d247b...b29a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x819f7b...d81667` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x923a36...8264f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e2081...5a312b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb8df0a...38e6d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf217e...854017` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x004d1b...188c07` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x022ca1...76e385` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x033181...294b27` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x0565b1...8fb898` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x057e3e...594d04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x0a6851...b75325` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x0b8f39...7be900` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x0e7eb3...823b6b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x10add8...4dea80` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x15c9ea...27e9db` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x1e95fa...c1e0a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x21382a...07e23c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x3198ab...a2e579` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x31a20e...c1f6bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x3e29d3...7c5f04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x474499...33326d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x5c7949...83c641` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x6ab00f...51d39d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x70164a...03286b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x9485ac...c8b1ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0xd557ad...2b5997` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xdd98b7...d5acef` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1033dd...68ac6d` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62d...a0efde` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d360...ed8508` | ⚠️ Unaudited |
| TriCryptoUpdator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf49...b1632f` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbdd6f9...5170ef` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c25...747556` | ⚠️ Unaudited |
| TrustlessOTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dc6a...1013db` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e37...7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e...b5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| UnderwriterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007854...0df843` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b...61d136` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x905dfc...711aa3` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d6969...8d6778` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454...b34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9...e808de` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d...d9174b` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b3ba5...3f12d1` | ⚠️ Unaudited |
| UnlockedWithdrawalsInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b08a...862439` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dfeb...cadd85` | ⚠️ Unaudited |
| Usd0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ffb6...0c2f01` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c...49ae32` | ⚠️ Unaudited |
| Usd0PP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0202b5...11d62f` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40757a...db2d51` | ⚠️ Unaudited |
| UsdPlusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02803f...7ed986` | ⚠️ Unaudited |
| USDR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0531df...43142e` | ⚠️ Unaudited |
| USDRMigrationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39f9f4...b8f8df` | ⚠️ Unaudited |
| USTLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3771...11d864` | ⚠️ Unaudited |
| USTMiddleLayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908fcb...a54536` | ⚠️ Unaudited |
| USTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5126...3268a7` | ⚠️ Unaudited |
| USTStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6191a...2f39e2` | ⚠️ Unaudited |
| USTStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c29b...63d146` | ⚠️ Unaudited |
| USTSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1067c6...13342c` | ⚠️ Unaudited |
| UZD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015b94...63541f` | ⚠️ Unaudited |
| V00_Marketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79be52...802984` | ⚠️ Unaudited |
| V00_UserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265a48...d61edd` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db7d8...d6b2f6` | ⚠️ Unaudited |
| ValidatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a6c93...5b78eb` | ⚠️ Unaudited |
| ValueRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x650af5...504b76` | ⚠️ Unaudited |
| ValueRouterImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x522cb8...a14aa0` | ⚠️ Unaudited |
| VaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef055...a6452b` | ⚠️ Unaudited |
| VaultAPSStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc0b52...f6d7dc` | ⚠️ Unaudited |
| VaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0660bf...b1369d` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56d2e...afd93a` | ⚠️ Unaudited |
| VaultFed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe082eb...2734fc` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97b689...1f227f` | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x16cd38...43d5aa` | ⚠️ Unaudited |
| VaultNativeStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5255e9...c4d3f9` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cf457...2b5de3` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060cbb...463cc0` | ⚠️ Unaudited |
| VaultsCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03175c...ac6ab0` | ⚠️ Unaudited |
| VaultsCoreState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d49e6...dcb417` | ⚠️ Unaudited |
| VaultsDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85304e...902882` | ⚠️ Unaudited |
| VaultsRegistryHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ca31...cb70d8` | ⚠️ Unaudited |
| VaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d09fa...83c30b` | ⚠️ Unaudited |
| VaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25041c...ad8739` | ⚠️ Unaudited |
| ve_query | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443299...35e9ca` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a9ea0...1782dd` | ⚠️ Unaudited |
| VECStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdc28c...9be9b1` | ⚠️ Unaudited |
| Vector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb9b6...5d8447` | ⚠️ Unaudited |
| VectorBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abcf9...13c969` | ⚠️ Unaudited |
| VectorETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d64c...6fb4a0` | ⚠️ Unaudited |
| VectorETHManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d476b...476bcf` | ⚠️ Unaudited |
| VectorTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd568...371064` | ⚠️ Unaudited |
| VectorVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa9d91...f88a8c` | ⚠️ Unaudited |
| VECVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7abcfd...75f1f8` | ⚠️ Unaudited |
| veKwentaRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc6a9c9...62181a` | ⚠️ Unaudited |
| Velo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c8b65...a11a05` | ⚠️ Unaudited |
| VelodromeLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3c5e2...93fa51` | ⚠️ Unaudited |
| VeloGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f82e1...cbe989` | ⚠️ Unaudited |
| VeloOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07f544...36f5ce` | ⚠️ Unaudited |
| VendingMachine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cca7e...47680e` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f98...026d4b` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7570a2...6437e6` | ⚠️ Unaudited |
| VEPowerOracleReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x417a5b...968cca` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559d12...46c5f1` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199070...363004` | ⚠️ Unaudited |
| VesterCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57866d...789b60` | ⚠️ Unaudited |
| VesterCliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4bf17...517971` | ⚠️ Unaudited |
| VesterSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e1036...37ad10` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5981...a7f03c` | ⚠️ Unaudited |
| vETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa508e8...4107b0` | ⚠️ Unaudited |
| VeYfiPositionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a70cd...6ecbe8` | ⚠️ Unaudited |
| View | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2abf...15d8b7` | ⚠️ Unaudited |
| vKwentaRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6895c1...1e612a` | ⚠️ Unaudited |
| VotemarketGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c572b...49d920` | ⚠️ Unaudited |
| VotePreviewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x543e3e...d10ae9` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09236c...b8cf7e` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e42ac...fbd58e` | ⚠️ Unaudited |
| VotingMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79e902...e7c6be` | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8daa6...1c4744` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x756e7c...ada8ec` | ⚠️ Unaudited |
| VotiumGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce6df...027be1` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00702b...7f6bdb` | ⚠️ Unaudited |
| WadRayMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd14a17...df4ee1` | ⚠️ Unaudited |
| WalletCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb59...43ffe5` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30019d...fbdec2` | ⚠️ Unaudited |
| WalletRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d7e8...65c832` | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aed6c...d47fe8` | ⚠️ Unaudited |
| Wallets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67913...ba47bf` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b...2de4d7` | ⚠️ Unaudited |
| WbtcLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5b5e...5c0da8` | ⚠️ Unaudited |
| WbtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6f...5b3f0a` | ⚠️ Unaudited |
| WbtcOracleMig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd1052...20b6b0` | ⚠️ Unaudited |
| WbtcSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6a54...19febf` | ⚠️ Unaudited |
| WebauthnOwnerPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f498c...484ca0` | ⚠️ Unaudited |
| WeightedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x380aab...4d0fad` | ⚠️ Unaudited |
| WethLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205d52...d7e0f5` | ⚠️ Unaudited |
| WethOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dcc3...56557a` | ⚠️ Unaudited |
| WethSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb81be...245437` | ⚠️ Unaudited |
| WhitelistAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfcad...65e55e` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d200...183f2b` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d81...d4da07` | ⚠️ Unaudited |
| WhitelistedNFTSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59cc...b72a8c` | ⚠️ Unaudited |
| Whitelister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc311...79d90a` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f0c30...8d1fa9` | ⚠️ Unaudited |
| WidgetSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02489a...1009df` | ⚠️ Unaudited |
| Withdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069ee6...fc1cfb` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x388782...4eb830` | ⚠️ Unaudited |
| WrappedExternalBribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x795551...3086a8` | ⚠️ Unaudited |
| WrappedOusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeabeb...16e632` | ⚠️ Unaudited |
| WrappedUsdPlusRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe56145...92bc1a` | ⚠️ Unaudited |
| WrappedUsdPlusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0b8f31...6915bb` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71...231981` | ⚠️ Unaudited |
| WrapperDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd04b...129fe1` | ⚠️ Unaudited |
| WrapperLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058e2b...f09ed7` | ⚠️ Unaudited |
| WrapperLockDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54419b...cef543` | ⚠️ Unaudited |
| WrapperLockEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9aa...a59cbf` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436...fc74fd` | ⚠️ Unaudited |
| WToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344518...a64411` | ⚠️ Unaudited |
| Xai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c9f0...c3beac` | ⚠️ Unaudited |
| XINV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1637e4...dcd61b` | ⚠️ Unaudited |
| XinvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07eb8f...74909d` | ⚠️ Unaudited |
| XinvVesterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c670...053a19` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae...e419c5` | ⚠️ Unaudited |
| XXXXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f560...c1dc1a` | ⚠️ Unaudited |
| XYZBroadcaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578669...ff8d89` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2a...53b367` | ⚠️ Unaudited |
| yBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03dfdb...7d3f6d` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0a...bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd02...e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411...2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597ea...bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66...3931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59...f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71...a6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610258...a05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba...b73d99` | ⚠️ Unaudited |
| YearnChainlinkOracleV1 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x694808...4b99ff` | ⚠️ Unaudited |
| YearnChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6cc0cd...8ae668` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e...343eeb` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529...6ad93e` | ⚠️ Unaudited |
| YieldModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2792da...aa9440` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea...d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738...98340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b...d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad9...54203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b642...e9cc09` | ⚠️ Unaudited |
| YTokenStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57faa0...b32052` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052...a8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c068...af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea74...b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118ee...b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6...367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f...a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dea...f677b5` | ⚠️ Unaudited |
| YVCrvStETHLevSwapper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abc0...a7c21d` | ⚠️ Unaudited |
| YVCrvStETHOracle2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae436...dd84eb` | ⚠️ Unaudited |
| YVCrvStETHSwapper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e97d...7202e7` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51...787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06...025298` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e68ee...8f1a73` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c64a...78bb7d` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3b73...407bf9` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x37a486...62ef93` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883...ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b59ef...461d5b` | ⚠️ Unaudited |
| zETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47f1c...a87b2b` | ⚠️ Unaudited |
| Zunami | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffcc6...4d14ce` | ⚠️ Unaudited |
| ZunamiAPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab491...2698bd` | ⚠️ Unaudited |
| ZunamiDepositEthZap2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd38c5...3c0ed6` | ⚠️ Unaudited |
| ZunamiDepositEthZap3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2160ad...696382` | ⚠️ Unaudited |
| ZunamiDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1162c7...f81574` | ⚠️ Unaudited |
| ZunamiDepositZap2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6042...1fcce1` | ⚠️ Unaudited |
| ZunamiDepositZap3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35fc7...77fef4` | ⚠️ Unaudited |
| ZunamiForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e392...50a0af` | ⚠️ Unaudited |
| ZunamiGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0357f8...a03f98` | ⚠️ Unaudited |
| ZunamiLaunchZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18ac6...5b6699` | ⚠️ Unaudited |
| ZunamiNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9de839...c6eea7` | ⚠️ Unaudited |
| ZunamiNativeAPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b49d1...b29c82` | ⚠️ Unaudited |
| ZunamiPoolApsZunBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6e1f...828d82` | ⚠️ Unaudited |
| ZunamiPoolApsZunETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab3aa...bd28e2` | ⚠️ Unaudited |
| ZunamiPoolApsZunUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e487...082889` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179dc3...e99498` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0beb2b...16de60` | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f559...fccfb5` | ⚠️ Unaudited |
| ZunamiPoolControllerZunBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6c5c...11eeb4` | ⚠️ Unaudited |
| ZunamiPoolControllerZunETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd57f...6f9f32` | ⚠️ Unaudited |
| ZunamiPoolControllerZunUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f858e...dc6f4e` | ⚠️ Unaudited |
| ZunamiPoolZunBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fa308...5fc6db` | ⚠️ Unaudited |
| ZunamiPoolZunETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2e660...2f2222` | ⚠️ Unaudited |
| ZunamiPoolZunUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecc4a...d30b0a` | ⚠️ Unaudited |
| ZunamiRedistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9cc8b...dec334` | ⚠️ Unaudited |
| ZunamiRedistributorNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60278e...dbeb8a` | ⚠️ Unaudited |
| ZunamiStableZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c3a5...eec3a8` | ⚠️ Unaudited |
| ZunamiTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932370...d07197` | ⚠️ Unaudited |
| ZunamiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5204...2f0f36` | ⚠️ Unaudited |
| ZunDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea950...967b3a` | ⚠️ Unaudited |
| ZunETHApsVaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb17c2...9e5654` | ⚠️ Unaudited |
| ZunEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64298a...64be4b` | ⚠️ Unaudited |
| ZunETHVaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f8fc0...86b000` | ⚠️ Unaudited |
| ZUNStakingRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bae8...b9e8ea` | ⚠️ Unaudited |
| ZunUSDApsVaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859c6...ea0276` | ⚠️ Unaudited |
| ZunUSDVaultStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa84c...8851a0` | ⚠️ Unaudited |
| ZunVestingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190b01...73f931` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa07...f65295` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387254 | `0x0f5d2c...695c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387255 | `0x1228c9...776557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387257 | `0x163fe0...3dfec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387260 | `0x22ec89...71fd95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-387261 | `0x25e5e8...fca826` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-387264 | `0x2ea819...442e28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387266 | `0x4a2313...e5e97b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387271 | `0x680689...6d6738` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387272 | `0x74aff3...cf90e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387274 | `0x83927c...70c95b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387277 | `0x93a4b8...956e29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387278 | `0xa15485...ba1ea3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387279 | `0xab6363...f1ee52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387280 | `0xb0748b...6f3b42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387281 | `0xb2883b...dacd36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387282 | `0xc4ee2a...3e92db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387284 | `0xde88ff...e27a4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387285 | `0xf498fa...d12562` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387287 | `0xfa3164...32da2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387288 | `0x35afb3...96a198` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-387289 | `0x41658b...b364de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387290 | `0x73c894...8b8bdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387291 | `0xe23b63...cc97ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387292 | `0xf77734...3e4da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387293 | `0xf95e20...e23482` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387299 | `0x0f5d2c...695c54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387300 | `0x5332c7...6de395` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387301 | `0x8ddda4...fca4f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387302 | `0xb0748b...6f3b42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387303 | `0xc4ee2a...3e92db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-387304 | `0xeeeeb5...66cdd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387311 | `0x08a552...f432c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-387312 | `0x41658b...b364de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387313 | `0x4c1c12...11622f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387314 | `0x58a510...8042ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387315 | `0x7f7028...6273e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387316 | `0xd079ad...581a19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387305 | `0x140698...4f015b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387306 | `0x163fe0...3dfec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387307 | `0x27e943...67eca8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-387308 | `0x41658b...b364de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387309 | `0x595b89...e349b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387310 | `0x680689...6d6738` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387294 | `0x1858c7...1add33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387295 | `0x2cbc93...0d798d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387296 | `0x74aff3...cf90e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387297 | `0x83927c...70c95b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387298 | `0xfa3164...32da2a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DL audit link](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DL audit link](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Report](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Security audits](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Hexens](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Neodyme](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17428] Hinkal_Zokyo_Feb20th_2024.pdf — no match: The audit report focuses on a TypeScript codebase (Hinkal protocol) with no smart contracts in scope. The report mentions server endpoints, relayer URLs, and React hooks, but no Solidity contracts or blockchain-deployed contracts are listed.
- [17429] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [17430] DL audit link — no match: The provided text is a marketing page for zkSecurity, not an audit report. No contracts, scope sections, or audit dates are present.
- [17431] DL audit link — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed.
- [17432] Report — no match: The report does not list specific contract names; scope was kept private. Only a mention of 'VolatileVault' in a finding, but not explicitly in scope.
- [17433] Security audits — no match: The provided text is a documentation index page listing audit reports but does not contain the full audit report content. No contract names or scope details are present.
- [17434] Hexens — no match: Extracted contract names from findings that reference specific files. No explicit scope section found; contracts are inferred from the report content.
- [17435] Neodyme — no match: The report does not list specific contract names or file paths; it only describes the scope as 'entire source code of Hinkal's Solana on-chain program' without naming individual contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hexens | HinkalInLogic | ambiguous — not counted | 0x680689… (alternative) `0x680689...6d6738` — liveness: live (current_address_book_code)<br>0x7f7028… (alternative) `0x7f7028...6273e9` — liveness: live (current_address_book_code)<br>0xb0748b… (alternative) `0xb0748b...6f3b42` — liveness: live (current_address_book_code)<br>0xf77734… (alternative) `0xf77734...3e4da7` — liveness: live (current_address_book_code)<br>0xde88ff… (alternative) `0xde88ff...e27a4b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Hexens | SwapperM | unmatched — not counted | — | mentioned in finding HINKAL-11 | no |
| Hexens | Hinkal | unmatched — not counted | — | mentioned in findings HINKAL-6 and HINKAL-9 | no |
| Hexens | AccessTokenChecker | unmatched — not counted | — | mentioned in finding HINKAL-6 | no |
| Hexens | CrossChainAccessToken | unmatched — not counted | — | mentioned in finding HINKAL-6 | no |
| Hexens | CrossChainAccessTokenManager | unmatched — not counted | — | mentioned in finding HINKAL-6 | no |
| Hexens | Permitter | unmatched — not counted | — | mentioned in finding HINKAL-8 | no |
| Hexens | Transferer | unmatched — not counted | — | mentioned in finding HINKAL-9 | no |
| Hexens | CircomDataBuilder | unmatched — not counted | — | mentioned in finding HINKAL-9 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1256 |
| upstream | 154 |
| standard_library | 60 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=7
- Match method counts: n/a

Zero-match audit list:

- [17428] Hinkal_Zokyo_Feb20th_2024.pdf
- [17429] index.html
- [17430] DL audit link
- [17431] DL audit link
- [17432] Report
- [17433] Security audits
- [17434] Hexens
- [17435] Neodyme

Fork inheritance lineage and inherited audits are included when available.
