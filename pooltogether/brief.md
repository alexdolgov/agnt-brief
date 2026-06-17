# Agentic Audit Brief: PoolTogether

⚠️ Lifecycle status: DECLINING - TVL dropped 16.3% over 90 days

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.170Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, scroll
- Contract surface: 67 unique implementations (144 raw deployments)
- DeFi Llama TVL: $8,195,941.00
- On-chain TVL (included contracts): $26,830,028.83
- TVL by chain: Ethereum $22,790,497.34 | Polygon $2,819,032.36 | Avalanche $1,053,527.52 | Optimism $123,837.18 | Base $29,919.10 | Gnosis $6,771.59 | Arbitrum $6,443.73

## Project Description

PoolTogether is a decentralized, no-loss lottery protocol where users deposit assets into prize pools. The pooled funds generate yield, which is periodically awarded as prizes to randomly selected winners, while depositors can always withdraw their original principal.

### Architecture

Prize Pools rely on Vaults to generate yield, which is then liquidated via Liquidation contracts to fund prizes. All families share the TwabController for ticket balances and DrawManager for coordinating random draws, with factory contracts deploying new instances across multiple chains.

## Contract Surface Quality

- Indexed contracts: 483; live-surface contracts included: 144 (110 live, 34 unknown).
- Excluded by liveness: 339 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Unverified dependencies: 17/122.

## Audit Coverage Summary

