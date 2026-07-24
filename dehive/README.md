# Agentic Audit Brief: DeHive

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: DeHive (`dehive`)
- Website: [https://dehive.finance/](https://dehive.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, gnosis, polygon
- Contract surface: 161 unique implementations (361 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $110,690.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DeHive in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 161 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 103
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/134
- Verified + Unaudited implementations: 134
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 161
- Raw deployments: 361
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc5b38d7942cd1a118fe170b3eb44f01b3900009f` | ⚠️ Unaudited |
| AddyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x186e2e7610c3d82931ce6fb2329c2e177fedd405`; polygon `0x3e1c6c4933bb37eb2fc9a2e7ec9c75c41c299a6c`; polygon `0x43b5bf72168c2c0185d109b78710b0429a167990`; polygon `0x75f363a459b735e7e39bfda90f8a6086eb5358d0`; polygon `0xfdf49c5acba12a691e0932163eafda15d88af41f` | ⚠️ Unaudited |
| AddyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b4db8c34f8e568b4741a6f7372e2164727166ab`; polygon `0x3606ec7c6ef844d928428a7ac4359b18a3d7b846` | ⚠️ Unaudited |
| AlpacaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4035f5369541d4e753a9f6e87182a927b6cfdd30`; bsc `0x9f43424ecbd9def0bc43c86e60e03f1260bf2ace` | ⚠️ Unaudited |
| AlpacaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x65b260182a889ad1b14e50914ee10a346044b2c0`; bsc `0x9259ddbf83de8732468f8df82e5a279410c0b61b` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x58759dd469ae5631c42cf8a473992335575b58d7`; polygon `0x5fcb9de282af6122ce3518cde28b7089c9f97b26` | ⚠️ Unaudited |
| AnyswapV6Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdae6c2a48bfaa66b43815c5548b10800919c993e` | ⚠️ Unaudited |
| BananaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x31be6b999fe4c8abbce3dd2eb72cc27c874531e9`; bsc `0x86f6ecb512519dfa7a52d0772c58ea78a1f3c60e` | ⚠️ Unaudited |
| BananaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x75d538ef1ba4bf4445a350844ddf6302c357933e`; bsc `0xf054c85732189cd22c62c5b228c3df3c95c90e03` | ⚠️ Unaudited |
| CakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0c0c8222638b3f1862e6eb2810aeef5069c9bc4e`; bsc `0x8deb5be8da8873f4fb06cb6f63abdcbae73e3826` | ⚠️ Unaudited |
| CakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x53439555e3894fadd5187c55faa29172f4d4f1c9`; bsc `0x944627e6e2b4f263dceeae0fd02eefe72a98c3aa` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76d35333337311ba3a7d832f96caf4be8187f480`; bsc `0x7cda416c096768971c0b7605f5aaabd8fa713818` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 11 deployments: bsc `0xa0b7adabcd0cf2c1cf16153fac2785078fdbbfc9`; bsc `0xf8401f4e8c415ea11fb970ae9cc12e5154e4275f`; gnosis `0x35f28aa0b2f34eff17d2830135312ab2a777de36`; gnosis `0x6e5dad934e71eb419ca1ab9ddf9f99d5d70e1979`; gnosis `0x7bf481ed33432dd4e26cd6eaa60f1edea211fb9a`; gnosis `0x817aaf59b5380196bfddff747b58c236140471ef`; gnosis `0xc1fa2e55f804b89ce54b2cec0bb04199fd8e7f13`; gnosis `0xc5b38d7942cd1a118fe170b3eb44f01b3900009f`; gnosis `0xdfc6c6ac9c8ef3df9cab5f7b971dfd8d1e3360ed`; polygon `0x6b7ff87fdc803a565827696fed414a3cb6ff7df6`; polygon `0xb7739801949836cac67074a8f496a2ed336a3faf` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5cb83ec42804c3835551b1ded2f75f76914b0cfb`; gnosis `0xdc005ebba14c3c01ab26b06d4e981fc81e2df2ff` | ⚠️ Unaudited |
| ClustersLock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8271529b62c82b4d30a2efdb3ec89d7aba60897e`; polygon `0xf16d3d8795a9749eae40fee789ae66009f010901` | ⚠️ Unaudited |
| ClusterToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x0da509a51de6a05c917891ba3a8536a9d469ab20`; bsc `0x0a684421ef48b431803bfd75f38675eab1e38ed5`; polygon `0x4964b3b599b82c3fddc56e3a9ffd77d48c6af0f0`; polygon `0x589ea336092184d9ed74b8263c4eeca73ed0ce7a` | ⚠️ Unaudited |
| ClusterTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x3ea8f1f8a5c76f6221a25d180714171c8529082f`; gnosis `0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b`; gnosis `0xf557b2b73b872e6d2f43826f9d77b7402a363bc0` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa4bccd2e59599d86f196cbf8e81a598603a1a0`; ethereum `0xfe48bfff0eaedcb3724c8c0e8bda26e267f0a651` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9600f029dc487070e2d1a4356e20b1c34525c870`; ethereum `0xe3365d995dd931f779ec5620c02ed14c3c9359c4` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3c45a344c8b25c584107eeaf13b011674badc42a`; bsc `0x70eb50bacd00d7e9ce2333147766a712ad5b315c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x12916d5a1d7d4143684cbbc7b076fbe612b89126`; gnosis `0xdb1255a43e52e05b9d0371db574f23ca1f208231` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xe171ffa5f991adcf27d427cd0f82fce3f2cd0620`; gnosis `0xe806db0693788ec79d6c45a8934e0eaf94afa37e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xe806db0693788ec79d6c45a8934e0eaf94afa37e`; polygon `0xebf6a542ca2863f56444244d43756b4768e5847d` | ⚠️ Unaudited |
| DexAdapterCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ba94e75f411e36ec195b5cd359b4b8e75b6676` | ⚠️ Unaudited |
| DHVToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62dc4817588d53a056cbbd18231d91ffccd34b2a` | ⚠️ Unaudited |
| EpsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x52b7717086a7dce8871dae3bce5f9133daf08a0c`; bsc `0xf3fae8576cc8127f128097ea99a068c119352930` | ⚠️ Unaudited |
| EpsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89c505541361d688c57d1735a9f51f0c9186ab45`; bsc `0xef6f0359e38b441c2b40719ae451b034b3ab317e` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x115aab122118832f264294aa6b9fe8d10a385f8f`; bsc `0x92450c9dc4c709f4169f9196e908772744d89c8c` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf83a167979c95746325ff171469ad1ff5a43e122` | ⚠️ Unaudited |
| ExternalAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8ca1bb93d51bba639ca4b93a58f7701f8ba2253b`; polygon `0xaf63f200148fe942280c10220acd0780006bba91` | ⚠️ Unaudited |
| FishStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x38be73abba0314c5f40f12e18dbc71ea255334b1`; polygon `0x454e322cf2b260074ec6e1d314a46c5308896270` | ⚠️ Unaudited |
| FishStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x854d57283f0aa953b87a7fd4a60fed18594ad8fa`; polygon `0xb902a02b8d49ec166857bb467a8b50922ec148cc`; polygon `0xc8ec8da2d7ee26d90135de548e2ec82dd9373117` | ⚠️ Unaudited |
| GameAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x31d7ce194fc7bc8dfef2ee448adb1910955fbf03`; polygon `0x3aec85c098e99d6fcf778913321ab3152e97c7a4`; polygon `0x7fe962217bdbfaf3ed62a664a127759ca971ab71` | ⚠️ Unaudited |
| HoneySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x2fa4aa2eb9512d9170df9614ee2a9c49322e28f4`; gnosis `0x874ac7b286b1a75cd86defc48efdeb4ea599c82a`; gnosis `0xd88be9b86f537796f530d084fdd30c0773d32905` | ⚠️ Unaudited |
| ImpulseAlpacaBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0902eb0d13c47fb2dd0c17436d7789cdeff7cbf7`; bsc `0xb32e05f11b01a31516bfcddfe5abf52564c6dfe3` | ⚠️ Unaudited |
| ImpulseAvaxBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc75bd849de14ec4f7c630db4e426da66872d6aaa`; bsc `0xdd03b515882e2355165f471404aad2e0c1fbf4ac` | ⚠️ Unaudited |
| ImpulseBananaBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3e1c6c4933bb37eb2fc9a2e7ec9c75c41c299a6c`; bsc `0xfdf49c5acba12a691e0932163eafda15d88af41f` | ⚠️ Unaudited |
| ImpulseBananaBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x548d26005016b125837f30e78afe301f66b55796`; bsc `0x8c348e767d9e79216561c5fe353f2475f1d7220c` | ⚠️ Unaudited |
| ImpulseCakeBusd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7bb8e7155e8f0bfb8d9233102cba3ea0cb27d62c`; bsc `0xac176fc950fbba3387fed29613edcb6c262a27e5` | ⚠️ Unaudited |
| ImpulseCakeUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x12916d5a1d7d4143684cbbc7b076fbe612b89126`; bsc `0xcfd28b3e55c542c1dfb2711d712ec0257e7e035a` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x857417c5e25e21315a02c9cc3fa55866121d48e8` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xaa10fe666e8fa1b43fd1579d39eea3a1fdad68b3` | ⚠️ Unaudited |
| ImpulseCurve3Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xba93ee6b7ff5ea741d8f25472b7a767d0cf47124`; polygon `0xe5bb3c8afaba2da84e7076246645a6d1926ae774` | ⚠️ Unaudited |
| ImpulseCurveAtricrypto3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x849b2f194875af260c0f9da4e6e0a8d7ce90388d`; polygon `0xc81b3548fa4583f62fcea2b9c6c163ad26eff356` | ⚠️ Unaudited |
| ImpulseCurveAtricrypto3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x9dedca5ad04401faaa0efa2fe7abdcaf24ec47da`; polygon `0xb0459bc89ba46f4977731030851349a9f651dbba`; polygon `0xb0e694db9ad54e74c3e1cc770652b26f938fa995`; polygon `0xe0dbbd521f9d07c03bb287e9efcb62274b32a41f` | ⚠️ Unaudited |
| ImpulseCurveEurtUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7db96af7ed9338f98463fa527718fc61f3576544` | ⚠️ Unaudited |
| ImpulseCurveEurtUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd98c4655e7bc8b9ec3de5a518b8c3729b352a33` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2df6a1cdb98b64620fb052081d355680f2d310ae`; polygon `0xabc299209912649f440e36c81ea3f04bdb29a786` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x47e62bc62820c0c0ea6ca9e60800cf945630d552`; polygon `0xa814f8db628025376478c259a1a618663109b562` | ⚠️ Unaudited |
| ImpulseDhvQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78e49ae616da242520f9ad49af46e7c0e9de692b` | ⚠️ Unaudited |
| ImpulseDodoBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b`; bsc `0xdb1255a43e52e05b9d0371db574f23ca1f208231` | ⚠️ Unaudited |
| ImpulseLinkBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x88cfc1bc9aeb80f6c8f5d310d6c3761c2a646df7`; bsc `0xe45713a2d7d87bd7a55d84da55aeb9ec21067870` | ⚠️ Unaudited |
| ImpulseMaiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3090c0f4a2703cb5390ba5a09d0205eca3dc0ac7` | ⚠️ Unaudited |
| ImpulseMaiUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x967db401e220977592cae035fe4612d5c86e466b`; polygon `0xf2e8cd1c40c766fee73f56607fdffa526ba8fa6c` | ⚠️ Unaudited |
| ImpulseMaticUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x6183b9b7829f10a4a010fd965e88a6c60b70b381`; polygon `0x61b4ac9b14a0fadfc65651d3a31f38f4979d1b4d`; polygon `0x92450c9dc4c709f4169f9196e908772744d89c8c` | ⚠️ Unaudited |
| ImpulseMaticUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb6bbc497d95b23eeeb9672a384123926b0db1900`; polygon `0xf8b0f2671c9bd4051aa42dcf10603c2cfbaa9ab6` | ⚠️ Unaudited |
| ImpulseQuickSwap3pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ae965bab2c51d54d2f6db765062412272b7f9c2`; polygon `0x9c6885f826a94247b4ec4de753039334024fd0cb` | ⚠️ Unaudited |
| ImpulseQuickSwap3pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xb3a7cd0c8af43470b93934ef28251d24f1061026`; polygon `0xe84d3853bb4567e518ac6e8b1e54567d954a9571` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x584654418dc87210674b6cc6afab933e14832776`; bsc `0xa9c97ff825db9dd53056d65ae704031b4959d99a` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5233f9e1eb8ac0dfc95bf04b03a9543b8289946a`; polygon `0x855da61c78fe9db9981bf4c341dcba289d7ed86f` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x62bb658427883b30110045fc4d964e635cea6751`; polygon `0x702d8443d0bcb762d171d6fb73a8d65e3f56a029` | ⚠️ Unaudited |
| ImpulseStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xb030f10989a38d2cd10ab1cd502956b8a23ab4fe`; polygon `0xf4feb23531edbe471a4493d432f8bb29bf0a3868` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: gnosis `0x0a684421ef48b431803bfd75f38675eab1e38ed5`; gnosis `0x53439555e3894fadd5187c55faa29172f4d4f1c9`; polygon `0x0e8f97585151325fbabd7bd94cb1b76da9c88b26`; polygon `0x1b196e2da976f806c2b18713aaf005e75036d458`; polygon `0x39179f85ce5199a0d013fdc96c1e7325161ac905`; polygon `0x75ac4652db8f4f667e6025efa01c5bff0e422afa`; polygon `0x7fca6967def3d52c97a2d62fb19f6eb373da80a5`; polygon `0xa6f3b3671dafdda9f4627054feefe4e22897903a`; polygon `0xbd72447838cabdf1ab6d8222a4c8769e4cfef02f`; polygon `0xec976dd1ceb1b23a7adae47236220cd3e5e1f8ac` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xccc1ac92cfac48fa04a135b06d7595abacbce5f2`; gnosis `0xfa7ca14a28cd419a69e45e8416ca4fa87457ace8` | ⚠️ Unaudited |
| ImpulseStakingMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7f4300b47a2e2ff3d78e26bc289793b1f781425f`; polygon `0xe6e6982fb5ddf4fcc74ccce4e4eea774e002d17f` | ⚠️ Unaudited |
| ImpulseTwtBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x817aaf59b5380196bfddff747b58c236140471ef`; bsc `0xf60cceddae784e64132fac2c6c08c29a0d37a423` | ⚠️ Unaudited |
| ImpulseUsdcQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x44e1863f8c11911a482d9cb4d5fd4f7448fd2d3b`; polygon `0xcf26470e1446a7114782cec86c8c63e7f24c3cce`; polygon `0xd8095a0e196d61e5c4f13d5510d0a224718c8739` | ⚠️ Unaudited |
| ImpulseUsdcQuick | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x83a762a8852a741f877bf4cbdcd503fdbd1570a2`; polygon `0xf83a167979c95746325ff171469ad1ff5a43e122` | ⚠️ Unaudited |
| ImpulseUsdtBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3ea8f1f8a5c76f6221a25d180714171c8529082f`; bsc `0x4964b3b599b82c3fddc56e3a9ffd77d48c6af0f0` | ⚠️ Unaudited |
| ImpulseUsdtUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04595f9010f79422a9b411ef963e4dd1f7107704`; bsc `0xe9d094e0028955aa46bba65e0a68551f263e6798` | ⚠️ Unaudited |
| ImpulseWethDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1095ae1d78366a6770ed0b435e145e420cc6c242`; polygon `0x115aab122118832f264294aa6b9fe8d10a385f8f` | ⚠️ Unaudited |
| ImpulseWethDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54ae6108ac1417011d16b96cdbd25878adcbf1e5` | ⚠️ Unaudited |
| ImpulseXvsBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7f6c6630fce5889bbf40bace37ba78bfc179e01c`; bsc `0xa802928fd2f2987fefb9db3f53b8511f1736b47b` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x03870b1523080680a0dd777cd5baab55d6342210`; bsc `0x625385decfd873efa6536b29327cc35257fb6bf8`; bsc `0x669f0203a49cf917557acf3c7bc7ecaac17224b7`; bsc `0xb0e694db9ad54e74c3e1cc770652b26f938fa995` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0134b93275192a4bb40ec7e6a616e36c4493cd66`; gnosis `0x3606ec7c6ef844d928428a7ac4359b18a3d7b846` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x04a1a99e68cf067d23356decdbba0847cc4c555f`; gnosis `0xcba8cfc4e40c133fd9d5c0927649e6d997413128` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0d597da8319975ae762a2e8daef12e38ddb62e81`; gnosis `0x227b1571979050896dbdcddbe108c08fa6c4f42e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x260e615bea171185516576d6aceba4dac4bc8e9e`; gnosis `0xde0c66fe784a43ae0f9675b470bae0b8c20ff139` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x27bc45c2a25f57cbe59feb829beee26bd97726ab`; gnosis `0xd8095a0e196d61e5c4f13d5510d0a224718c8739` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x2ce50914f04092e0d5b9cdf6288d92cabdd74faa`; gnosis `0x87729e9d65b419f24569e743c35f7d1a5a1f3ea0` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x2df6a1cdb98b64620fb052081d355680f2d310ae`; gnosis `0x855da61c78fe9db9981bf4c341dcba289d7ed86f` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x43b5bf72168c2c0185d109b78710b0429a167990`; gnosis `0x7c2f74078cca58f06afd9bb36622a382070b965e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x459cca7ddc5f38d0390273da4882beafca0ea42d`; gnosis `0xb525350980c80c671879547caf49c22d82d414a0` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x60052e6f7054879dcf41803c5f79ae67540a07cc`; gnosis `0x702d8443d0bcb762d171d6fb73a8d65e3f56a029` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x62bb658427883b30110045fc4d964e635cea6751`; gnosis `0xf4feb23531edbe471a4493d432f8bb29bf0a3868` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x6b7ff87fdc803a565827696fed414a3cb6ff7df6`; gnosis `0x8271529b62c82b4d30a2efdb3ec89d7aba60897e` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x6f9b8a457831fae485d534e7165e55043829ee25`; gnosis `0x859c3bc0a13f254e8b79e2978e26e9dabcf016f5` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x78e49ae616da242520f9ad49af46e7c0e9de692b`; gnosis `0xa814f8db628025376478c259a1a618663109b562` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7dad52ad9043594fc046ed74fd58d364b93922e0`; gnosis `0x811e1a0c1da546650b6ea2ca07e58cd95428ac8c` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x7df969787c7659927fd749e0b39726b35b64da1c`; gnosis `0x8897487598ec27bb4e6f794dbb9cc62624518792` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x80fe0f923e08059185c3f706c6fda3618c2eac09`; gnosis `0xbc80cd57bdcd3ee5331e90ed75984a2bb0cc2d98` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xa03f8c6a2fa7661bc4e3d188919f8719d36e1315`; gnosis `0xd5e6e02d0ea4905806eeaafd723dd99078f199f2` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xabc299209912649f440e36c81ea3f04bdb29a786`; gnosis `0xe28b65f6a43c15e731556dc2949e6bd600e7dc6b` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xc88ad12d39afb2958bb554d661f0e3531b56abbd`; gnosis `0xd25e73c17dad608c996d7c8eff7c169ae2c3ddd9` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 21 deployments: bsc `0xd24e19c7243757290c16b591826eaa381acf7016`; bsc `0xd32b3bcbdc3205b6e594f4cfb8399c7f89beca44`; bsc `0xf5d9715b6f6331f62d5fe5aad0f3911e15fddcdf`; gnosis `0x3f86919347767a080f5e298748c5de7aac47225d`; gnosis `0x4faa98e30a0de67932369aab7030a389026ed87c`; gnosis `0x5233f9e1eb8ac0dfc95bf04b03a9543b8289946a`; gnosis `0x88ef5c224f331e5de914b828b3c1e8bcb917f025`; gnosis `0xa51bd2b08521c0272524f1a86aa3c5091821b889`; gnosis `0xc82abaf7b1df1170f77565e3ac337cf2bc8951a7`; gnosis `0xed824a5787636a4ac9ec4b765a60f7411bf0783e`; polygon `0x10617450573c64d87df65476ba2f85e15a764cfa`; polygon `0x3f86919347767a080f5e298748c5de7aac47225d`; polygon `0x6bbdf4b9d210facf4f32e64df969b90cc0ce3011`; polygon `0x76d35333337311ba3a7d832f96caf4be8187f480`; polygon `0x97ea33bc21d47a3d6c1f3b419a12322253fb80e1`; polygon `0xa1912f35be3e29f15f053680f9f10958e3861cb0`; polygon `0xa5583babace3a05b822353c3e95c8d3e8027a3a6`; polygon `0xbf81531e5b007ba21e206485d1193d825c82dc52`; polygon `0xc51cc5611a448dafa43e2965e37b2e814270f12a`; polygon `0xdc005ebba14c3c01ab26b06d4e981fc81e2df2ff`; polygon `0xf59d6c9404cc2be405677287bf5d0f610983e588` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | polygon | n/a | 8 deployments: polygon `0x1e2856765c776de1054bfd0a12288bb76e32de83`; polygon `0x78e7467ac8265c1348c4aa838a768366e95af153`; polygon `0x7aa7748430832da7c0abf2bb7ace55bbbfcee807`; polygon `0x87f3235bf9b633d3c7727312745aa5b3eeaa6550`; polygon `0x8a5b8f99a7cdc577c1bbdeae87478c531bd219b9`; polygon `0xb745e8b2d87e14dc325cd778d0c8bf213331e5be`; polygon `0xbccb3e7ad5dfde687b3e7714da23c06d46ddb107`; polygon `0xff1fe3fbd4b95f838f2ded1ebb7a32aa214686c4` | ⚠️ Unaudited |
| KeeperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 5 deployments: polygon `0x5b1ff112098fff0f66e842090e9b939ca23b4f14`; polygon `0x710275b3370b9894845560c6a52478719b877bc4`; polygon `0x7c2f74078cca58f06afd9bb36622a382070b965e`; polygon `0xaca7976dac428b87fad1950c4405918a40ce7336`; polygon `0xc704a023f52cdb8a89bf796d201d2c527fe1b337` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0xebf6a542ca2863f56444244d43756b4768e5847d`; gnosis `0xf5d9715b6f6331f62d5fe5aad0f3911e15fddcdf`; polygon `0x16bc1d35d753a141d89a99ba9496b80787a6bfe2` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x54bb6e98f727843eda23d64837a5d8a572f56eb1`; gnosis `0x9401c19d3d0bd483cf019f4ee88f046a1a98f308` | ⚠️ Unaudited |
| Optimizer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5a813d34d674c215bf891f5af161c08cf803bc65`; polygon `0xbca17326fe5d86215235fe9c7f0d0d2a7c66ea63` | ⚠️ Unaudited |
| OptimizerDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f95b0b1c6207dc78e783bc823da34b29b8e7ab7` | ⚠️ Unaudited |
| OptimizerDG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x96771a3c9639f2428c267a20c7c0c3895d4b150e`; polygon `0xc1b5774fedfc4857bb2fcc1473500a964c53cec4` | ⚠️ Unaudited |
| OptimizerELK | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x047cfa3e04c4b939e31540b114a6ea99eba88b38`; gnosis `0xaf4845bee74fc6bc831feb0dd0aac2e3386b7494` | ⚠️ Unaudited |
| OptimizerEPS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8dafec470b0a949d2fc3dc5307f541cc8cdf80c0`; bsc `0xe093a9761894abc3189af6ff82fa210e9cb8a397` | ⚠️ Unaudited |
| OptimizerWbnb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x281704b437af29cb6ac65f4e6ccc316c79486199`; bsc `0x5cb83ec42804c3835551b1ded2f75f76914b0cfb` | ⚠️ Unaudited |
| OptimizerWbnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6190cde6c42c460c335515a585df253bed51cfdd` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72ba008b631d9fd5a8e8013023cb3c05e19a7ca9` | ⚠️ Unaudited |
| PancakeSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e2856765c776de1054bfd0a12288bb76e32de83`; bsc `0xdfc6c6ac9c8ef3df9cab5f7b971dfd8d1e3360ed` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: bsc `0x6bc3f65fc50e49060e21ed6996be96ee4b404752`; gnosis `0x5a33c008fc80afe089ef5c7390ef3e17bfca0645`; gnosis `0xebf6a542ca2863f56444244d43756b4768e5847d`; polygon `0x5a33c008fc80afe089ef5c7390ef3e17bfca0645` | ⚠️ Unaudited |
| QuickSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b`; polygon `0xaa14a96746579775f3e03110f40bcc25cd3bbe0f`; polygon `0xe171ffa5f991adcf27d427cd0f82fce3f2cd0620` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x10617450573c64d87df65476ba2f85e15a764cfa`; bsc `0x35f28aa0b2f34eff17d2830135312ab2a777de36` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3dc97bffad8f87e63905b946bea715a6a311206e`; bsc `0xf979165d6b75d295d93fa6d192608434490d894e` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x039c5211fdc5d5210218558883e0f0303425951d`; gnosis `0x589ea336092184d9ed74b8263c4eeca73ed0ce7a` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5dd69ed0209b59280c3c997d0b4eb461156bdf15`; gnosis `0x6424732bd7672fcc0da37d1e70a38a3c8ac5f807` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xb32e05f11b01a31516bfcddfe5abf52564c6dfe3`; gnosis `0xe45713a2d7d87bd7a55d84da55aeb9ec21067870` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: bsc `0x1b920fbd6cd22fa70997995299561502732eac59`; bsc `0x531d85ad7ef14179262041340c4517a4a7f5e4c5`; bsc `0x95bfe68703f02e556eb718106b3f3fb6062f3b97`; gnosis `0x0902eb0d13c47fb2dd0c17436d7789cdeff7cbf7`; gnosis `0xa3841d12cdb904de768486b94adcbca42bfa1ef3`; polygon `0x0065373747aa61914138157383ffbfc02e9e5576`; polygon `0xb32e05f11b01a31516bfcddfe5abf52564c6dfe3`; polygon `0xe45713a2d7d87bd7a55d84da55aeb9ec21067870`; polygon `0xebc86412fdb5d79623a999b2e50c64e5a3b86799` | ⚠️ Unaudited |
| StakingDHV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1ad4592385457a2fddf0cfd894249fa61bf2602f`; polygon `0x88cfc1bc9aeb80f6c8f5d310d6c3761c2a646df7` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0889c09ad99af0a0a2bb5535e6874012a5dc27b1`; bsc `0x2e4cec0f081809441d8df8ecd3e950346c7d59ea`; gnosis `0x67c6493e03f629f4966953e1b1ebf05fe200a2ca`; gnosis `0x753345f52901999bb4cb726fa1dc391ff4488e69`; gnosis `0xcec2bcddf7be2fcbc1beb5b7e4bbc2cfdefa2f51`; polygon `0x51758420715f74b79a3e80235f4facdd16ac4ff1` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf2e8cd1c40c766fee73f56607fdffa526ba8fa6c`; bsc `0xf59d6c9404cc2be405677287bf5d0f610983e588` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x8660deec15fb856380549dfcb6237f75bb063a8d`; gnosis `0xa4e7be054000603b82b79208ac3ee5428554caf6` | ⚠️ Unaudited |
| StrategyRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 7 deployments: bsc `0x985e9a0460efcfb14c73c3bc8b51334ca672dffd`; gnosis `0x3e140d6e8ee6dbf224aa83eb4f5f11cd15869244`; gnosis `0x60c800bc27f02f1150c8c818b81267560eff0452`; polygon `0x548d26005016b125837f30e78afe301f66b55796`; polygon `0x60c800bc27f02f1150c8c818b81267560eff0452`; polygon `0xba5d2e9a8f00fbf37608292ad16b772f428db3f0`; polygon `0xf60cceddae784e64132fac2c6c08c29a0d37a423` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x325fb22fd86927f98868f54dcf2c05f5594eeafe`; bsc `0xdce8014686a9a0f41296d717039689b556e6afed` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x5c10bf843ff843301046fb1c0c93cc1a63b8a581`; gnosis `0x7e8080fbf37c8b4bf45a6a042e4b68dfe46a5195` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: bsc `0x97ea33bc21d47a3d6c1f3b419a12322253fb80e1`; gnosis `0x7cda416c096768971c0b7605f5aaabd8fa713818`; polygon `0x8bec91492883991066731c82b36d61803acfc6af` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3e140d6e8ee6dbf224aa83eb4f5f11cd15869244`; polygon `0xa6b68440686a46a8a9efc294ca1addb1a734f8bc` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x03870b1523080680a0dd777cd5baab55d6342210`; polygon `0xfce0bb6d45adb2f90c33a947d113138c379ffa0f` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x18bcce85c34320417201fdcb247aace95f4ba341`; polygon `0x1fc18330980ea37664d0c372cd7a3580a65aa45e` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1b920fbd6cd22fa70997995299561502732eac59`; polygon `0x857417c5e25e21315a02c9cc3fa55866121d48e8` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x31be6b999fe4c8abbce3dd2eb72cc27c874531e9`; polygon `0xf054c85732189cd22c62c5b228c3df3c95c90e03` | ⚠️ Unaudited |
| UtilProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x860e3d52299de419cef6cec63bf846a0579dd7d9`; polygon `0x940b4f9f8daa8de74f075dfe4034dafe75b70f6e` | ⚠️ Unaudited |
| WbnbVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8137887e0f4f87873851784772abbbcd0950cf26`; bsc `0xf765f8f137909dcceb2097347304556448be88ad` | ⚠️ Unaudited |
| xInfraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x6bc3f65fc50e49060e21ed6996be96ee4b404752`; gnosis `0x92450c9dc4c709f4169f9196e908772744d89c8c` | ⚠️ Unaudited |
| XvsVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3b43fe9d43f9f83f8b35bfa5b0ece3183cc2656a`; bsc `0x9564a4a2f4722ca0bfe7e27d0436bab23e409191` | ⚠️ Unaudited |
| XvsVenusStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x69c5ed95aa17745009682313fcc34c590207be58`; bsc `0xcb6e16ff29dd1beae562bc24d61d957e38f8db95` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cae51e1032e8461f4806e26332c030e34de3adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0dcb0cb0120d355cde1ce56040be57add0185baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1ccca1ce62c62f7be95d4a67722a8fdbed6eecb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3405a1bd46b85c5c029483fbecf2f3e611026e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x375488f097176507e39b9653b88fdc52cde736bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d9ab5522c64e1f6ef5e3627eccc093f56167818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ab6d61428fde76768d7b45d8bfeec19c6ef91a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7c598c96d02398d89fbcb9d41eab3df0c16f227d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8182fc6c53aff5a6dff59d283a6d97274935d1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa649325aa7c5093d12d6f98eb4378deae68ce23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb2c22a9fb4fc02eb9d1d337655ce079a04a526c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb44a9b6905af7c801311e8f4e76932ee959c663c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbbc4a8d076f4b1888fec42581b6fc58d242cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc931f61b1534eb21d8c11b24f3f5ab2471d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc9baa8cfdde8e328787e29b4b078abf2dadc2055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf480f38c366daac4305dc484b2ad7a496ff00cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfa9343c3897324496a05fc75abed6bac29f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfbdd194376de19a88118e84e279b977f165d01b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02322853d2ae922d9a045c401897b48d9c17bcc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0889c09ad99af0a0a2bb5535e6874012a5dc27b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x548876c07e5e260598074b3c8d1b94701a7d71c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e5114fe00ca1b5d0585087ca61c3a508509f1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x621268ba22c5a86809b0c3cefa8c707c63241d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a6f540f33c67bcdf60aa3dad1793fab98f320eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9f7d95e593874a418ce3272148c812569f8d8db` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 353
- Live contracts: 0
- Unknown liveness contracts: 353
- Source-verified contracts: 322
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=4, candidate hard block=1, contamination review=2, source verified unclassified=315, unverified unclassified=31

Showing first 200 of 353 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | source verified unclassified | AlpacaStrategy<br>`0x65b260182a889ad1b14e50914ee10a346044b2c0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | AlpacaStrategy<br>`0x9259ddbf83de8732468f8df82e5a279410c0b61b` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | AlpacaStrategy<br>`0x9f43424ecbd9def0bc43c86e60e03f1260bf2ace` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | BananaStrategy<br>`0x31be6b999fe4c8abbce3dd2eb72cc27c874531e9` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | BananaStrategy<br>`0x75d538ef1ba4bf4445a350844ddf6302c357933e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | BananaStrategy<br>`0x86f6ecb512519dfa7a52d0772c58ea78a1f3c60e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | CakeStrategy<br>`0x0c0c8222638b3f1862e6eb2810aeef5069c9bc4e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | CakeStrategy<br>`0x53439555e3894fadd5187c55faa29172f4d4f1c9` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | CakeStrategy<br>`0x944627e6e2b4f263dceeae0fd02eefe72a98c3aa` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ClustersLock<br>`0x76d35333337311ba3a7d832f96caf4be8187f480` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ClustersLock<br>`0xa0b7adabcd0cf2c1cf16153fac2785078fdbbfc9` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ClustersLock<br>`0xf8401f4e8c415ea11fb970ae9cc12e5154e4275f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | Controller<br>`0x70eb50bacd00d7e9ce2333147766a712ad5b315c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | EpsStrategy<br>`0x52b7717086a7dce8871dae3bce5f9133daf08a0c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | EpsStrategy<br>`0xef6f0359e38b441c2b40719ae451b034b3ab317e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | EpsStrategy<br>`0xf3fae8576cc8127f128097ea99a068c119352930` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ExternalAdapter<br>`0x115aab122118832f264294aa6b9fe8d10a385f8f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ExternalAdapter<br>`0xf83a167979c95746325ff171469ad1ff5a43e122` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseAlpacaBusd<br>`0x0902eb0d13c47fb2dd0c17436d7789cdeff7cbf7` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseAvaxBnb<br>`0xdd03b515882e2355165f471404aad2e0c1fbf4ac` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseBananaBnb<br>`0xfdf49c5acba12a691e0932163eafda15d88af41f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseBananaBusd<br>`0x8c348e767d9e79216561c5fe353f2475f1d7220c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseCakeBusd<br>`0xac176fc950fbba3387fed29613edcb6c262a27e5` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseCakeUsdt<br>`0xcfd28b3e55c542c1dfb2711d712ec0257e7e035a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseDodoBnb<br>`0xdb1255a43e52e05b9d0371db574f23ca1f208231` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseLinkBnb<br>`0xe45713a2d7d87bd7a55d84da55aeb9ec21067870` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseStaking<br>`0x584654418dc87210674b6cc6afab933e14832776` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseTwtBnb<br>`0xf60cceddae784e64132fac2c6c08c29a0d37a423` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseUsdtBnb<br>`0x3ea8f1f8a5c76f6221a25d180714171c8529082f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseUsdtUsdc<br>`0x04595f9010f79422a9b411ef963e4dd1f7107704` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ImpulseXvsBnb<br>`0x7f6c6630fce5889bbf40bace37ba78bfc179e01c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | KeeperStrategy<br>`0xb0e694db9ad54e74c3e1cc770652b26f938fa995` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | KeeperStrategy<br>`0xd24e19c7243757290c16b591826eaa381acf7016` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | KeeperStrategy<br>`0xd32b3bcbdc3205b6e594f4cfb8399c7f89beca44` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | KeeperStrategy<br>`0xf5d9715b6f6331f62d5fe5aad0f3911e15fddcdf` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | Multicall<br>`0xebf6a542ca2863f56444244d43756b4768e5847d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | OptimizerEPS<br>`0xe093a9761894abc3189af6ff82fa210e9cb8a397` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | OptimizerWbnb<br>`0x281704b437af29cb6ac65f4e6ccc316c79486199` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | OptimizerWbnb<br>`0x6190cde6c42c460c335515a585df253bed51cfdd` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | PancakeSwapAdapter<br>`0x1e2856765c776de1054bfd0a12288bb76e32de83` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | PancakeSwapAdapter<br>`0xdfc6c6ac9c8ef3df9cab5f7b971dfd8d1e3360ed` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | ProxyAdmin<br>`0x6bc3f65fc50e49060e21ed6996be96ee4b404752` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingDHV<br>`0x10617450573c64d87df65476ba2f85e15a764cfa` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingDHV<br>`0x1b920fbd6cd22fa70997995299561502732eac59` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingDHV<br>`0x531d85ad7ef14179262041340c4517a4a7f5e4c5` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingDHV<br>`0x95bfe68703f02e556eb718106b3f3fb6062f3b97` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingDHV<br>`0xf979165d6b75d295d93fa6d192608434490d894e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingPools<br>`0x0889c09ad99af0a0a2bb5535e6874012a5dc27b1` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingPools<br>`0x2e4cec0f081809441d8df8ecd3e950346c7d59ea` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StakingPools<br>`0xf59d6c9404cc2be405677287bf5d0f610983e588` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StrategyRouter<br>`0x985e9a0460efcfb14c73c3bc8b51334ca672dffd` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StrategyRouterV2<br>`0x325fb22fd86927f98868f54dcf2c05f5594eeafe` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | StrategyRouterV2<br>`0x97ea33bc21d47a3d6c1f3b419a12322253fb80e1` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x03870b1523080680a0dd777cd5baab55d6342210` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x12916d5a1d7d4143684cbbc7b076fbe612b89126` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x35f28aa0b2f34eff17d2830135312ab2a777de36` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x3c45a344c8b25c584107eeaf13b011674badc42a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x3dc97bffad8f87e63905b946bea715a6a311206e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x3e1c6c4933bb37eb2fc9a2e7ec9c75c41c299a6c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x4035f5369541d4e753a9f6e87182a927b6cfdd30` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x4964b3b599b82c3fddc56e3a9ffd77d48c6af0f0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x548d26005016b125837f30e78afe301f66b55796` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x5cb83ec42804c3835551b1ded2f75f76914b0cfb` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x625385decfd873efa6536b29327cc35257fb6bf8` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x669f0203a49cf917557acf3c7bc7ecaac17224b7` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x7bb8e7155e8f0bfb8d9233102cba3ea0cb27d62c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x7cda416c096768971c0b7605f5aaabd8fa713818` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x8137887e0f4f87873851784772abbbcd0950cf26` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x817aaf59b5380196bfddff747b58c236140471ef` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x88cfc1bc9aeb80f6c8f5d310d6c3761c2a646df7` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x89c505541361d688c57d1735a9f51f0c9186ab45` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x8dafec470b0a949d2fc3dc5307f541cc8cdf80c0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x8deb5be8da8873f4fb06cb6f63abdcbae73e3826` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x92450c9dc4c709f4169f9196e908772744d89c8c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0x9564a4a2f4722ca0bfe7e27d0436bab23e409191` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xa802928fd2f2987fefb9db3f53b8511f1736b47b` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xa9c97ff825db9dd53056d65ae704031b4959d99a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xb32e05f11b01a31516bfcddfe5abf52564c6dfe3` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xc75bd849de14ec4f7c630db4e426da66872d6aaa` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xdce8014686a9a0f41296d717039689b556e6afed` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xe9d094e0028955aa46bba65e0a68551f263e6798` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xf054c85732189cd22c62c5b228c3df3c95c90e03` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | UtilProxy<br>`0xf2e8cd1c40c766fee73f56607fdffa526ba8fa6c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | WbnbVenusStrategy<br>`0xf765f8f137909dcceb2097347304556448be88ad` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | XvsVenusStrategy<br>`0x3b43fe9d43f9f83f8b35bfa5b0ece3183cc2656a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | XvsVenusStrategy<br>`0x69c5ed95aa17745009682313fcc34c590207be58` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| bsc | source verified unclassified | XvsVenusStrategy<br>`0xcb6e16ff29dd1beae562bc24d61d957e38f8db95` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| ethereum | candidate review | ClusterToken<br>`0x0da509a51de6a05c917891ba3a8536a9d469ab20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| ethereum | contamination review | DexAdapterCore<br>`0x06ba94e75f411e36ec195b5cd359b4b8e75b6676` | non_address_book | unknown | unknown | verified | n/a | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| ethereum | source verified unclassified | Controller<br>`0x7aa4bccd2e59599d86f196cbf8e81a598603a1a0` | non_address_book | unknown | unknown | verified | n/a | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| ethereum | source verified unclassified | Controller<br>`0x9600f029dc487070e2d1a4356e20b1c34525c870` | non_address_book | unknown | unknown | verified | n/a | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| ethereum | source verified unclassified | Controller<br>`0xe3365d995dd931f779ec5620c02ed14c3c9359c4` | non_address_book | unknown | unknown | verified | n/a | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| ethereum | source verified unclassified | UtilProxy<br>`0xfe48bfff0eaedcb3724c8c0e8bda26e267f0a651` | non_address_book | unknown | unknown | verified | n/a | `0x93d9c13829a604c34ede73fb8e1ba924259374e8` |
| gnosis | candidate review | ClusterTokenV2<br>`0x3ea8f1f8a5c76f6221a25d180714171c8529082f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | candidate review | ClusterTokenV2<br>`0xa6c090c5572f54d529b0839b8fd2d50a4afb1e6b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0x35f28aa0b2f34eff17d2830135312ab2a777de36` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0x5cb83ec42804c3835551b1ded2f75f76914b0cfb` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0x6e5dad934e71eb419ca1ab9ddf9f99d5d70e1979` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0x7bf481ed33432dd4e26cd6eaa60f1edea211fb9a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0x817aaf59b5380196bfddff747b58c236140471ef` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0xc1fa2e55f804b89ce54b2cec0bb04199fd8e7f13` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0xc5b38d7942cd1a118fe170b3eb44f01b3900009f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ClustersLock<br>`0xdfc6c6ac9c8ef3df9cab5f7b971dfd8d1e3360ed` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | Controller<br>`0x12916d5a1d7d4143684cbbc7b076fbe612b89126` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | Controller<br>`0xe806db0693788ec79d6c45a8934e0eaf94afa37e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | HoneySwapAdapter<br>`0x2fa4aa2eb9512d9170df9614ee2a9c49322e28f4` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | HoneySwapAdapter<br>`0x874ac7b286b1a75cd86defc48efdeb4ea599c82a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | HoneySwapAdapter<br>`0xd88be9b86f537796f530d084fdd30c0773d32905` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ImpulseStakingMulti<br>`0x0a684421ef48b431803bfd75f38675eab1e38ed5` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ImpulseStakingMulti<br>`0x53439555e3894fadd5187c55faa29172f4d4f1c9` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ImpulseStakingMulti<br>`0xccc1ac92cfac48fa04a135b06d7595abacbce5f2` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x04a1a99e68cf067d23356decdbba0847cc4c555f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x0d597da8319975ae762a2e8daef12e38ddb62e81` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x260e615bea171185516576d6aceba4dac4bc8e9e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x27bc45c2a25f57cbe59feb829beee26bd97726ab` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x2ce50914f04092e0d5b9cdf6288d92cabdd74faa` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x3606ec7c6ef844d928428a7ac4359b18a3d7b846` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x3f86919347767a080f5e298748c5de7aac47225d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x4faa98e30a0de67932369aab7030a389026ed87c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x5233f9e1eb8ac0dfc95bf04b03a9543b8289946a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x60052e6f7054879dcf41803c5f79ae67540a07cc` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x62bb658427883b30110045fc4d964e635cea6751` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x6b7ff87fdc803a565827696fed414a3cb6ff7df6` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x78e49ae616da242520f9ad49af46e7c0e9de692b` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x7c2f74078cca58f06afd9bb36622a382070b965e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x811e1a0c1da546650b6ea2ca07e58cd95428ac8c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x855da61c78fe9db9981bf4c341dcba289d7ed86f` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x859c3bc0a13f254e8b79e2978e26e9dabcf016f5` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x8897487598ec27bb4e6f794dbb9cc62624518792` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0x88ef5c224f331e5de914b828b3c1e8bcb917f025` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xa51bd2b08521c0272524f1a86aa3c5091821b889` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xabc299209912649f440e36c81ea3f04bdb29a786` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xb525350980c80c671879547caf49c22d82d414a0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xbc80cd57bdcd3ee5331e90ed75984a2bb0cc2d98` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xc82abaf7b1df1170f77565e3ac337cf2bc8951a7` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xc88ad12d39afb2958bb554d661f0e3531b56abbd` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xd5e6e02d0ea4905806eeaafd723dd99078f199f2` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | KeeperStrategy<br>`0xed824a5787636a4ac9ec4b765a60f7411bf0783e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | Multicall<br>`0xf5d9715b6f6331f62d5fe5aad0f3911e15fddcdf` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | Optimizer<br>`0x9401c19d3d0bd483cf019f4ee88f046a1a98f308` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | OptimizerELK<br>`0x047cfa3e04c4b939e31540b114a6ea99eba88b38` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ProxyAdmin<br>`0x5a33c008fc80afe089ef5c7390ef3e17bfca0645` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | ProxyAdmin<br>`0xebf6a542ca2863f56444244d43756b4768e5847d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingDHV<br>`0x039c5211fdc5d5210218558883e0f0303425951d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingDHV<br>`0x0902eb0d13c47fb2dd0c17436d7789cdeff7cbf7` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingDHV<br>`0x6424732bd7672fcc0da37d1e70a38a3c8ac5f807` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingDHV<br>`0xa3841d12cdb904de768486b94adcbca42bfa1ef3` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingDHV<br>`0xb32e05f11b01a31516bfcddfe5abf52564c6dfe3` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingPools<br>`0x67c6493e03f629f4966953e1b1ebf05fe200a2ca` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingPools<br>`0x753345f52901999bb4cb726fa1dc391ff4488e69` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingPools<br>`0x8660deec15fb856380549dfcb6237f75bb063a8d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StakingPools<br>`0xcec2bcddf7be2fcbc1beb5b7e4bbc2cfdefa2f51` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StrategyRouter<br>`0x3e140d6e8ee6dbf224aa83eb4f5f11cd15869244` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StrategyRouter<br>`0x60c800bc27f02f1150c8c818b81267560eff0452` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StrategyRouterV2<br>`0x5c10bf843ff843301046fb1c0c93cc1a63b8a581` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | StrategyRouterV2<br>`0x7cda416c096768971c0b7605f5aaabd8fa713818` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x0134b93275192a4bb40ec7e6a616e36c4493cd66` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x227b1571979050896dbdcddbe108c08fa6c4f42e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x2df6a1cdb98b64620fb052081d355680f2d310ae` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x43b5bf72168c2c0185d109b78710b0429a167990` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x459cca7ddc5f38d0390273da4882beafca0ea42d` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x54bb6e98f727843eda23d64837a5d8a572f56eb1` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x589ea336092184d9ed74b8263c4eeca73ed0ce7a` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x5dd69ed0209b59280c3c997d0b4eb461156bdf15` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x6f9b8a457831fae485d534e7165e55043829ee25` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x702d8443d0bcb762d171d6fb73a8d65e3f56a029` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x7dad52ad9043594fc046ed74fd58d364b93922e0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x7df969787c7659927fd749e0b39726b35b64da1c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x7e8080fbf37c8b4bf45a6a042e4b68dfe46a5195` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x80fe0f923e08059185c3f706c6fda3618c2eac09` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x8271529b62c82b4d30a2efdb3ec89d7aba60897e` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x857417c5e25e21315a02c9cc3fa55866121d48e8` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0x87729e9d65b419f24569e743c35f7d1a5a1f3ea0` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xa03f8c6a2fa7661bc4e3d188919f8719d36e1315` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xa4e7be054000603b82b79208ac3ee5428554caf6` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xa814f8db628025376478c259a1a618663109b562` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xaf4845bee74fc6bc831feb0dd0aac2e3386b7494` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xcba8cfc4e40c133fd9d5c0927649e6d997413128` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xd25e73c17dad608c996d7c8eff7c169ae2c3ddd9` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xd8095a0e196d61e5c4f13d5510d0a224718c8739` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xdb1255a43e52e05b9d0371db574f23ca1f208231` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xdc005ebba14c3c01ab26b06d4e981fc81e2df2ff` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xde0c66fe784a43ae0f9675b470bae0b8c20ff139` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xe171ffa5f991adcf27d427cd0f82fce3f2cd0620` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xe28b65f6a43c15e731556dc2949e6bd600e7dc6b` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xe45713a2d7d87bd7a55d84da55aeb9ec21067870` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xf4feb23531edbe471a4493d432f8bb29bf0a3868` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | UtilProxy<br>`0xfa7ca14a28cd419a69e45e8416ca4fa87457ace8` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | xInfraAdapter<br>`0x6bc3f65fc50e49060e21ed6996be96ee4b404752` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | source verified unclassified | xInfraAdapter<br>`0x92450c9dc4c709f4169f9196e908772744d89c8c` | non_address_book | unknown | unknown | verified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x8182fc6c53aff5a6dff59d283a6d97274935d1b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5bac8c443ebd0525364dc813005ab72956d3705d` |
| gnosis | candidate hard block | AnyswapV6Router<br>`0xdae6c2a48bfaa66b43815c5548b10800919c993e` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x0cae51e1032e8461f4806e26332c030e34de3adb` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x0dcb0cb0120d355cde1ce56040be57add0185baa` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x1ccca1ce62c62f7be95d4a67722a8fdbed6eecb4` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x3405a1bd46b85c5c029483fbecf2f3e611026e45` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x375488f097176507e39b9653b88fdc52cde736bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x5d9ab5522c64e1f6ef5e3627eccc093f56167818` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c` | non_address_book | unknown | unknown | unverified | n/a | `0xfa9da51631268a30ec3ddd1ccbf46c65fad99251` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DeHive-Hacken-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Hacken-Audit.pdf) | Hacken | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [DeHive-Zokyo-Audit.pdf](https://github.com/DeHive-finance/dehive-audits/blob/main/DeHive-Zokyo-Audit.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13011] DeHive-Hacken-Audit.pdf — no match: No reason recorded
- [13012] DeHive-Zokyo-Audit.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DeHive-Hacken-Audit.pdf | ClusterToken | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | Controller | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | DexAdapterCore | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | QickswapAdapter | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | StakingDHV | unmatched — not counted | — | — | no |
| DeHive-Hacken-Audit.pdf | UniswapAdapter | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | ClusterToken | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | Controller | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | DexAdapterCore | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | QuickSwapAdapter | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | StakingDHV | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | StakingPools | unmatched — not counted | — | — | no |
| DeHive-Zokyo-Audit.pdf | UniswapAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 126 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13011] DeHive-Hacken-Audit.pdf
- [13012] DeHive-Zokyo-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
