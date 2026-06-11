# Agentic Audit Brief: LendFlare

⚠️ Lifecycle status: DECLINING - TVL changed 10.9% over 90 days

## Project Overview

- Project: LendFlare (`lendflare`)
- Lifecycle: declining (Tier 0, 97.2% below peak)
- Generated: 2026-06-11T00:35:36.645Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-5143
- Chains: ethereum
- Contract surface: 74 unique implementations (380 raw deployments)
- DeFi Llama TVL: $1,137,068.32
- On-chain TVL (included contracts): $1,051.88
- TVL by chain: Ethereum $1,051.88

## Project Description

LendFlare is an Ethereum borrowing platform for Curve LP holders, enabling fixed-rate, fixed-term, high-LTV loans against Curve LP collateral. Lender liquidity is linked to Compound-funded supply, while Curve/Convex reward infrastructure is ancillary to the protocol’s collateral and yield mechanics.

### Architecture

The LendFlare family shares a common proxy infrastructure (LendFlareProxy and TransparentUpgradeableProxy) for upgradeability. Core lending markets interact with Convex booster contracts to maximize yield, while VirtualBalanceWrappers and Vyper contracts serve as supporting adapters and pools.

## Audit Coverage Summary

- Verified implementations audited: 2/38 (5.3%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 74
- Raw deployments: 380
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
| CertiK | Tier 2 | 2 | 5.3% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ConvexBoosterV2 | proxy | ethereum | [`0x4c3c78...f2b69f`](./contracts/ethereum-1/0x4c3c78cebc9cc87436deed2782998bc002f2b69f/) | ✅ Audited |
| LendingMarketV2 | core_logic | ethereum | 4 deployments: ethereum [`0x03f744...fce26d`](./contracts/ethereum-1/0x03f744a9ec8d350d1991ac6704fce0c211fce26d/); ethereum `0x4f69ad...b79d52`; ethereum `0xac86b0...8daa07`; ethereum `0xc8937e...061119` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingSponsor | core_logic | ethereum | 2 deployments: ethereum [`0x1284ef...18da30`](./contracts/ethereum-1/0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30/); ethereum `0x807047...57036d` | ⚠️ Unaudited |
| ApplyFee | unknown | ethereum | [`0x2778be...67b999`](./contracts/ethereum-1/0x2778be78003ba0444de28450a494e0112067b999/) | ⚠️ Unaudited |
| ConvexBooster | core_logic | ethereum | [`0x64e965...b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ⚠️ Unaudited |
| DepegShield | unknown | ethereum | [`0x99fc40...d628ae`](./contracts/ethereum-1/0x99fc40934b60bdeb10c251e854a77ea47ad628ae/) | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | ethereum | [`0x8a0663...23af77`](./contracts/ethereum-1/0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77/) | ⚠️ Unaudited |
| GenerateLendingPools | core_logic | ethereum | 13 deployments: ethereum [`0x042959...60afbd`](./contracts/ethereum-1/0x0429593646407b1f7a7dce3ce9dc4724bc60afbd/); ethereum `0x046348...673c11`; ethereum `0x04ac5c...5f4fd2`; ethereum `0x5086f6...bd338f`; ethereum `0x55a03d...c2772c`; ethereum `0x73a1a5...ead527`; ethereum `0x73da41...271c48`; ethereum `0x76973c...b50c97`; ethereum `0x786a84...28ba9a`; ethereum `0x9a1677...abe043`; ethereum `0xb985a1...4b4c18`; ethereum `0xe0aa24...b9be5a`; ethereum `0xfdb13c...e2b829` | ⚠️ Unaudited |
| GenerateLendingPoolsV2 | core_logic | ethereum | [`0xd6aaba...d17241`](./contracts/ethereum-1/0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241/) | ⚠️ Unaudited |
| GenerateLendingPoolsV3 | core_logic | ethereum | [`0x447413...19c9ec`](./contracts/ethereum-1/0x447413fbf9c992ab6a967541f204d8f40419c9ec/) | ⚠️ Unaudited |
| LendFlareCRV | unknown | ethereum | 2 deployments: ethereum [`0x653689...e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/); ethereum `0x9e9659...ff156a` | ⚠️ Unaudited |
| LendFlareGaugeModel | operational_periphery | ethereum | 2 deployments: ethereum [`0xc78179...4246b6`](./contracts/ethereum-1/0xc7817927c9f3629717b5d237caa15968424246b6/); ethereum `0xe06ee2...51028c` | ⚠️ Unaudited |
| LendFlareProxy | proxy | ethereum | 3 deployments: ethereum [`0x1fa362...2d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/); ethereum `0x7720a9...cd7aa5`; ethereum `0xb620be...bc3f82` | ⚠️ Unaudited |
| LendFlareToken | token | ethereum | 3 deployments: ethereum [`0xa57653...cd4fbc`](./contracts/ethereum-1/0xa576538c83672fb9087aa7b96b661acbbdcd4fbc/); ethereum `0xbe6302...de00ea`; ethereum `0xc847b0...3e0c39` | ⚠️ Unaudited |
| LendFlareTokenLockerFactory | registry | ethereum | [`0x5b61d7...f41524`](./contracts/ethereum-1/0x5b61d7810db1780b9552259cf37739413ef41524/) | ⚠️ Unaudited |
| LendFlareTokenMinter | token | ethereum | [`0x7b278f...17b831`](./contracts/ethereum-1/0x7b278f27506cbd890975df0b70fe6bd3b917b831/) | ⚠️ Unaudited |
| LendFlareVault | core_logic | ethereum | 6 deployments: ethereum [`0x29042e...4d492c`](./contracts/ethereum-1/0x29042e6389075f7181361ee5bca1df9a524d492c/); ethereum `0x35f962...75ea87`; ethereum `0x4169fa...a08ac0`; ethereum `0x6c3cb7...53094e`; ethereum `0x803ffd...d9c378`; ethereum `0xd61401...5810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0xe6615c...f6f9a6`](./contracts/ethereum-1/0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6/); ethereum `0xf706fd...cff2ee` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | proxy | ethereum | 3 deployments: ethereum [`0x19ac8e...c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/); ethereum `0x70ffe9...ca5b3b`; ethereum `0x96738a...d4bf00` | ⚠️ Unaudited |
| LendFlareZap | adapter | ethereum | 2 deployments: ethereum [`0xbcdc45...98619c`](./contracts/ethereum-1/0xbcdc45372847b95bb4bd6d524b4a801aac98619c/); ethereum `0xd7c86a...a303ca` | ⚠️ Unaudited |
| LendingMarket | proxy | ethereum | 3 deployments: ethereum [`0x402e3c...8cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/); ethereum `0x9997fd...f7f179`; ethereum `0xa7c45b...5e88c0` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | ethereum | [`0x8038dd...2b059a`](./contracts/ethereum-1/0x8038dd8356f84ebe440c0a0847e553d9692b059a/) | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | ethereum | [`0xf23801...96857c`](./contracts/ethereum-1/0xf23801f0c81b8e31ce95bc980ecaf069d296857c/) | ⚠️ Unaudited |
| MovingLeverageBase | unknown | ethereum | [`0xd132c6...814a46`](./contracts/ethereum-1/0xd132c63a09fccfef56b88c5aca8ecbb63f814a46/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| RewardClaimer | operational_periphery | ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| RouteConfigs | governance | ethereum | 2 deployments: ethereum [`0x6fbea2...690ed9`](./contracts/ethereum-1/0x6fbea2e735c67882553791c5d9f9423f56690ed9/); ethereum `0x886c47...46373a` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 3 deployments: ethereum [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/); ethereum `0x3b7382...32a462`; ethereum `0xeb31da...0a2cf3` | ⚠️ Unaudited |
| SupplyBooster | core_logic | ethereum | 3 deployments: ethereum [`0x823772...f3320f`](./contracts/ethereum-1/0x8237720bbdbcfbe59c3d447beaf1133b72f3320f/); ethereum `0xbabb97...98522f`; ethereum `0xff9e83...195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | registry | ethereum | 4 deployments: ethereum [`0x2930ea...7b3a88`](./contracts/ethereum-1/0x2930ea2285b6b111a89db14dfa409f7fb17b3a88/); ethereum `0x2b4f87...ab7929`; ethereum `0x77be80...87d1ba`; ethereum `0x796669...d9a110` | ⚠️ Unaudited |
| SupplyPoolGaugeFactory | operational_periphery | ethereum | [`0x892936...cd4a6e`](./contracts/ethereum-1/0x8929369821b1e8ac62e5e59514fda7378bcd4a6e/) | ⚠️ Unaudited |
| SupplyPoolManager | core_logic | ethereum | [`0xf61c0e...aa9423`](./contracts/ethereum-1/0xf61c0efe88307ddc50e4e61c5979e58a41aa9423/) | ⚠️ Unaudited |
| SupplyRewardFactory | registry | ethereum | 2 deployments: ethereum [`0x725c9d...21bc13`](./contracts/ethereum-1/0x725c9da2efcf67866632f8fa5009e7859c21bc13/); ethereum `0xd66ae8...a3fe59` | ⚠️ Unaudited |
| SupplyTreasuryFundForAgEUR | operational_periphery | ethereum | [`0x5d7417...475a0d`](./contracts/ethereum-1/0x5d7417ca434cb90f587c62597087386e58475a0d/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x63d7a7...52a5b2`](./contracts/ethereum-1/0x63d7a70c17a1fca27dc4100bc737a0dbeb52a5b2/) | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | ethereum | 31 deployments: ethereum [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/); ethereum `0x0e44e0...4a5450`; ethereum `0x10a377...904c1a`; ethereum `0x1acc3f...dca877`; ethereum `0x247b24...0f2133`; ethereum `0x2cb79c...876e26`; ethereum `0x2d3a0e...bf910f`; ethereum `0x2fbe41...4f11fa`; ethereum `0x47a2ee...28af60`; ethereum `0x518802...121ba5`; ethereum `0x51cec5...7aabf5`; ethereum `0x6d18e8...5f37a3`; ethereum `0x6f114a...19b24b`; ethereum `0x753834...b2c15a`; ethereum `0x7fb098...9b6707`; ethereum `0x83d6e9...64d139`; ethereum `0x83ec51...a5fe20`; ethereum `0x85b7cc...e391a0`; ethereum `0x86b268...01a257`; ethereum `0x86ca97...c650f2`; ethereum `0x885673...34f4e6`; ethereum `0x8f48eb...e33497`; ethereum `0x99b496...298e31`; ethereum `0xa16d36...dc2440`; ethereum `0xa91d85...cf9587`; ethereum `0xc0e4f5...37e3c2`; ethereum `0xcc2965...685ef3`; ethereum `0xccbc7f...78b449`; ethereum `0xd8252a...8cef12`; ethereum `0xe1c0b5...e87ca8`; ethereum `0xeae58f...322335` | ⚠️ Unaudited |
| VirtualBalanceWrapperFactory | registry | ethereum | 2 deployments: ethereum [`0x73e59d...e727a2`](./contracts/ethereum-1/0x73e59de51668975abc9e9be2aad668f6e4e727a2/); ethereum `0xa1cc41...2f859d` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 234 deployments: ethereum [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/); ethereum `0x01632e...d5dc35`; ethereum `0x01b36f...b62ca1`; ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x06534b...15fa35`; ethereum `0x071c66...ee8f4b`; ethereum `0x075b1b...e70fb3`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x095915...21c9ae`; ethereum `0x096723...1c15ca`; ethereum `0x09eb0a...0339b9`; ethereum `0x09f4b8...9d4c05`; ethereum `0x0a53fa...e01e8e`; ethereum `0x0ae274...4a0082`; ethereum `0x0b5b92...3b0453`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f7cd0...2596dc`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x10c4b6...e7904c`; ethereum `0x11137b...040ab1`; ethereum `0x11e58d...017f44`; ethereum `0x11f419...b3902c`; ethereum `0x12220a...ac9b34`; ethereum `0x1337be...7963ec`; ethereum `0x13e987...dbd781`; ethereum `0x174baa...f1ca49`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1b0d34...ceac33`; ethereum `0x1b3e14...573e5b`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x213be3...2d5bbe`; ethereum `0x2393c3...548011`; ethereum `0x24d937...ae2262`; ethereum `0x2613b6...7480fe`; ethereum `0x2db0e8...e72840`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2ef1bc...656bc3`; ethereum `0x2f956e...5e027f`; ethereum `0x2fe94e...f9d614`; ethereum `0x32fb6b...3f4906`; ethereum `0x331af2...f9f785`; ethereum `0x33a6ae...edcf04`; ethereum `0x35796d...c29f39`; ethereum `0x368736...4ac0bd`; ethereum `0x36965b...1f1e80`; ethereum `0x39eac4...7c2bb5`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3ef6a0...38e604`; ethereum `0x3f4232...eddaff`; ethereum `0x40fd58...ea56a8`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x43b4fd...c83f8c`; ethereum `0x459eaa...8df5d9`; ethereum `0x462253...22ca39`; ethereum `0x466c8f...bd3f96`; ethereum `0x480786...8e085a`; ethereum `0x49849c...fb3675`; ethereum `0x4a4d78...025c3f`; ethereum `0x4aacf3...170e33`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f0626...167956`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x50b085...068494`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x5544a0...4e0ba0`; ethereum `0x55858a...48e7ee`; ethereum `0x55aa9b...1ce7a9`; ethereum `0x55b916...e29822`; ethereum `0x56295b...52c623`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5a6a4d...bdf41b`; ethereum `0x5ae854...34d846`; ethereum `0x5b5cfe...003858`; ethereum `0x5bd47e...2466b8`; ethereum `0x5f8908...f79fe6`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x6326de...d9b43e`; ethereum `0x64448b...b7136e`; ethereum `0x64eda5...d786fd`; ethereum `0x6523ac...d963f1`; ethereum `0x6600e9...b86afb`; ethereum `0x661dbb...83143a`; ethereum `0x67a021...90f9fa`; ethereum `0x6955a5...c11f15`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6dc22c...de1186`; ethereum `0x74bd76...62e9d3`; ethereum `0x786b37...301a58`; ethereum `0x78cf25...286470`; ethereum `0x7d8644...6b2b4c`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x7f55dd...6bdbef`; ethereum `0x7f9012...39f353`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x8101e6...1b7162`; ethereum `0x824f13...77a637`; ethereum `0x82c1cc...75b7ac`; ethereum `0x83f252...3744d7`; ethereum `0x8474dd...dec9f6`; ethereum `0x86a91b...b31369`; ethereum `0x874210...2e9af3`; ethereum `0x88855c...e915be`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x8c1ab7...d7de9b`; ethereum `0x8cf8af...f0d72b`; ethereum `0x8db91a...21faca`; ethereum `0x8e0c00...5b0d16`; ethereum `0x8e764b...829809`; ethereum `0x8f942c...2250d0`; ethereum `0x90bb60...245840`; ethereum `0x90e00a...c2d7f5`; ethereum `0x91d68c...dfea8a`; ethereum `0x936734...3a3985`; ethereum `0x94c866...5f6287`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x96d7bc...cfe8d9`; ethereum `0x97e276...19b787`; ethereum `0x9b52f1...409cc3`; ethereum `0x9b762e...11d5ec`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa52ee2...dd8dda`; ethereum `0xa549ff...9cf3cf`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa42c0...b1ff81`; ethereum `0xaa82ca...ddc78c`; ethereum `0xaad072...27c21e`; ethereum `0xabadfd...677d2e`; ethereum `0xad4753...7c1ad7`; ethereum `0xadf698...f6e205`; ethereum `0xaf8e83...52639a`; ethereum `0xb0a071...f52f2d`; ethereum `0xb0a25c...e129ee`; ethereum `0xb174da...125c81`; ethereum `0xb19059...e572fd`; ethereum `0xb9705e...019b14`; ethereum `0xb9fc15...c990d4`; ethereum `0xba6d79...e6c586`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc18cc3...9744da`; ethereum `0xc25099...e2cb66`; ethereum `0xc25a3a...72917f`; ethereum `0xc2b1df...0bf627`; ethereum `0xc2ee6b...f18e35`; ethereum `0xc45b2e...93c756`; ethereum `0xc4c78b...ecd630`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc620aa...d05655`; ethereum `0xc64f26...e7c47f`; ethereum `0xc6a846...7c9a52`; ethereum `0xc6c09b...53bc5a`; ethereum `0xc7059f...ee35f6`; ethereum `0xc85b38...4a5dd9`; ethereum `0xcdfb89...f65dc0`; ethereum `0xcee60c...656f3a`; ethereum `0xcfbd5a...2b58c0`; ethereum `0xd1602f...b0c6a2`; ethereum `0xd16ea3...5cd8c9`; ethereum `0xd1ebef...c17d67`; ethereum `0xd2967f...3dea07`; ethereum `0xd30dd0...225ac8`; ethereum `0xd35b58...de5bf6`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd608a0...458c95`; ethereum `0xd632f2...caed3b`; ethereum `0xd66290...588b5d`; ethereum `0xd6930b...237594`; ethereum `0xd69ac8...294890`; ethereum `0xd782eb...849394`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xdd0e10...8774b8`; ethereum `0xdd8b8c...7bf6a0`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xdfc7ad...492aee`; ethereum `0xe1ea5d...fd0969`; ethereum `0xe28a41...63ca45`; ethereum `0xe49fad...a93fe1`; ethereum `0xe4b658...cfb3e6`; ethereum `0xe4c64b...069527`; ethereum `0xe5f41a...b5a2a6`; ethereum `0xe5f4b8...2e44de`; ethereum `0xe64608...4b552c`; ethereum `0xe7a24e...d7d171`; ethereum `0xe8060a...5da85f`; ethereum `0xeb16ae...65a733`; ethereum `0xecaaec...f29d9e`; ethereum `0xecb456...e9b347`; ethereum `0xed279f...23f0ca`; ethereum `0xedf2c5...4fe242`; ethereum `0xefe30d...4d62e8`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf3b648...ce2e24`; ethereum `0xf5194c...c1949f`; ethereum `0xf6bdc2...8cb1c9`; ethereum `0xf74563...d7eec3`; ethereum `0xf7de9c...19de09`; ethereum `0xf8b8db...47ca1e`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xf9fc73...5985cd`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d`; ethereum `0xfe0176...e7f3f9`; ethereum `0xfe6251...1e2e93` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x036ec6...46c11a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x042326...b03217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09e15a...216626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x105388...2c0e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x124716...638ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15452c...573484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24c7ce...0d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f3adb...08f513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f2094...54a571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41f505...6d940a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x450c35...879605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4cfc69...03ecc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a7aa3...671507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ec585...b958ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7baad5...739c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c054a...65dcd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x882f46...79aa43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99f742...7c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa57119...c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb1447...c6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd507d...0e02e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc05105...8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc49dfa...9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4a059...e016a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4e606...7e755f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca02c2...1fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef9423...21ca0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf77a1e...b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9b1f1...7c9161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa17c5...5feb87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe3aff...847074` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1284ef...18da30`](./contracts/ethereum-1/0x1284ef9ebd1d4e0ae30fb7de5ab636eea218da30/) | LendingSponsor | core_logic | $1,051.88 | Verified native implementation with $1,051.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2778be...67b999`](./contracts/ethereum-1/0x2778be78003ba0444de28450a494e0112067b999/) | ApplyFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64e965...b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ConvexBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a0663...23af77`](./contracts/ethereum-1/0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77/) | DepegShieldWrappers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042959...60afbd`](./contracts/ethereum-1/0x0429593646407b1f7a7dce3ce9dc4724bc60afbd/) | GenerateLendingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6aaba...d17241`](./contracts/ethereum-1/0xd6aaba4ef2540a69d8e99cbc8647d194cfd17241/) | GenerateLendingPoolsV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447413...19c9ec`](./contracts/ethereum-1/0x447413fbf9c992ab6a967541f204d8f40419c9ec/) | GenerateLendingPoolsV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653689...e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/) | LendFlareCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc78179...4246b6`](./contracts/ethereum-1/0xc7817927c9f3629717b5d237caa15968424246b6/) | LendFlareGaugeModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa362...2d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/) | LendFlareProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa57653...cd4fbc`](./contracts/ethereum-1/0xa576538c83672fb9087aa7b96b661acbbdcd4fbc/) | LendFlareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b61d7...f41524`](./contracts/ethereum-1/0x5b61d7810db1780b9552259cf37739413ef41524/) | LendFlareTokenLockerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b278f...17b831`](./contracts/ethereum-1/0x7b278f27506cbd890975df0b70fe6bd3b917b831/) | LendFlareTokenMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29042e...4d492c`](./contracts/ethereum-1/0x29042e6389075f7181361ee5bca1df9a524d492c/) | LendFlareVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6615c...f6f9a6`](./contracts/ethereum-1/0xe6615c44bc3cc90839ad6f729eeeabd2aaf6f9a6/) | LendFlareVotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19ac8e...c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/) | LendFlareVotingEscrowV2 | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x402e3c...8cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/) | LendingMarket | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8038dd...2b059a`](./contracts/ethereum-1/0x8038dd8356f84ebe440c0a0847e553d9692b059a/) | LiquidityTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf23801...96857c`](./contracts/ethereum-1/0xf23801f0c81b8e31ce95bc980ecaf069d296857c/) | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd132c6...814a46`](./contracts/ethereum-1/0xd132c63a09fccfef56b88c5aca8ecbb63f814a46/) | MovingLeverageBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | RewardClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fbea2...690ed9`](./contracts/ethereum-1/0x6fbea2e735c67882553791c5d9f9423f56690ed9/) | RouteConfigs | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823772...f3320f`](./contracts/ethereum-1/0x8237720bbdbcfbe59c3d447beaf1133b72f3320f/) | SupplyBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2930ea...7b3a88`](./contracts/ethereum-1/0x2930ea2285b6b111a89db14dfa409f7fb17b3a88/) | SupplyPoolExtraRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892936...cd4a6e`](./contracts/ethereum-1/0x8929369821b1e8ac62e5e59514fda7378bcd4a6e/) | SupplyPoolGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61c0e...aa9423`](./contracts/ethereum-1/0xf61c0efe88307ddc50e4e61c5979e58a41aa9423/) | SupplyPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x725c9d...21bc13`](./contracts/ethereum-1/0x725c9da2efcf67866632f8fa5009e7859c21bc13/) | SupplyRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d7417...475a0d`](./contracts/ethereum-1/0x5d7417ca434cb90f587c62597087386e58475a0d/) | SupplyTreasuryFundForAgEUR | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63d7a7...52a5b2`](./contracts/ethereum-1/0x63d7a70c17a1fca27dc4100bc737a0dbeb52a5b2/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/) | VirtualBalanceWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73e59d...e727a2`](./contracts/ethereum-1/0x73e59de51668975abc9e9be2aad668f6e4e727a2/) | VirtualBalanceWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