- Verified implementations audited: 0/36 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 67
- Raw deployments: 144
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $26,830,028.83
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $26,830,028.83 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | token | ethereum | unit-22101 | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| AToken | token | polygon | unit-22103 | [`0x1a13f4...998b7f`](./contracts/polygon-137/0x1a13f4ca1d028320a707d99520abfefca3998b7f/) | ⚠️ Unaudited |
| AToken | token | avalanche | unit-22105 | [`0x46a511...e4a857`](./contracts/avalanche-43114/0x46a51127c3ce23fb7ab1de06226147f446e4a857/) | ⚠️ Unaudited |
| PrizeVault | core_logic | scroll | n/a | 6 deployments: ethereum `0x9ee31e...c75573`; optimism `0xa52e38...3e5e1f`; gnosis `0xb75af2...8b35cf`; base `0x6b5a5c...f7e4dd`; arbitrum `0x97a9c0...1e8c95`; scroll [`0x29499e...b1fa9b`](./contracts/scroll-534352/0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x395ae5...d4e125`](./contracts/optimism-10/0x395ae52bb17aef68c2888d941736a71dc6d4e125/) | ⚠️ Unaudited |
| PrizePool | core_logic | gnosis | n/a | 5 deployments: ethereum `0x7865d0...354d95`; optimism `0xf35fe1...e29b55`; gnosis [`0x0c08c2...18120f`](./contracts/gnosis-100/0x0c08c2999e1a14569554eddbcda9da5e1918120f/); base `0x45b201...3732cb`; arbitrum `0x52e791...bc5d42` | ⚠️ Unaudited |
| VaultV2 | core_logic | optimism | n/a | [`0xf0b19f...34397c`](./contracts/optimism-10/0xf0b19f02c63d51b69563a2b675e0160e1c34397c/) | ⚠️ Unaudited |
| Vault | core_logic | optimism | n/a | 3 deployments: optimism [`0x29cb69...890715`](./contracts/optimism-10/0x29cb69d4780b53c1e5cd4d2b817142d2e9890715/); optimism `0x31515c...64e2d9`; optimism `0xe3b3a4...32f275` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-22104 | [`0xcf934e...b5b79c`](./contracts/arbitrum-42161/0xcf934e2402a5e072928a39a956964eb8f2b5b79c/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | unit-22102 | [`0x216a7d...cdc660`](./contracts/gnosis-100/0x216a7d520992ed198593a16e0b17c784c9cdc660/) | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | gnosis | n/a | 5 deployments: ethereum `0x3341da...a11d79`; optimism `0x36be31...ec66c6`; gnosis [`0x0d51a3...a71dd9`](./contracts/gnosis-100/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/); base `0xf4c47d...576bbf`; arbitrum [`0x0d51a3...a71dd9`](./contracts/arbitrum-42161/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x0cec1a...e6844e`](./contracts/ethereum-1/0x0cec1a9154ff802e7934fc916ed7ca50bde6844e/) | ⚠️ Unaudited |
| YieldSourcePrizePool | core_logic | polygon | n/a | 3 deployments: ethereum `0xd89a09...d638be`; polygon [`0x19de63...e84e60`](./contracts/polygon-137/0x19de635fb3678d8b8154e37d8c9cdf182fe84e60/); avalanche `0xf830f5...8f95ec` | ⚠️ Unaudited |
| AaveV3ERC4626 | unknown | optimism | n/a | 2 deployments: optimism [`0x964356...afe307`](./contracts/optimism-10/0x964356cecf4f4679cab76d969c043fcccaafe307/); optimism `0xdc1056...c6f3c9` | ⚠️ Unaudited |
| Claimer | operational_periphery | optimism | n/a | 9 deployments: ethereum `0x54aa02...126c7d`; optimism [`0x0b5a1d...bd8438`](./contracts/optimism-10/0x0b5a1dc536d5a67c66d00b337e6b189385bd8438/); optimism `0x220c93...3b8d90`; gnosis `0x0cffb7...b0bbfa`; base `0x5ffeee...5e1e87`; base `0xcdce63...5547ba`; arbitrum `0x1e68e5...23e571`; arbitrum `0xbea383...317c73`; scroll `0xb04d5c...f00285` | ⚠️ Unaudited |
| DrawManager | governance | gnosis | n/a | 6 deployments: ethereum `0x98305e...c675a7`; optimism `0x7eed74...641857`; gnosis [`0x146efc...d09067`](./contracts/gnosis-100/0x146efc8d651dc015225cc2e74707d87aa4d09067/); base `0x8a2782...af6ab0`; arbitrum `0xc00146...cd37e6`; scroll `0xa75474...69ddf2` | ⚠️ Unaudited |
| EzDepositor | unknown | base | n/a | 6 deployments: ethereum `0x84882e...1c062f`; optimism `0x68a100...c2f18b`; gnosis `0x69fc80...3c37ef`; base [`0x4e30c0...a996f4`](./contracts/base-8453/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4/); arbitrum `0x5f9292...4da397`; scroll `0xbdf6bd...8a34c8` | ⚠️ Unaudited |
| FireFighterClaimer | operational_periphery | optimism | n/a | [`0x1a7cf7...8657e5`](./contracts/optimism-10/0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5/) | ⚠️ Unaudited |
| LiquidationPair | unknown | optimism | n/a | [`0xc14e8c...4de853`](./contracts/optimism-10/0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853/) | ⚠️ Unaudited |
| LiquidationRouter | adapter | optimism | n/a | 2 deployments: optimism [`0xb9fba7...b68b95`](./contracts/optimism-10/0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95/); optimism `0xf4cfa5...1983f5` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0xbe1a33...97016f`](./contracts/ethereum-1/0xbe1a33519f586a4c8aa37525163df8d67997016f/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd652c5...8fafc3`](./contracts/base-8453/0xd652c5425aea2afd5fb142e120fecf79e18fafc3/) | ⚠️ Unaudited |
| PoolyNFT | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x354519...3d00a9`](./contracts/ethereum-1/0x3545192b340f50d77403dc0a64cf2b32f03d00a9/); ethereum `0x90b383...56d6ed` | ⚠️ Unaudited |
| PrizeStakingVaultFactory | registry | base | n/a | 4 deployments: ethereum `0x8f11cb...f18389`; optimism `0x7c4626...02acf3`; base [`0x48492f...dcc037`](./contracts/base-8453/0x48492f83d9e1d848d33a461d49a2071a6fdcc037/); arbitrum `0x9468ea...3f3f20` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | arbitrum | n/a | 5 deployments: ethereum `0xd499cc...dde7c3`; optimism `0xec9f59...656775`; gnosis `0xc3ae3f...31e2a6`; base `0xa55a74...d444bf`; arbitrum [`0x8020fb...045e52`](./contracts/arbitrum-42161/0x8020fb37b21e0ef1707ada7a914baf44f9045e52/) | ⚠️ Unaudited |
| RewardLiquidatorFactory | operational_periphery | base | n/a | 3 deployments: optimism `0x7f75b9...3d5370`; base [`0x0526e9...40b468`](./contracts/base-8453/0x0526e9541a500b554ef318cdc44147f38a40b468/); base `0x778f10...06a9bf` | ⚠️ Unaudited |
| RngRelayAuction | unknown | optimism | n/a | [`0xf4c47d...576bbf`](./contracts/optimism-10/0xf4c47dacfda99be38793181af9fd1a2ec7576bbf/) | ⚠️ Unaudited |
| RngWitnet | unknown | optimism | n/a | 6 deployments: ethereum `0xf93329...dea215`; optimism [`0x3d2ef6...96aa7b`](./contracts/optimism-10/0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b/); gnosis `0x47c921...df1123`; base `0x74ebf3...9d18f0`; arbitrum `0xad1b8e...dc107b`; scroll `0x4d971a...94f608` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0xf9af83...a0f2b7`](./contracts/scroll-534352/0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7/) | ⚠️ Unaudited |
| Ticket | unknown | polygon | n/a | 3 deployments: ethereum `0xdd4d11...8236e1`; polygon [`0x6a304d...3a6076`](./contracts/polygon-137/0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076/); avalanche `0xb27f37...bc1d90` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | arbitrum | n/a | 5 deployments: ethereum `0xa99b3a...a43908`; optimism `0x80f866...77c7d1`; gnosis `0xbddd23...76368a`; base `0x8557a9...8374ea`; arbitrum [`0x163402...2dfd3f`](./contracts/arbitrum-42161/0x163402522fc0c0a7863479a069a8470fb22dfd3f/) | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | gnosis | n/a | 6 deployments: ethereum `0x7c210b...192ea0`; optimism `0x7766b5...876136`; gnosis [`0x166448...d006c9`](./contracts/gnosis-100/0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9/); base `0xa9c937...dfc22c`; arbitrum `0x7b4a60...67db73`; scroll `0x6f0b0a...d6ef7b` | ⚠️ Unaudited |
| TwabController | governance | ethereum | n/a | 5 deployments: ethereum [`0x4d5f2c...7b4acc`](./contracts/ethereum-1/0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc/); optimism `0xcb0672...3be167`; gnosis `0x84090a...8afde6`; base `0x7e6360...4f44c6`; arbitrum `0x971ecc...14dc75` | ⚠️ Unaudited |
| TwabDelegator | unknown | optimism | n/a | [`0x491485...0b42c6`](./contracts/optimism-10/0x49148543034f9ba3005c1d40ca9e6ffaf20b42c6/) | ⚠️ Unaudited |
| TwabRewards | unknown | scroll | n/a | 7 deployments: ethereum `0x2589ff...2f1a21`; optimism `0x27ed57...396a66`; optimism `0x90d383...3ea9ea`; gnosis `0x174215...276942`; base `0x86f092...f2dc09`; arbitrum `0xe21ac3...9c59be`; scroll [`0x0e71a9...48780d`](./contracts/scroll-534352/0x0e71a9a2bd4546e7fc2af47a015747daeb48780d/) | ⚠️ Unaudited |
| VaultBoosterFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x31ec88...f483e8`](./contracts/ethereum-1/0x31ec883727af3b9eb87b815550b0e33498f483e8/); optimism `0x858029...67f88c`; gnosis `0x8cffff...58d832`; base `0xa2ba3d...550ec2`; arbitrum `0x8cffff...58d832` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | scroll | n/a | `0x23dbac...7714ba` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x26f050...9be537` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x2a0344...27669b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x3f21b2...f2e57c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x47d500...af5b81` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x4ea44e...1f8c83` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x50f36a...f4d42c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x64dc75...bb9386` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x66c2aa...2005b6` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6b0877...30693a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6ce4c5...d3a56d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6d73bf...005579` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f36db...e36d11` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x6f7200...7d1792` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7026b7...abec47` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x727590...22c7dc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x7b4690...8b2bfc` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x89db94...7ce58f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x8a3795...ece952` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xa15316...cf3b8b` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xb0e5bc...9e21e4` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xbc5b4d...202b1d` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xc024e9...8dcac9` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xccaac4...1ff5dd` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xd017a6...46b314` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdf0445...65b88f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xe51dce...84c8e0` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xed7497...8e386c` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xefdff1...5658ac` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfc2ba5...9e6295` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xfe2402...59f835` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.md](https://github.com/pooltogether/user-docs/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bug-bounties.md](https://github.com/pooltogether/user-docs/blob/main/security/bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [README.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol-coverage.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/protocol-coverage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| scroll | [`0x29499e...b1fa9b`](./contracts/scroll-534352/0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b/) | PrizeVault | core_logic | $77,217.72 | Verified native implementation with $77,217.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0c08c2...18120f`](./contracts/gnosis-100/0x0c08c2999e1a14569554eddbcda9da5e1918120f/) | PrizePool | core_logic | $46,484.33 | Verified native implementation with $46,484.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf0b19f...34397c`](./contracts/optimism-10/0xf0b19f02c63d51b69563a2b675e0160e1c34397c/) | VaultV2 | core_logic | $15,531.76 | Verified native implementation with $15,531.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x29cb69...890715`](./contracts/optimism-10/0x29cb69d4780b53c1e5cd4d2b817142d2e9890715/) | Vault | core_logic | $8,275.80 | Verified native implementation with $8,275.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x216a7d...cdc660`](./contracts/gnosis-100/0x216a7d520992ed198593a16e0b17c784c9cdc660/) | PermittableToken | token | $3,953.46 | Verified native implementation with $3,953.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0d51a3...a71dd9`](./contracts/gnosis-100/0x0d51a33975024e8afc55fde9f6b070c10aa71dd9/) | PrizePoolTwabRewards | core_logic | $3,827.40 | Verified native implementation with $3,827.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cec1a...e6844e`](./contracts/ethereum-1/0x0cec1a9154ff802e7934fc916ed7ca50bde6844e/) | Pool | core_logic | $718.85 | Verified native implementation with $718.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x19de63...e84e60`](./contracts/polygon-137/0x19de635fb3678d8b8154e37d8c9cdf182fe84e60/) | YieldSourcePrizePool | core_logic | $120.00 | Verified native implementation with $120.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b5a1d...bd8438`](./contracts/optimism-10/0x0b5a1dc536d5a67c66d00b337e6b189385bd8438/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x146efc...d09067`](./contracts/gnosis-100/0x146efc8d651dc015225cc2e74707d87aa4d09067/) | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e30c0...a996f4`](./contracts/base-8453/0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4/) | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a7cf7...8657e5`](./contracts/optimism-10/0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5/) | FireFighterClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc14e8c...4de853`](./contracts/optimism-10/0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853/) | LiquidationPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb9fba7...b68b95`](./contracts/optimism-10/0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95/) | LiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe1a33...97016f`](./contracts/ethereum-1/0xbe1a33519f586a4c8aa37525163df8d67997016f/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354519...3d00a9`](./contracts/ethereum-1/0x3545192b340f50d77403dc0a64cf2b32f03d00a9/) | PoolyNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x48492f...dcc037`](./contracts/base-8453/0x48492f83d9e1d848d33a461d49a2071a6fdcc037/) | PrizeStakingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8020fb...045e52`](./contracts/arbitrum-42161/0x8020fb37b21e0ef1707ada7a914baf44f9045e52/) | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0526e9...40b468`](./contracts/base-8453/0x0526e9541a500b554ef318cdc44147f38a40b468/) | RewardLiquidatorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3d2ef6...96aa7b`](./contracts/optimism-10/0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b/) | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6a304d...3a6076`](./contracts/polygon-137/0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076/) | Ticket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x163402...2dfd3f`](./contracts/arbitrum-42161/0x163402522fc0c0a7863479a069a8470fb22dfd3f/) | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x166448...d006c9`](./contracts/gnosis-100/0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9/) | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d5f2c...7b4acc`](./contracts/ethereum-1/0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc/) | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x491485...0b42c6`](./contracts/optimism-10/0x49148543034f9ba3005c1d40ca9e6ffaf20b42c6/) | TwabDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x0e71a9...48780d`](./contracts/scroll-534352/0x0e71a9a2bd4546e7fc2af47a015747daeb48780d/) | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31ec88...f483e8`](./contracts/ethereum-1/0x31ec883727af3b9eb87b815550b0e33498f483e8/) | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 6 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=4

Zero-match audit list:

- [7597] audits.md
- [7598] bug-bounties.md
- [7599] README.md
- [7600] protocol-coverage.md

Fork inheritance lineage and inherited audits are included when available.
