# Agentic Audit Brief: Convex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Convex Finance (`convex-finance`)
- Website: [https://www.convexfinance.com/](https://www.convexfinance.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, fraxtal, polygon
- Contract surface: 737 unique implementations (911 raw deployments)
- Coverage basis: 10/66 confirmed own live verified implementations (15.2%); conservative 15.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $569,504,311.64
- On-chain TVL (included contracts): $177,851,413.24
- TVL by chain: Ethereum $177,851,413.24

## Project Description

This brief describes the observed EVM deployment and audit surface for Convex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 72 contract row(s) across arbitrum, ethereum, fraxtal, polygon. Structural roles: 34 core, 30 unclassified, 8 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 72
- Structural roles: core (34), unclassified (30), supporting (8)
- Contract kinds: contract (72)
- Detected standards: erc20 (11), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (37), boringcrypto (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

4 of 88 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**Booster** (`0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8`, chain 1)
Origin: frax-finance (`0x2b8b30...2ffc95`)
Containment: 69.2% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- claimBoostFees()
- setFeeToken(address,address)
- setTokenMinter(address,bool)

Removals (removed from original):
- addProxyOwner(address,address)
- castVote(address,uint256,bool)
- checkpointFeeRewards(address)
- claimFees(address,address)
- setFeeClaimer(address)
- setFeeClaimPair(address,address,bool)
- setOnChainDelegate(address,address)
- setVeFXSProxy(address,address)

**Booster** (`0xf403c135812408bfbe8713b5a23a04b3d48aae31`, chain 1)
Origin: aura (`0xf403c1...8aae31`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLocker** (`0xd18140b4b819b895a3dba5442f959fa44994af50`, chain 1)
Origin: frax-finance (`0x5ae0fc...ce56a1`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLockerV2** (`0x72a19342e8f1838460ebfccef09f6585e32db86e`, chain 1)
Origin: abracadabra (`0x72a193...2db86e`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1389388d01708118b497f59521f6943be2541bb7`, chain 1)
- UnnamedContract (`0x25e12482a25cf36ec70fda2a09c1ed077fc21616`, chain 1)
- UnnamedContract (`0x27445d3f59d6b966072abe20e41a29fbb6a7a04b`, chain 1)
- UnnamedContract (`0x3c995e43e6ddd551e226f4c5544c77bfed147ab9`, chain 1)
- UnnamedContract (`0x3ce6408f923326f81a7d7929952947748180f1e6`, chain 1)
- UnnamedContract (`0x41a5881c17185383e19df6fa4ec158a6f4851a69`, chain 1)
- UnnamedContract (`0x5f47010f230ce1568bea53a06ebaf528d05c5c1b`, chain 1)
- UnnamedContract (`0x5fba69a794f395184b5760daf1134028608e5cd1`, chain 1)
- UnnamedContract (`0x60bd3d7a39e12085ee8bfeced46d31f9c0f6738b`, chain 1)
- UnnamedContract (`0x782bce229a8b603c99161e867a49d5426da37f95`, chain 1)
- UnnamedContract (`0x877288c4e6eba4f635ba7428706447353b47de75`, chain 1)
- UnnamedContract (`0x8f55d7c21bdff1a51afaa60f3de7590222a3181e`, chain 1)
- UnnamedContract (`0x92cf9e5e4d1dfbf7da0d2bb3e884a68416a65070`, chain 1)
- UnnamedContract (`0x989aeb4d175e16225e39e87d0d97a3360524ad80`, chain 1)
- UnnamedContract (`0x9b622f2c40b80ef5efb14c2b2239511ffbfab702`, chain 1)
- UnnamedContract (`0xa1bc2cf69d474b39b91665e24e7f2606ed142991`, chain 1)
- UnnamedContract (`0xa2cf21b157b2f203e37b616b619f438b5aa86ee5`, chain 1)
- UnnamedContract (`0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673`, chain 1)
- UnnamedContract (`0xb5bbc863bafe5006c68613b89130812a7b586a4e`, chain 1)
- UnnamedContract (`0xba9801acfdf3b8852865149d93acffef9120272d`, chain 1)
- UnnamedContract (`0xd20904e5916113d11414f083229e9c8c6f91d1e1`, chain 1)
- UnnamedContract (`0xdd49a93fdcae579ae50b4b9923325e9e335ec82b`, chain 1)
- UnnamedContract (`0xdecc7d761496d30f30b92bdf764fb8803c79360d`, chain 1)
- UnnamedContract (`0xe98984ad858075813ada4261af47e68a64e28fcc`, chain 1)
- UnnamedContract (`0xedccb35798fae4925718a43cc608ae136208aa8d`, chain 1)
- UnnamedContract (`0xf3bd66ca9b2b43f6aa11afa6f4dfdc836150d973`, chain 1)
- UnnamedContract (`0xfcb28d032e422ae3710c1ad74338cbb40b0749cf`, chain 1)
- BaseRewardPool (`0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e`, chain 1)
- BoostDelegate (`0x806d47df9141fde4a77e1e54f0ca4184526ade60`, chain 1)
- Booster (`0x79a50f83e7aff970ceab5152a15461a4f1c3799e`, chain 1)
- Booster (`0xf403c135812408bfbe8713b5a23a04b3d48aae31`, chain 137)
- Booster (`0xf403c135812408bfbe8713b5a23a04b3d48aae31`, chain 42161)
- BoosterPlaceholder (`0xd363d104f604497c4f11b269d8dbf2820abbf4e0`, chain 42161)
- BoostFeeClaimer (`0x394bfb7e6a6e7197bba16c8dc5f581de8a1847b6`, chain 1)
- Burner (`0xcfc7b36fa3b59ca963a44c86c2c369bc311896e5`, chain 1)
- ClaimZap (`0x3f29cb4111cbda8081642da1f75b3c12decf2516`, chain 1)
- ConvexMasterChef (`0x5f465e9fcffc217c5849906216581a657cd60605`, chain 1)
- ConvexRewardPool (`0x65eee113d796f06d8cda873813912d0bb668a1f5`, chain 137)
- ConvexRewardPool (`0xf2afb340d1b50108bd32212e867946b5b8044c23`, chain 42161)
- ConvexToken (`0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b`, chain 1)
- CrvDepositor (`0x8014595f2ab54cd7c604b00e9fb932176fdc86ae`, chain 1)
- CvxCrvStakingWrapper (`0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434`, chain 1)
- cvxCrvToken (`0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7`, chain 1)
- cvxFpisStaking (`0xfa87db3eaa93b7293021e38416650d2e666bc483`, chain 1)
- cvxFpisToken (`0xa2847348b58ced0ca58d23c7e9106a49f1427df6`, chain 1)
- cvxFxnStaking (`0xec60cd4a5866fb3b0dd317a46d3b474a24e06bef`, chain 1)
- cvxFxnToken (`0x183395dbd0b5e93323a7286d1973150697fffcb3`, chain 1)
- cvxFxsStaking (`0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a`, chain 1)
- cvxFxsToken (`0xfeef77d3f69374f66429c91d732a244f074bdf74`, chain 1)
- cvxPrismaStaking (`0x0c73f1cfd5c9dfc150c8707aa47acbd14f0be108`, chain 1)
- cvxPrismaToken (`0x34635280737b5bfe6c7dc2fc3065d60d66e78185`, chain 1)
- cvxRewardPool (`0xcf50b810e57ac33b91dcf525c6ddd9881b139332`, chain 1)
- DropMinter (`0x8864187b257e0fb3bd74054b72d9c1834e76d712`, chain 1)
- DropMinter (`0x9c4d60fa85088d40e3d8030dba283e9708ec9292`, chain 1)
- ExtraRewardPool (`0xa46944d0845f786117d0e1034fc10585747c861b`, chain 137)
- ExtraRewardPool (`0x665d4bea98e3a1849526553453e8369b448c6ad4`, chain 42161)
- FeeDeposit (`0x665d4bea98e3a1849526553453e8369b448c6ad4`, chain 137)
- FeeDeposit (`0xe7cdd5ed586a095e395f2007449721ea2a5b878a`, chain 42161)
- FeeDepositV2 (`0x4b33e944e4ae1cb58abfed5a16a4e25b041fb5d5`, chain 1)
- FeeDepositV2 (`0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769`, chain 1)
- FeeDepositV2 (`0x8133f7d5cd1a1e184228c373f5befa98fa01395d`, chain 1)
- FeeDepositV2 (`0xe91861cb57c6c2aa55b7ab0e6853ae1d96b63efa`, chain 1)
- FeeReceiverCvxPrisma (`0xaf92400476cd81c7379bb54fd2646e8fa476cf3f`, chain 1)
- FraxVoterProxy (`0x59cfcd384746ec3035299d90782be065e466800b`, chain 1)
- FxnDepositor (`0x56b3c8ef8a095f8637b6a84942aa898326b82b91`, chain 1)
- FxnVoterProxy (`0xd11a4ee017ca0beca8fa45ff2abfe9c6267b7881`, chain 1)
- MerkleAirdrop (`0x2e088a0a19dda628b4304301d1ea70b114e4accd`, chain 1)
- PoolManager (`0xfc0a2ffdea23804494aa1707741e5a6eaa2f8017`, chain 137)
- PoolManager (`0x98ece0d8abd1f96672a497d3053999df172faa8b`, chain 42161)
- PoolRewardHook (`0xedccb35798fae4925718a43cc608ae136208aa8d`, chain 137)
- PoolRewardHook (`0xedccb35798fae4925718a43cc608ae136208aa8d`, chain 42161)
- PoolUtilities (`0xb20e684de561c54021651050f4518daa1976eb42`, chain 42161)
- PrismaVoterProxy (`0x8ad7a9e2b3cd9214f36cb871336d8ab34ddfdd5b`, chain 1)
- Proxy (`0xa3c5a1e09150b75ff251c1a7815a07182c3de2fb`, chain 1)
- RewardFactory (`0xcf50b810e57ac33b91dcf525c6ddd9881b139332`, chain 137)
- RewardFactory (`0x8014595f2ab54cd7c604b00e9fb932176fdc86ae`, chain 42161)
- RewardManager (`0x3c995e43e6ddd551e226f4c5544c77bfed147ab9`, chain 137)
- RewardManager (`0x972794ebd4b3bba8a185202f899f8f7664519bd7`, chain 42161)
- TreasuryManager (`0xbb48c21e9101a85ee6d00b4f1a7b946df1b09ea7`, chain 1)
- UniswapV2Pair (`0x05767d9ef41dc40689678ffca0608878fb3de906`, chain 1)
- UniswapV2Pair (`0x33f6ddaea2a8a54062e021873bcaee006cdf4007`, chain 1)
- VoterProxy (`0x989aeb4d175e16225e39e87d0d97a3360524ad80`, chain 137)
- VoterProxy (`0x989aeb4d175e16225e39e87d0d97a3360524ad80`, chain 42161)
- VoterProxyOwner (`0xb1d7c7bd55d6679e662e3482671d2735de0e69e8`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 72; live-surface rows included: 72 (71 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 98/101 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/66 (15.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 93 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 643 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 93 of 737 unique; 644 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/214
- Verified + Unaudited implementations: 204
- Verified by bytecode match: 0
- Unverified implementations: 523
- Unique implementations: 737
- Raw deployments: 911
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $141,367,329.15
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 2.8% | 2021-04 |
| yAudit | Tier 2 | 4 | 1.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232837 | `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e` | ✅ Audited |
| cvxRewardPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232921 | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ✅ Audited |
| cvxFxsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232952 | `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ✅ Audited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232946 | `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ✅ Audited |
| Booster | core_logic | project_anchor | own_core | 0 | polygon | n/a | 15 deployments: ethereum `0x2a465a53404d4ad945b65ba29fc725cd4eca0a74`; ethereum `0x8694d0b289fe886ac9836fcd5fc6e91e613f47b5`; ethereum `0x91e575c0cc6e8bc530d897d3d425b57b49a821c6`; ethereum `0x98a0b2d8451dca9d123e03a3b5507875fc672340`; ethereum `0xcce10d2d2e71d7803242c0d72040ede966a2de96`; ethereum `0xd8bd5cdd145ed2197cb16ddb172df954e3f28659`; polygon `0x1389388d01708118b497f59521f6943be2541bb7`; polygon `0x42e8786506d369ca54c474b64029558f991c795b`; polygon `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b`; polygon `0xf403c135812408bfbe8713b5a23a04b3d48aae31`; fraxtal `0xd3327cb05a8e0095a543d582b5b3ce3e19270389`; arbitrum `0x1389388d01708118b497f59521f6943be2541bb7`; arbitrum `0x42e8786506d369ca54c474b64029558f991c795b`; arbitrum `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b`; arbitrum `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ✅ Audited |
| CrvDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232874 | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ✅ Audited |
| CvxCrvStakingWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232905 | `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` | ✅ Audited |
| FraxVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232849 | `0x59cfcd384746ec3035299d90782be065e466800b` | ✅ Audited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-232980 | `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | ✅ Audited |
| VoterProxy | unknown | project_anchor | own_core | 0 | polygon | n/a | 22 deployments: polygon `0x07202292009dec5ea9b99c7005dc8e3ce05bfb73`; polygon `0x124e37ca2439b52fc6bf90a04cb8021c639bf781`; polygon `0x372516d2f464907d9fc7953f966d033803096b7a`; polygon `0x6a226cfb5d66e71757c4eb7066d75031da9955d0`; polygon `0x8dcba0fdc0853095791e6a8d9ec89c66c2028881`; polygon `0x989aeb4d175e16225e39e87d0d97a3360524ad80`; polygon `0xa0718d8e893f55ca99fc0691b0e20cb09d11e147`; fraxtal `0x07202292009dec5ea9b99c7005dc8e3ce05bfb73`; fraxtal `0x124e37ca2439b52fc6bf90a04cb8021c639bf781`; fraxtal `0x372516d2f464907d9fc7953f966d033803096b7a`; fraxtal `0x6a226cfb5d66e71757c4eb7066d75031da9955d0`; fraxtal `0x6b8d22692985e238eb20b47c32bea34bd4c9c107`; fraxtal `0x8dcba0fdc0853095791e6a8d9ec89c66c2028881`; fraxtal `0x989aeb4d175e16225e39e87d0d97a3360524ad80`; arbitrum `0x07202292009dec5ea9b99c7005dc8e3ce05bfb73`; arbitrum `0x124e37ca2439b52fc6bf90a04cb8021c639bf781`; arbitrum `0x372516d2f464907d9fc7953f966d033803096b7a`; arbitrum `0x6a226cfb5d66e71757c4eb7066d75031da9955d0`; arbitrum `0x6b8d22692985e238eb20b47c32bea34bd4c9c107`; arbitrum `0x8dcba0fdc0853095791e6a8d9ec89c66c2028881`; arbitrum `0x989aeb4d175e16225e39e87d0d97a3360524ad80`; arbitrum `0xa0718d8e893f55ca99fc0691b0e20cb09d11e147` | ✅ Audited |

### ⚠️ Verified + Unaudited (204)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConvexToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232845 | `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b` | ⚠️ Unaudited |
| cvxCrvToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232861 | `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | ⚠️ Unaudited |
| PrismaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda47862a83dac0c112ba89c6abc2159b95afd71c` | ⚠️ Unaudited |
| cvxFpisToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232901 | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | ⚠️ Unaudited |
| cvxFxnToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232813 | `0x183395dbd0b5e93323a7286d1973150697fffcb3` | ⚠️ Unaudited |
| cvxPrismaToken | token | project_anchor | own_supporting | 0 | ethereum | unit-232823 | `0x34635280737b5bfe6c7dc2fc3065d60d66e78185` | ⚠️ Unaudited |
| DebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4591dbff62656e7859afe5e45f6f47d3669fbb28` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367a3f057f3191b62bd4055845a33411892b6`; ethereum `0xd875628b942f8970de3cceaf6417005f68540d4f`; ethereum `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6953504f2f4537d7a7b4024508f321f7816bb6ed`; ethereum `0xed8b26d99834540c5013701bb3715fafd39993ba` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0e67460226a71df07115c1f169418dd159e5521b`; ethereum `0x361f88157073b8522def857761484ca7b1d5c8be`; ethereum `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285`; ethereum `0x94172e0b1714792c54f0b077b64e37c8050e89d6`; ethereum `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ⚠️ Unaudited |
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6ecfa38fee8a5277b91efda204c235814f0122e8`; ethereum `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ⚠️ Unaudited |
| AddLiquidityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33163e60d47255fe54392c6ab6fa2178315cb074` | ⚠️ Unaudited |
| AdminVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc53baaaa8595a7a2e7fee71db7291b939f696734`; ethereum `0xc5f87695cabbf16f81133cabbc7ccc073e648139` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bd112fff755c24c103adf5879ee914781b99c62`; ethereum `0xd49d86b001fe35bc745bc6e467b3cc18cb14b817` | ⚠️ Unaudited |
| AirdropDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c533357664d8750e5f851f39b2534147f5578af`; ethereum `0x3ea03249b4d68be92a8eda027c5ac12e6e419bee` | ⚠️ Unaudited |
| AladdinOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9c980322f460db51cc8e45539f677c73f86` | ⚠️ Unaudited |
| AllocationVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72bc1a8cf9b1a218386df641d8be99b40436a0f` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31ae4cbfafb007a908f348cf95ce4b535d5a8fa3`; ethereum `0xf89e5152c6ba530f398213dac29519fc0ef224e4` | ⚠️ Unaudited |
| BoostDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x058a5b9c0cfbbc7a0b736df0d76c11e5f9a4ff63`; ethereum `0x1933c974a70d69658f67baa121e973985d42cca8`; ethereum `0x6d5d7e3eb7402609729b3b019987f579f52ca7d2`; ethereum `0xce899e1c64db0d23326847df41c0d2ea4875350f`; ethereum `0xd44a7ad2ff29a0920bcb7a5baa46165f61b894f8`; ethereum `0xfa3a2fc2cc2e68de2eb83a01377a80b67bec5bb6` | ⚠️ Unaudited |
| BoostDelegate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232876 | `0x806d47df9141fde4a77e1e54f0ca4184526ade60` | ⚠️ Unaudited |
| BoostDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b470bd54096ab5bafbeb8505053de31c0fe2367`; ethereum `0x7939619bb2d6bcaf0aede6bc187d929a1354fc34` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232868 | `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` | ⚠️ Unaudited |
| Booster | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232911 | `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` | ⚠️ Unaudited |
| BoosterOwner | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232976 | `0x2ca7759dce155e15df9cdbd8322c8eb2934c5558` | ⚠️ Unaudited |
| BoosterOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe98d9b9af020fc9a475669d2485c80feea993377` | ⚠️ Unaudited |
| BoosterPlaceholder | core_logic | project_anchor | own_supporting | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xca4b0279853275147169435ad7a8e3cc396136c6`; arbitrum `0xd363d104f604497c4f11b269d8dbf2820abbf4e0` | ⚠️ Unaudited |
| BoostFeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b55782e3903b432fb4bf7271e92f4539293722f` | ⚠️ Unaudited |
| BoostFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232825 | `0x394bfb7e6a6e7197bba16c8dc5f581de8a1847b6` | ⚠️ Unaudited |
| BoostViewVoodoo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2cddd57474f8ba6a512e983ff36354c7afd79586`; ethereum `0x6d325ada9dd02336df15c11ee8cf3cec64d46b12` | ⚠️ Unaudited |
| BoostViewVoodoo2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3d20972fdf872ca8c799f83718f7297d371b2` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72c590349535ad52e6953744cb2a36b409542719`; ethereum `0xecabcf7d41ca644f87b25704cf77e3011d9a70a1` | ⚠️ Unaudited |
| BridgeReceiver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb31a34a2510fbc676b079f734530599f057bcafd` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232809 | `0x0f6e12f0be8487c35e063ec0e03903367c421e94` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b80c3dcb713c8df4eddbe7b77676f9a44916e57` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232923 | `0xcfc7b36fa3b59ca963a44c86c2c369bc311896e5` | ⚠️ Unaudited |
| ClaimZap | adapter | project_anchor | own_supporting | 0 | ethereum | unit-232833 | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ⚠️ Unaudited |
| ConvexDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x000ca04b3225137b9110e77e12f1b484cc227de9`; ethereum `0x838a35e3a63df3cd27d321f87980f17f51218fa1`; ethereum `0xcf139dbdefcf14e8bcbfc65d094cd1df8a744a96` | ⚠️ Unaudited |
| ConvexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3da992f4694d1a1624c32cafb5e57fe75b4bc867`; ethereum `0xd7ba3147f4c1563848fb760352c056d2c8465732` | ⚠️ Unaudited |
| ConvexMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232851 | `0x5f465e9fcffc217c5849906216581a657cd60605` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232958 | 2 deployments: polygon `0x65eee113d796f06d8cda873813912d0bb668a1f5`; arbitrum `0xf2afb340d1b50108bd32212e867946b5b8044c23` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 10 deployments: polygon `0x43353a1f971ca40326e694fb1bc61f7c0219a8fa`; polygon `0x698b7c31005a7172ea4bdb262911ce6dbae43d15`; fraxtal `0x25e12482a25cf36ec70fda2a09c1ed077fc21616`; fraxtal `0xc5158df20db993ab56b37e5c2577aa2210522d7b`; arbitrum `0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c`; arbitrum `0x4890970bb23fcdf624a0557845a29366033e6fa2`; arbitrum `0x7586310d9260023edb8788fc5cd1aaae4993dc67`; arbitrum `0xa46944d0845f786117d0e1034fc10585747c861b`; arbitrum `0xd155b69e058b2bd6d72be3e977102ec13ab255d6`; arbitrum `0xfdc6304b38d0703f0d0d13b665cee92499039383` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ba207c25a278524e1cc7faaea950753049072a4`; ethereum `0xd92494cb921e5c0d3a39ea88d0147bbd82e51008` | ⚠️ Unaudited |
| CurveDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x572a4a527ab4d073d641e0eddbcebe82a20c9d2a`; ethereum `0x6fa69768f1ef7299eeb3f0064b81b1f3bb345590`; ethereum `0x924eca29b9535ed43cdc12aac6f8b5f6a08c7322`; ethereum `0xdc6932c4084e6fbb3c9a57920da512e12dd52498` | ⚠️ Unaudited |
| CurveDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8e659fe8b1ddf8c5c50d55ed79c38837aa80729e`; ethereum `0xd9093a0b2687cff5c0936bc3b2fab3563adab57b`; ethereum `0xdbc54efe294dc4b17c98bf3cd512a3833b937f4e` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2664a7b123e7e6b5cc5cf6a76cf65e409bd1569f`; ethereum `0x60af2b6eea2fdc2b6e2cb4a9668c80966d9759e9` | ⚠️ Unaudited |
| CurveLendMinterFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391df68cdb38a89828a6d51f3976e3e76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e295a69928d3404e576a8ff3c8766559cb8f5` | ⚠️ Unaudited |
| CurveProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x490b8c6007ffa5d3728a49c2ee199e51f05d2f7e` | ⚠️ Unaudited |
| CvxCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0903ab70a7467ee5756074b31ac88aebb8fb777` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232948 | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | ⚠️ Unaudited |
| cvxFXB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc`; fraxtal `0x8301a2c86615edf08d8980eccca8287322423390` | ⚠️ Unaudited |
| cvxFXBRateCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: fraxtal `0x11c8ccbb19d524bc398864e1b46ca39824bf39c9`; fraxtal `0x13aa6c2f7b62c416406ecf14038f76f4725b8364`; fraxtal `0x6972ddae1bdf74446e1e88f1226a2f2eebb04b09`; fraxtal `0xafe07c043efe0f30eaa23b10c369891b7f87485f`; fraxtal `0xc93ab3c4dddc488dbca581a0c3459aaf7ebd700a` | ⚠️ Unaudited |
| cvxFXBSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x0160cb9cbdc22c2e768c45aab36b5ca647beef0f`; fraxtal `0xbc8923a60319807b1dae6b866f80f99ec1a3a0ef` | ⚠️ Unaudited |
| CvxFxnCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x00bac667a4ccf9089ab1db978238c555c4349545` | ⚠️ Unaudited |
| cvxFxnStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232940 | `0xec60cd4a5866fb3b0dd317a46d3b474a24e06bef` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232842 | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232926 | `0xd18140b4b819b895a3dba5442f959fa44994af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232864 | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | ⚠️ Unaudited |
| cvxPrismaStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232807 | `0x0c73f1cfd5c9dfc150c8707aa47acbd14f0be108` | ⚠️ Unaudited |
| cvxToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 8 deployments: fraxtal `0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0`; fraxtal `0x3fc86ca96014862f9a12427e5220936c56d5dac9`; fraxtal `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b`; fraxtal `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7`; fraxtal `0xa2847348b58ced0ca58d23c7e9106a49f1427df6`; fraxtal `0xba9801acfdf3b8852865149d93acffef9120272d`; fraxtal `0xefb4b26fc242478c9008274f9e81db89fa6adab9`; fraxtal `0xfeef77d3f69374f66429c91d732a244f074bdf74` | ⚠️ Unaudited |
| DebtReducer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4`; ethereum `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ⚠️ Unaudited |
| DelegationFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39164369c37c412a04603666dcf4c7b33137748` | ⚠️ Unaudited |
| DropMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84f9877cae3d4f5eea4b544e9484fd7d46a13569`; ethereum `0xaa8d6714ce35951e9f0fddc16d62898fd55635cb` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232883 | `0x8864187b257e0fb3bd74054b72d9c1834e76d712` | ⚠️ Unaudited |
| DropMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232897 | `0x9c4d60fa85088d40e3d8030dba283e9708ec9292` | ⚠️ Unaudited |
| eETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa259c4a7056de82eea8df9ef85de405d9c2603` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906e0d769aae4fb3f53d3c989a50520a8e851f42` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | n/a | 5 deployments: polygon `0xa46944d0845f786117d0e1034fc10585747c861b`; fraxtal `0x757c2375b511f10e6347943a54e3b8f9b1b9137c`; fraxtal `0xcf50b810e57ac33b91dcf525c6ddd9881b139332`; fraxtal `0xde6b403c26564694372eb38b571632bee5858d20`; arbitrum `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ⚠️ Unaudited |
| ExtraRewardPool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232978 | `0x665d4bea98e3a1849526553453e8369b448c6ad4` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70b66e20766b775b2e9ce5b718bbd285af59b7e1`; ethereum `0xdb2222735e926f3a18d7d1d0cfeef095a66aea2a` | ⚠️ Unaudited |
| Fee Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116513eea4efe3908212afbaefc76cb29245681` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd430246142084ec68f7ab090cbd9252a1d1410e9` | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b459d78e814d2dab2832194c72322aa46bd576` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72625102868f56bc9696c91090938718d3804333` | ⚠️ Unaudited |
| FeeDeposit | unknown | project_anchor | own_supporting | 0 | polygon | unit-232960 | 2 deployments: polygon `0x665d4bea98e3a1849526553453e8369b448c6ad4`; arbitrum `0xe7cdd5ed586a095e395f2007449721ea2a5b878a` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5dccd4cc45e1c3397a80babaa1071f556539776` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 3 deployments: ethereum `0x30575fdcfb2b76096047f0a8651b52159ab835f7`; ethereum `0x35b6d13b334a428b894eaeae2fb2a7fe22ffa7a0`; ethereum `0x8133f7d5cd1a1e184228c373f5befa98fa01395d` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232843 | `0x4b33e944e4ae1cb58abfed5a16a4e25b041fb5d5` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232870 | `0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232936 | `0xe91861cb57c6c2aa55b7ab0e6853ae1d96b63efa` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62253f7c165e34fd7343b37839bf5186a9e21d4a` | ⚠️ Unaudited |
| FeeDistributorAdmin | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce0267803c6a0d209d3721d2f01fd618e9cbf8` | ⚠️ Unaudited |
| FeeReceiverCvxFxn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8259d9759e6ddfe46ee0e992608e3fecf5b62937` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232827 | `0x3c716e88ae0fcc5d78bd11810ca451941e2efe6a` | ⚠️ Unaudited |
| FeeReceiverCvxPrisma | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232909 | `0xaf92400476cd81c7379bb54fd2646e8fa476cf3f` | ⚠️ Unaudited |
| FeeRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f258fecc91b2ff162ca702c2bd9abf2af089611` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a3a8735a453b2f8ad375654939cbb08411d9fa` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ⚠️ Unaudited |
| FpisMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcde8b51ce5809238c953dd4e95c689d88b602ecf` | ⚠️ Unaudited |
| FRAXShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3432b6a60d23ca0dfca7761b7ab56459d9c964d0` | ⚠️ Unaudited |
| FxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | ⚠️ Unaudited |
| FxnDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232847 | `0x56b3c8ef8a095f8637b6a84942aa898326b82b91` | ⚠️ Unaudited |
| FxnVoterProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232925 | `0xd11a4ee017ca0beca8fa45ff2abfe9c6267b7881` | ⚠️ Unaudited |
| FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c359c78f75581ab2da5c353d2577c41cecb43` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | ⚠️ Unaudited |
| FxUSDCompounder4626 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | ⚠️ Unaudited |
| FxUSDPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0598d793baf7b4f49f4a003885e4180b28cab61` | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8098b34ed775ac44b1dde864e098c6d7f37` | ⚠️ Unaudited |
| GaugeRewarder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-233006 | `0xa3c5a1e09150b75ff251c1a7815a07182c3de2fb` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bcac2266468a44da9fa482ca54aaed586e1e7` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8df0db401ab7ec7a06a8465134fa32132e850c` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5d65a690de0bc36278ac93d47fd98bc14f7` | ⚠️ Unaudited |
| InterimAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4a62a602295214c31f5a6f7a67271110f69d341e`; ethereum `0xbd665a74082ac10372c07fbba76b7036d051465a` | ⚠️ Unaudited |
| InversePriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | ⚠️ Unaudited |
| InverseWstETHPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786833b5fd5ee21532d8b576391babefdaad1` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5de309dfd7f94e9e2a18cb6ba61ca305abf8e9e2`; ethereum `0xfe847efbe56bc528b901f1cae6b44d1c77a06db9` | ⚠️ Unaudited |
| LongPositionEmergencyCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2319289e56830b50a282c25af4f0045c724b3f79`; ethereum `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303`; ethereum `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ⚠️ Unaudited |
| LpRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f6d9c0d26f6a518333164b8d1e6885aecd30a4` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232818 | `0x2e088a0a19dda628b4304301d1ea70b114e4accd` | ⚠️ Unaudited |
| MigrateTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1371c1dae7d3ad43bb79ecce1b882ad9754f9047`; ethereum `0x5c15ced59fd964fcfff2d2f376b4a40b6d1fce1c`; ethereum `0xc3eaf094e2586965244ab6534f6dc69c6c16b5d5`; ethereum `0xcc7218100da61441905e0c327749972e3cbee9ee` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5871d69c8d6503001e1a8f3bf7e5ebe447a9cd` | ⚠️ Unaudited |
| MultiMerkleStash | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x36ecdec1b5e301321166cefd5856a44bfa13a1ae`; ethereum `0xa95ce9eefd6965296722890bb5fb977363fc2066`; ethereum `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbe7f8e2eade56a3b511cbd1ae6adc9fe889282` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fa5521f48b258b5e48a56b9b1bd95bffa1eb1c` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6440e21a3634c319c69cef8d17601dbc4e97c3db` | ⚠️ Unaudited |
| PlatformFeeClaimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232820 | `0x2f30ef614c4b10c32437864efe57b6d8ed4b9ba8` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0084c2e1b1823564e597ff4848a88d61ac63d703` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2be95a7c0ad24e2d2876793172d046db05d26f7f`; ethereum `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10`; ethereum `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a`; ethereum `0x376909c828fa57d271e6b208036d24943503fbad`; ethereum `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462`; ethereum `0x88f9e901487b635d1403eaabcb97fc1935fc62ac`; ethereum `0x9af12dabd518a6da606caac455b2d0efb3ef97f9`; fraxtal `0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c`; fraxtal `0xa7a4df20e207c9410808b4217c1810096a1dabd1`; fraxtal `0xf7758d9d8f35e96ec620d380ef708078253859f4`; arbitrum `0x3ceead93972703a4668ecd9fcab5b99c8fa39ae3`; arbitrum `0x83d128b0b661dc79a71790b14a9c96e6191fb565` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232972 | `0xfc0a2ffdea23804494aa1707741e5a6eaa2f8017` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232987 | `0x98ece0d8abd1f96672a497d3053999df172faa8b` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a388e310aaa498430d1fe541d6d64ddb423de` | ⚠️ Unaudited |
| PoolRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb95d646012bb87ac2e6cd63eab2c42323c1f5af` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232968 | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x3e342768feaa34c88429de9429a2d9150b9e6db6`; fraxtal `0x5ad9680ad2f72f422b7a4a1585aa51ac0b6ac3ec` | ⚠️ Unaudited |
| PoolRewardHook | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-233000 | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ⚠️ Unaudited |
| PoolUtilities | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x7abe78f961bff0f6855559c14686bd91df8caa72`; ethereum `0x7ec3df0b72c6aabf0b115a51f49ce4a6500216de`; ethereum `0x91b6d814a393e38e6bfb9a155d043b30fc9937b2`; ethereum `0xcc8bba630037d147cb5b128755a0e8158eb1e65a`; ethereum `0xcdd65f44095346997b1f12915dc2369d819d7c21`; polygon `0xba07563bb124531800d04e3a3ddc9ccfd831dbb0`; fraxtal `0xa20ca8e22113b79a1feb082bcb778408f9f334e6`; fraxtal `0xbf7af11835f49caf4c75fdf0570755584fb95f16`; fraxtal `0xc4b44c92db4b1154c3d852691444963d9e686cff`; arbitrum `0x87ca40ace7457292cd7cd75e1976669c82c56b5c` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | polygon | unit-232954 | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ⚠️ Unaudited |
| PoolUtilities | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-232991 | `0xb20e684de561c54021651050f4518daa1976eb42` | ⚠️ Unaudited |
| PoolUtilities | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-232994 | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| PositionAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799`; ethereum `0x1359fce197cf743016cd1a620939a1a80df259a5` | ⚠️ Unaudited |
| PositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | ⚠️ Unaudited |
| PositionOperateFlashLoanFacetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f844447ecf5b1523bfbadad3d9dea975982ea93`; ethereum `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x543a89fe8dd9403b89222540a881d3642da884ed`; ethereum `0x5b0398d2a7eeb524c678bbe9f9a4c4104e864d38` | ⚠️ Unaudited |
| PriceFeedNoPrevious | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e41068618ae53f126175eb32fea3c29c1d3e86` | ⚠️ Unaudited |
| PrismaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d17ea085f2ff5da3e6979d5d26f1dbab664ccf8` | ⚠️ Unaudited |
| PrismaDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232859 | `0x61404f7c2d8b1f3373eb3c6e8c4b8d8332c2d5b8` | ⚠️ Unaudited |
| PrismaDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa88a7fb313158d0c68047549ea9df0f121f29ce9` | ⚠️ Unaudited |
| PrismaSnapshotMockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3030b900d94ed36e5a4e8b15b1db76530acc56` | ⚠️ Unaudited |
| PrismaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bdf212c290473dcacea9793890c5024c7eb02c` | ⚠️ Unaudited |
| PrismaVoterProxy | unknown | project_anchor | own_core | 0 | ethereum | n/a | 5 deployments: ethereum `0x2fd5216605efa6ccb4c25994022c8a8fb77d2671`; ethereum `0x3fce074bbd66dc1cc9a9635eee6b3994fd333ca9`; ethereum `0x85fd46037350946ea37bb443cbb977a49e885b39`; ethereum `0x8ad7a9e2b3cd9214f36cb871336d8ab34ddfdd5b`; ethereum `0x8fbb0d24d51953b394b30950504e8e923b539872` | ⚠️ Unaudited |
| ProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xf53173a3104bfdc4ed2fa579089b5e6bf4fc7a2b`; arbitrum `0xf53173a3104bfdc4ed2fa579089b5e6bf4fc7a2b` | ⚠️ Unaudited |
| ProxyVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-232913 | `0xb20b384c2f958f2100e14c5048922613f937674a` | ⚠️ Unaudited |
| RebalancePoolGaugeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653`; ethereum `0x4ae3be52c411cc08434d28645fd391497c69c815`; ethereum `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428`; ethereum `0x835191186745e63f9e325e741b273ff925174d7e`; ethereum `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ⚠️ Unaudited |
| rETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f97be87f639fad08b79e2d6f1822e26e2cb2` | ⚠️ Unaudited |
| RewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x47aaec3bad88d406642cc4f26ccfb6f7193c5709`; fraxtal `0x858847c21b075e45727fcb0b544bd843cd750361` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-232966 | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | ⚠️ Unaudited |
| RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x2d82cea602a431ede94c926d50c4c7c3b7c5bea5`; fraxtal `0xe029881c3277b7b4935781b3d9fa0fe7ec4177cd` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | polygon | unit-232956 | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ⚠️ Unaudited |
| RewardManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: fraxtal `0x52500ef293097489765a3ece8cf9bd52545c33db`; fraxtal `0xb8691f7f8c6cdbb6fd1e90d20e2b0845b4eab914`; fraxtal `0xfc0a2ffdea23804494aa1707741e5a6eaa2f8017`; arbitrum `0x1f3718c23f2f0f6bb7fe20f39ad73c668567c40a`; arbitrum `0x33b7fb6bb0b33ab366bf816198e32be62c08899e`; arbitrum `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9`; arbitrum `0xc76e11a1eee43d47b537913cd197244fe9fc3414` | ⚠️ Unaudited |
| RewardManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-232982 | `0x972794ebd4b3bba8a185202f899f8f7664519bd7` | ⚠️ Unaudited |
| SavingFxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe091c9028154cc5cb721258e9360803b130f5` | ⚠️ Unaudited |
| SdCRVBribeBurnerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26dbc8fa2b463607ebb49a68a69c33476665` | ⚠️ Unaudited |
| SdPendleCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ⚠️ Unaudited |
| ShortPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0055e248ee7feab91969b77ab32f184b72be82fa`; ethereum `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70`; ethereum `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x218b689a4f4afba497123b4831f58d6379d99801`; ethereum `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff`; ethereum `0x6844aaab4131041b563e6217eb0ba218123f5e45`; ethereum `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ⚠️ Unaudited |
| ShortPositionOperateFlashLoanFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d35dc5948c948f131ddd9e3a341b99e45174a74`; ethereum `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6`; ethereum `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bab3f90095c424b923d67f4be1790935c8bbb50`; ethereum `0x5c454338173b399bb9cd5c0259d0d242a71a1464` | ⚠️ Unaudited |
| SpotOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0eaeca0e27b3cdb855b7a9b06ca2d9cdfb79fa51`; ethereum `0x8c2e50c1d5a4d3668c2cc86d8848970ace38f64d`; ethereum `0x9da2a3141e64616ea570ee72d1a4efd0e5381e47` | ⚠️ Unaudited |
| SpotOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcdaaf8f74ad19c46710492389aa846429ba14b` | ⚠️ Unaudited |
| SpotOracleAggregatorUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf40c130399a730f22c7d59facf519e2feaa071` | ⚠️ Unaudited |
| StakedCvxFxs | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8c279f6bfa31c47f29e5d05a68796f2a6c216892` | ⚠️ Unaudited |
| StakeNTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1951159afb9ceec77c8d767386dc15471f3fdb83`; ethereum `0x4761bcf7774ca87a9e265477dfed149f06844d52`; ethereum `0x925acc1418949549ea2e4242b74c78ba9ba00ee6`; ethereum `0xbe600484613d33384ca2b102830562f908f45217` | ⚠️ Unaudited |
| StakingProxyERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2aa80139d3d6dfa90396547228d3875a8fdc0b04`; ethereum `0x359c1efd3fc7e3a9b7a043c185fd5d39dec1fc81` | ⚠️ Unaudited |
| StakingProxyRebalancePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x54eadf1f41f0f9cef9f3bfd721c0ace8cf5a9266`; ethereum `0x55decf506d54878c1768c05db27c025b14ebc55f`; ethereum `0xc39f8c17bef00d7f73e75dd0e3cefa99523af528`; ethereum `0xd6da2a43ded6fc647aa5fb526e96b1f37c24cea8`; ethereum `0xdb1a3e4b18d445eb09f9ed4cdd3dcf38534b9d7b` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ⚠️ Unaudited |
| SwapDebtForCollZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11478565ac5925745386d58eae65c9597e342a1a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863fb8855b04509a835082478d6e3d0be4e61a` | ⚠️ Unaudited |
| Token Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194925d55d5de9555ad1db74c149329f71def` | ⚠️ Unaudited |
| TokenLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f78544364c3eccdce4d9c89a630aea26122829d` | ⚠️ Unaudited |
| TreasuryFunds | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe967cdd160c349a33531ab315ccba7d55dc48bed` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97255ddee29c941d85f5b5cde6ace8bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x148e58bb8d9c5278b6505b40923e6152b5238cf8`; ethereum `0xeb8121b44a290ee16981d87b92fc16b2366de6b3` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232919 | `0xbb48c21e9101a85ee6d00b4f1a7b946df1b09ea7` | ⚠️ Unaudited |
| TreasuryManagerFrax | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b601f74c8d3d42379921106b907f1055f80` | ⚠️ Unaudited |
| TreasuryManagerFxGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be4ec802e8ad5ebf8324fc81aea03980457edcc` | ⚠️ Unaudited |
| TreasuryManagerPrisma | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232930 | `0xd60cd4ad7a2d6bf4ec9fccbcaeec769b52726dfd` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17d7deee59f9e326e45cc3c0c1b158e74316` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14a3b726724a0e620cde342a7c04c09e0d05f7a6`; ethereum `0x297b704feda9383527c2ca834ffce29509e4cd3f`; ethereum `0x4482bd395d78d36af31a1d58fe86958707861cf5`; ethereum `0x50c4d64536849c874108d7ffd7a5488840648d0e` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbba100eca7ea6fb0c651d1a234ca343088b1ac01`; ethereum `0xc9c2d0bfb9860ad89a91d2069a8d73a6f903e9c4` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232805 | 2 deployments: ethereum `0x05767d9ef41dc40689678ffca0608878fb3de906`; ethereum `0x33f6ddaea2a8a54062e021873bcaee006cdf4007` | ⚠️ Unaudited |
| Utilities | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232835 | `0x3fc264c5154d16c0eb765f6dd12a55bdc18f7951` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41ef2281893b5971769370d6cdd35864b503` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2290eefea24a6e43b26c27187742bd1fedc10bdb` | ⚠️ Unaudited |
| VestingClaim | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-232872 | `0x7e2ca1134dc44b5d368575da316d87ac9b9065e7` | ⚠️ Unaudited |
| VestingManagerProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96b67800d280640803ae077a8126030e204af030` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232989 | `0xb1d7c7bd55d6679e662e3482671d2735de0e69e8` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469` | ⚠️ Unaudited |
| VulnerableTroveRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e07cfbf666741b2fb3a33516a23293cae7d0438` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3669c421b77340b2979d1a00a792cc2ee0fce737`; ethereum `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (523)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007fd070a7e1b0fa1364044a373ac1339bad89cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0417ce2934899d7130229cda39db456ff2332685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054fac7aa44f85a59fd41c33006336ec8b03e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085780639cc2cacd35e474e71f4d000e2405d8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a602616593b79591cfc88a130c8825a0fcbd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ce8f58e7340601bb9179000fb49c31843c5283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b700c60de435d522081cc5eb12b63875fe7e65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bbfd53ec934e5d4d3d55dd860642add395de979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112873b395b98287f3a4db266a58e2d01779ad96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1236193c71128f9e7b6bb56f506676add8589009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12af4529129303d7fbd2563e242c4a2890525912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232811 | `0x1389388d01708118b497f59521f6943be2541bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f1cbae37f765614655967afc51b544b8143749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15100606433dc500451e8289984acfceead03149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184b6aed8d975385e0ad02e026d649208a3c58a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1925e197fffa52060f0d2515cd3781e26c63f08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a144095ad1cb488fe6378dbfc62368a7453d114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a17ccf198e03858227c27205f15a4b388235db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca7b82c4265835c7841cf29407217d820a7dadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d100dc012c54606f0046c9420f72b8c63803a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d20671a21112e85b03b00f94fd760de0bef37ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091353d10096349faa685c4dc3d383837f54533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2122a2bee97545595550b85379ac7676fd21a5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215d87bd3c7482e2348338815e059de07daf798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fb1221317ac539ee355fc113054e54b1cd0231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23831e29db590bbbacf267ee2cf377cd3e54a718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250893ca4ba5d05626c785e8da758026928fcd24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232815 | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232817 | `0x27445d3f59d6b966072abe20e41a29fbb6a7a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2755eebf220bfd31b83fd9244b6d061bca225311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ed637c5e3371c2678c2d346df04fb634ed832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c613d2c163247cd43fd05d6efc487c327d1b248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b895773b093055919e16d537e3a2295d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31183a2cce8d1bfbbfe140ea1a1264a454fc821e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316f7c1c54f6f5455b9ae92218596bad431a4309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bfaf256875a93b5d02cdef80b17ef780663d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33636d49fbefbe798e15e7f356e8dbef543cc708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343ad5b3db703105d95216ab13c9ec8925306550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345a345dad48c3504113539ce83c0cb765627b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37303d55fd8570c070bedd9a0e64421f318bb01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387568e1ea4ff4d003b8147739db69d87325e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38965311507d4e54973f81475a149c09376e241e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389b4a98e01290811687f4fff92281b1ef84c5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232829 | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232831 | `0x3ce6408f923326f81a7d7929952947748180f1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232840 | `0x41a5881c17185383e19df6fa4ec158a6f4851a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447d902da96a22727d0b53f215d0c387fe1ae114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4480debb165466a0dbb1196879c43c7f0cc297db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x456517ee29af17e59ea1c70852d3fb15804bd122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e51067e695bd79d6275ecab6e9e527a72abde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f77ddd4d57636ab4c98d8f18ca5f4b5210983d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2ab45d27428901e826db4a52dae00594b68022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbd78629b2794d73a3def4c502c422de674831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eefea49e4d876599765d5375cf7314cd14c9d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8330946669d71014efdce30ef19a256643fba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e286478519924a400554bae7a3fa139f9b1576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716f858aeff9cb845d4c78c67a7599b0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a51450b1d025b4f6fa259b2008851553343cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564a464c9c357de593fa48efd784048a9e366523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56afb443de36340c32f1a461605171992480059d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576b4779727f5998577bb4e25bf726abe742b9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5801bb8f568979c722176df36b1a74654a9c52b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58465fff9f31f0d46822d3a4cea0395f017e161a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a097b014c547718e79030a077a91ae37679eff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232853 | `0x5f47010f230ce1568bea53a06ebaf528d05c5c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232855 | `0x5fba69a794f395184b5760daf1134028608e5cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fec7879738cb209af6d9880e4566a24200accae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232857 | `0x60bd3d7a39e12085ee8bfeced46d31f9c0f6738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f32964c39cca4353144a6db2f8efdb3216b35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fe55b3fe3f74b42840788cfbe6229869590f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d72aa8da931f047169112fcf34f52dbaae7d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6793de5e5a329be514b51184db13639dc7ccf8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679de4a3836d916fc86c6d9944c98a694f68adb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a94c63689cda730e99491d29e56acd247e5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69518d1d70ad537c41401303bdf96032338e40de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af422087abf42819f764ff8de95269036b9a8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb03222179f83126735d7e9fde94571d716d399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714b853b3ba73e439c652cfe79660f329e6ebb42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a6239f1651a4556f4c40fe97575885a195f535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9234a6e03c382a01bb942b1af05b639371309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7612bcabd3d66c71ff740472e063be6a74f126d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232866 | `0x782bce229a8b603c99161e867a49d5426da37f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ef19714c8b3c71997970c156f59605a99c3ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c5f5b0753ace25ecdbda4c2bc86ab074b6c2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a505e920d5d7e4b402d9ee345fb7e8cdc265262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5350bac0eb97f86a366ee4f9619a560480f05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ced6167b5a08111dc8d0d2f9f7e482c4da62506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4674b837429c44914961cb9f21dd6defd0eee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d85a9ae9ea89069a71289c167cd3502a773e113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e94c07c6c3b2c931e9517529f56553770a7c0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb0ed173480299e1310d55e04ece401c2b06626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e9ed9b654460212f04c2bde0467cde4628782a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823baf74524b707d649a2a78e66df106f5a131ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834e87262a00b0ac38ed49cb1110838866be4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bdc459ac3887b2a61aa47dca3acac26a333d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84952a42984779e22d1e2b78c9b7541d1fb2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aaea3a2757d457e1ce88c3808c1690213e432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b84d588c7a67ebab2aa0352b8475dc9310b805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e987a89fd7345457d97b9e82906f346d61df39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232881 | `0x877288c4e6eba4f635ba7428706447353b47de75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d5e4caaf4358a4337c10859c7107c7aef4f8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b10fdf42f5ecada5210c14f5c209c1eb1266f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc02c0d9592976635e98e6446ef4976567e7a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9186fa822624bad50a5cb2545048cb26b4e65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3815ef103b8d8528778969cd53baa2e94be25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e58f45e69732f3c602075f010ab35902ce62771` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232887 | `0x8f55d7c21bdff1a51afaa60f3de7590222a3181e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910d63e04ca41b9e349c8caba12e7ecae5e11a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9216272158f563488ffc36afb877aca2f265c560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232889 | `0x92cf9e5e4d1dfbf7da0d2bb3e884a68416a65070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9317139acbdbd53686c4531216a95ccc8514cdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93670efe073e0d75be16445779a8399e6b418004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939c38921c961decb3cc16f601c32d07c41cd25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d2670b829ee371c6aaa78dcdd1bd6e967cefbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9516c367952430371a733e5ebb587e01ee082f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9579c311b54b4bb3460a5461cc6108ee162933c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96293b5424c707c53a51175489e9b24b6b8dce46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969fcabb703052155c4cc3b24458e77b2d56b29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9710ca7f3edd4893f399c89ea184d92cc7172e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232893 | `0x989aeb4d175e16225e39e87d0d97a3360524ad80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ea26a76fd78a22691c9ff64f26893a13cd9b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a18c4ea2c4d1aeaff925cb74e41222a2aa14562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a68dea7dcddfc5c4c6b3cb8ab278bf2cd87d3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad382b028e03977d446635ba6b8492040f829b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232894 | `0x9b622f2c40b80ef5efb14c2b2239511ffbfab702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf5ffabbf97de0a47843a7ba0a9ddb40f2e2ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7003bc16f2a1aa47451c858fee6480b755363e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfefd90d4c8428d4cbac9baaa6d52c6ba7897f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d093e5b929cceeae9497fc27c22481e0b8a53f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d11ab23d33ad026c466ce3c124928fdb69ba20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8945755ff12a989c4d5e78c9f6f3a4257db90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eafdd0d204061fb98cc305bdacf84fa243b0a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efd39499dd56106b106a2206e79fb6117baf2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0d5e33617a1db6f1cbd5580834422684f09269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f224aa807c6fc3086ed3c552ba54bd3a8aace33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f23562ec47249761222ef7ac02b327a8c45ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc95077c2271dabb19203e82d469ce2e96aaffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fcb2c47dab11e38fec4b8c886f63741bfed4c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04d761adad1029e4f2f60ac973a76c5307efcea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cc8162c523998856d59065faa254f87d20a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232899 | `0xa1bc2cf69d474b39b91665e24e7f2606ed142991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa295829c082c4d21fe37dbc8c96bfa0ef6dbaa92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232903 | `0xa2cf21b157b2f203e37b616b619f438b5aa86ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2faffe31153e5e60f2352e3ed28ff973309c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8e0b7aa53a9b9abd795ddb290e93feafe6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c0f7360b922136cc8b89063be1e8daf70427bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3f4fb87e19b60622bea119c4469c0df2c7c4739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5250c540914e012e22e623275e290c4dc993d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa553c27fff4d09c69e367c20eb95cc7fd0b0f3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70dddb8ddd06b1c26061d998e041748b18ecf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84360896ce9152d1780c546305bb54125f962d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87f04c9743fd1933f82bddec9692e9d97673769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9414ee8b2b2563e70174972faa2e8b5197feb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc8cbba768da396626fad97d0e61104ac1e7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb3604aadf26e6c0bb8c720420380629a328d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdc0ab51178d0ae8f70c1ead7d3cf5421fdd66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d0c8782f8c9076e8f081f7a5e1a4ac4499a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9a0e7c08bc9f747df97a3e7e7f620632cb6155` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232907 | `0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae34ee329ee91ddbfbe50443df9dedb076477f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb178197e88d58da21be22a408e850d1e6dc09a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1dd23468a69dfddb7211298e609c0db1522b2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2297b60e886a4b9a4d7b385a25c7982712e03ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a554033c59e33e48c5dc05a7192fb1bbddfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ca48fe4ee94a4fe8815f7e54e99124f997540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e43ececa7c110c74cf13ba35105b0633b74e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3886b8c94c8635b786b1ca88942337669bb1e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3c90e64eb6f456a5f5c17aa99b6aeca6f4a6390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48390877e12d401d9733a875806919c9a6cbe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fe4e73658b42619a4c739aac4e66ad87351b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5152d159fce50a7576eba7fab61c2b98f0ed692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb592e01dd77084b36430ffcb9c9d2f76fde32631` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232915 | `0xb5bbc863bafe5006c68613b89130812a7b586a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb753366082466c4b5984312f0c4bb97554be067e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb788998187a8536f38b69ae657323ac8b70551bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87a8332dfb1c76bb22477dcfeddeb69865ca9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90d347e10a085b591955cbd0603ac7866fcadc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb925f8caa6be0bfcd1a7383168d1c932d185a748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba947cba270d30967369bf1f73884be2533d7bdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232917 | `0xba9801acfdf3b8852865149d93acffef9120272d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb549046497364a1e26f94f7e93685dc29fad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4114f182e0b33ffbeb538a680639516b647ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbfc4df7b7793fb7817533545101ab6071f1520a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc113e63c3e5bcc9b829053c31a6c3868d7cd674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf57a777c20f66f3e4a7435269da4e73073e001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd09e936de95a7d90b84e3c6ff7d2139511d5aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb4289491ebfe8452cfac8830a6285e42a4742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc054f64143cb04b765773d5b66992f611c497352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e93ac461c377f96486445cb16169fd09c9ccc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2312caf0de62ec9b4adc785c79851cb989c9abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bdbf323304eabd9260b42e4d0d429ca3481d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2def1e39ff35367f2f2a312a793477c576fd4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4160f6d4149e0921e9aced406acf5f3ad7f2882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50ea03795b1c6e618fbbc304b55e5f7c31d7adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dee5913e010895f3702bc43a40d661b13a40bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0563ab14a87ee64d6b097b0dfc46e9b56820ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d3f8f770fd50b8cf76551ec54012c26036c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccb97f23666c75aee0aabddb180c2df68b03154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5a14c662f00c614aa467b82c654548540f2fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf904d377604bcccb328e51204ca30203f635259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeeff214b256063110d3236ea12db49d2df2359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11396267546b8ed258152f7e4f0cc1ca32abd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232928 | `0xd20904e5916113d11414f083229e9c8c6f91d1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b8162e2fb9f3eff09bb8598ca0c8958e33a23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd71b8b76015f296e53d41e8288a8a13eaffff2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd766f2b87de4b08c2239580366e49710180aba02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda1d80bad62586a7c319fd2a41d98a930705fc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba9a415bae1983a945ba078150cae8b690c9229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb9a696419b54851307ffc62c8c4e50ddacfbb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232932 | `0xdd49a93fdcae579ae50b4b9923325e9e335ec82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8f6860f5a3eecd8b7a902df75cb7548387c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232934 | `0xdecc7d761496d30f30b92bdf764fb8803c79360d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7fbdbae50c7931a11765faed9fe1a002605b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfac83173a96b06c5d6176638124d028269cfcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfc3683a0179a02bfb5373243d105ff25e4f40c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc1e9514f149ae9d69089c45934a78f9e57389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4031e271809d20074e4bef1caeefec5f710e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe534e5e86382d64133ecd6b7f717c69bec8b40ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64b336b5df8318fa485a1a96af5f8a553555285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe650a519a88bc980750cea783e26d32fd35c3b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f847c62025ed672cfc57c244d16f76f8eac66d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232938 | `0xe98984ad858075813ada4261af47e68a64e28fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7874754362386ca438e70447a60a626bcaad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed113b925ac3f972161be012cdfee33470040e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed803540037b0ae069c93420f89cd653b6e3df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed92dde3214c24ae04f5f96927e3be8f8dbc3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9ed685f553b0827a58a918e64ec02e6fd55799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232942 | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeded972215008a0d033d3d641511d40d382317e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeecd843ed9f3d07757565e5cb91111718270a44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01ccea9704ca0aca3d2982dbb6b40bad7075c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3eced42dbd8353569639c0eaa833857aa0a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e141c804ba39b4a031fdf46e8c08dba7a0df60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf291ec9c2f87a41386fd94ec4bcdc3270ed04482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29b80b512f7055f164a33aa13105dfac3b01b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232944 | `0xf3bd66ca9b2b43f6aa11afa6f4dfdc836150d973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422446f7730e50b9cab4618343425d9927b35ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bd6d66bafea1e0500536d52236f64c3e8a2a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58c499417e36714e99803cb135f507a95ae7169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf594bdfafe4197144c6459fca611d7b868d36bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a3c54cfd96837c5efce8a4b260de7b117f2681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6198e5e9179afb6a75a5c4dc29e0235bc8af0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62f458d2f6dd2ad074e715655064d7632e136d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf729422d68c2cf00574fb5712972454cf402a9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74ca519fe35ec6a862a4debd8e317bed3c47c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1dc2b0775c5699e195bb5f64bafba3c36a9ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4761512aaf899b010438a10c60d01ebdc0efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa525154c6371e9d46570b44c7328e6cc3e7cc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3862c33b54e0bba61d966ff51973c20be4fc62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232950 | `0xfcb28d032e422ae3710c1ad74338cbb40b0749cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfefafb9446d84a9e58a3a2f2dddd7219e8c94fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe563c168c01e05da4f3d81938af158466ad793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67082fe8971915a6e83f12a2b96c6c381cc5812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa46944d0845f786117d0e1034fc10585747c861b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf105463f14e955de791fc0afaed2962850a7104d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 719
- Live contracts: 38
- Unknown liveness contracts: 681
- Source-verified contracts: 234
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, contamination review=64, exact address book overlap=27, source verified unclassified=141, unverified unclassified=485

Showing first 200 of 719 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | RewardFactory<br>`0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` | project_anchor | registry | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| currently scope matched | VoterProxy<br>`0x989aeb4d175e16225e39e87d0d97a3360524ad80` | project_anchor | unknown | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | AddLiquidityChecker<br>`0x33163e60d47255fe54392c6ab6fa2178315cb074` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | AdminVoting<br>`0xc53baaaa8595a7a2e7fee71db7291b939f696734` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | AllocationVesting<br>`0xc72bc1a8cf9b1a218386df641d8be99b40436a0f` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | BoostCalculator<br>`0x31ae4cbfafb007a908f348cf95ce4b535d5a8fa3` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | BoostDelegate<br>`0x058a5b9c0cfbbc7a0b736df0d76c11e5f9a4ff63` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | BoostDelegateV2<br>`0x2b470bd54096ab5bafbeb8505053de31c0fe2367` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | BoostFeeClaimer<br>`0x1b55782e3903b432fb4bf7271e92f4539293722f` | non_address_book | operational_periphery | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | BoostViewVoodoo<br>`0x2cddd57474f8ba6a512e983ff36354c7afd79586` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | BoostViewVoodoo2<br>`0x56a3d20972fdf872ca8c799f83718f7297d371b2` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | Burner<br>`0x0f6e12f0be8487c35e063ec0e03903367c421e94` | project_anchor | unknown | live | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | ConvexDepositToken<br>`0x000ca04b3225137b9110e77e12f1b484cc227de9` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | ConvexFactory<br>`0x3da992f4694d1a1624c32cafb5e57fe75b4bc867` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | CurveDepositToken<br>`0x572a4a527ab4d073d641e0eddbcebe82a20c9d2a` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | CurveFactory<br>`0x2664a7b123e7e6b5cc5cf6a76cf65e409bd1569f` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | CurveProxy<br>`0x490b8c6007ffa5d3728a49c2ee199e51f05d2f7e` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | DelegationFactory<br>`0xd39164369c37c412a04603666dcf4c7b33137748` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | DropMinter<br>`0x84f9877cae3d4f5eea4b544e9484fd7d46a13569` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | EmissionSchedule<br>`0x906e0d769aae4fb3f53d3c989a50520a8e851f42` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | Factory<br>`0x70b66e20766b775b2e9ce5b718bbd285af59b7e1` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | FeeClaimer<br>`0x77b459d78e814d2dab2832194c72322aa46bd576` | non_address_book | operational_periphery | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | FeeConverter<br>`0x72625102868f56bc9696c91090938718d3804333` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | FeeDistributor<br>`0x62253f7c165e34fd7343b37839bf5186a9e21d4a` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | FeeReceiver<br>`0xfdce0267803c6a0d209d3721d2f01fd618e9cbf8` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | FeeReceiverCvxFxn<br>`0x8259d9759e6ddfe46ee0e992608e3fecf5b62937` | non_address_book | unknown | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | FeeReceiverCvxPrisma<br>`0x3c716e88ae0fcc5d78bd11810ca451941e2efe6a` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | FeeRegistry<br>`0x4f258fecc91b2ff162ca702c2bd9abf2af089611` | non_address_book | registry | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | Forwarder<br>`0xb9a3a8735a453b2f8ad375654939cbb08411d9fa` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | IncentiveVoting<br>`0xfd8df0db401ab7ec7a06a8465134fa32132e850c` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | LiquidationManager<br>`0x5de309dfd7f94e9e2a18cb6ba61ca305abf8e9e2` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | MultiCollateralHintHelpers<br>`0x3c5871d69c8d6503001e1a8f3bf7e5ebe447a9cd` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | MultiRewards<br>`0x4dbe7f8e2eade56a3b511cbd1ae6adc9fe889282` | non_address_book | unknown | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | MultiTroveGetter<br>`0x58fa5521f48b258b5e48a56b9b1bd95bffa1eb1c` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | PlatformFeeClaimer<br>`0x2f30ef614c4b10c32437864efe57b6d8ed4b9ba8` | project_anchor | operational_periphery | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | PriceFeed<br>`0x543a89fe8dd9403b89222540a881d3642da884ed` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | PriceFeedNoPrevious<br>`0x41e41068618ae53f126175eb32fea3c29c1d3e86` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | PrismaCore<br>`0x5d17ea085f2ff5da3e6979d5d26f1dbab664ccf8` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | PrismaDepositor<br>`0x61404f7c2d8b1f3373eb3c6e8c4b8d8332c2d5b8` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | PrismaVoterProxy<br>`0x2fd5216605efa6ccb4c25994022c8a8fb77d2671` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | ProxyVault<br>`0xb20b384c2f958f2100e14c5048922613f937674a` | project_anchor | core_logic | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | SortedTroves<br>`0x3bab3f90095c424b923d67f4be1790935c8bbb50` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | SpotOracle<br>`0x0eaeca0e27b3cdb855b7a9b06ca2d9cdfb79fa51` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | StabilityPool<br>`0x6953504f2f4537d7a7b4024508f321f7816bb6ed` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | StakingProxyRebalancePool<br>`0x54eadf1f41f0f9cef9f3bfd721c0ace8cf5a9266` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | SwapDebtForCollZap<br>`0x11478565ac5925745386d58eae65c9597e342a1a` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | TreasuryManager<br>`0x148e58bb8d9c5278b6505b40923e6152b5238cf8` | non_address_book | operational_periphery | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| contamination review | TreasuryManagerPrisma<br>`0xd60cd4ad7a2d6bf4ec9fccbcaeec769b52726dfd` | project_anchor | operational_periphery | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | TroveManager<br>`0x14a3b726724a0e620cde342a7c04c09e0d05f7a6` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | TroveManagerGetters<br>`0xbba100eca7ea6fb0c651d1a234ca343088b1ac01` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | Utilities<br>`0x3fc264c5154d16c0eb765f6dd12a55bdc18f7951` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | VestingClaim<br>`0x7e2ca1134dc44b5d368575da316d87ac9b9065e7` | project_anchor | operational_periphery | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| contamination review | VulnerableTroveRedeemer<br>`0x1e07cfbf666741b2fb3a33516a23293cae7d0438` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| contamination review | Booster<br>`0x1389388d01708118b497f59521f6943be2541bb7` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | PoolUtilities<br>`0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | VoterProxy<br>`0x07202292009dec5ea9b99c7005dc8e3ce05bfb73` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | BridgeReceiver<br>`0xb31a34a2510fbc676b079f734530599f057bcafd` | non_address_book | operational_periphery | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | cvxFXBRateCalc<br>`0x11c8ccbb19d524bc398864e1b46ca39824bf39c9` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | cvxFXBSwapper<br>`0x0160cb9cbdc22c2e768c45aab36b5ca647beef0f` | non_address_book | adapter | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | PoolRewardHook<br>`0x3e342768feaa34c88429de9429a2d9150b9e6db6` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | RewardDistribution<br>`0x47aaec3bad88d406642cc4f26ccfb6f7193c5709` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | RewardFactory<br>`0x2d82cea602a431ede94c926d50c4c7c3b7c5bea5` | non_address_book | registry | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | BoosterOwner<br>`0x2ca7759dce155e15df9cdbd8322c8eb2934c5558` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | ExtraRewardPool<br>`0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | RewardManager<br>`0x1f3718c23f2f0f6bb7fe20f39ad73c668567c40a` | non_address_book | governance | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| contamination review | VoterProxy<br>`0x07202292009dec5ea9b99c7005dc8e3ce05bfb73` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | BoostDelegate<br>`0x806d47df9141fde4a77e1e54f0ca4184526ade60` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | Booster<br>`0x79a50f83e7aff970ceab5152a15461a4f1c3799e` | project_anchor | core_logic | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | BoostFeeClaimer<br>`0x394bfb7e6a6e7197bba16c8dc5f581de8a1847b6` | project_anchor | operational_periphery | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | Burner<br>`0xcfc7b36fa3b59ca963a44c86c2c369bc311896e5` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | DropMinter<br>`0x8864187b257e0fb3bd74054b72d9c1834e76d712` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | DropMinter<br>`0x9c4d60fa85088d40e3d8030dba283e9708ec9292` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | FeeDepositV2<br>`0x4b33e944e4ae1cb58abfed5a16a4e25b041fb5d5` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | FeeDepositV2<br>`0x8133f7d5cd1a1e184228c373f5befa98fa01395d` | project_anchor | unknown | live | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| exact address book overlap | FeeDepositV2<br>`0xe91861cb57c6c2aa55b7ab0e6853ae1d96b63efa` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | FeeReceiverCvxPrisma<br>`0xaf92400476cd81c7379bb54fd2646e8fa476cf3f` | project_anchor | unknown | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | TreasuryManager<br>`0xbb48c21e9101a85ee6d00b4f1a7b946df1b09ea7` | project_anchor | operational_periphery | live | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| exact address book overlap | ConvexRewardPool<br>`0x65eee113d796f06d8cda873813912d0bb668a1f5` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | ExtraRewardPool<br>`0xa46944d0845f786117d0e1034fc10585747c861b` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolManager<br>`0xfc0a2ffdea23804494aa1707741e5a6eaa2f8017` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolRewardHook<br>`0xedccb35798fae4925718a43cc608ae136208aa8d` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | RewardFactory<br>`0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | project_anchor | registry | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | RewardManager<br>`0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | project_anchor | governance | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | VoterProxy<br>`0x989aeb4d175e16225e39e87d0d97a3360524ad80` | project_anchor | unknown | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | BoosterPlaceholder<br>`0xd363d104f604497c4f11b269d8dbf2820abbf4e0` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | ConvexRewardPool<br>`0xf2afb340d1b50108bd32212e867946b5b8044c23` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | ExtraRewardPool<br>`0x665d4bea98e3a1849526553453e8369b448c6ad4` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolManager<br>`0x98ece0d8abd1f96672a497d3053999df172faa8b` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolRewardHook<br>`0xedccb35798fae4925718a43cc608ae136208aa8d` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolUtilities<br>`0xb20e684de561c54021651050f4518daa1976eb42` | project_anchor | core_logic | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | PoolUtilities<br>`0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | retained_scope_excluded_inventory | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | RewardManager<br>`0x972794ebd4b3bba8a185202f899f8f7664519bd7` | project_anchor | governance | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| exact address book overlap | VoterProxyOwner<br>`0xb1d7c7bd55d6679e662e3482671d2735de0e69e8` | project_anchor | unknown | live | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | AdminVoting<br>`0xc5f87695cabbf16f81133cabbc7ccc073e648139` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | AirdropDistributor<br>`0x4bd112fff755c24c103adf5879ee914781b99c62` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | AirdropDistributor<br>`0xd49d86b001fe35bc745bc6e467b3cc18cb14b817` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | AirdropDistributorProxy<br>`0x2c533357664d8750e5f851f39b2534147f5578af` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | AirdropDistributorProxy<br>`0x3ea03249b4d68be92a8eda027c5ac12e6e419bee` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | BoostCalculator<br>`0xf89e5152c6ba530f398213dac29519fc0ef224e4` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | BoostDelegate<br>`0x1933c974a70d69658f67baa121e973985d42cca8` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostDelegate<br>`0x6d5d7e3eb7402609729b3b019987f579f52ca7d2` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostDelegate<br>`0xce899e1c64db0d23326847df41c0d2ea4875350f` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostDelegate<br>`0xd44a7ad2ff29a0920bcb7a5baa46165f61b894f8` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostDelegate<br>`0xfa3a2fc2cc2e68de2eb83a01377a80b67bec5bb6` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostDelegateV2<br>`0x7939619bb2d6bcaf0aede6bc187d929a1354fc34` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | Booster<br>`0x2a465a53404d4ad945b65ba29fc725cd4eca0a74` | non_address_book | core_logic | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | Booster<br>`0x8694d0b289fe886ac9836fcd5fc6e91e613f47b5` | non_address_book | core_logic | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | Booster<br>`0x91e575c0cc6e8bc530d897d3d425b57b49a821c6` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | Booster<br>`0x98a0b2d8451dca9d123e03a3b5507875fc672340` | non_address_book | core_logic | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | Booster<br>`0xcce10d2d2e71d7803242c0d72040ede966a2de96` | non_address_book | core_logic | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | BoostViewVoodoo<br>`0x6d325ada9dd02336df15c11ee8cf3cec64d46b12` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | BorrowerOperations<br>`0xecabcf7d41ca644f87b25704cf77e3011d9a70a1` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | Burner<br>`0x6b80c3dcb713c8df4eddbe7b77676f9a44916e57` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | ConvexDepositToken<br>`0x838a35e3a63df3cd27d321f87980f17f51218fa1` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | ConvexDepositToken<br>`0xcf139dbdefcf14e8bcbfc65d094cd1df8a744a96` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | ConvexFactory<br>`0xd7ba3147f4c1563848fb760352c056d2c8465732` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositToken<br>`0x6fa69768f1ef7299eeb3f0064b81b1f3bb345590` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositToken<br>`0x924eca29b9535ed43cdc12aac6f8b5f6a08c7322` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositToken<br>`0xdc6932c4084e6fbb3c9a57920da512e12dd52498` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositZap<br>`0x8e659fe8b1ddf8c5c50d55ed79c38837aa80729e` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositZap<br>`0xd9093a0b2687cff5c0936bc3b2fab3563adab57b` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveDepositZap<br>`0xdbc54efe294dc4b17c98bf3cd512a3833b937f4e` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | CurveFactory<br>`0x60af2b6eea2fdc2b6e2cb4a9668c80966d9759e9` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | DropMinter<br>`0xaa8d6714ce35951e9f0fddc16d62898fd55635cb` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | eETHDepositor<br>`0xefa259c4a7056de82eea8df9ef85de405d9c2603` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | Factory<br>`0xdb2222735e926f3a18d7d1d0cfeef095a66aea2a` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | FeeDepositV2<br>`0x30575fdcfb2b76096047f0a8651b52159ab835f7` | non_address_book | unknown | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | FeeDepositV2<br>`0x35b6d13b334a428b894eaeae2fb2a7fe22ffa7a0` | non_address_book | unknown | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | GasPool<br>`0xe0598d793baf7b4f49f4a003885e4180b28cab61` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | InterimAdmin<br>`0x4a62a602295214c31f5a6f7a67271110f69d341e` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | InterimAdmin<br>`0xbd665a74082ac10372c07fbba76b7036d051465a` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | LiquidationManager<br>`0xfe847efbe56bc528b901f1cae6b44d1c77a06db9` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | LpRewardHook<br>`0x51f6d9c0d26f6a518333164b8d1e6885aecd30a4` | non_address_book | unknown | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | MigrateTroveZap<br>`0x1371c1dae7d3ad43bb79ecce1b882ad9754f9047` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | MigrateTroveZap<br>`0x5c15ced59fd964fcfff2d2f376b4a40b6d1fce1c` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | MigrateTroveZap<br>`0xc3eaf094e2586965244ab6534f6dc69c6c16b5d5` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | MigrateTroveZap<br>`0xcc7218100da61441905e0c327749972e3cbee9ee` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | PoolRegistry<br>`0xdb95d646012bb87ac2e6cd63eab2c42323c1f5af` | non_address_book | registry | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PoolUtilities<br>`0x7abe78f961bff0f6855559c14686bd91df8caa72` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PoolUtilities<br>`0x7ec3df0b72c6aabf0b115a51f49ce4a6500216de` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PoolUtilities<br>`0x91b6d814a393e38e6bfb9a155d043b30fc9937b2` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PoolUtilities<br>`0xcc8bba630037d147cb5b128755a0e8158eb1e65a` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PoolUtilities<br>`0xcdd65f44095346997b1f12915dc2369d819d7c21` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | PriceFeed<br>`0x5b0398d2a7eeb524c678bbe9f9a4c4104e864d38` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | PrismaDepositor<br>`0xa88a7fb313158d0c68047549ea9df0f121f29ce9` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | PrismaSnapshotMockToken<br>`0xea3030b900d94ed36e5a4e8b15b1db76530acc56` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | PrismaVoterProxy<br>`0x3fce074bbd66dc1cc9a9635eee6b3994fd333ca9` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | PrismaVoterProxy<br>`0x85fd46037350946ea37bb443cbb977a49e885b39` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | PrismaVoterProxy<br>`0x8fbb0d24d51953b394b30950504e8e923b539872` | non_address_book | unknown | unknown | verified | n/a | `0xdd2f2858964c17486e1b8a7e337a5732170e3320` |
| source verified unclassified | rETHDepositor<br>`0x6e38f97be87f639fad08b79e2d6f1822e26e2cb2` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | SortedTroves<br>`0x5c454338173b399bb9cd5c0259d0d242a71a1464` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | SpotOracle<br>`0x8c2e50c1d5a4d3668c2cc86d8848970ace38f64d` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | SpotOracle<br>`0x9da2a3141e64616ea570ee72d1a4efd0e5381e47` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | SpotOracleAggregator<br>`0xadcdaaf8f74ad19c46710492389aa846429ba14b` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | SpotOracleAggregatorUltra<br>`0xdbf40c130399a730f22c7d59facf519e2feaa071` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | StakeNTroveZap<br>`0x1951159afb9ceec77c8d767386dc15471f3fdb83` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | StakeNTroveZap<br>`0x4761bcf7774ca87a9e265477dfed149f06844d52` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | StakeNTroveZap<br>`0x925acc1418949549ea2e4242b74c78ba9ba00ee6` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | StakeNTroveZap<br>`0xbe600484613d33384ca2b102830562f908f45217` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | StakingProxyERC20<br>`0x2aa80139d3d6dfa90396547228d3875a8fdc0b04` | non_address_book | token | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | StakingProxyERC20<br>`0x359c1efd3fc7e3a9b7a043c185fd5d39dec1fc81` | non_address_book | token | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | StakingProxyRebalancePool<br>`0x55decf506d54878c1768c05db27c025b14ebc55f` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | StakingProxyRebalancePool<br>`0xc39f8c17bef00d7f73e75dd0e3cefa99523af528` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | StakingProxyRebalancePool<br>`0xd6da2a43ded6fc647aa5fb526e96b1f37c24cea8` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | StakingProxyRebalancePool<br>`0xdb1a3e4b18d445eb09f9ed4cdd3dcf38534b9d7b` | non_address_book | core_logic | unknown | verified | n/a | `0xe7ac460137ccd6173db6992529013d672d4f0087` |
| source verified unclassified | TroveManager<br>`0x297b704feda9383527c2ca834ffce29509e4cd3f` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | TroveManager<br>`0x4482bd395d78d36af31a1d58fe86958707861cf5` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | TroveManager<br>`0x50c4d64536849c874108d7ffd7a5488840648d0e` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | TroveManagerGetters<br>`0xc9c2d0bfb9860ad89a91d2069a8d73a6f903e9c4` | non_address_book | unknown | unknown | verified | n/a | `0xd8531a94100f15af7521a7b6e724ac4959e0a025` |
| source verified unclassified | Booster<br>`0x42e8786506d369ca54c474b64029558f991c795b` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ConvexRewardPool<br>`0x43353a1f971ca40326e694fb1bc61f7c0219a8fa` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ConvexRewardPool<br>`0x698b7c31005a7172ea4bdb262911ce6dbae43d15` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolUtilities<br>`0xba07563bb124531800d04e3a3ddc9ccfd831dbb0` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ProxyFactory<br>`0xf53173a3104bfdc4ed2fa579089b5e6bf4fc7a2b` | non_address_book | registry | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | VoterProxy<br>`0x124e37ca2439b52fc6bf90a04cb8021c639bf781` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | VoterProxy<br>`0x372516d2f464907d9fc7953f966d033803096b7a` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | VoterProxy<br>`0x6a226cfb5d66e71757c4eb7066d75031da9955d0` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | VoterProxy<br>`0x8dcba0fdc0853095791e6a8d9ec89c66c2028881` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | VoterProxy<br>`0xa0718d8e893f55ca99fc0691b0e20cb09d11e147` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ConvexRewardPool<br>`0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ConvexRewardPool<br>`0xc5158df20db993ab56b37e5c2577aa2210522d7b` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXB<br>`0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXBRateCalc<br>`0x13aa6c2f7b62c416406ecf14038f76f4725b8364` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXBRateCalc<br>`0x6972ddae1bdf74446e1e88f1226a2f2eebb04b09` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXBRateCalc<br>`0xafe07c043efe0f30eaa23b10c369891b7f87485f` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXBRateCalc<br>`0xc93ab3c4dddc488dbca581a0c3459aaf7ebd700a` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxFXBSwapper<br>`0xbc8923a60319807b1dae6b866f80f99ec1a3a0ef` | non_address_book | adapter | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxToken<br>`0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | non_address_book | token | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxToken<br>`0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | non_address_book | token | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | cvxToken<br>`0xfeef77d3f69374f66429c91d732a244f074bdf74` | non_address_book | token | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ExtraRewardPool<br>`0x757c2375b511f10e6347943a54e3b8f9b1b9137c` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | ExtraRewardPool<br>`0xde6b403c26564694372eb38b571632bee5858d20` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolManager<br>`0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolManager<br>`0xf7758d9d8f35e96ec620d380ef708078253859f4` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolRewardHook<br>`0x5ad9680ad2f72f422b7a4a1585aa51ac0b6ac3ec` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolUtilities<br>`0xa20ca8e22113b79a1feb082bcb778408f9f334e6` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolUtilities<br>`0xbf7af11835f49caf4c75fdf0570755584fb95f16` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | PoolUtilities<br>`0xc4b44c92db4b1154c3d852691444963d9e686cff` | non_address_book | core_logic | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | RewardDistribution<br>`0x858847c21b075e45727fcb0b544bd843cd750361` | non_address_book | unknown | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |
| source verified unclassified | RewardFactory<br>`0xe029881c3277b7b4935781b3d9fa0fe7ec4177cd` | non_address_book | registry | unknown | verified | n/a | `0x947b7742c403f20e5faccdac5e092c943e7d0277` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Convex Platform Security Audit Report.pdf](https://github.com/convex-eth/platform/blob/main/audit/Convex%20Platform%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 14 | high |
| [PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf](https://github.com/convex-eth/platform/blob/main/audit/PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf](https://github.com/convex-eth/platform/blob/main/audit/Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [convex-cvxcrv-staking-wrapper.pdf](https://github.com/convex-eth/platform/blob/main/audit/convex-cvxcrv-staking-wrapper.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf](https://github.com/convex-eth/frax-cvx-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 8 | high |
| [PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | medium |
| [convex-sidechain-audit-nomoi.pdf](https://github.com/convex-eth/sidechain-platform/blob/main/audits/convex-sidechain-audit-nomoi.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12945] Convex Platform Security Audit Report.pdf — matched: All contracts listed in the 'FILES LISTING' section are in scope.
- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf — no match: Only one contract in scope: ConvexStakingWrapperOhmSync. Audit date from cover page and latest audit report date.
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf — no match: Scope includes contracts under contracts/priceProviders/curve/*, contracts/priceProviders/curveLPTokens/*, contracts/external/convex/*, contracts/wrappers/*, ForwarderPriceProvider.sol, and SiloRouterV2.sol. Version 2 removed curve/* and renamed convex wrappers. Version 4 added reentrancy check files. The audit date is April 4, 2023 from the cover page.
- [12948] convex-cvxcrv-staking-wrapper.pdf — matched: No reason recorded
- [12949] PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf — matched: Extracted contract names from findings targets and mentions. No explicit scope table, but contracts are clearly audited targets.
- [12950] PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf — matched: No explicit scope table; contracts extracted from findings targets and descriptions.
- [12951] convex-sidechain-audit-nomoi.pdf — no match: No explicit scope section found; contracts inferred from findings. No date found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Convex Platform Security Audit Report.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | BaseRewardPool | own contract | BaseRewardPool (selected) `0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e` — deployed 2021-05-17 12:20:51+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | CrvDepositor | own contract | CrvDepositor (selected) `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` — deployed 2021-05-17 12:15:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | StashFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Cvx | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV2 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | Booster | own contract | Booster (alternative) `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2021-05-17 was 28d from audit; next candidate 575d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | ManagedRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | RewardFactory | ambiguous — not counted | RewardFactory (alternative) `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Convex Platform Security Audit Report.pdf | cCrv | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | DebugInterfaces | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cCrvRewardPool | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | TokenFactory | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | ExtraRewardStashV1 | unmatched — not counted | — | listed in scope | no |
| Convex Platform Security Audit Report.pdf | cvxRewardPool | own contract | cvxRewardPool (selected) `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` — deployed 2021-05-17 12:21:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Convex Platform Security Audit Report.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf | ConvexStakingWrapperOhmSync | unmatched — not counted | — | listed in scope table and throughout report | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ForwarderPriceProvider | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | SiloRouterV2 | unmatched — not counted | — | listed in scope table | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | CurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveReentrancyCheck | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ICurveHackyPool | unmatched — not counted | — | added in version 4, included in scope | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSilo | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapper in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexStakingWrapperSiloFactory | unmatched — not counted | — | listed in scope (renamed to ConvexSiloWrapperFactory in version 2) | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapper | unmatched — not counted | — | renamed from ConvexStakingWrapperSilo in version 2 | no |
| Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf | ConvexSiloWrapperFactory | unmatched — not counted | — | renamed from ConvexStakingWrapperSiloFactory in version 2 | no |
| convex-cvxcrv-staking-wrapper.pdf | CvxCrvStakingWrapper | own contract | CvxCrvStakingWrapper (selected) `0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434` — deployed 2023-01-20 04:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FxsDepositor | unmatched — not counted | — | Target in finding PVE-001 and mentioned in PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | IVoteEscrow | unmatched — not counted | — | Interface mentioned in finding PVE-001 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyERC20 | unmatched — not counted | — | Target in finding PVE-002 and mentioned in PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | StakingProxyUniV3 | unmatched — not counted | — | Target in finding PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | cvxFxsToken | own contract | cvxFxsToken (selected) `0xfeef77d3f69374f66429c91d732a244f074bdf74` — deployed 2021-12-22 12:09:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FeeRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | MultiRewards | unmatched — not counted | — | Mentioned in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | PoolRegistry | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Convex-Frax-Staking-v1.0.pdf | FraxVoterProxy | own contract | FraxVoterProxy (selected) `0x59cfcd384746ec3035299d90782be065e466800b` — deployed 2021-12-21 10:21:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb340d1b50108bd32212e867946b5b8044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee113d796f06d8cda873813912d0bb668a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | VoterProxy | own contract | VoterProxy (selected) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | Booster | own contract | Booster (alternative) `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (selected) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardManager | ambiguous — not counted | RewardManager (alternative) `0x972794ebd4b3bba8a185202f899f8f7664519bd7` — deployed 2023-02-27 07:12:16+03 — liveness: live (current_address_book_code)<br>RewardManager (alternative) `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` — deployed 2023-03-08 08:38:34+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | RewardFactory | own contract | RewardFactory (selected) `0x8014595f2ab54cd7c604b00e9fb932176fdc86ae` — deployed 2022-11-15 08:35:44+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` — deployed 2023-03-08 08:39:50+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-11-15 was 6d from audit; next candidate 119d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Convex-Sidechain-v1.0.pdf | TokenFactory | unmatched — not counted | — | Mentioned in description of PVE-003 | no |
| convex-sidechain-audit-nomoi.pdf | ConvexRewardPool | ambiguous — not counted | ConvexRewardPool (alternative) `0xf2afb340d1b50108bd32212e867946b5b8044c23` — deployed 2023-03-15 04:55:31+03 — liveness: live (current_address_book_code)<br>ConvexRewardPool (alternative) `0x65eee113d796f06d8cda873813912d0bb668a1f5` — deployed 2023-03-15 05:00:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | Booster | ambiguous — not counted | Booster (alternative) `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` — deployed 2023-12-19 03:08:23+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2022-11-15 07:03:41+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` — deployed 2024-03-01 04:35:35+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2023-03-08 08:37:56+03 — liveness: live (code_present_context)<br>Booster (alternative) `0xf403c135812408bfbe8713b5a23a04b3d48aae31` — deployed 2021-05-17 12:09:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | VoterProxy | ambiguous — not counted | VoterProxy (alternative) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2022-11-15 06:14:04+03 — liveness: live (code_present_context)<br>VoterProxy (alternative) `0x989aeb4d175e16225e39e87d0d97a3360524ad80` — deployed 2023-03-08 08:37:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| convex-sidechain-audit-nomoi.pdf | ExtraRewardPool | ambiguous — not counted | ExtraRewardPool (alternative) `0xa46944d0845f786117d0e1034fc10585747c861b` — deployed 2023-03-08 08:39:08+03 — liveness: live (code_present_context)<br>ExtraRewardPool (alternative) `0x665d4bea98e3a1849526553453e8369b448c6ad4` — deployed 2022-11-17 16:55:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x4e3fbd56cd56c3e72c1403e103b45db9da5b9d2b` | ConvexToken | token | $105,466,529.64 | Verified native implementation with $105,466,529.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7` | cvxCrvToken | token | $31,331,091.33 | Verified native implementation with $31,331,091.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2847348b58ced0ca58d23c7e9106a49f1427df6` | cvxFpisToken | token | $2,129,509.33 | Verified native implementation with $2,129,509.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x183395dbd0b5e93323a7286d1973150697fffcb3` | cvxFxnToken | token | $2,054,177.22 | Verified native implementation with $2,054,177.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34635280737b5bfe6c7dc2fc3065d60d66e78185` | cvxPrismaToken | token | $386,021.62 | Verified native implementation with $386,021.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x806d47df9141fde4a77e1e54f0ca4184526ade60` | BoostDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79a50f83e7aff970ceab5152a15461a4f1c3799e` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaffe966b27ba3e4ebb8a0ec124c7b7019cc762f8` | Booster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ca7759dce155e15df9cdbd8322c8eb2934c5558` | BoosterOwner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xca4b0279853275147169435ad7a8e3cc396136c6` | BoosterPlaceholder | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x394bfb7e6a6e7197bba16c8dc5f581de8a1847b6` | BoostFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f6e12f0be8487c35e063ec0e03903367c421e94` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcfc7b36fa3b59ca963a44c86c2c369bc311896e5` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f29cb4111cbda8081642da1f75b3c12decf2516` | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f465e9fcffc217c5849906216581a657cd60605` | ConvexMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x65eee113d796f06d8cda873813912d0bb668a1f5` | ConvexRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa87db3eaa93b7293021e38416650d2e666bc483` | cvxFpisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec60cd4a5866fb3b0dd317a46d3b474a24e06bef` | cvxFxnStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a` | cvxFxsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd18140b4b819b895a3dba5442f959fa44994af50` | CvxLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72a19342e8f1838460ebfccef09f6585e32db86e` | CvxLockerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c73f1cfd5c9dfc150c8707aa47acbd14f0be108` | cvxPrismaStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8864187b257e0fb3bd74054b72d9c1834e76d712` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c4d60fa85088d40e3d8030dba283e9708ec9292` | DropMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665d4bea98e3a1849526553453e8369b448c6ad4` | ExtraRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x665d4bea98e3a1849526553453e8369b448c6ad4` | FeeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30575fdcfb2b76096047f0a8651b52159ab835f7` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b33e944e4ae1cb58abfed5a16a4e25b041fb5d5` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7a527d8bb09f7d70c148ab5de919e9bf68a0d769` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe91861cb57c6c2aa55b7ab0e6853ae1d96b63efa` | FeeDepositV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c716e88ae0fcc5d78bd11810ca451941e2efe6a` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf92400476cd81c7379bb54fd2646e8fa476cf3f` | FeeReceiverCvxPrisma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56b3c8ef8a095f8637b6a84942aa898326b82b91` | FxnDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd11a4ee017ca0beca8fa45ff2abfe9c6267b7881` | FxnVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e088a0a19dda628b4304301d1ea70b114e4accd` | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2f30ef614c4b10c32437864efe57b6d8ed4b9ba8` | PlatformFeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfc0a2ffdea23804494aa1707741e5a6eaa2f8017` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98ece0d8abd1f96672a497d3053999df172faa8b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xedccb35798fae4925718a43cc608ae136208aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xedccb35798fae4925718a43cc608ae136208aa8d` | PoolRewardHook | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb20e684de561c54021651050f4518daa1976eb42` | PoolUtilities | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61404f7c2d8b1f3373eb3c6e8c4b8d8332c2d5b8` | PrismaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fd5216605efa6ccb4c25994022c8a8fb77d2671` | PrismaVoterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb20b384c2f958f2100e14c5048922613f937674a` | ProxyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcf50b810e57ac33b91dcf525c6ddd9881b139332` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x972794ebd4b3bba8a185202f899f8f7664519bd7` | RewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb48c21e9101a85ee6d00b4f1a7b946df1b09ea7` | TreasuryManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd60cd4ad7a2d6bf4ec9fccbcaeec769b52726dfd` | TreasuryManagerPrisma | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fc264c5154d16c0eb765f6dd12a55bdc18f7951` | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e2ca1134dc44b5d368575da316d87ac9b9065e7` | VestingClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb1d7c7bd55d6679e662e3482671d2735de0e69e8` | VoterProxyOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 201 |
| upstream | 11 |
| standard_library | 2 |
| needs_review | 523 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 30 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1, medium=1
- Match method counts: temporal_name=4, unique_name=6

Zero-match audit list:

- [12946] PeckShield-Audit-Report-ConvexStakingWrapperOhmSync-v1.0.pdf
- [12947] Smart-Contract-Audit-Silo_Finance_Curve__Convex_Feature-ChainSecurity.pdf
- [12951] convex-sidechain-audit-nomoi.pdf

Fork inheritance lineage and inherited audits are included when available.
