# Agentic Audit Brief: LendFlare

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: LendFlare (`lendflare`)
- Website: [https://lendflare.finance/](https://lendflare.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 81 unique implementations (330 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $942,765.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for LendFlare. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 81
- Raw deployments: 330
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ApplyFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2778be...67b999` | ⚠️ Unaudited |
| ConvexBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x64e965...b083e6` | ⚠️ Unaudited |
| ConvexBoosterV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c3c78...f2b69f` | ⚠️ Unaudited |
| CurveExchangeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6429...8c1fd4` | ⚠️ Unaudited |
| DepegShield | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e6b51...248ac1`; ethereum `0x99fc40...d628ae` | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a9960...af9762`; ethereum `0x8a0663...23af77` | ⚠️ Unaudited |
| GenerateLendingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x042959...60afbd`; ethereum `0x046348...673c11`; ethereum `0x04ac5c...5f4fd2`; ethereum `0x5086f6...bd338f`; ethereum `0x55a03d...c2772c`; ethereum `0x73a1a5...ead527`; ethereum `0x73da41...271c48`; ethereum `0x76973c...b50c97`; ethereum `0x786a84...28ba9a`; ethereum `0x9a1677...abe043`; ethereum `0xb985a1...4b4c18`; ethereum `0xe0aa24...b9be5a`; ethereum `0xfdb13c...e2b829` | ⚠️ Unaudited |
| GenerateLendingPoolsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6aaba...d17241` | ⚠️ Unaudited |
| GenerateLendingPoolsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447413...19c9ec` | ⚠️ Unaudited |
| LendFlareCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x653689...e7ef19`; ethereum `0x9e9659...ff156a` | ⚠️ Unaudited |
| LendFlareGaugeModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc78179...4246b6`; ethereum `0xe06ee2...51028c` | ⚠️ Unaudited |
| LendFlareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fa362...2d446f`; ethereum `0xbd507d...0e02e8` | ⚠️ Unaudited |
| LendFlareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7720a9...cd7aa5`; ethereum `0x882f46...79aa43` | ⚠️ Unaudited |
| LendFlareProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-244620 | 2 deployments: ethereum `0xb620be...bc3f82`; ethereum `0xef9423...21ca0f` | ⚠️ Unaudited |
| LendFlareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa57653...cd4fbc`; ethereum `0xbe6302...de00ea`; ethereum `0xc847b0...3e0c39` | ⚠️ Unaudited |
| LendFlareTokenLockerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b61d7...f41524` | ⚠️ Unaudited |
| LendFlareTokenMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b278f...17b831` | ⚠️ Unaudited |
| LendFlareVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x29042e...4d492c`; ethereum `0x35f962...75ea87`; ethereum `0x4169fa...a08ac0`; ethereum `0x6c3cb7...53094e` | ⚠️ Unaudited |
| LendFlareVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x803ffd...d9c378`; ethereum `0xd61401...5810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe6615c...f6f9a6`; ethereum `0xf706fd...cff2ee` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19ac8e...c711d2`; ethereum `0x96738a...d4bf00` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ffe9...ca5b3b` | ⚠️ Unaudited |
| LendFlareZap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbcdc45...98619c`; ethereum `0xd7c86a...a303ca` | ⚠️ Unaudited |
| LendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x402e3c...8cac5e`; ethereum `0xa7c45b...5e88c0` | ⚠️ Unaudited |
| LendingMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9997fd...f7f179` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x03f744...fce26d`; ethereum `0xac86b0...8daa07` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f69ad...b79d52`; ethereum `0xc8937e...061119` | ⚠️ Unaudited |
| LendingSponsor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1284ef...18da30`; ethereum `0x807047...57036d` | ⚠️ Unaudited |
| LiquidityTransformer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8038dd...2b059a` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23801...96857c` | ⚠️ Unaudited |
| MovingLeverageBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd132c6...814a46` | ⚠️ Unaudited |
| RouteConfigs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fbea2...690ed9`; ethereum `0x886c47...46373a` | ⚠️ Unaudited |
| SupplyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823772...f3320f` | ⚠️ Unaudited |
| SupplyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbabb97...98522f`; ethereum `0xff9e83...195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2930ea...7b3a88`; ethereum `0x2b4f87...ab7929` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x77be80...87d1ba`; ethereum `0x796669...d9a110` | ⚠️ Unaudited |
| SupplyPoolGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x892936...cd4a6e` | ⚠️ Unaudited |
| SupplyPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61c0e...aa9423` | ⚠️ Unaudited |
| SupplyRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x725c9d...21bc13`; ethereum `0xd66ae8...a3fe59` | ⚠️ Unaudited |
| SupplyTreasuryFundForAgEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d7417...475a0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d7a7...52a5b2` | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x0d66b4...b2ba46`; ethereum `0x0e44e0...4a5450`; ethereum `0x10a377...904c1a`; ethereum `0x1acc3f...dca877`; ethereum `0x247b24...0f2133`; ethereum `0x2cb79c...876e26`; ethereum `0x2d3a0e...bf910f`; ethereum `0x2fbe41...4f11fa`; ethereum `0x47a2ee...28af60`; ethereum `0x518802...121ba5`; ethereum `0x51cec5...7aabf5`; ethereum `0x6d18e8...5f37a3`; ethereum `0x6f114a...19b24b`; ethereum `0x753834...b2c15a`; ethereum `0x7fb098...9b6707`; ethereum `0x83d6e9...64d139`; ethereum `0x83ec51...a5fe20`; ethereum `0x85b7cc...e391a0`; ethereum `0x86b268...01a257`; ethereum `0x86ca97...c650f2`; ethereum `0x885673...34f4e6`; ethereum `0x8f48eb...e33497`; ethereum `0x99b496...298e31`; ethereum `0xa16d36...dc2440`; ethereum `0xa91d85...cf9587`; ethereum `0xc0e4f5...37e3c2`; ethereum `0xcc2965...685ef3`; ethereum `0xccbc7f...78b449`; ethereum `0xd8252a...8cef12`; ethereum `0xe1c0b5...e87ca8`; ethereum `0xeae58f...322335` | ⚠️ Unaudited |
| VirtualBalanceWrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x73e59d...e727a2`; ethereum `0xa1cc41...2f859d` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 182 deployments: ethereum `0x02d341...1b285c`; ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x06364f...d6c763`; ethereum `0x075b1b...e70fb3`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x0ae274...4a0082`; ethereum `0x0ce6a5...627caa`; ethereum `0x0dfdc4...939a9d`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x10c4b6...e7904c`; ethereum `0x11137b...040ab1`; ethereum `0x11e58d...017f44`; ethereum `0x11f419...b3902c`; ethereum `0x14f9bd...0d7d15`; ethereum `0x179484...19762c`; ethereum `0x182b72...453c28`; ethereum `0x192092...3b36ef`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1bd65c...ceaace`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x2146b0...f881b6`; ethereum `0x2613b6...7480fe`; ethereum `0x2b645a...8d1434`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2e60cf...0ef419`; ethereum `0x2fe94e...f9d614`; ethereum `0x33a6ae...edcf04`; ethereum `0x3740fb...06f5fd`; ethereum `0x3a664a...7337b9`; ethereum `0x3b3ac5...24333b`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x3f4232...eddaff`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x43b4fd...c83f8c`; ethereum `0x459eaa...8df5d9`; ethereum `0x45f783...055f51`; ethereum `0x462253...22ca39`; ethereum `0x480786...8e085a`; ethereum `0x49849c...fb3675`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0626...167956`; ethereum `0x4f0e0e...053841`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x5282a4...13638c`; ethereum `0x52ea46...35d85c`; ethereum `0x53a901...4669d5`; ethereum `0x54ee22...68b800`; ethereum `0x56295b...52c623`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5a6a4d...bdf41b`; ethereum `0x5b5cfe...003858`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x6070fb...74c017`; ethereum `0x61dc3c...896e87`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x64eda5...d786fd`; ethereum `0x661dbb...83143a`; ethereum `0x6812c0...50fc74`; ethereum `0x6955a5...c11f15`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x6ff57e...d4fa00`; ethereum `0x74bd76...62e9d3`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x824f13...77a637`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x8474dd...dec9f6`; ethereum `0x884be2...ceb75c`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x90e00a...c2d7f5`; ethereum `0x91d68c...dfea8a`; ethereum `0x930541...f0895b`; ethereum `0x936734...3a3985`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x97e276...19b787`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa50ccc...187287`; ethereum `0xa5407e...3efbfd`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xaaaeee...0e9c35`; ethereum `0xac795d...747a80`; ethereum `0xb0a071...f52f2d`; ethereum `0xb0a25c...e129ee`; ethereum `0xb10c49...2e23e2`; ethereum `0xb19059...e572fd`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xb9fc15...c990d4`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc7e83...f40a35`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc18cc3...9744da`; ethereum `0xc25099...e2cb66`; ethereum `0xc25a3a...72917f`; ethereum `0xc2b1df...0bf627`; ethereum `0xc2ee6b...f18e35`; ethereum `0xc45b2e...93c756`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xc7059f...ee35f6`; ethereum `0xc97ef4...0451db`; ethereum `0xcdfb89...f65dc0`; ethereum `0xcee60c...656f3a`; ethereum `0xd133d1...e2f778`; ethereum `0xd2967f...3dea07`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd608a0...458c95`; ethereum `0xd632f2...caed3b`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc2431...f67022`; ethereum `0xdc31f5...96838e`; ethereum `0xdd8b8c...7bf6a0`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xdf5e0e...d806a8`; ethereum `0xe28a41...63ca45`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xecb456...e9b347`; ethereum `0xed279f...23f0ca`; ethereum `0xedf54b...16a966`; ethereum `0xf129d6...971bab`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf5194c...c1949f`; ethereum `0xf74563...d7eec3`; ethereum `0xf79d92...324b8d`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfcba3e...f12851`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d`; ethereum `0xfe0176...e7f3f9`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| ycDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d1fa...7041bc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x036ec6...46c11a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042326...b03217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e15a...216626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105388...2c0e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124716...638ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15452c...573484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c7ce...0d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f3adb...08f513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2094...54a571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f505...6d940a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450c35...879605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cfc69...03ecc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a7aa3...671507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ec585...b958ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7baad5...739c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c054a...65dcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f742...7c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57119...c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb1447...c6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc05105...8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc49dfa...9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a059...e016a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e606...7e755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca02c2...1fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77a1e...b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa17c5...5feb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3aff...847074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef6ee...6d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3203] skynet.certik.com/projects/lend-flare — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/lend-flare | ConvexBoosterV2 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/lend-flare | LendingMarketV2 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3203] skynet.certik.com/projects/lend-flare

Fork inheritance lineage and inherited audits are included when available.
