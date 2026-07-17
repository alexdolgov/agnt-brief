# Agentic Audit Brief: Convex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 4 audit(s)
- Eligible audit results: 7 (4 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Convex Finance (`convex-finance`)
- Website: [https://www.convexfinance.com/](https://www.convexfinance.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fraxtal, polygon
- Contract surface: 257 unique implementations (431 raw deployments)
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
Origin: frax-finance (`0x2b8b301b90eb8801f1eefe73285eec117d2ffc95`)
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
Origin: aura (`0xf403c135812408bfbe8713b5a23a04b3d48aae31`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLocker** (`0xd18140b4b819b895a3dba5442f959fa44994af50`, chain 1)
Origin: frax-finance (`0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CvxLockerV2** (`0x72a19342e8f1838460ebfccef09f6585e32db86e`, chain 1)
Origin: abracadabra (`0x72a19342e8f1838460ebfccef09f6585e32db86e`)
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
- Outside the address book: 163 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 93 of 257 unique; 164 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/214
- Verified + Unaudited implementations: 204
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 257
- Raw deployments: 431
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

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007fd070a7e1b0fa1364044a373ac1339bad89cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232811 | `0x1389388d01708118b497f59521f6943be2541bb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232815 | `0x25e12482a25cf36ec70fda2a09c1ed077fc21616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232817 | `0x27445d3f59d6b966072abe20e41a29fbb6a7a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343ad5b3db703105d95216ab13c9ec8925306550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232829 | `0x3c995e43e6ddd551e226f4c5544c77bfed147ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232831 | `0x3ce6408f923326f81a7d7929952947748180f1e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232840 | `0x41a5881c17185383e19df6fa4ec158a6f4851a69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232853 | `0x5f47010f230ce1568bea53a06ebaf528d05c5c1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232855 | `0x5fba69a794f395184b5760daf1134028608e5cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232857 | `0x60bd3d7a39e12085ee8bfeced46d31f9c0f6738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232866 | `0x782bce229a8b603c99161e867a49d5426da37f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232881 | `0x877288c4e6eba4f635ba7428706447353b47de75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232887 | `0x8f55d7c21bdff1a51afaa60f3de7590222a3181e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232889 | `0x92cf9e5e4d1dfbf7da0d2bb3e884a68416a65070` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232893 | `0x989aeb4d175e16225e39e87d0d97a3360524ad80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232894 | `0x9b622f2c40b80ef5efb14c2b2239511ffbfab702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232899 | `0xa1bc2cf69d474b39b91665e24e7f2606ed142991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232903 | `0xa2cf21b157b2f203e37b616b619f438b5aa86ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232907 | `0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48390877e12d401d9733a875806919c9a6cbe8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232915 | `0xb5bbc863bafe5006c68613b89130812a7b586a4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232917 | `0xba9801acfdf3b8852865149d93acffef9120272d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232928 | `0xd20904e5916113d11414f083229e9c8c6f91d1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232932 | `0xdd49a93fdcae579ae50b4b9923325e9e335ec82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232934 | `0xdecc7d761496d30f30b92bdf764fb8803c79360d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232938 | `0xe98984ad858075813ada4261af47e68a64e28fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232942 | `0xedccb35798fae4925718a43cc608ae136208aa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232944 | `0xf3bd66ca9b2b43f6aa11afa6f4dfdc836150d973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232950 | `0xfcb28d032e422ae3710c1ad74338cbb40b0749cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67082fe8971915a6e83f12a2b96c6c381cc5812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa46944d0845f786117d0e1034fc10585747c861b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf105463f14e955de791fc0afaed2962850a7104d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf403c135812408bfbe8713b5a23a04b3d48aae31` | ❓ Unverified |

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
| needs_review | 43 |

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
