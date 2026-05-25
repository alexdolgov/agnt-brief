# Agentic Audit Brief: LendFlare

⚠️ Lifecycle status: DECLINING - TVL changed 10.9% over 90 days

## Project Overview

- Project: LendFlare (`lendflare`)
- Lifecycle: declining (Tier 0, 97.2% below peak)
- Generated: 2026-05-25T05:23:22.842Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 144 unique implementations (719 raw deployments)
- DeFi Llama TVL: $1,143,827.24
- On-chain TVL (included contracts): $1,051.88
- TVL by chain: Ethereum $1,051.88

## Project Description

LendFlare is a decentralized lending protocol on Ethereum that enables users to supply assets, borrow against them, and earn yield through boosted rewards. It integrates with Curve and Convex to optimize returns for liquidity providers.

### Architecture

The LendFlare family shares a common proxy infrastructure (LendFlareProxy and TransparentUpgradeableProxy) for upgradeability. Core lending markets interact with Convex booster contracts to maximize yield, while VirtualBalanceWrappers and Vyper contracts serve as supporting adapters and pools.

## Audit Coverage Summary

- Verified implementations audited: 2/74 (2.7%)
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 1
- Unverified implementations: 70
- Unique implementations: 144
- Raw deployments: 719
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,051.88
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,051.88 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 2.7% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConvexBoosterV2 | core_logic | ethereum | [`0x4c3c78...f2b69f`](./contracts/ethereum-1/0x4c3c78cebc9cc87436deed2782998bc002f2b69f/) | ✅ Audited |
| LendingMarketV2 | core_logic | ethereum | 4 deployments: ethereum [`0x03f744...fce26d`](./contracts/ethereum-1/0x03f744a9ec8d350d1991ac6704fce0c211fce26d/); ethereum `0x4f69ad...b79d52`; ethereum `0xac86b0...8daa07`; ethereum `0xc8937e...061119` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingSponsor | core_logic | ethereum | 2 deployments: ethereum [`0x1284ef...18da30`](./contracts/ethereum-1/0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30/); ethereum `0x807047...57036d` | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | ethereum | 14 deployments: ethereum [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/); ethereum `0x1e7d3b...32daae`; ethereum `0x2d3701...8be7a3`; ethereum `0x480af6...4ddee7`; ethereum `0x5bea27...bd780a`; ethereum `0x783128...65f26a`; ethereum `0x7af331...5a9693`; ethereum `0x8c5a7f...9bc933`; ethereum `0x8d76f3...93bd75`; ethereum `0xb8687d...8b2138`; ethereum `0xbac845...f084c8`; ethereum `0xbb3fda...7c5fa1`; ethereum `0xc68443...0ad0a1`; ethereum `0xd8f49c...9a357d` | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | ethereum | 2 deployments: ethereum [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/); ethereum `0xe5afcf...62dfe7` | ⚠️ Unaudited |
| ApplyFee | unknown | ethereum | [`0x2778be...67b999`](./contracts/ethereum-1/0x2778be78003ba0444de28450a494e0112067b999/) | ⚠️ Unaudited |
| ConvexBooster | core_logic | ethereum | [`0x64e965...b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| crvUSD Controller | governance | ethereum | 8 deployments: ethereum [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/); ethereum `0x42dd7d...367a02`; ethereum `0x4c5d4f...504112`; ethereum `0x5473b1...0637a7`; ethereum `0x584b0f...46fbbf`; ethereum `0x747459...754acc`; ethereum `0xdede1c...9b72e4`; ethereum `0xe3e3fb...790415` | ⚠️ Unaudited |
| crvUSD ControllerFactory | registry | ethereum | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSD deleverage zap | adapter | ethereum | 6 deployments: ethereum [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/); ethereum `0x600e57...6a4a0c`; ethereum `0x9be82c...16384d`; ethereum `0xaa25a6...84830c`; ethereum `0xb911d7...2c9282`; ethereum `0xf11392...6aa34c` | ⚠️ Unaudited |
| crvUSD Stablecoin | token | ethereum | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | core_logic | ethereum | 4 deployments: ethereum [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/); ethereum `0x69d746...50baa9`; ethereum `0x9164e2...ab01e2`; ethereum `0xc455e6...44d3f8` | ⚠️ Unaudited |
| CryptoFromPoolsRate | core_logic | ethereum | 7 deployments: ethereum [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/); ethereum `0x50c39e...e9b477`; ethereum `0x85fd06...d5f163`; ethereum `0x890866...41bab0`; ethereum `0xb08eb2...602cd9`; ethereum `0xbcda2a...30a9f1`; ethereum `0xe3ee57...288e2c` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | core_logic | ethereum | 5 deployments: ethereum [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/); ethereum `0x4efb0e...b8dbfa`; ethereum `0x8b6861...c231de`; ethereum `0xad19c0...d42606`; ethereum `0xe782ad...e392ed` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | core_logic | ethereum | 3 deployments: ethereum [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/); ethereum `0x3c0853...b81b9e`; ethereum `0xac8a4d...ef2800` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | core_logic | ethereum | 4 deployments: ethereum [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/); ethereum `0x2ef4b3...9523de`; ethereum `0x4710a7...2b8d22`; ethereum `0xfb230b...b69e1b` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | operational_periphery | ethereum | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | operational_periphery | ethereum | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | operational_periphery | ethereum | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | operational_periphery | ethereum | 2 deployments: ethereum [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/); ethereum `0xbe83fd...4f8dcb` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | operational_periphery | ethereum | 5 deployments: ethereum [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/); ethereum `0x9e291b...d6aada`; ethereum `0xae14b7...327bce`; ethereum `0xb311ac...2070dc`; ethereum `0xc1793a...e106ad` | ⚠️ Unaudited |
| CurveExchangeAdapter | adapter | ethereum | [`0x7d6429...8c1fd4`](./contracts/ethereum-1/0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4/) | ⚠️ Unaudited |
| DepegShield | unknown | ethereum | 2 deployments: ethereum [`0x5e6b51...248ac1`](./contracts/ethereum-1/0x5e6b51b181f52fc470db062a07f0210eed248ac1/); ethereum `0x99fc40...d628ae` | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | ethereum | 2 deployments: ethereum [`0x7a9960...af9762`](./contracts/ethereum-1/0x7a996019db95ae74fa3ed8ed86ff1cc0eeaf9762/); ethereum `0x8a0663...23af77` | ⚠️ Unaudited |
| GenerateLendingPools | core_logic | ethereum | 13 deployments: ethereum [`0x042959...60afbd`](./contracts/ethereum-1/0x0429593646407b1f7a7dce3ce9dc4724bc60afbd/); ethereum `0x046348...673c11`; ethereum `0x04ac5c...5f4fd2`; ethereum `0x5086f6...bd338f`; ethereum `0x55a03d...c2772c`; ethereum `0x73a1a5...ead527`; ethereum `0x73da41...271c48`; ethereum `0x76973c...b50c97`; ethereum `0x786a84...28ba9a`; ethereum `0x9a1677...abe043`; ethereum `0xb985a1...4b4c18`; ethereum `0xe0aa24...b9be5a`; ethereum `0xfdb13c...e2b829` | ⚠️ Unaudited |
| GenerateLendingPoolsV2 | core_logic | ethereum | [`0xd6aaba...d17241`](./contracts/ethereum-1/0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241/) | ⚠️ Unaudited |
| GenerateLendingPoolsV3 | core_logic | ethereum | [`0x447413...19c9ec`](./contracts/ethereum-1/0x447413fbf9c992ab6a967541f204d8f40419c9ec/) | ⚠️ Unaudited |
| Health calculator zap for crvUSD controller | adapter | ethereum | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| LendFlareCRV | unknown | ethereum | 2 deployments: ethereum [`0x653689...e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/); ethereum `0x9e9659...ff156a` | ⚠️ Unaudited |
| LendFlareGaugeModel | operational_periphery | ethereum | 2 deployments: ethereum [`0xc78179...4246b6`](./contracts/ethereum-1/0xc7817927c9f3629717b5d237caa15968424246b6/); ethereum `0xe06ee2...51028c` | ⚠️ Unaudited |
| LendFlareProxy | proxy | ethereum | 3 deployments: ethereum [`0x1fa362...2d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/); ethereum `0x7720a9...cd7aa5`; ethereum `0xb620be...bc3f82` | ⚠️ Unaudited |
| LendFlareToken | token | ethereum | 3 deployments: ethereum [`0xa57653...cd4fbc`](./contracts/ethereum-1/0xa576538c83672fb9087aa7b96b661acbbdcd4fbc/); ethereum `0xbe6302...de00ea`; ethereum `0xc847b0...3e0c39` | ⚠️ Unaudited |
| LendFlareTokenLockerFactory | registry | ethereum | [`0x5b61d7...f41524`](./contracts/ethereum-1/0x5b61d7810db1780b9552259cf37739413ef41524/) | ⚠️ Unaudited |
| LendFlareTokenMinter | token | ethereum | [`0x7b278f...17b831`](./contracts/ethereum-1/0x7b278f27506cbd890975df0b70fe6bd3b917b831/) | ⚠️ Unaudited |
| LendFlareVault | core_logic | ethereum | 6 deployments: ethereum [`0x29042e...4d492c`](./contracts/ethereum-1/0x29042e6389075f7181361ee5bca1df9a524d492c/); ethereum `0x35f962...75ea87`; ethereum `0x4169fa...a08ac0`; ethereum `0x6c3cb7...53094e`; ethereum `0x803ffd...d9c378`; ethereum `0xd61401...5810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0xe6615c...f6f9a6`](./contracts/ethereum-1/0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6/); ethereum `0xf706fd...cff2ee` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | operational_periphery | ethereum | 3 deployments: ethereum [`0x19ac8e...c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/); ethereum `0x70ffe9...ca5b3b`; ethereum `0x96738a...d4bf00` | ⚠️ Unaudited |
| LendFlareZap | adapter | ethereum | 2 deployments: ethereum [`0xbcdc45...98619c`](./contracts/ethereum-1/0xbcdc45372847b95bb4bd6d524b4a801aac98619c/); ethereum `0xd7c86a...a303ca` | ⚠️ Unaudited |
| LendingMarket | core_logic | ethereum | 3 deployments: ethereum [`0x402e3c...8cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/); ethereum `0x9997fd...f7f179`; ethereum `0xa7c45b...5e88c0` | ⚠️ Unaudited |
| Leverage zap for crvUSD controller (sfrxETH market) | adapter | ethereum | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | 4 deployments: ethereum [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/); ethereum `0x62191e...9c18a9`; ethereum `0x79d584...35874d`; ethereum `0x7e6327...62183f` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | ethereum | [`0x8038dd...2b059a`](./contracts/ethereum-1/0x8038dd8356f84ebe440c0a0847e553d9692b059a/) | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | ethereum | [`0xf23801...96857c`](./contracts/ethereum-1/0xf23801f0c81b8e31ce95bc980ecaf069d296857c/) | ⚠️ Unaudited |
| MovingLeverageBase | unknown | ethereum | [`0xd132c6...814a46`](./contracts/ethereum-1/0xd132c63a09fccfef56b88c5aca8ecbb63f814a46/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | 2 deployments: ethereum [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/); ethereum `0x6af700...118bd1` | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| OneWayLendingFactory | registry | ethereum | 4 deployments: ethereum [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/); ethereum `0x5e0198...9d4288`; ethereum `0xc67a44...dedaa3`; ethereum `0xea6876...3205e0` | ⚠️ Unaudited |
| Peg Keeper | operational_periphery | ethereum | 4 deployments: ethereum [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/); ethereum `0x6b765d...b5c345`; ethereum `0xaa3467...d2ae22`; ethereum `0xe7cd2b...7dc5c8` | ⚠️ Unaudited |
| PegPrice | operational_periphery | ethereum | 2 deployments: ethereum [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/); ethereum `0xe911fa...8c85a6` | ⚠️ Unaudited |
| RewardClaimer | operational_periphery | ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| RouteConfigs | governance | ethereum | 2 deployments: ethereum [`0x6fbea2...690ed9`](./contracts/ethereum-1/0x6fbea2e735c67882553791c5d9f9423f56690ed9/); ethereum `0x886c47...46373a` | ⚠️ Unaudited |
| Secondary monetary policy | unknown | ethereum | 6 deployments: ethereum [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/); ethereum `0x1a7838...123be6`; ethereum `0x319c06...a7778f`; ethereum `0x627bb1...3abf08`; ethereum `0x6ddd16...f05ffb`; ethereum `0xbc7507...6e7667` | ⚠️ Unaudited |
| Secondary monetary policy for WBTC | token | ethereum | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | 4 deployments: ethereum [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/); ethereum `0x4863c6...87f2d3`; ethereum `0xa7e988...ae67fd`; ethereum `0xeb4480...9fc4d3` | ⚠️ Unaudited |
| sfrxETH2 crvUSD leverage zap | adapter | ethereum | 2 deployments: ethereum [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/); ethereum `0xd79964...bcb71c` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 3 deployments: ethereum [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/); ethereum `0x3b7382...32a462`; ethereum `0xeb31da...0a2cf3` | ⚠️ Unaudited |
| SupplyBooster | core_logic | ethereum | 3 deployments: ethereum [`0x823772...f3320f`](./contracts/ethereum-1/0x8237720bbdbcfbe59c3d447beaf1133b72f3320f/); ethereum `0xbabb97...98522f`; ethereum `0xff9e83...195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | registry | ethereum | 4 deployments: ethereum [`0x2930ea...7b3a88`](./contracts/ethereum-1/0x2930ea2285b6b111a89db14dfa409f7fb17b3a88/); ethereum `0x2b4f87...ab7929`; ethereum `0x77be80...87d1ba`; ethereum `0x796669...d9a110` | ⚠️ Unaudited |
| SupplyPoolGaugeFactory | operational_periphery | ethereum | [`0x892936...cd4a6e`](./contracts/ethereum-1/0x8929369821b1e8ac62e5e59514fda7378bcd4a6e/) | ⚠️ Unaudited |
| SupplyPoolManager | core_logic | ethereum | [`0xf61c0e...aa9423`](./contracts/ethereum-1/0xf61c0efe88307ddc50e4e61c5979e58a41aa9423/) | ⚠️ Unaudited |
| SupplyRewardFactory | registry | ethereum | 2 deployments: ethereum [`0x725c9d...21bc13`](./contracts/ethereum-1/0x725c9da2efcf67866632f8fa5009e7859c21bc13/); ethereum `0xd66ae8...a3fe59` | ⚠️ Unaudited |
| SupplyTreasuryFundForAgEUR | operational_periphery | ethereum | [`0x5d7417...475a0d`](./contracts/ethereum-1/0x5d7417ca434cb90f587c62597087386e58475a0d/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x63d7a7...52a5b2`](./contracts/ethereum-1/0x63d7a70c17a1fca27dc4100bc737a0dbeb52a5b2/) | ⚠️ Unaudited |
| USD0LpOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/); ethereum `0x409893...dfb8b7`; ethereum `0xac288d...e3adca`; ethereum `0xcbed82...5cfe90` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 4 deployments: ethereum [`0x596f8e...1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/); ethereum `0x7d20ec...695dfb`; ethereum `0x7e6c50...defc5c`; ethereum `0xc014f3...805085` | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | ethereum | 31 deployments: ethereum [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/); ethereum `0x0e44e0...4a5450`; ethereum `0x10a377...904c1a`; ethereum `0x1acc3f...dca877`; ethereum `0x247b24...0f2133`; ethereum `0x2cb79c...876e26`; ethereum `0x2d3a0e...bf910f`; ethereum `0x2fbe41...4f11fa`; ethereum `0x47a2ee...28af60`; ethereum `0x518802...121ba5`; ethereum `0x51cec5...7aabf5`; ethereum `0x6d18e8...5f37a3`; ethereum `0x6f114a...19b24b`; ethereum `0x753834...b2c15a`; ethereum `0x7fb098...9b6707`; ethereum `0x83d6e9...64d139`; ethereum `0x83ec51...a5fe20`; ethereum `0x85b7cc...e391a0`; ethereum `0x86b268...01a257`; ethereum `0x86ca97...c650f2`; ethereum `0x885673...34f4e6`; ethereum `0x8f48eb...e33497`; ethereum `0x99b496...298e31`; ethereum `0xa16d36...dc2440`; ethereum `0xa91d85...cf9587`; ethereum `0xc0e4f5...37e3c2`; ethereum `0xcc2965...685ef3`; ethereum `0xccbc7f...78b449`; ethereum `0xd8252a...8cef12`; ethereum `0xe1c0b5...e87ca8`; ethereum `0xeae58f...322335` | ⚠️ Unaudited |
| VirtualBalanceWrapperFactory | registry | ethereum | 2 deployments: ethereum [`0x73e59d...e727a2`](./contracts/ethereum-1/0x73e59de51668975abc9e9be2aad668f6e4e727a2/); ethereum `0xa1cc41...2f859d` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 418 deployments: ethereum [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/); ethereum `0x0145fd...5b97a9`; ethereum `0x01632e...d5dc35`; ethereum `0x01b36f...b62ca1`; ethereum `0x01c680...782363`; ethereum `0x02152d...7aeb5f`; ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x06364f...d6c763`; ethereum `0x06534b...15fa35`; ethereum `0x06ce80...717047`; ethereum `0x071c66...ee8f4b`; ethereum `0x075b1b...e70fb3`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x095915...21c9ae`; ethereum `0x096723...1c15ca`; ethereum `0x09eb0a...0339b9`; ethereum `0x09f4b8...9d4c05`; ethereum `0x0a53fa...e01e8e`; ethereum `0x0ae274...4a0082`; ethereum `0x0b5b92...3b0453`; ethereum `0x0b81cf...9d73ec`; ethereum `0x0ce41a...107499`; ethereum `0x0ce658...dba703`; ethereum `0x0ce6a5...627caa`; ethereum `0x0d8977...9f5470`; ethereum `0x0d9151...a70cd5`; ethereum `0x0dfdc4...939a9d`; ethereum `0x0f7cd0...2596dc`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x10c4b6...e7904c`; ethereum `0x11137b...040ab1`; ethereum `0x11e58d...017f44`; ethereum `0x11f419...b3902c`; ethereum `0x12220a...ac9b34`; ethereum `0x1337be...7963ec`; ethereum `0x13e987...dbd781`; ethereum `0x14f9bd...0d7d15`; ethereum `0x15282d...23e8d4`; ethereum `0x174baa...f1ca49`; ethereum `0x179484...19762c`; ethereum `0x182b72...453c28`; ethereum `0x192092...3b36ef`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1b0d34...ceac33`; ethereum `0x1b3e14...573e5b`; ethereum `0x1bd65c...ceaace`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1dab65...a51828`; ethereum `0x1de7f0...cda1f2`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x213be3...2d5bbe`; ethereum `0x2146b0...f881b6`; ethereum `0x2393c3...548011`; ethereum `0x24d937...ae2262`; ethereum `0x2613b6...7480fe`; ethereum `0x271fbe...9d3d6a`; ethereum `0x2869e7...a4477c`; ethereum `0x29ec0d...0bf47e`; ethereum `0x2b645a...8d1434`; ethereum `0x2c9b39...e9f372`; ethereum `0x2db0e8...e72840`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2e60cf...0ef419`; ethereum `0x2ef1bc...656bc3`; ethereum `0x2f956e...5e027f`; ethereum `0x2fe94e...f9d614`; ethereum `0x30a2f3...6228cc`; ethereum `0x31aa15...4d1dc7`; ethereum `0x32fb6b...3f4906`; ethereum `0x331af2...f9f785`; ethereum `0x33a6ae...edcf04`; ethereum `0x35796d...c29f39`; ethereum `0x368440...87c4ec`; ethereum `0x368736...4ac0bd`; ethereum `0x36965b...1f1e80`; ethereum `0x3740fb...06f5fd`; ethereum `0x3910dc...af2546`; ethereum `0x3993d3...22d446`; ethereum `0x39eac4...7c2bb5`; ethereum `0x3a283d...907611`; ethereum `0x3a664a...7337b9`; ethereum `0x3b3ac5...24333b`; ethereum `0x3b6831...bce833`; ethereum `0x3b7020...935855`; ethereum `0x3be09d...90a514`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3d229e...d7b23b`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3ef6a0...38e604`; ethereum `0x3f4232...eddaff`; ethereum `0x407458...8f355c`; ethereum `0x40fd58...ea56a8`; ethereum `0x410e3e...d93c2a`; ethereum `0x4169ef...2ba700`; ethereum `0x41d5d7...facd58`; ethereum `0x42d702...7f053a`; ethereum `0x431641...d77c3f`; ethereum `0x43b4fd...c83f8c`; ethereum `0x459eaa...8df5d9`; ethereum `0x45f783...055f51`; ethereum `0x462253...22ca39`; ethereum `0x466c8f...bd3f96`; ethereum `0x480786...8e085a`; ethereum `0x49849c...fb3675`; ethereum `0x4a4d78...025c3f`; ethereum `0x4aacf3...170e33`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4c18e4...e0ae79`; ethereum `0x4c1d4a...7ea3a4`; ethereum `0x4ca9b3...be596f`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0626...167956`; ethereum `0x4f0e0e...053841`; ethereum `0x4f3e8f...811522`; ethereum `0x4f8846...ebb40d`; ethereum `0x4fd86c...3a04bc`; ethereum `0x50996c...c81f06`; ethereum `0x50b085...068494`; ethereum `0x50f35f...63719f`; ethereum `0x5282a4...13638c`; ethereum `0x528bac...86a54c`; ethereum `0x52a430...5354e6`; ethereum `0x52ea46...35d85c`; ethereum `0x53a901...4669d5`; ethereum `0x54ee22...68b800`; ethereum `0x5544a0...4e0ba0`; ethereum `0x55858a...48e7ee`; ethereum `0x55aa9b...1ce7a9`; ethereum `0x55b916...e29822`; ethereum `0x56295b...52c623`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5a6a4d...bdf41b`; ethereum `0x5aa00d...b22be7`; ethereum `0x5ac539...6a7c9d`; ethereum `0x5ae854...34d846`; ethereum `0x5b5cfe...003858`; ethereum `0x5bd47e...2466b8`; ethereum `0x5d0f47...a53827`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x5f8908...f79fe6`; ethereum `0x6070fb...74c017`; ethereum `0x60b1b1...fc96c2`; ethereum `0x61dc3c...896e87`; ethereum `0x61e106...4996d0`; ethereum `0x6326de...d9b43e`; ethereum `0x63564e...443ac4`; ethereum `0x64448b...b7136e`; ethereum `0x649e0b...1fd622`; ethereum `0x64eda5...d786fd`; ethereum `0x6523ac...d963f1`; ethereum `0x656dd7...113ec0`; ethereum `0x6600e9...b86afb`; ethereum `0x661dbb...83143a`; ethereum `0x67a021...90f9fa`; ethereum `0x67fe41...0e4286`; ethereum `0x6812c0...50fc74`; ethereum `0x6955a5...c11f15`; ethereum `0x69aaff...6e2af3`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6dc22c...de1186`; ethereum `0x6f4e8c...05fbf9`; ethereum `0x6ff57e...d4fa00`; ethereum `0x7002b7...fae9d1`; ethereum `0x70a115...61482e`; ethereum `0x70fc95...745f68`; ethereum `0x72de98...1e6394`; ethereum `0x74bd76...62e9d3`; ethereum `0x752ebe...efaeac`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x786b37...301a58`; ethereum `0x78cf25...286470`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7c868f...dda323`; ethereum `0x7d8644...6b2b4c`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x7f55dd...6bdbef`; ethereum `0x7f9012...39f353`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x80466c...638fe5`; ethereum `0x8101e6...1b7162`; ethereum `0x81373a...db8dbc`; ethereum `0x818709...337e3a`; ethereum `0x824f13...77a637`; ethereum `0x8282bd...43a2ef`; ethereum `0x82c1cc...75b7ac`; ethereum `0x8301ae...d7c511`; ethereum `0x832f43...8d11da`; ethereum `0x83f252...3744d7`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x8474dd...dec9f6`; ethereum `0x847ee1...d54ed9`; ethereum `0x848467...e84834`; ethereum `0x86a91b...b31369`; ethereum `0x874210...2e9af3`; ethereum `0x884be2...ceb75c`; ethereum `0x88855c...e915be`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x89ac9a...0064dc`; ethereum `0x89d32b...16c999`; ethereum `0x89ea1e...75d1ed`; ethereum `0x8aeb58...ba1c4c`; ethereum `0x8c1ab7...d7de9b`; ethereum `0x8cf8af...f0d72b`; ethereum `0x8db91a...21faca`; ethereum `0x8e0c00...5b0d16`; ethereum `0x8e764b...829809`; ethereum `0x8f3006...3b4476`; ethereum `0x8f4ef8...a7691f`; ethereum `0x8f68f4...bdd1d5`; ethereum `0x8f942c...2250d0`; ethereum `0x90bb60...245840`; ethereum `0x90e00a...c2d7f5`; ethereum `0x91d68c...dfea8a`; ethereum `0x930541...f0895b`; ethereum `0x936734...3a3985`; ethereum `0x94c866...5f6287`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x95ecdc...d24297`; ethereum `0x96d07f...111a2b`; ethereum `0x96d7bc...cfe8d9`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x97e276...19b787`; ethereum `0x97f60f...85c849`; ethereum `0x9838ec...c9427b`; ethereum `0x98638f...996122`; ethereum `0x98a7f1...d3eb8b`; ethereum `0x99f8dc...af2288`; ethereum `0x9b52f1...409cc3`; ethereum `0x9b762e...11d5ec`; ethereum `0x9c2186...6470a7`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa402f9...cc9434`; ethereum `0xa464e6...8922dc`; ethereum `0xa50474...b5ab1c`; ethereum `0xa50ccc...187287`; ethereum `0xa52ee2...dd8dda`; ethereum `0xa5407e...3efbfd`; ethereum `0xa549ff...9cf3cf`; ethereum `0xa85461...5fba10`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa0850...a89034`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa42c0...b1ff81`; ethereum `0xaa82ca...ddc78c`; ethereum `0xaaaeee...0e9c35`; ethereum `0xaad072...27c21e`; ethereum `0xabadfd...677d2e`; ethereum `0xac795d...747a80`; ethereum `0xad4753...7c1ad7`; ethereum `0xadcfcf...45fc44`; ethereum `0xadf698...f6e205`; ethereum `0xaee704...17e0f7`; ethereum `0xaf8e83...52639a`; ethereum `0xb0a071...f52f2d`; ethereum `0xb0a25c...e129ee`; ethereum `0xb10c49...2e23e2`; ethereum `0xb174da...125c81`; ethereum `0xb19059...e572fd`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb57649...b0e0d4`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xb8a3f8...b698e6`; ethereum `0xb9705e...019b14`; ethereum `0xb9f861...7b1f24`; ethereum `0xb9fc15...c990d4`; ethereum `0xba6d79...e6c586`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc4d0f...c96b5d`; ethereum `0xbc7e83...f40a35`; ethereum `0xbe1751...a0fbd5`; ethereum `0xbebc44...2ff1c7`; ethereum `0xbfcf63...d0952a`; ethereum `0xc08550...85d304`; ethereum `0xc18cc3...9744da`; ethereum `0xc1db00...7cde4e`; ethereum `0xc25099...e2cb66`; ethereum `0xc25a3a...72917f`; ethereum `0xc2b1df...0bf627`; ethereum `0xc2ee6b...f18e35`; ethereum `0xc45b2e...93c756`; ethereum `0xc4ad29...7675ff`; ethereum `0xc4c78b...ecd630`; ethereum `0xc54106...cbdd83`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc5fa22...801504`; ethereum `0xc620aa...d05655`; ethereum `0xc64f26...e7c47f`; ethereum `0xc6a846...7c9a52`; ethereum `0xc6c09b...53bc5a`; ethereum `0xc7059f...ee35f6`; ethereum `0xc7bab6...832856`; ethereum `0xc85b38...4a5dd9`; ethereum `0xc95bd7...1880df`; ethereum `0xc97ef4...0451db`; ethereum `0xca3d75...9a6bdf`; ethereum `0xcb0871...60147b`; ethereum `0xcb70bb...5acf21`; ethereum `0xccebbf...7111b2`; ethereum `0xcdfb89...f65dc0`; ethereum `0xcee60c...656f3a`; ethereum `0xcfb3cf...a08535`; ethereum `0xcfbd5a...2b58c0`; ethereum `0xd0c71e...7bba1d`; ethereum `0xd0e6bc...d25d2f`; ethereum `0xd10d54...902e5a`; ethereum `0xd133d1...e2f778`; ethereum `0xd1602f...b0c6a2`; ethereum `0xd16ea3...5cd8c9`; ethereum `0xd1ebef...c17d67`; ethereum `0xd2967f...3dea07`; ethereum `0xd30dd0...225ac8`; ethereum `0xd35b58...de5bf6`; ethereum `0xd446a9...ab7e5a`; ethereum `0xd51a44...faae46`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd608a0...458c95`; ethereum `0xd632f2...caed3b`; ethereum `0xd66290...588b5d`; ethereum `0xd6930b...237594`; ethereum `0xd6953e...3725de`; ethereum `0xd69ac8...294890`; ethereum `0xd782eb...849394`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc2431...f67022`; ethereum `0xdc31f5...96838e`; ethereum `0xdc8923...ba36e5`; ethereum `0xdd0524...ef83f9`; ethereum `0xdd0e10...8774b8`; ethereum `0xdd8b8c...7bf6a0`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xdf5e0e...d806a8`; ethereum `0xdfc7ad...492aee`; ethereum `0xe1ea5d...fd0969`; ethereum `0xe28a41...63ca45`; ethereum `0xe38daa...18a3d2`; ethereum `0xe49fad...a93fe1`; ethereum `0xe4b658...cfb3e6`; ethereum `0xe4c64b...069527`; ethereum `0xe55be4...446059`; ethereum `0xe5f41a...b5a2a6`; ethereum `0xe5f4b8...2e44de`; ethereum `0xe64608...4b552c`; ethereum `0xe7a24e...d7d171`; ethereum `0xe8060a...5da85f`; ethereum `0xe84f5b...924e54`; ethereum `0xe8b298...418950`; ethereum `0xe96a9b...273b1b`; ethereum `0xeb16ae...65a733`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xecaaec...f29d9e`; ethereum `0xecb456...e9b347`; ethereum `0xed279f...23f0ca`; ethereum `0xed4064...ff5c4d`; ethereum `0xedf2c5...4fe242`; ethereum `0xedf54b...16a966`; ethereum `0xef1385...a20fcc`; ethereum `0xefe30d...4d62e8`; ethereum `0xf129d6...971bab`; ethereum `0xf178c0...c623c0`; ethereum `0xf18056...1aac99`; ethereum `0xf1f85a...236adc`; ethereum `0xf313a9...28ee77`; ethereum `0xf3b648...ce2e24`; ethereum `0xf5194c...c1949f`; ethereum `0xf5e9eb...d6884f`; ethereum `0xf6bdc2...8cb1c9`; ethereum `0xf71040...6624e0`; ethereum `0xf74563...d7eec3`; ethereum `0xf79d92...324b8d`; ethereum `0xf7de9c...19de09`; ethereum `0xf8b8db...47ca1e`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xf9fc73...5985cd`; ethereum `0xfa3e2d...1a8f7a`; ethereum `0xfa9a30...f67e58`; ethereum `0xfbef0c...33bda6`; ethereum `0xfc780e...59cd6d`; ethereum `0xfcba3e...f12851`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d`; ethereum `0xfe0176...e7f3f9`; ethereum `0xfe6251...1e2e93`; ethereum `0xff051d...9f1fd8`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| WBTC-crvUSD leverage zap | adapter | ethereum | 2 deployments: ethereum [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/); ethereum `0xd3e576...d1b967` | ⚠️ Unaudited |
| wstETH-crvUSD leverage zap | adapter | ethereum | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |
| ycDAI | unknown | ethereum | [`0x99d1fa...7041bc`](./contracts/ethereum-1/0x99d1fa417f94dcd62bfe781a1213c092a47041bc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LLAMMA - crvUSD AMM | unknown | ethereum | 8 deployments: ethereum [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/); ethereum `0x2b7e62...60d3e9`; ethereum `0x3da7ff...b372fd`; ethereum `0x4f3739...bc31d6`; ethereum `0x913a3a...8ba572`; ethereum `0xb57a95...ff049a`; ethereum `0xcb8a15...331b2e`; ethereum `0xdf41e2...fc1659` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x036ec6...46c11a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x042326...b03217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09e15a...216626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bdb2e...9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x105388...2c0e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x124716...638ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15452c...573484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d9e59...1585ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23208c...876501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24c7ce...0d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f3adb...08f513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x326fe1...56ecdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36fb07...5838a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x387177...556b3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f2094...54a571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41f505...6d940a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42b9de...fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x450c35...879605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4cb152...f1c534` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4cfc69...03ecc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5852bd...cbaa90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a0d40...8fd24b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a7aa3...671507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x634067...d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65a8b2...5ffa15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ec585...b958ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7624c0...501260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7baad5...739c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c054a...65dcd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7da2ef...946500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ec8e0...734099` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80333b...c94737` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x856ff1...7f88cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x882f46...79aa43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99f742...7c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9bd5b1...0cda05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9dfbf2...69f720` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa57119...c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb61009...141725` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb960c3...d1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb1447...c6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc6977...10b547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd507d...0e02e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc00978...75164b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc05105...8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0bd9e...03007a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc49dfa...9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4a059...e016a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4e606...7e755f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca02c2...1fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcdb550...d88e2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef9423...21ca0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf77a1e...b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9b1f1...7c9161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa17c5...5feb87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe3aff...847074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfef6ee...6d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1284ef...18da30`](./contracts/ethereum-1/0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30/) | LendingSponsor | core_logic | $1,051.88 | Verified native implementation with $1,051.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64e965...b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ConvexBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a9960...af9762`](./contracts/ethereum-1/0x7a996019db95ae74fa3ed8ed86ff1cc0eeaf9762/) | DepegShieldWrappers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042959...60afbd`](./contracts/ethereum-1/0x0429593646407b1f7a7dce3ce9dc4724bc60afbd/) | GenerateLendingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6aaba...d17241`](./contracts/ethereum-1/0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241/) | GenerateLendingPoolsV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447413...19c9ec`](./contracts/ethereum-1/0x447413fbf9c992ab6a967541f204d8f40419c9ec/) | GenerateLendingPoolsV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | Health calculator zap for crvUSD controller | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653689...e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/) | LendFlareCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc78179...4246b6`](./contracts/ethereum-1/0xc7817927c9f3629717b5d237caa15968424246b6/) | LendFlareGaugeModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa362...2d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/) | LendFlareProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa57653...cd4fbc`](./contracts/ethereum-1/0xa576538c83672fb9087aa7b96b661acbbdcd4fbc/) | LendFlareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b61d7...f41524`](./contracts/ethereum-1/0x5b61d7810db1780b9552259cf37739413ef41524/) | LendFlareTokenLockerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b278f...17b831`](./contracts/ethereum-1/0x7b278f27506cbd890975df0b70fe6bd3b917b831/) | LendFlareTokenMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29042e...4d492c`](./contracts/ethereum-1/0x29042e6389075f7181361ee5bca1df9a524d492c/) | LendFlareVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6615c...f6f9a6`](./contracts/ethereum-1/0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6/) | LendFlareVotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19ac8e...c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/) | LendFlareVotingEscrowV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x402e3c...8cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/) | LendingMarket | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | Leverage zap for crvUSD controller (sfrxETH market) | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8038dd...2b059a`](./contracts/ethereum-1/0x8038dd8356f84ebe440c0a0847e553d9692b059a/) | LiquidityTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf23801...96857c`](./contracts/ethereum-1/0xf23801f0c81b8e31ce95bc980ecaf069d296857c/) | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd132c6...814a46`](./contracts/ethereum-1/0xd132c63a09fccfef56b88c5aca8ecbb63f814a46/) | MovingLeverageBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | RewardClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fbea2...690ed9`](./contracts/ethereum-1/0x6fbea2e735c67882553791c5d9f9423f56690ed9/) | RouteConfigs | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2 crvUSD leverage zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823772...f3320f`](./contracts/ethereum-1/0x8237720bbdbcfbe59c3d447beaf1133b72f3320f/) | SupplyBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2930ea...7b3a88`](./contracts/ethereum-1/0x2930ea2285b6b111a89db14dfa409f7fb17b3a88/) | SupplyPoolExtraRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892936...cd4a6e`](./contracts/ethereum-1/0x8929369821b1e8ac62e5e59514fda7378bcd4a6e/) | SupplyPoolGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61c0e...aa9423`](./contracts/ethereum-1/0xf61c0efe88307ddc50e4e61c5979e58a41aa9423/) | SupplyPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x725c9d...21bc13`](./contracts/ethereum-1/0x725c9da2efcf67866632f8fa5009e7859c21bc13/) | SupplyRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596f8e...1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/) | VirtualBalanceWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73e59d...e727a2`](./contracts/ethereum-1/0x73e59de51668975abc9e9be2aad668f6e4e727a2/) | VirtualBalanceWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSD leverage zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSD leverage zap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 19 |
| standard_library | 1 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
